.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

.include "armips/scr_seq/event_T20R0101.inc"


// text archive to grab from: 543.txt

.create "build/a012/2_843", 0


scrdef scr_seq_T20R0101_000
scrdef scr_seq_T20R0101_001
scrdef scr_seq_T20R0101_002
scrdef scr_seq_T20R0101_003
scrdef scr_seq_T20R0101_004
scrdef scr_seq_T20R0101_005
scrdef scr_seq_T20R0101_006
scrdef scr_seq_T20R0101_007
scrdef scr_seq_T20R0101_008
scrdef scr_seq_T20R0101_009
scrdef scr_seq_T20R0101_010
scrdef scr_seq_T20R0101_011
scrdef scr_seq_T20R0101_012
scrdef scr_seq_T20R0101_013
scrdef scr_seq_T20R0101_014
scrdef scr_seq_T20R0101_015
scrdef_end

scr_seq_T20R0101_010:
	get_friend_sprite VAR_OBJ_0
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _058F
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _05A1
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _05C0

scr_seq_T20R0101_011:
	scrcmd_609
	lockall
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _05D6
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _05FB
	apply_movement obj_player, _1214
	goto _0616

scr_seq_T20R0101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_STARTER, _0668
	choose_starter
	setflag FLAG_GOT_STARTER
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	get_partymon_species 0, VAR_TEMP_x4001
	set_starter_choice VAR_TEMP_x4001
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	npc_msg 7
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	touchscreen_menu_hide
	buffer_mon_species_name 1, 0
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0689
	touchscreen_menu_show
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _1222
	apply_movement obj_T20R0101_doctor, _1230
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 10
	closemsg
	apply_movement obj_T20R0101_doctor, _1236
	wait_movement
	npc_msg 11
	closemsg
	apply_movement obj_T20R0101_doctor, _123C
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button_or_walk_away
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 1
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 1
	clearflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

scr_seq_T20R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F2, _06CC
	goto_if_set FLAG_GAME_CLEAR, _074E
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0778
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 172
	goto_if_ne _0778
	get_partymon_forme VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BF
	goto_if_set FLAG_UNK_072, _0864
	goto_if_set FLAG_UNK_983, _08C7
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _0864
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0901
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	goto _091F

scr_seq_T20R0101_003:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0923
	apply_movement obj_T20R0101_assistantm, _124C
	goto _093E

scr_seq_T20R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40FC, 3
	goto_if_eq _09A0
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _09AB
	npc_msg 18
	goto _09C1

scr_seq_T20R0101_002:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _125A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_policeman, _1264
	wait_movement
	npc_msg 23
	closemsg
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_T20R0101_var_1, _126A
	apply_movement obj_T20R0101_policeman, _1278
	wait_movement
	gender_msgbox 24, 25
	closemsg
	apply_movement obj_T20R0101_policeman, _1282
	wait_movement
	npc_msg 26
	closemsg
	callstd std_fade_end_friend_music
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	name_rival VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _09C9
	apply_movement obj_T20R0101_policeman, _1264
	wait_movement
	buffer_rivals_name 1
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B1E
	closemsg
	npc_msg 28
	closemsg
	apply_movement obj_T20R0101_var_1, _12AC
	apply_movement obj_T20R0101_policeman, _12C6
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_policeman
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_var_1, _12E4
	wait_movement
	buffer_players_name 0
	gender_msgbox 30, 31
	closemsg
	apply_movement obj_T20R0101_var_1, _12F2
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_ELMS_LAB_OFFICER
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	setflag FLAG_UNK_079
	apply_movement obj_player, _1304
	wait_movement
	apply_movement obj_T20R0101_doctor, _130A
	wait_movement
	buffer_players_name 0
	gender_msgbox 32, 33
	closemsg
	npc_msg 34
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	takeitem_no_check ITEM_MYSTERY_EGG, 1
	apply_movement obj_T20R0101_doctor, _1310
	wait_movement
	npc_msg 35
	closemsg
	apply_movement obj_T20R0101_doctor, _1322
	wait_movement
	gender_msgbox 36, 37
	closemsg
	apply_movement obj_T20R0101_doctor, _1328
	wait_movement
	gender_msgbox 38, 39
	closemsg
	apply_movement obj_T20R0101_doctor, _133A
	wait_movement
	setflag FLAG_HIDE_ROUTE_30_BATTLERS
	clearflag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	setvar VAR_SCENE_ELMS_LAB, 4
	setvar VAR_UNK_408B, 1
	clearflag FLAG_HIDE_ROUTE_29_FRIEND
	clearflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	releaseall
	end

scr_seq_T20R0101_014:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_var_1, _1340
	wait_movement
	apply_movement obj_T20R0101_var_1, _134A
	wait_movement
	buffer_players_name 0
	gender_msgbox 58, 59
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _1354
	apply_movement obj_T20R0101_var_1, _135A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_doctor, _130A
	wait_movement
	buffer_players_name 0
	gender_msgbox 60, 61
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0B29
	callstd std_bag_is_full
	goto _0BAF

scr_seq_T20R0101_004:
	end

scr_seq_T20R0101_005:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 93
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_006:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 94
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_007:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 95
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_008:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 96
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 97
	wait_button_or_walk_away
	closemsg
	goto_if_unset 16298, _0C31
	releaseall
	end

scr_seq_T20R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GOT_STARTER, _0C48
	npc_msg 92
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C53
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	heal_party
	scrcmd_436
	restore_overworld
	wait_fanfare
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T20R0101_015:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_assistantm, _136C
	wait_movement
	buffer_players_name 0
	npc_msg 56
	closemsg
	apply_movement obj_T20R0101_assistantm, _1376
	wait_movement
	setvar VAR_UNK_40FC, 3
	releaseall
	end

_058F:
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_EAST
	goto _05C0

_05A1:
	compare VAR_SCENE_ELMS_LAB, 3
	goto_if_ne _0C57
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _05C0

_05C0:
	place_starter_balls_in_elms_lab
	end

_05D6:
	apply_movement obj_T20R0101_doctor, _1384
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	apply_movement obj_player, _1392
	wait_movement
	releaseall
	end

_05FB:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0C92
	apply_movement obj_player, _1398
	goto _0616

_0616:
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	wait 15, VAR_SPECIAL_x8004
	play_se SEQ_SE_GS_PHONE0
	apply_movement obj_T20R0101_doctor, _139E
	wait_movement
	npc_msg 2
	npc_msg 3
	closemsg
	apply_movement obj_T20R0101_doctor, _13AC
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	setflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_0668:
	goto_if_set FLAG_GOT_TM51_FROM_FALKNER, _0CAD
	goto_if_set FLAG_MET_PASSERBY_BOY, _0CB8
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0689:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 0, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	touchscreen_menu_hide
	bufferpartymonnick 1, 0
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0689
	return

_06CC:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0778
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 172
	goto_if_ne _0778
	get_partymon_forme VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BF
	goto_if_set FLAG_UNK_072, _0864
	goto_if_set FLAG_UNK_983, _08C7
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _0864
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0901
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	goto _091F

_074E:
	buffer_players_name 0
	gender_msgbox 71, 72
	setvar VAR_SPECIAL_x8004, 456
	setvar VAR_SPECIAL_x8005, 1
	setflag FLAG_UNK_0F2
	callstd std_give_item_verbose
	buffer_players_name 0
	gender_msgbox 73, 74
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0778:
	goto_if_set FLAG_UNK_072, _0864
	goto_if_set FLAG_UNK_983, _08C7
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _0864
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0901
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	goto _091F

_07BF:
	compare VAR_TEMP_x4006, 1
	goto_if_eq _0CC3
	compare VAR_UNK_412F, 2
	goto_if_ge _0CD4
	compare VAR_UNK_412F, 1
	goto_if_eq _0CDF
	call _0CF8
	apply_movement obj_T20R0101_doctor, _13B2
	wait_movement
	npc_msg 75
	closemsg
	apply_movement obj_T20R0101_doctor, _13B8
	wait_movement
	apply_movement obj_partner_poke, _13C6
	wait_movement
	npc_msg 76
	closemsg
	apply_movement obj_T20R0101_doctor, _13B2
	wait_movement
	npc_msg 77
	closemsg
	apply_movement obj_T20R0101_doctor, _13D4
	wait_movement
	npc_msg 78
	closemsg
	apply_movement obj_T20R0101_doctor, _13DE
	wait_movement
	npc_msg 79
	closemsg
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0D3C
	apply_movement obj_T20R0101_doctor, _13EC
	goto _0D68

_0864:
	check_badge BADGE_EARTH, VAR_TEMP_x4003
	compare VAR_TEMP_x4003, 1
	goto_if_eq _0D8C
	goto_if_set FLAG_UNK_0F2, _0D9B
	goto_if_set FLAG_UNK_108, _0DAA
	goto_if_set FLAG_UNK_109, _0DAA
	check_badge BADGE_RISING, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0DB5
	compare VAR_TEMP_x400F, 1
	goto_if_eq _0DC0
	buffer_players_name 0
	gender_msgbox 98, 99
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_08C7:
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	scrcmd_149 0
	compare VAR_TEMP_x4001, 175
	goto_if_eq _0DCC
	compare VAR_TEMP_x4001, 176
	goto_if_eq _0DCC
	compare VAR_TEMP_x4001, 468
	goto_if_eq _0DCC
	goto _0E02

_0901:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_gt _0E15
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button_or_walk_away
	closemsg
	goto _091F

_091F:
	releaseall
	end

_0923:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0E2F
	apply_movement obj_T20R0101_assistantm, _140E
	goto _093E

_093E:
	wait_movement
	buffer_players_name 0
	gender_msgbox 19, 20
	goto_if_no_item_space ITEM_POTION, 5, _0E4A
	setvar VAR_SPECIAL_x8004, 17
	setvar VAR_SPECIAL_x8005, 5
	callstd std_obtain_item_verbose
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 2
	npc_msg 21
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0E54
	apply_movement obj_T20R0101_assistantm, _141C
	goto _0E6F

_09A0:
	npc_msg 57
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_09AB:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_ne _0E75
	npc_msg 22
	goto _09C1

_09C1:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_09C9:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	name_rival VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _09C9
	apply_movement obj_T20R0101_policeman, _1264
	wait_movement
	buffer_rivals_name 1
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B1E
	closemsg
	npc_msg 28
	closemsg
	apply_movement obj_T20R0101_var_1, _12AC
	apply_movement obj_T20R0101_policeman, _12C6
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_policeman
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_var_1, _12E4
	wait_movement
	buffer_players_name 0
	gender_msgbox 30, 31
	closemsg
	apply_movement obj_T20R0101_var_1, _12F2
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_ELMS_LAB_OFFICER
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	setflag FLAG_UNK_079
	apply_movement obj_player, _1304
	wait_movement
	apply_movement obj_T20R0101_doctor, _130A
	wait_movement
	buffer_players_name 0
	gender_msgbox 32, 33
	closemsg
	npc_msg 34
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	takeitem_no_check ITEM_MYSTERY_EGG, 1
	apply_movement obj_T20R0101_doctor, _1310
	wait_movement
	npc_msg 35
	closemsg
	apply_movement obj_T20R0101_doctor, _1322
	wait_movement
	gender_msgbox 36, 37
	closemsg
	apply_movement obj_T20R0101_doctor, _1328
	wait_movement
	gender_msgbox 38, 39
	closemsg
	apply_movement obj_T20R0101_doctor, _133A
	wait_movement
	setflag FLAG_HIDE_ROUTE_30_BATTLERS
	clearflag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	setvar VAR_SCENE_ELMS_LAB, 4
	setvar VAR_UNK_408B, 1
	clearflag FLAG_HIDE_ROUTE_29_FRIEND
	clearflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	releaseall
	end

_0B1E:
	npc_msg 29
	closemsg
	goto _09C9

_0B29:
	callstd std_give_item_verbose
	buffer_players_name 0
	gender_msgbox 62, 63
	buffer_players_name 0
	gender_msgbox 64, 65
	closemsg
	apply_movement obj_T20R0101_var_1, _1426
	apply_movement obj_player, _1430
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 68
	closemsg
	apply_movement obj_T20R0101_var_1, _143A
	wait_movement
	hide_person obj_T20R0101_var_1
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_doctor, _130A
	apply_movement obj_player, _1448
	wait_movement
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_SCENE_ELMS_LAB, 9
	setvar VAR_UNK_4079, 3
	setflag FLAG_UNK_23B
	clearflag FLAG_HIDE_NEW_BARK_FRIEND_2
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	setvar VAR_UNK_407B, 2
	end

_0BAF:
	buffer_players_name 0
	gender_msgbox 62, 63
	buffer_players_name 0
	gender_msgbox 64, 65
	closemsg
	apply_movement obj_T20R0101_var_1, _1426
	apply_movement obj_player, _1430
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 68
	closemsg
	apply_movement obj_T20R0101_var_1, _143A
	wait_movement
	hide_person obj_T20R0101_var_1
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_doctor, _130A
	apply_movement obj_player, _1448
	wait_movement
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_SCENE_ELMS_LAB, 9
	setvar VAR_UNK_4079, 3
	setflag FLAG_UNK_23B
	clearflag FLAG_HIDE_NEW_BARK_FRIEND_2
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	setvar VAR_UNK_407B, 2
	end

_0C31:
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E91
	releaseall
	end

_0C48:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C53:
	releaseall
	end

_0C57:
	compare VAR_SCENE_ELMS_LAB, 8
	goto_if_ne _05C0
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	move_person_facing obj_T20R0101_var_1, 7, 0, 12, DIR_EAST
	place_starter_balls_in_elms_lab
	end

_0C92:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0EB9
	apply_movement obj_player, _144E
	goto _0616

_0CAD:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0CB8:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0CC3:
	npc_msg 83
	wait_button_or_walk_away
	closemsg
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0CD4:
	npc_msg 91
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0CDF:
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 220
	goto_if_ge _0F20
	goto _0778

_0CF8:
	buffer_players_name 0
	gender_msgbox 84, 85
	closemsg
	get_player_facing VAR_TEMP_x4005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0F65
	apply_movement obj_player, _145C
	wait_movement
	apply_movement obj_partner_poke, _1466
	goto _0F8A

_0D3C:
	apply_movement obj_T20R0101_doctor, _1474
	wait_movement
	npc_msg 80
	closemsg
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0F98
	apply_movement obj_T20R0101_doctor, _149E
	wait_movement
	goto _0FBD

_0D68:
	wait_movement
	npc_msg 80
	closemsg
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0F98
	apply_movement obj_T20R0101_doctor, _149E
	wait_movement
	goto _0FBD

_0D8C:
	buffer_players_name 0
	gender_msgbox 102, 103
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0D9B:
	buffer_players_name 0
	gender_msgbox 73, 74
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DAA:
	npc_msg 70
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DB5:
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DC0:
	gender_msgbox 100, 101
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DCC:
	apply_movement obj_T20R0101_doctor, _14A4
	wait_movement
	npc_msg 46
	buffer_players_name 0
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0FD8
	goto_if_unset FLAG_UNK_108, _0FED
	gender_msgbox 104, 105
	goto _0FF7

_0E02:
	buffer_players_name 0
	gender_msgbox 53, 54
	setvar VAR_TEMP_x400F, 1
	goto _0864

_0E15:
	compare VAR_SCENE_ELMS_LAB, 5
	goto_if_gt _0FFD
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	goto _091F

_0E2F:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _101B
	apply_movement obj_T20R0101_assistantm, _14AE
	goto _093E

_0E4A:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0E54:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _1092
	apply_movement obj_T20R0101_assistantm, _14BC
	goto _0E6F

_0E6F:
	wait_movement
	releaseall
	end

_0E75:
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ne _10AD
	npc_msg 41
	setvar VAR_SCENE_ELMS_LAB, 5
	goto _09C1

_0E91:
	apply_movement obj_player, _13D4
	wait_movement
	npc_msg 106
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _10C3
	closemsg
	releaseall
	end

_0EB9:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0616
	apply_movement obj_player, _14C6
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	wait 15, VAR_SPECIAL_x8004
	play_se SEQ_SE_GS_PHONE0
	apply_movement obj_T20R0101_doctor, _139E
	wait_movement
	npc_msg 2
	npc_msg 3
	closemsg
	apply_movement obj_T20R0101_doctor, _13AC
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T20R0101_doctor, _1246
	wait_movement
	setflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_0F20:
	call _0CF8
	gender_msgbox 86, 87
	closemsg
	apply_movement obj_T20R0101_doctor, _13D4
	wait_movement
	npc_msg 88
	closemsg
	apply_movement obj_T20R0101_doctor, _13B8
	wait_movement
	npc_msg 89
	closemsg
	apply_movement obj_T20R0101_doctor, _13DE
	wait_movement
	npc_msg 90
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_412F, 2
	releaseall
	end

_0F65:
	compare VAR_TEMP_x4005, 3
	goto_if_ne _10DD
	apply_movement obj_player, _14D4
	wait_movement
	apply_movement obj_partner_poke, _14E2
	goto _0F8A

_0F8A:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0F98:
	apply_movement obj_T20R0101_doctor, _14F4
	wait_movement
	buffer_players_name 0
	gender_msgbox 81, 82
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_412F, 1
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0FBD:
	buffer_players_name 0
	gender_msgbox 81, 82
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_412F, 1
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0FD8:
	goto_if_unset FLAG_UNK_109, _1102
	gender_msgbox 104, 105
	goto _114B

_0FED:
	gender_msgbox 47, 48
	goto _114B

_0FF7:
	goto _114B

_0FFD:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _1190
	buffer_players_name 0
	gender_msgbox 42, 43
	wait_button_or_walk_away
	closemsg
	goto _091F

_101B:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _093E
	apply_movement obj_T20R0101_assistantm, _1502
	wait_movement
	buffer_players_name 0
	gender_msgbox 19, 20
	goto_if_no_item_space ITEM_POTION, 5, _0E4A
	setvar VAR_SPECIAL_x8004, 17
	setvar VAR_SPECIAL_x8005, 5
	callstd std_obtain_item_verbose
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 2
	npc_msg 21
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0E54
	apply_movement obj_T20R0101_assistantm, _141C
	goto _0E6F

_1092:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _119F
	apply_movement obj_T20R0101_assistantm, _1510
	goto _0E6F

_10AD:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _11BA
	npc_msg 55
	goto _09C1

_10C3:
	giveitem_no_check ITEM_TOXIC_PLATE, 1
	setflag 16298
	closemsg
	releaseall
	end

_10DD:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _11C5
	apply_movement obj_player, _151A
	wait_movement
	apply_movement obj_partner_poke, _1528
	goto _0F8A

_1102:
	gender_msgbox 47, 48
	goto_if_no_item_space ITEM_EVERSTONE, 1, _11EA
	callstd std_give_item_verbose
	setflag FLAG_UNK_072
	setflag FLAG_GOT_EVERSTONE_FROM_ELM
	setvar VAR_TEMP_x400F, 0
	npc_msg 49
	buffer_players_name 0
	gender_msgbox 50, 51
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_114B:
	goto_if_no_item_space ITEM_EVERSTONE, 1, _11EA
	callstd std_give_item_verbose
	setflag FLAG_UNK_072
	setflag FLAG_GOT_EVERSTONE_FROM_ELM
	setvar VAR_TEMP_x400F, 0
	npc_msg 49
	buffer_players_name 0
	gender_msgbox 50, 51
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1190:
	buffer_players_name 0
	gender_msgbox 44, 45
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_119F:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0E6F
	apply_movement obj_T20R0101_assistantm, _152E
	wait_movement
	releaseall
	end

_11BA:
	npc_msg 55
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_11C5:
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _11F4
	apply_movement obj_player, _1538
	wait_movement
	apply_movement obj_partner_poke, _1528
	goto _0F8A

_11EA:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_11F4:
	apply_movement obj_player, _154A
	wait_movement
	apply_movement obj_partner_poke, _14E2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

	.align 4
_1214:

	step 12, 2
	step 15, 1
	step 12, 1
	step_end
	.align 4
_1222:

	step 13, 2
	step 14, 4
	step 32, 1
	step_end
	.align 4
_1230:

	step 33, 1
	step_end
	.align 4
_1236:

	step 32, 1
	step_end
	.align 4
_123C:

	step 65, 1
	step 33, 1
	step_end
	.align 4
_1246:

	step 3, 1
	step_end
	.align 4
_124C:

	step 75, 1
	step 78, 6
	step 32, 1
	step_end
	.align 4
_125A:

	step 76, 8
	step 2, 1
	step_end
	.align 4
_1264:

	step 35, 1
	step_end
	.align 4
_126A:

	step 16, 6
	step 18, 1
	step 48, 2
	step_end
	.align 4
_1278:

	step 63, 4
	step 33, 1
	step_end
	.align 4
_1282:

	step 75, 1
	step 60, 1
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step_end
	.align 4
_12AC:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step 66, 1
	step 1, 1
	step_end
	.align 4
_12C6:

	step 1, 1
	step 62, 1
	step 13, 6
	step 3, 1
	step 15, 1
	step 1, 1
	step 13, 2
	step_end
	.align 4
_12E4:

	step 14, 1
	step 12, 2
	step 35, 1
	step_end
	.align 4
_12F2:

	step 1, 1
	step 13, 6
	step 15, 1
	step 13, 2
	step_end
	.align 4
_1304:

	step 0, 1
	step_end
	.align 4
_130A:

	step 33, 1
	step_end
	.align 4
_1310:

	step 49, 1
	step 71, 1
	step 80, 1
	step 72, 1
	step_end
	.align 4
_1322:

	step 77, 1
	step_end
	.align 4
_1328:

	step 0, 1
	step 8, 1
	step 64, 1
	step 1, 1
	step_end
	.align 4
_133A:

	step 77, 1
	step_end
	.align 4
_1340:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_134A:

	step 78, 3
	step 33, 1
	step_end
	.align 4
_1354:

	step 12, 7
	step_end
	.align 4
_135A:

	step 12, 5
	step 15, 1
	step 12, 1
	step 34, 1
	step_end
	.align 4
_136C:

	step 14, 5
	step 13, 1
	step_end
	.align 4
_1376:

	step 12, 1
	step 15, 5
	step 33, 1
	step_end
	.align 4
_1384:

	step 1, 1
	step 75, 1
	step 33, 2
	step_end
	.align 4
_1392:

	step 12, 1
	step_end
	.align 4
_1398:

	step 12, 3
	step_end
	.align 4
_139E:

	step 75, 1
	step 12, 1
	step 65, 1
	step_end
	.align 4
_13AC:

	step 13, 1
	step_end
	.align 4
_13B2:

	step 33, 1
	step_end
	.align 4
_13B8:

	step 13, 1
	step 15, 1
	step 33, 1
	step_end
	.align 4
_13C6:

	step 49, 1
	step 65, 1
	step 48, 1
	step_end
	.align 4
_13D4:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_13DE:

	step 12, 1
	step 14, 1
	step 33, 1
	step_end
	.align 4
_13EC:

	step 12, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.align 4
_140E:

	step 75, 1
	step 78, 5
	step 32, 1
	step_end
	.align 4
_141C:

	step 79, 6
	step 34, 1
	step_end
	.align 4
_1426:

	step 13, 1
	step 34, 1
	step_end
	.align 4
_1430:

	step 63, 1
	step 35, 1
	step_end
	.align 4
_143A:

	step 77, 3
	step 78, 1
	step 77, 4
	step_end
	.align 4
_1448:

	step 32, 1
	step_end
	.align 4
_144E:

	step 12, 2
	step 14, 1
	step 12, 1
	step_end
	.align 4
_145C:

	step 13, 1
	step 32, 1
	step_end
	.align 4
_1466:

	step 15, 1
	step 13, 1
	step 32, 1
	step_end
	.align 4
_1474:

	step 12, 1
	step 14, 2
	step 32, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.align 4
_149E:

	step 13, 1
	step_end
	.align 4
_14A4:

	step 75, 1
	step 62, 1
	step_end
	.align 4
_14AE:

	step 75, 1
	step 78, 4
	step 32, 1
	step_end
	.align 4
_14BC:

	step 79, 5
	step 34, 1
	step_end
	.align 4
_14C6:

	step 12, 2
	step 14, 2
	step 12, 1
	step_end
	.align 4
_14D4:

	step 13, 2
	step 15, 1
	step 32, 1
	step_end
	.align 4
_14E2:

	step 13, 1
	step 15, 2
	step 12, 1
	step 32, 1
	step_end
	.align 4
_14F4:

	step 13, 1
	step 15, 2
	step 33, 1
	step_end
	.align 4
_1502:

	step 75, 1
	step 78, 3
	step 32, 1
	step_end
	.align 4
_1510:

	step 79, 4
	step 34, 1
	step_end
	.align 4
_151A:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_1528:

	step 32, 1
	step_end
	.align 4
_152E:

	step 79, 3
	step 34, 1
	step_end
	.align 4
_1538:

	step 15, 1
	step 13, 3
	step 14, 1
	step 32, 1
	step_end
	.align 4
_154A:

	step 14, 1
	step 13, 3
	step 15, 1
	step 32, 1
	step_end
	.align 4


.close
