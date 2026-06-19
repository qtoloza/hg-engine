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

.include "armips/scr_seq/event_D22R0101.inc"


// text archive to grab from: 062.txt

.create "build/a012/2_025", 0


scrdef scr_seq_D22R0101_000
scrdef scr_seq_D22R0101_001
scrdef scr_seq_D22R0101_002
scrdef scr_seq_D22R0101_003
scrdef scr_seq_D22R0101_004
scrdef scr_seq_D22R0101_005
scrdef scr_seq_D22R0101_006
scrdef scr_seq_D22R0101_007
scrdef scr_seq_D22R0101_008
scrdef scr_seq_D22R0101_009
scrdef scr_seq_D22R0101_010
scrdef scr_seq_D22R0101_011
scrdef scr_seq_D22R0101_012
scrdef scr_seq_D22R0101_013
scrdef scr_seq_D22R0101_014
scrdef scr_seq_D22R0101_015
scrdef scr_seq_D22R0101_016
scrdef scr_seq_D22R0101_017
scrdef scr_seq_D22R0101_018
scrdef scr_seq_D22R0101_019
scrdef scr_seq_D22R0101_020
scrdef scr_seq_D22R0101_021
scrdef scr_seq_D22R0101_022
scrdef scr_seq_D22R0101_023
scrdef scr_seq_D22R0101_024
scrdef scr_seq_D22R0101_025
scrdef scr_seq_D22R0101_026
scrdef scr_seq_D22R0101_027
scrdef scr_seq_D22R0101_028
scrdef scr_seq_D22R0101_029
scrdef_end

scr_seq_D22R0101_011:
	compare VAR_UNK_40F7, 1
	call_if_eq _03EA
	end

scr_seq_D22R0101_025:
	goto_if_unset FLAG_UNK_189, _0450
	clearflag FLAG_UNK_189
	end

scr_seq_D22R0101_012:
	simple_npc_msg 45
	end

scr_seq_D22R0101_013:
	simple_npc_msg 48
	end

scr_seq_D22R0101_014:
	simple_npc_msg 51
	end

scr_seq_D22R0101_015:
	simple_npc_msg 54
	end

scr_seq_D22R0101_016:
	simple_npc_msg 57
	end

scr_seq_D22R0101_017:
	simple_npc_msg 60
	end

scr_seq_D22R0101_018:
	simple_npc_msg 63
	end

scr_seq_D22R0101_019:
	simple_npc_msg 66
	end

scr_seq_D22R0101_020:
	simple_npc_msg 69
	end

scr_seq_D22R0101_021:
	simple_npc_msg 72
	end

scr_seq_D22R0101_022:
	simple_npc_msg 42
	end

scr_seq_D22R0101_026:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _04B0
	buffer_players_name 0
	npc_msg 84
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_QUICK_CLAW_FROM_NATIONAL_PARK_WOMAN, _0514
	npc_msg 2
	goto_if_no_item_space ITEM_QUICK_CLAW, 1, _051F
	callstd std_give_item_verbose
	setflag FLAG_GOT_QUICK_CLAW_FROM_NATIONAL_PARK_WOMAN
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0101_023:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0529
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _053D
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0551
	apply_movement obj_player, _0BC2
	apply_movement obj_D22R0101_gsmiddleman1_3, _0BD8
	goto _056C

scr_seq_D22R0101_024:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0529
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _053D
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05CD
	apply_movement obj_player, _0BC2
	apply_movement obj_D22R0101_gsmiddleman1_4, _0BD8
	goto _05E8

scr_seq_D22R0101_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 22, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_002:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 23, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_003:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 24, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_004:
	simple_npc_msg 0
	end

scr_seq_D22R0101_005:
	simple_npc_msg 1
	end

scr_seq_D22R0101_006:
	simple_npc_msg 5
	end

scr_seq_D22R0101_007:
	simple_npc_msg 6
	end

scr_seq_D22R0101_008:
	simple_npc_msg 9
	end

scr_seq_D22R0101_009:
	simple_npc_msg 7
	end

scr_seq_D22R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	play_cry SPECIES_PERSIAN, 0
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D22R0101_027:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_SHAYMIN, 0
	npc_msg 90
	wait_cry
	wait_button_or_walk_away
	closemsg
	hasitem ITEM_AZURE_FLUTE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0649
	releaseall
	end

scr_seq_D22R0101_028:
	setflag 16318
	end

scr_seq_D22R0101_029:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 96
	wait_button_or_walk_away
	closemsg
	goto_if_set FLAG_HIDE_OLIVINE_PORT_OAK, _0724
	releaseall
	end

_03EA:
	move_person_facing obj_D22R0101_counterm, 51, 0, 48, DIR_SOUTH
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 10
	setvar VAR_TEMP_x4002, 48
	script_overlay_cmd 1, 0
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _07B3
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _07D2
	script_overlay_cmd 1, 1
	return

_0450:
	compare VAR_UNK_40F7, 1
	goto_if_eq _0816
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0833
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0833
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0816
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0816
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0816
	setflag FLAG_HIDE_CAMERON
	clearflag FLAG_UNK_27F
	goto _0841

_04B0:
	buffer_players_name 0
	npc_msg 85
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0852
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _085D
	npc_msg 86
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 7
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 87
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0514:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_051F:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0529:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_053D:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0551:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0868
	apply_movement obj_player, _0BE2
	goto _056C

_056C:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _088B
	apply_movement obj_partner_poke, _0BEC
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
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

_05CD:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08C5
	apply_movement obj_player, _0BE2
	goto _05E8

_05E8:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08E8
	apply_movement obj_partner_poke, _0BEC
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
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

_0649:
	goto_if_set 16318, _0922
	npc_msg 91
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0922
	stop_bgm 0
	play_bgm SEQ_GS_PHC
	buffer_players_name 0
	npc_msg 92
	closemsg
	fade_screen 6, 4, 0, RGB_WHITE
	wait_fade
	apply_movement obj_D22R0101_follower_mon_shaymin, _0BFA
	wait_movement
	apply_movement obj_D22R0101_follower_mon_shaymin, _0BFA
	wait_movement
	apply_movement obj_D22R0101_follower_mon_shaymin, _0BFA
	wait_movement
	fade_screen 6, 4, 1, RGB_WHITE
	wait_fade
	npc_msg 94
	closemsg
	faceplayer
	play_cry SPECIES_SHAYMIN, 0
	npc_msg 93
	wait_cry
	closemsg
	wild_battle SPECIES_SHAYMIN, 45, 0
	lockall
	setflag 16318
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0926
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D22R0101_follower_mon_shaymin
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _092C
	compare VAR_TEMP_x4002, 5
	goto_if_eq _092C
	releaseall
	end

_0724:
	faceplayer
	npc_msg 97
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 252
	goto_if_eq _093B
	compare VAR_TEMP_x4001, 253
	goto_if_eq _093B
	compare VAR_TEMP_x4001, 254
	goto_if_eq _093B
	compare VAR_TEMP_x4001, 255
	goto_if_eq _09A9
	compare VAR_TEMP_x4001, 256
	goto_if_eq _09A9
	compare VAR_TEMP_x4001, 257
	goto_if_eq _09A9
	compare VAR_TEMP_x4001, 258
	goto_if_eq _0A17
	compare VAR_TEMP_x4001, 259
	goto_if_eq _0A17
	compare VAR_TEMP_x4001, 260
	goto_if_eq _0A17
	npc_msg 98
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07B3:
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _07D2
	script_overlay_cmd 1, 1
	return

_07D2:
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _07B3
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _07D2
	script_overlay_cmd 1, 1
	return

_0816:
	setflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	clearflag FLAG_UNK_996
	goto_if_set FLAG_GAME_CLEAR, _0A85
	setflag FLAG_UNK_288
	end

_0833:
	clearflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	goto _0841

_0841:
	goto_if_set FLAG_GAME_CLEAR, _0A85
	setflag FLAG_UNK_288
	end

_0852:
	npc_msg 88
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_085D:
	npc_msg 89
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0868:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0AC9
	apply_movement obj_player, _0C5C
	apply_movement obj_D22R0101_gsmiddleman1_3, _0BD8
	goto _056C

_088B:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
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

_08C5:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0B3A
	apply_movement obj_player, _0C6E
	apply_movement obj_D22R0101_gsmiddleman1_4, _0BD8
	goto _05E8

_08E8:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
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

_0922:
	releaseall
	end

_0926:
	white_out
	releaseall
	end

_092C:
	npc_msg 95
	clearflag 16318
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_093B:
	npc_msg 99
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0BAB
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0BAB
	give_mon SPECIES_TORCHIC, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_MUDKIP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 101
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 102
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 2, 0, RGB_BLACK
	wait_fade
	hide_person obj_D22R0101_gswoman2_2
	fade_screen 6, 2, 1, RGB_BLACK
	releaseall
	end

_09A9:
	npc_msg 99
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0BAB
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0BAB
	give_mon SPECIES_TREECKO, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_MUDKIP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 103
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 102
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 2, 0, RGB_BLACK
	wait_fade
	hide_person obj_D22R0101_gswoman2_2
	fade_screen 6, 2, 1, RGB_BLACK
	releaseall
	end

_0A17:
	npc_msg 99
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0BAB
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0BAB
	give_mon SPECIES_TREECKO, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_TORCHIC, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 104
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 102
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 2, 0, RGB_BLACK
	wait_fade
	hide_person obj_D22R0101_gswoman2_2
	fade_screen 6, 2, 1, RGB_BLACK
	releaseall
	end

_0A85:
	get_phone_book_rematch PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0BB6
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0BBC
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0BBC
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0BBC
	setflag FLAG_UNK_288
	end

_0AC9:
	apply_movement obj_player, _0C88
	apply_movement obj_D22R0101_gsmiddleman1_3, _0BD8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _088B
	apply_movement obj_partner_poke, _0BEC
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
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

_0B3A:
	apply_movement obj_player, _0C88
	apply_movement obj_D22R0101_gsmiddleman1_4, _0BD8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08E8
	apply_movement obj_partner_poke, _0BEC
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
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

_0BAB:
	npc_msg 100
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0BB6:
	setflag FLAG_UNK_288
	end

_0BBC:
	clearflag FLAG_UNK_288
	end

	.align 4
_0BC2:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0BD8:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0BE2:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0BEC:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0BFA:

	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step 0, 1
	step 1, 1
	step_end
	.align 4
_0C5C:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0C6E:

	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 2
	step 33, 1
	step_end
	.align 4
_0C88:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
