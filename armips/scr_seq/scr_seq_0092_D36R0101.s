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

.include "armips/scr_seq/event_D36R0101.inc"


// text archive to grab from: 115.txt

.create "build/a012/2_092", 0


scrdef scr_seq_D36R0101_000
scrdef scr_seq_D36R0101_001
scrdef scr_seq_D36R0101_002
scrdef scr_seq_D36R0101_003
scrdef scr_seq_D36R0101_004
scrdef scr_seq_D36R0101_005
scrdef scr_seq_D36R0101_006
scrdef scr_seq_D36R0101_007
scrdef scr_seq_D36R0101_008
scrdef scr_seq_D36R0101_009
scrdef scr_seq_D36R0101_010
scrdef scr_seq_D36R0101_011
scrdef scr_seq_D36R0101_012
scrdef scr_seq_D36R0101_013
scrdef scr_seq_D36R0101_014
scrdef scr_seq_D36R0101_015
scrdef scr_seq_D36R0101_016
scrdef scr_seq_D36R0101_017
scrdef scr_seq_D36R0101_018
scrdef scr_seq_D36R0101_019
scrdef scr_seq_D36R0101_020
scrdef scr_seq_D36R0101_021
scrdef scr_seq_D36R0101_022
scrdef scr_seq_D36R0101_023
scrdef scr_seq_D36R0101_024
scrdef scr_seq_D36R0101_025
scrdef scr_seq_D36R0101_026
scrdef_end

scr_seq_D36R0101_000:
	get_friend_sprite VAR_OBJ_0
	goto_if_unset FLAG_UNK_189, _06A7
	clearflag FLAG_UNK_189
	goto _06EF

scr_seq_D36R0101_021:
	compare VAR_UNK_412B, 1
	call_if_eq _06FC
	compare VAR_UNK_40FE, 4
	call_if_eq _0716
	end

scr_seq_D36R0101_001:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 25
	goto_if_ne _0730
	goto _0743

scr_seq_D36R0101_003:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4004, 1
	goto_if_eq _075E
	setvar VAR_TEMP_x4002, 1
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 1
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 25
	goto_if_ne _0778
	goto _078B

scr_seq_D36R0101_004:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4004, 1
	goto_if_eq _075E
	setvar VAR_FARFETCHD1_STICKS1, 1
	setvar VAR_FARFETCHD1_STICKS2, 2
	setvar VAR_TEMP_x4002, 0
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 25
	goto_if_ne _07A6
	goto _07B9

scr_seq_D36R0101_005:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 41
	goto_if_ne _07D4
	goto _07E7

scr_seq_D36R0101_006:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4003, 0
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 41
	goto_if_ne _0808
	goto _081B

scr_seq_D36R0101_007:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4003, 1
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 41
	goto_if_ne _0836
	goto _0849

scr_seq_D36R0101_008:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4003, 0
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 41
	goto_if_ne _0864
	goto _0877

scr_seq_D36R0101_009:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4003, 0
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 41
	goto_if_ne _0892
	goto _08A5

scr_seq_D36R0101_016:
	scrcmd_609
	lockall
	apply_movement obj_player, _2268
	wait_movement
	apply_movement obj_D36R0101_gsbigman, _2272
	wait_movement
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 5
	apply_movement obj_D36R0101_gsbigman, _2278
	wait_movement
	apply_movement obj_D36R0101_gsbigman, _2272
	wait_movement
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 5
	apply_movement obj_D36R0101_gsbigman, _2278
	wait_movement
	setvar VAR_UNK_40EA, 1
	releaseall
	end

scr_seq_D36R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 11
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08C0
	npc_msg 14
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _08CD
	get_partymon_species VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	setorcopyvar VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _08DA
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HEADBUTT, VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08E5
	scrcmd_656 VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08F5
	npc_msg 16
	closemsg
	goto _09B2

scr_seq_D36R0101_010:
	goto_if_set FLAG_FOUND_FIRST_FARFETCHD, _0A2B
	goto _0A3C

scr_seq_D36R0101_017:
	scrcmd_609
	lockall
	apply_movement obj_D36R0101_gsboy1, _2286
	apply_movement obj_player, _228C
	wait_movement
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_40F4, 0
	releaseall
	end

scr_seq_D36R0101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_HM01, _0A4D
	npc_msg 6
	goto_if_no_item_space ITEM_HM01, 1, _0A58
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM01
	clearflag FLAG_UNK_1AE
	clearflag FLAG_UNK_1AC
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D36R0101_014:
	play_cry SPECIES_FARFETCHD, 0
	simple_npc_msg 4
	end

scr_seq_D36R0101_015:
	scrcmd_609
	lockall
	callstd std_play_kimono_girl_music
	apply_movement obj_D36R0101_dancer, _2296
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _0A62
	apply_movement obj_D36R0101_dancer, _22A0
	goto _0A9C

scr_seq_D36R0101_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0ACE
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0AE2
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0AF6
	apply_movement obj_player, _22AE
	apply_movement obj_D36R0101_gsmiddleman1, _22C4
	goto _0B11

scr_seq_D36R0101_012:
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B72
	compare VAR_UNK_412B, 2
	goto_if_ge _0B9A
	compare VAR_UNK_412B, 1
	goto_if_eq _0B72
	get_party_lead_alive VAR_TEMP_x4000
	follower_poke_is_event_trigger 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0BD0
	goto _0B9A

scr_seq_D36R0101_019:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4008, 1
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _0BDA
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _22CE
	goto _0BF5

scr_seq_D36R0101_020:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4008, 1
	call _0C40
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0C5D
	call _0C67
	goto _0C70

scr_seq_D36R0101_022:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D36R0101_var_1, _22D4
	apply_movement obj_player, _22E6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	gender_msgbox 61, 60
	closemsg
	apply_movement obj_D36R0101_follower_mon_static_marill, _22F0
	wait_movement
	callstd std_play_friend_music
	apply_movement obj_D36R0101_var_1, _230A
	wait_movement
	gender_msgbox 63, 62
	closemsg
	apply_movement obj_D36R0101_var_1, _231C
	wait_movement
	gender_msgbox 65, 64
	closemsg
	apply_movement obj_D36R0101_var_1, _232A
	apply_movement obj_D36R0101_follower_mon_static_marill, _2330
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 66
	closemsg
	apply_movement obj_D36R0101_var_1, _2336
	apply_movement obj_D36R0101_follower_mon_static_marill, _234C
	wait_movement
	callstd std_fade_end_friend_music
	touchscreen_menu_show
	setvar VAR_UNK_40FE, 5
	hide_person obj_D36R0101_var_1
	hide_person obj_D36R0101_follower_mon_static_marill
	setflag FLAG_HIDE_ILEX_FOREST_FRIEND
	releaseall
	end

scr_seq_D36R0101_013:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 27, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D36R0101_023:
	lockall
	npc_msg 68
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	clearflag 16377
	clearflag 16374
	clearflag 16373
	closemsg
	setvar 25001, 2
	releaseall
	end

scr_seq_D36R0101_024:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BRELOOM, 0
	wait_cry
	wild_battle SPECIES_BRELOOM, 23, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C74
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D36R0101_follower_mon_breloom
	setflag 16367
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_D36R0101_025:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 16239, _225B
	npc_msg 72
	buffer_players_name 0
	closemsg
	apply_movement obj_D36R0101_gsboy3, _285C
	wait_movement
	faceplayer
	npc_msg 73
	giveitem_no_check ITEM_TM081, 1
	setflag 16239
	npc_msg 74
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D36R0101_026:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 75
	closemsg
	play_cry SPECIES_IVYSAUR, 0
	wait_cry
	npc_msg 76
	closemsg
	apply_movement obj_D36R0101_leader2, _285C
	wait_movement
	faceplayer
	npc_msg 77
	giveitem_no_check ITEM_TM086, 1
	npc_msg 78
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D36R0101_leader2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_DOOR
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_06A7:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0C7A
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0C84
	compare VAR_TEMP_x4000, 6
	goto_if_eq _0C84
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0C84
	setflag FLAG_HIDE_CAMERON
	goto _06EF

_06EF:
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _0C95
	end

_06FC:
	move_person_facing obj_D36R0101_gsoldman1, 15, 0, 58, DIR_SOUTH
	move_person_facing obj_D36R0101_follower_mon_static_pichu_spiky, 15, 0, 59, DIR_EAST
	return

_0716:
	move_person_facing obj_D36R0101_var_1, 15, 0, 58, DIR_SOUTH
	move_person_facing obj_D36R0101_follower_mon_static_marill, 11, 0, 58, DIR_EAST
	return

_0730:
	compare VAR_TEMP_x4000, 32
	goto_if_ne _0743
	goto _0CE9

_0743:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _0D0A
	goto _0D1D

_075E:
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _237A
	wait_movement
	releaseall
	end

_0778:
	compare VAR_TEMP_x4000, 32
	goto_if_ne _078B
	goto _0D4A

_078B:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _0D65
	goto _0D78

_07A6:
	compare VAR_TEMP_x4000, 32
	goto_if_ne _07B9
	goto _0D86

_07B9:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _0DA1
	goto _0DB4

_07D4:
	compare VAR_TEMP_x4000, 49
	goto_if_ne _07E7
	goto _0DC2

_07E7:
	setvar VAR_TEMP_x4003, 0
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _0DDD
	goto _0DF0

_0808:
	compare VAR_TEMP_x4000, 49
	goto_if_ne _081B
	goto _0E31

_081B:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _0E4C
	goto _0E5F

_0836:
	compare VAR_TEMP_x4000, 49
	goto_if_ne _0849
	goto _0E6D

_0849:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _0E88
	goto _0E9B

_0864:
	compare VAR_TEMP_x4000, 49
	goto_if_ne _0877
	goto _0EA9

_0877:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _0EC4
	goto _0ED7

_0892:
	compare VAR_TEMP_x4000, 49
	goto_if_ne _08A5
	goto _0EE5

_08A5:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _0F00
	goto _0F13

_08C0:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_08CD:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_08DA:
	npc_msg 15
	closemsg
	goto _09B2

_08E5:
	buffer_mon_species_name 0, VAR_SPECIAL_x8006
	npc_msg 23
	closemsg
	goto _09B2

_08F5:
	count_mon_moves VAR_SPECIAL_x8002, VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8002, 3
	goto_if_le _0F27
	touchscreen_menu_hide
	bufferpartymonnick 0, VAR_SPECIAL_x8006
	npc_msg 17
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F5F
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	pokemon_summary_screen 1, VAR_SPECIAL_x8006, 29
	get_move_selection 1, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8001, 4
	goto_if_eq _0F79
	buffer_party_mon_move_name 1, VAR_SPECIAL_x8006, VAR_SPECIAL_x8001
	npc_msg 18
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F5F
	set_mon_move VAR_SPECIAL_x8006, VAR_SPECIAL_x8001, MOVE_HEADBUTT
	npc_msg 20
	play_se SEQ_SE_DP_KON
	wait_se SEQ_SE_DP_KON
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 24
	wait 32, VAR_SPECIAL_RESULT
	npc_msg 25
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	play_cry VAR_SPECIAL_x8005, 0
	goto _0F95

_09B2:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _08CD
	get_partymon_species VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	setorcopyvar VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _08DA
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HEADBUTT, VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08E5
	scrcmd_656 VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08F5
	npc_msg 16
	closemsg
	goto _09B2

_0A2B:
	goto_if_set FLAG_FOUND_SECOND_FARFETCHD, _0FA2
	goto _0FB5

_0A3C:
	goto_if_set FLAG_FOUND_SECOND_FARFETCHD, _0FB5
	goto _0FC8

_0A4D:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0A58:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0A62:
	apply_movement obj_D36R0101_dancer, _2384
	wait_movement
	npc_msg 29
	closemsg
	apply_movement obj_D36R0101_dancer, _2392
	wait_movement
	npc_msg 30
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0FE1
	npc_msg 31
	goto _1031

_0A9C:
	wait_movement
	npc_msg 29
	closemsg
	apply_movement obj_D36R0101_dancer, _2392
	wait_movement
	npc_msg 30
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0FE1
	npc_msg 31
	goto _1031

_0ACE:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0AE2:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0AF6:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _107E
	apply_movement obj_player, _23D4
	goto _0B11

_0B11:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _10A1
	apply_movement obj_partner_poke, _23DE
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 8
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0B72:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	hasitem ITEM_AZURE_FLUTE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10DB
	releaseall
	end

_0B9A:
	compare VAR_UNK_40FE, 4
	goto_if_ge _0B72
	goto_if_unset FLAG_BEAT_RADIO_TOWER_ROCKETS, _0B72
	get_party_lead_alive VAR_TEMP_x4006
	follower_poke_is_event_trigger 3, VAR_TEMP_x4006, VAR_TEMP_x4007
	compare VAR_TEMP_x4007, 0
	goto_if_ne _1195
	goto _0B72

_0BD0:
	clearflag FLAG_HIDE_ILEX_FOREST_SPIKY_EAR_PICHU
	goto _119B

_0BDA:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _130C
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _23EC
	goto _0BF5

_0BF5:
	wait_movement
	play_cry SPECIES_PICHU, 0
	npc_msg 43
	wait_cry
	closemsg
	call _0C40
	compare VAR_SPECIAL_x8004, 1
	goto_if_ge _135F
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _136A
	apply_movement obj_D36R0101_gsoldman1, _23F2
	goto _1385

_0C40:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_lt _13AB
	setvar VAR_SPECIAL_x8004, 1
	goto _13B3

_0C5D:
	call _13B5
	releaseall
	end

_0C67:
	npc_msg 55
	wait_button_or_walk_away
	closemsg
	return

_0C70:
	releaseall
	end

_0C74:
	white_out
	releaseall
	end

_0C7A:
	setflag FLAG_HIDE_CAMERON
	goto _06EF

_0C84:
	clearflag FLAG_HIDE_CAMERON
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _0C95
	end

_0C95:
	setvar VAR_FARFETCHD1_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 1
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 0
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	goto_if_set FLAG_FOUND_FIRST_FARFETCHD, _13D5
	goto_if_set FLAG_FOUND_SECOND_FARFETCHD, _13E8
	end

_0CE9:
	setvar VAR_TEMP_x4002, 0
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _13F6
	goto _1409

_0D0A:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0CE9
	goto _1442

_0D1D:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4002, 0
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1459
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _23F8
	goto _1480

_0D4A:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _1486
	goto _1499

_0D65:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0D4A
	goto _14A7

_0D78:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2406
	wait_movement
	releaseall
	end

_0D86:
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 52
	goto_if_ne _14CB
	goto _14DE

_0DA1:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0D86
	goto _14EC

_0DB4:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2406
	wait_movement
	releaseall
	end

_0DC2:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _14FA
	goto _150D

_0DDD:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0DC2
	goto _1524

_0DF0:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1563
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2410
	wait_movement
	setvar VAR_FARFETCHD2_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS2, 1
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	goto _15AC

_0E31:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _15C6
	goto _15D9

_0E4C:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0E31
	goto _15FF

_0E5F:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_0E6D:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _160D
	goto _1620

_0E88:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0E6D
	goto _1646

_0E9B:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_0EA9:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _1654
	goto _1667

_0EC4:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0EA9
	goto _1675

_0ED7:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2406
	wait_movement
	releaseall
	end

_0EE5:
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 54
	goto_if_ne _1689
	goto _169C

_0F00:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0EE5
	goto _16BC

_0F13:
	setvar VAR_FARFETCHD2_STICKS4, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_0F27:
	bufferpartymonnick 0, VAR_SPECIAL_x8006
	set_mon_move VAR_SPECIAL_x8006, VAR_SPECIAL_x8002, MOVE_HEADBUTT
	npc_msg 21
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 26
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	wait 32, VAR_SPECIAL_RESULT
	play_cry VAR_SPECIAL_x8005, 0
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0F5F:
	npc_msg 19
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _16CA
	goto _08C0

_0F79:
	npc_msg 19
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _16CA
	goto _08C0

_0F95:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0FA2:
	simple_npc_msg 2
	end

_0FB5:
	simple_npc_msg 1
	end

_0FC8:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_40F4, 0
	releaseall
	end

_0FE1:
	npc_msg 32
	closemsg
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 50
	goto_if_eq _1772
	compare VAR_TEMP_x4001, 51
	goto_if_eq _1772
	release obj_partner_poke
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1799
	apply_movement obj_player, _2428
	apply_movement obj_partner_poke, _243A
	goto _17AD

_1031:
	closemsg
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 50
	goto_if_eq _1772
	compare VAR_TEMP_x4001, 51
	goto_if_eq _1772
	release obj_partner_poke
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1799
	apply_movement obj_player, _2428
	apply_movement obj_partner_poke, _243A
	goto _17AD

_107E:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _17B9
	apply_movement obj_player, _2454
	apply_movement obj_D36R0101_gsmiddleman1, _22C4
	goto _0B11

_10A1:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 8
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_10DB:
	goto_if_set 16327, _0C70
	npc_msg 71
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C70
	stop_bgm 0
	play_bgm SEQ_GS_PHC
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 69
	closemsg
	play_cry SPECIES_CELEBI, 0
	wait_cry
	apply_movement obj_player, _2466
	play_se SEQ_SE_GS_TIMESLIP
	wait_movement
	scrcmd_810
	move_person_facing obj_D36R0101_follower_mon_celebi, 17, 0, 56, DIR_SOUTH
	fade_screen 6, 15, 1, RGB_WHITE
	wait_fade
	apply_movement obj_player, _2470
	apply_movement obj_D36R0101_follower_mon_celebi, _2476
	npc_msg 70
	closemsg
	wild_battle SPECIES_CELEBI, 45, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C74
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	call_if_eq _182E
	move_person_facing obj_D36R0101_follower_mon_celebi, 6666, 0, 6666, DIR_SOUTH
	setflag 16327
	releaseall
	end

_1195:
	goto _1834

_119B:
	scrcmd_609
	lockall
	stop_bgm 0
	clearflag FLAG_HIDE_ILEX_FOREST_SPIKY_EAR_PICHU
	show_person obj_D36R0101_follower_mon_static_pichu_spiky
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _247C
	wait_movement
	play_cry SPECIES_PICHU, 0
	wait_cry
	apply_movement obj_player, _2466
	wait_movement
	callstd std_play_pichu_music
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _248E
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _24B4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 38
	closemsg
	apply_movement obj_partner_poke, _24DA
	wait_movement
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _24E8
	wait_movement
	apply_movement obj_partner_poke, _251A
	wait_movement
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _2528
	apply_movement obj_partner_poke, _254A
	wait_movement
	clearflag FLAG_HIDE_ILEX_FOREST_OLD_MAN
	show_person obj_D36R0101_gsoldman1
	apply_movement obj_D36R0101_gsoldman1, _2564
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _2576
	apply_movement obj_partner_poke, _25D0
	wait_movement
	apply_movement obj_player, _260A
	wait_movement
	npc_msg 46
	closemsg
	apply_movement obj_D36R0101_gsoldman1, _2610
	wait_movement
	npc_msg 47
	closemsg
	apply_movement obj_D36R0101_gsoldman1, _261A
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _2628
	apply_movement obj_player, _2636
	wait_movement
	npc_msg 48
	closemsg
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _263C
	apply_movement obj_partner_poke, _2646
	wait_movement
	npc_msg 49
	closemsg
	apply_movement obj_partner_poke, _2650
	wait_movement
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _2656
	wait_movement
	apply_movement obj_partner_poke, _265C
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _2662
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 39
	play_cry SPECIES_PICHU, 0
	npc_msg 43
	wait_cry
	closemsg
	call _0C40
	compare VAR_SPECIAL_x8004, 1
	call_if_ge _13B5
	compare VAR_SPECIAL_x8004, 0
	call_if_eq _18F5
	releaseall
	end

_130C:
	apply_movement obj_D36R0101_follower_mon_static_pichu_spiky, _2674
	wait_movement
	play_cry SPECIES_PICHU, 0
	npc_msg 43
	wait_cry
	closemsg
	call _0C40
	compare VAR_SPECIAL_x8004, 1
	goto_if_ge _135F
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _136A
	apply_movement obj_D36R0101_gsoldman1, _23F2
	goto _1385

_135F:
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_136A:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _1937
	apply_movement obj_D36R0101_gsoldman1, _267A
	goto _1385

_1385:
	wait_movement
	npc_msg 52
	closemsg
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1965
	apply_movement obj_player, _2680
	goto _1980

_13AB:
	setvar VAR_SPECIAL_x8004, 0
	return

_13B3:
	return

_13B5:
	npc_msg 50
	wait_button_or_walk_away
	closemsg
	compare VAR_TEMP_x4008, 0
	goto_if_ne _1998
	callstd std_fade_end_pichu_music
	setvar VAR_UNK_412B, 1
	return

_13D5:
	goto_if_set FLAG_FOUND_SECOND_FARFETCHD, _19A0
	setvar VAR_FARFETCHD1_STICKS1, 2
	end

_13E8:
	setvar VAR_FARFETCHD1_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS4, 2
	end

_13F6:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0D1D
	goto _19AE

_1409:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _19E7
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _268A
	setvar VAR_FARFETCHD1_STICKS2, 1
	setvar VAR_FARFETCHD1_STICKS1, 1
	setvar VAR_TEMP_x4004, 1
	goto _1A0E

_1442:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _1A14
	goto _1A27

_1459:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _1480
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _268A
	setvar VAR_FARFETCHD1_STICKS2, 1
	setvar VAR_FARFETCHD1_STICKS1, 1
	wait_movement
	releaseall
	end

_1480:
	wait_movement
	releaseall
	end

_1486:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0D78
	goto _1A5F

_1499:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2406
	wait_movement
	releaseall
	end

_14A7:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2406
	wait_movement
	goto_if_set FLAG_FARFETCHD_NOTICED_YOU, _1A6D
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	setflag FLAG_FARFETCHD_NOTICED_YOU
	releaseall
	end

_14CB:
	compare VAR_TEMP_x4001, 62
	goto_if_ne _0DB4
	goto _1A71

_14DE:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2406
	wait_movement
	releaseall
	end

_14EC:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _241E
	wait_movement
	releaseall
	end

_14FA:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0DF0
	goto _1A7F

_150D:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1AC4
	goto _1AD7

_1524:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1B05
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2410
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	goto _1B38

_1563:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _15AC
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _268A
	wait_movement
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 1
	setvar VAR_FARFETCHD2_STICKS4, 2
	goto_if_set FLAG_UNK_126, _1B3E
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_126
	releaseall
	end

_15AC:
	goto_if_set FLAG_UNK_126, _1B3E
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_126
	releaseall
	end

_15C6:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0E5F
	goto _1B42

_15D9:
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 1
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 1
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_15FF:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_160D:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0E9B
	goto _1B50

_1620:
	setvar VAR_FARFETCHD2_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 1
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_1646:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_1654:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0ED7
	goto _1B5E

_1667:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2406
	wait_movement
	releaseall
	end

_1675:
	setvar VAR_FARFETCHD2_STICKS3, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _241E
	wait_movement
	releaseall
	end

_1689:
	compare VAR_TEMP_x4001, 64
	goto_if_ne _0F13
	goto _1B72

_169C:
	setvar VAR_FARFETCHD2_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS2, 1
	setvar VAR_FARFETCHD2_STICKS4, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _237A
	wait_movement
	releaseall
	end

_16BC:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_16CA:
	bufferpartymonnick 0, VAR_SPECIAL_x8006
	npc_msg 17
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F5F
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	pokemon_summary_screen 1, VAR_SPECIAL_x8006, 29
	get_move_selection 1, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8001, 4
	goto_if_eq _0F79
	buffer_party_mon_move_name 1, VAR_SPECIAL_x8006, VAR_SPECIAL_x8001
	npc_msg 18
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F5F
	set_mon_move VAR_SPECIAL_x8006, VAR_SPECIAL_x8001, MOVE_HEADBUTT
	npc_msg 20
	play_se SEQ_SE_DP_KON
	wait_se SEQ_SE_DP_KON
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 24
	wait 32, VAR_SPECIAL_RESULT
	npc_msg 25
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	play_cry VAR_SPECIAL_x8005, 0
	goto _0F95

_1772:
	release obj_partner_poke
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1B80
	apply_movement obj_player, _2428
	apply_movement obj_partner_poke, _26A2
	goto _1BA9

_1799:
	apply_movement obj_partner_poke, _26B8
	wait_movement
	lock obj_partner_poke
	goto _1BCA

_17AD:
	wait_movement
	lock obj_partner_poke
	goto _1BCA

_17B9:
	stop_se SEQ_SE_GS_N_SESERAGI
	apply_movement obj_player, _26D6
	apply_movement obj_D36R0101_gsmiddleman1, _22C4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _10A1
	apply_movement obj_partner_poke, _23DE
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 8
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_182E:
	setflag 16304
	return

_1834:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_partner_poke, _26E8
	wait_movement
	fade_out_bgm 0, 30
	callstd std_play_friend_music
	touchscreen_menu_hide
	clearflag FLAG_HIDE_ILEX_FOREST_FRIEND
	show_person obj_D36R0101_var_1
	show_person obj_D36R0101_follower_mon_static_marill
	apply_movement obj_D36R0101_var_1, _2702
	apply_movement obj_D36R0101_follower_mon_static_marill, _270C
	wait_movement
	apply_movement obj_player, _2736
	wait_movement
	buffer_players_name 0
	gender_msgbox 57, 56
	closemsg
	callstd std_fade_end_friend_music
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 6, 6, 0, RGB_WHITE
	wait_fade
	wait 15, VAR_SPECIAL_RESULT
	fade_screen 6, 6, 1, RGB_WHITE
	wait_fade
	apply_movement obj_player, _273C
	apply_movement obj_D36R0101_var_1, _275E
	wait_movement
	gender_msgbox 59, 58
	closemsg
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	setvar VAR_UNK_40FE, 1
	clearflag FLAG_HIDE_ROUTE_22_GIOVANNI_RIVAL
	clearflag FLAG_HIDE_ROUTE_22_FRIEND
	setflag FLAG_HIDE_ILEX_FOREST_FRIEND
	warp MAP_R22, 0, 954, 280, DIR_SOUTH
	fade_screen 6, 15, 1, RGB_WHITE
	wait_fade
	releaseall
	end

_18F5:
	npc_msg 52
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _2770
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1BE5
	apply_movement obj_D36R0101_gsoldman1, _23F2
	goto _1C23

_1937:
	apply_movement obj_D36R0101_gsoldman1, _277A
	wait_movement
	npc_msg 52
	closemsg
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1965
	apply_movement obj_player, _2680
	goto _1980

_1965:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _1C59
	apply_movement obj_player, _2770
	goto _1980

_1980:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _1C79
	goto _1C98

_1998:
	setvar VAR_UNK_412B, 1
	return

_19A0:
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	end

_19AE:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4004, 0
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _1C9C
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2780
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	goto _1CC3

_19E7:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1A0E
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _278E
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	wait_movement
	releaseall
	end

_1A0E:
	wait_movement
	releaseall
	end

_1A14:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1A27
	goto _1CC9

_1A27:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _2780
	wait_movement
	goto_if_set FLAG_UNK_126, _1D0E
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_126
	releaseall
	end

_1A5F:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _237A
	wait_movement
	releaseall
	end

_1A6D:
	releaseall
	end

_1A71:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _237A
	wait_movement
	releaseall
	end

_1A7F:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _1D12
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2780
	setvar VAR_FARFETCHD2_STICKS1, 1
	setvar VAR_FARFETCHD2_STICKS2, 1
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 1
	goto _1D45

_1AC4:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _1AD7
	goto _1D4B

_1AD7:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _279C
	wait_movement
	releaseall
	end

_1B05:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _1B38
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2780
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 1
	wait_movement
	releaseall
	end

_1B38:
	wait_movement
	releaseall
	end

_1B3E:
	releaseall
	end

_1B42:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_1B50:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_1B5E:
	setvar VAR_FARFETCHD2_STICKS3, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _237A
	wait_movement
	releaseall
	end

_1B72:
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2698
	wait_movement
	releaseall
	end

_1B80:
	apply_movement obj_partner_poke, _27AA
	wait_movement
	lock obj_partner_poke
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1D86
	apply_movement obj_D36R0101_dancer, _27C4
	goto _1DD6

_1BA9:
	wait_movement
	lock obj_partner_poke
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1D86
	apply_movement obj_D36R0101_dancer, _27C4
	goto _1DD6

_1BCA:
	compare VAR_SPECIAL_x8004, 40
	goto_if_ne _1D86
	apply_movement obj_D36R0101_dancer, _27C4
	goto _1DD6

_1BE5:
	apply_movement obj_D36R0101_gsoldman1, _267A
	wait_movement
	play_fanfare SEQ_ME_ITEM
	buffer_players_name 0
	npc_msg 44
	wait_fanfare
	npc_msg 53
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1E1E
	apply_movement obj_player, _27CA
	goto _1ED9

_1C23:
	wait_movement
	play_fanfare SEQ_ME_ITEM
	buffer_players_name 0
	npc_msg 44
	wait_fanfare
	npc_msg 53
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1E1E
	apply_movement obj_player, _27CA
	goto _1ED9

_1C59:
	apply_movement obj_player, _27D4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _1C79
	goto _1C98

_1C79:
	get_player_facing VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 3
	goto_if_ne _1BE5
	apply_movement obj_D36R0101_gsoldman1, _23F2
	goto _1C23

_1C98:
	releaseall
	end

_1C9C:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1CC3
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _278E
	setvar VAR_FARFETCHD1_STICKS1, 1
	setvar VAR_FARFETCHD1_STICKS2, 2
	wait_movement
	releaseall
	end

_1CC3:
	wait_movement
	releaseall
	end

_1CC9:
	compare VAR_TEMP_x4002, 1
	goto_if_eq _1F8C
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _23F8
	wait_movement
	goto_if_set FLAG_UNK_126, _2010
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_126
	releaseall
	end

_1D0E:
	releaseall
	end

_1D12:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1D45
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _279C
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	wait_movement
	releaseall
	end

_1D45:
	wait_movement
	releaseall
	end

_1D4B:
	compare VAR_TEMP_x4003, 1
	goto_if_eq _2014
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 1
	setvar VAR_FARFETCHD2_STICKS4, 2
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _268A
	wait_movement
	releaseall
	end

_1D86:
	apply_movement obj_D36R0101_dancer, _27E2
	wait_movement
	npc_msg 33
	closemsg
	apply_movement obj_D36R0101_dancer, _27E8
	wait_movement
	npc_msg 34
	closemsg
	apply_movement obj_D36R0101_dancer, _27EE
	wait_movement
	hide_person obj_D36R0101_dancer
	setflag FLAG_UNK_23D
	callstd std_fade_end_kimono_girl_music
	release obj_partner_poke
	apply_movement obj_partner_poke, _27FC
	wait_movement
	lock obj_partner_poke
	releaseall
	setvar VAR_UNK_40E9, 1
	end

_1DD6:
	wait_movement
	npc_msg 33
	closemsg
	apply_movement obj_D36R0101_dancer, _27E8
	wait_movement
	npc_msg 34
	closemsg
	apply_movement obj_D36R0101_dancer, _27EE
	wait_movement
	hide_person obj_D36R0101_dancer
	setflag FLAG_UNK_23D
	callstd std_fade_end_kimono_girl_music
	release obj_partner_poke
	apply_movement obj_partner_poke, _27FC
	wait_movement
	lock obj_partner_poke
	releaseall
	setvar VAR_UNK_40E9, 1
	end

_1E1E:
	apply_movement obj_player, _2812
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4008, 0
	goto_if_ne _20AF
	callstd std_fade_end_pichu_music
	give_spiky_ear_pichu
	hide_person obj_D36R0101_follower_mon_static_pichu_spiky
	setvar VAR_UNK_412B, 2
	play_fanfare SEQ_ME_SHINKAOME
	npc_msg 40
	wait_fanfare
	touchscreen_menu_hide
	npc_msg 45
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _2145
	closemsg
	get_party_count VAR_TEMP_x4009
	subvar VAR_TEMP_x4009, 1
	setvar VAR_TEMP_x400A, 0
	nop_var_490 VAR_TEMP_x4009
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_TEMP_x4009, VAR_TEMP_x400A
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x400A, 1
	goto_if_eq _2145
	bufferpartymonnick 0, VAR_TEMP_x4009
	npc_msg 54
	npc_msg 51
	closemsg
	touchscreen_menu_show
	compare VAR_TEMP_x4005, 3
	goto_if_ne _2167
	apply_movement obj_D36R0101_gsoldman1, _281C
	goto _217B

_1ED9:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4008, 0
	goto_if_ne _20AF
	callstd std_fade_end_pichu_music
	give_spiky_ear_pichu
	hide_person obj_D36R0101_follower_mon_static_pichu_spiky
	setvar VAR_UNK_412B, 2
	play_fanfare SEQ_ME_SHINKAOME
	npc_msg 40
	wait_fanfare
	touchscreen_menu_hide
	npc_msg 45
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _2145
	closemsg
	get_party_count VAR_TEMP_x4009
	subvar VAR_TEMP_x4009, 1
	setvar VAR_TEMP_x400A, 0
	nop_var_490 VAR_TEMP_x4009
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_TEMP_x4009, VAR_TEMP_x400A
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x400A, 1
	goto_if_eq _2145
	bufferpartymonnick 0, VAR_TEMP_x4009
	npc_msg 54
	npc_msg 51
	closemsg
	touchscreen_menu_show
	compare VAR_TEMP_x4005, 3
	goto_if_ne _2167
	apply_movement obj_D36R0101_gsoldman1, _281C
	goto _217B

_1F8C:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_FARFETCHD, 0
	npc_msg 3
	closemsg
	apply_movement obj_D36R0101_follower_mon_static_farfetchd, _282A
	wait_movement
	hide_person obj_D36R0101_follower_mon_static_farfetchd
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	setvar VAR_FARFETCHD1_STICKS1, 2
	setvar VAR_FARFETCHD1_STICKS2, 2
	setflag FLAG_HIDE_FARFETCHD_1_LOST
	setflag FLAG_FOUND_FIRST_FARFETCHD
	goto_if_set FLAG_FOUND_SECOND_FARFETCHD, _2187
	clearflag FLAG_HIDE_FARFETCHD_1_FOUND
	wait 20, VAR_SPECIAL_x8004
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D36R0101, 0, 15, 65, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 5, VAR_SPECIAL_x8004
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_2010:
	releaseall
	end

_2014:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_FARFETCHD, 0
	npc_msg 3
	closemsg
	apply_movement obj_D36R0101_follower_mon_static_farfetchd_2, _2830
	wait_movement
	hide_person obj_D36R0101_follower_mon_static_farfetchd_2
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	call_if_unset FLAG_FOUND_FIRST_FARFETCHD, _223E
	setvar VAR_FARFETCHD2_STICKS1, 2
	setvar VAR_FARFETCHD2_STICKS2, 2
	setvar VAR_FARFETCHD2_STICKS3, 2
	setvar VAR_FARFETCHD2_STICKS4, 2
	setflag FLAG_HIDE_FARFETCHD_2_LOST
	setflag FLAG_FOUND_SECOND_FARFETCHD
	goto_if_set FLAG_FOUND_FIRST_FARFETCHD, _2187
	clearflag FLAG_HIDE_FARFETCHD_1_FOUND
	wait 20, VAR_SPECIAL_x8004
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D36R0101, 0, 15, 65, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 5, VAR_SPECIAL_x8004
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_20AF:
	give_spiky_ear_pichu
	hide_person obj_D36R0101_follower_mon_static_pichu_spiky
	setvar VAR_UNK_412B, 2
	play_fanfare SEQ_ME_SHINKAOME
	npc_msg 40
	wait_fanfare
	touchscreen_menu_hide
	npc_msg 45
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _2145
	closemsg
	get_party_count VAR_TEMP_x4009
	subvar VAR_TEMP_x4009, 1
	setvar VAR_TEMP_x400A, 0
	nop_var_490 VAR_TEMP_x4009
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_TEMP_x4009, VAR_TEMP_x400A
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x400A, 1
	goto_if_eq _2145
	bufferpartymonnick 0, VAR_TEMP_x4009
	npc_msg 54
	npc_msg 51
	closemsg
	touchscreen_menu_show
	compare VAR_TEMP_x4005, 3
	goto_if_ne _2167
	apply_movement obj_D36R0101_gsoldman1, _281C
	goto _217B

_2145:
	npc_msg 51
	closemsg
	touchscreen_menu_show
	compare VAR_TEMP_x4005, 3
	goto_if_ne _2167
	apply_movement obj_D36R0101_gsoldman1, _281C
	goto _217B

_2167:
	apply_movement obj_D36R0101_gsoldman1, _2836
	wait_movement
	hide_person obj_D36R0101_gsoldman1
	setflag FLAG_HIDE_ILEX_FOREST_OLD_MAN
	return

_217B:
	wait_movement
	hide_person obj_D36R0101_gsoldman1
	setflag FLAG_HIDE_ILEX_FOREST_OLD_MAN
	return

_2187:
	clearflag FLAG_HIDE_ILEX_CUT_MASTER
	show_person obj_D36R0101_gsfighter
	clearflag FLAG_HIDE_FARFETCHD_2_FOUND
	wait 20, VAR_SPECIAL_x8004
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D36R0101, 0, 15, 65, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 5, VAR_SPECIAL_x8004
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D36R0101_gsfighter, _2848
	apply_movement obj_player, _2852
	wait_movement
	goto_if_set FLAG_GOT_HM01, _2246
	npc_msg 6
	goto_if_no_item_space ITEM_HM01, 1, _2251
	callstd std_give_item_verbose
	setflag FLAG_HIDE_ILEX_CUT_MASTER
	setflag FLAG_HIDE_ILEX_APPRENTICE
	setflag FLAG_HIDE_FARFETCHD_1_LOST
	setflag FLAG_HIDE_FARFETCHD_2_LOST
	setflag FLAG_HIDE_FARFETCHD_1_FOUND
	setflag FLAG_HIDE_FARFETCHD_2_FOUND
	setflag FLAG_GOT_HM01
	clearflag FLAG_UNK_1AE
	clearflag FLAG_UNK_1AC
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_223E:
	setvar VAR_FARFETCHD1_STICKS1, 1
	return

_2246:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_2251:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_225B:
	faceplayer
	npc_msg 74
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_2268:

	step 75, 1
	step 32, 1
	step_end
	.align 4
_2272:

	step 52, 1
	step_end
	.align 4
_2278:

	step 71, 1
	step 9, 1
	step 72, 1
	step_end
	.align 4
_2286:

	step 75, 1
	step_end
	.align 4
_228C:

	step 63, 2
	step 0, 1
	step_end
	.align 4
_2296:

	step 75, 1
	step 33, 1
	step_end
	.align 4
_22A0:

	step 13, 1
	step 15, 2
	step 13, 1
	step_end
	.align 4
_22AE:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_22C4:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_22CE:

	step 34, 1
	step_end
	.align 4
_22D4:

	step 34, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step_end
	.align 4
_22E6:

	step 13, 1
	step 63, 1
	step_end
	.align 4
_22F0:

	step 63, 1
	step 51, 2
	step 71, 1
	step 52, 1
	step 53, 1
	step 72, 1
	step_end
	.align 4
_230A:

	step 34, 1
	step 75, 1
	step 63, 1
	step 34, 1
	step_end
	.align 4
_231C:

	step 14, 3
	step 65, 1
	step 50, 2
	step_end
	.align 4
_232A:

	step 15, 3
	step_end
	.align 4
_2330:

	step 15, 3
	step_end
	.align 4
_2336:

	step 14, 4
	step 12, 6
	step 33, 1
	step 63, 6
	step 12, 5
	step_end
	.align 4
_234C:

	step 71, 1
	step 53, 1
	step 72, 1
	step 32, 1
	step 14, 3
	step 63, 1
	step 35, 1
	step 63, 4
	step 32, 1
	step 48, 1
	step 12, 10
	step_end
	.align 4
_237A:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_2384:

	step 13, 1
	step 15, 3
	step 13, 1
	step_end
	.align 4
_2392:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step_end
	.align 4
_23D4:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_23DE:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_23EC:

	step 35, 1
	step_end
	.align 4
_23F2:

	step 34, 1
	step_end
	.align 4
_23F8:

	step 75, 1
	step 19, 7
	step 2, 1
	step_end
	.align 4
_2406:

	step 1, 1
	step 75, 1
	step_end
	.align 4
_2410:

	step 75, 1
	step 19, 8
	step 2, 1
	step_end
	.align 4
_241E:

	step 3, 1
	step 75, 1
	step_end
	.align 4
_2428:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_243A:

	step 12, 2
	step 14, 1
	step 12, 2
	step 14, 3
	step 35, 1
	step 51, 3
	step_end
	.align 4
_2454:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_2466:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_2470:

	step 3, 1
	step_end
	.align 4
_2476:

	step 50, 2
	step_end
	.align 4
_247C:

	step 71, 1
	step 59, 1
	step 72, 1
	step 49, 2
	step_end
	.align 4
_248E:

	step 17, 7
	step 50, 1
	step 18, 4
	step 16, 4
	step 19, 4
	step 17, 4
	step 18, 2
	step 0, 1
	step 48, 2
	step_end
	.align 4
_24B4:

	step 63, 3
	step 1, 1
	step 63, 1
	step 13, 2
	step 35, 1
	step 65, 1
	step 34, 1
	step 65, 1
	step 33, 1
	step_end
	.align 4
_24DA:

	step 15, 1
	step 13, 1
	step 1, 1
	step_end
	.align 4
_24E8:

	step 71, 1
	step 55, 1
	step 72, 1
	step 48, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
	.align 4
_251A:

	step 75, 1
	step 63, 1
	step 49, 2
	step_end
	.align 4
_2528:

	step 71, 1
	step 53, 1
	step 72, 1
	step 65, 1
	step 50, 1
	step 18, 7
	step 16, 13
	step 15, 1
	step_end
	.align 4
_254A:

	step 65, 2
	step 17, 1
	step 18, 6
	step 48, 1
	step 16, 13
	step 18, 1
	step_end
	.align 4
_2564:

	step 65, 5
	step 9, 10
	step 11, 4
	step 35, 1
	step_end
	.align 4
_2576:

	step 17, 12
	step 19, 6
	step 16, 4
	step 18, 3
	step 17, 4
	step 19, 3
	step 71, 1
	step 54, 1
	step 72, 1
	step 1, 6
	step 71, 1
	step 10, 1
	step 72, 1
	step 2, 6
	step 0, 6
	step 71, 1
	step 11, 1
	step 72, 1
	step 3, 6
	step 71, 1
	step 10, 1
	step 72, 1
	step_end
	.align 4
_25D0:

	step 17, 13
	step 19, 7
	step 48, 1
	step 50, 1
	step 63, 4
	step 71, 1
	step 55, 1
	step 72, 1
	step 1, 6
	step 3, 6
	step 0, 6
	step 2, 6
	step 66, 1
	step 14, 1
	step_end
	.align 4
_260A:

	step 34, 1
	step_end
	.align 4
_2610:

	step 32, 1
	step 65, 1
	step_end
	.align 4
_261A:

	step 33, 1
	step 65, 1
	step 75, 1
	step_end
	.align 4
_2628:

	step 65, 1
	step 32, 1
	step 65, 1
	step_end
	.align 4
_2636:

	step 33, 1
	step_end
	.align 4
_263C:

	step 48, 1
	step 51, 1
	step_end
	.align 4
_2646:

	step 54, 1
	step 50, 2
	step_end
	.align 4
_2650:

	step 34, 1
	step_end
	.align 4
_2656:

	step 51, 2
	step_end
	.align 4
_265C:

	step 48, 2
	step_end
	.align 4
_2662:

	step 75, 1
	step 63, 1
	step 13, 1
	step 34, 1
	step_end
	.align 4
_2674:

	step 33, 1
	step_end
	.align 4
_267A:

	step 35, 1
	step_end
	.align 4
_2680:

	step 12, 1
	step 35, 1
	step_end
	.align 4
_268A:

	step 75, 1
	step 17, 10
	step 0, 1
	step_end
	.align 4
_2698:

	step 0, 1
	step 75, 1
	step_end
	.align 4
_26A2:

	step 12, 2
	step 14, 1
	step 12, 2
	step 14, 3
	step 35, 1
	step_end
	.align 4
_26B8:

	step 14, 1
	step 12, 2
	step 14, 1
	step 12, 2
	step 14, 3
	step 35, 1
	step 51, 3
	step_end
	.align 4
_26D6:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_26E8:

	step 1, 1
	step 1, 1
	step 57, 1
	step 71, 1
	step 52, 1
	step 71, 1
	step_end
	.align 4
_2702:

	step 13, 11
	step 15, 2
	step_end
	.align 4
_270C:

	step 13, 8
	step 35, 1
	step 15, 1
	step 71, 1
	step 13, 1
	step 63, 1
	step 72, 1
	step 34, 1
	step 63, 1
	step 14, 1
	step_end
	.align 4
_2736:

	step 34, 1
	step_end
	.align 4
_273C:

	step 75, 1
	step 63, 1
	step 32, 1
	step 63, 1
	step 34, 1
	step 63, 1
	step 33, 1
	step 63, 1
	step_end
	.align 4
_275E:

	step 65, 1
	step 15, 2
	step 12, 2
	step 35, 1
	step_end
	.align 4
_2770:

	step 12, 1
	step 34, 1
	step_end
	.align 4
_277A:

	step 33, 1
	step_end
	.align 4
_2780:

	step 75, 1
	step 16, 10
	step 1, 1
	step_end
	.align 4
_278E:

	step 75, 1
	step 18, 7
	step 3, 1
	step_end
	.align 4
_279C:

	step 75, 1
	step 18, 8
	step 3, 1
	step_end
	.align 4
_27AA:

	step 14, 1
	step 12, 2
	step 14, 1
	step 12, 2
	step 14, 3
	step 35, 1
	step_end
	.align 4
_27C4:

	step 34, 1
	step_end
	.align 4
_27CA:

	step 13, 1
	step 35, 1
	step_end
	.align 4
_27D4:

	step 15, 1
	step 12, 2
	step 34, 1
	step_end
	.align 4
_27E2:

	step 14, 1
	step_end
	.align 4
_27E8:

	step 33, 1
	step_end
	.align 4
_27EE:

	step 14, 2
	step 12, 2
	step 14, 6
	step_end
	.align 4
_27FC:

	step 15, 3
	step 13, 2
	step 15, 1
	step 13, 1
	step 35, 1
	step_end
	.align 4
_2812:

	step 13, 1
	step 34, 1
	step_end
	.align 4
_281C:

	step 9, 2
	step 10, 4
	step 8, 12
	step_end
	.align 4
_282A:

	step 37, 5
	step_end
	.align 4
_2830:

	step 39, 5
	step_end
	.align 4
_2836:

	step 35, 1
	step 65, 1
	step 10, 4
	step 8, 10
	step_end
	.align 4
_2848:

	step 12, 10
	step 15, 3
	step_end
	.align 4
_2852:

	step 63, 12
	step 2, 1
	step_end
	.align 4
_285C:

	step 75, 1
	step_end
	.align 4


.close
