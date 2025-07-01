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


// text archive to grab from: 246.txt

.create "build/a012/2_151", 0


scrdef scr_seq_0151_000
scrdef scr_seq_0151_001
scrdef scr_seq_0151_002
scrdef scr_seq_0151_003
scrdef scr_seq_0151_004
scrdef scr_seq_0151_005
scrdef scr_seq_0151_006
scrdef scr_seq_0151_007
scrdef scr_seq_0151_008
scrdef scr_seq_0151_009
scrdef scr_seq_0151_010
scrdef scr_seq_0151_011
scrdef scr_seq_0151_012
scrdef scr_seq_0151_013
scrdef scr_seq_0151_014
scrdef scr_seq_0151_015
scrdef scr_seq_0151_016
scrdef scr_seq_0151_017
scrdef scr_seq_0151_018
scrdef scr_seq_0151_019
scrdef scr_seq_0151_020
scrdef scr_seq_0151_021
scrdef scr_seq_0151_022
scrdef scr_seq_0151_023
scrdef scr_seq_0151_024
scrdef scr_seq_0151_025
scrdef scr_seq_0151_026
scrdef scr_seq_0151_027
scrdef scr_seq_0151_028
scrdef_end

_0076:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D22R0101, 0, 46, 50, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

scr_seq_0151_000:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_PINPON
	npc_msg 0
	closemsg
	call _0076
	releaseall
	end

scr_seq_0151_001:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_PINPON
	npc_msg 1
	closemsg
	call _0076
	releaseall
	end

scr_seq_0151_002:
	end

scr_seq_0151_003:
	end

scr_seq_0151_004:
	scrcmd_609
	lockall
	scrcmd_789 0
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _00F9
	call _0076
	releaseall
	end

_00F9:
	releaseall
	end

scr_seq_0151_005:
	compare VAR_BUG_CONTEST_HELD_PRIZE, 0
	goto_if_eq _0114
	call _02BC
	endstd
	end

_0114:
	goto_if_set FLAG_DAILY_DID_BUG_CONTEST, _02A6
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0139
	npc_msg 4
	goto _016E

_0139:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _014F
	npc_msg 5
	goto _016E

_014F:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0165
	npc_msg 6
	goto _016E

_0165:
	npc_msg 7
	goto _0260

_016E:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _018E
	npc_msg 17
	goto _0260

_018E:
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01B0
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _02B1
_01B0:
	count_alive_mons VAR_SPECIAL_x8005, 6
	compare VAR_SPECIAL_x8005, 1
	goto_if_ne _01D4
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _021A
_01D4:
	get_party_lead_alive VAR_SPECIAL_RESULT
	bufferpartymonnick 0, VAR_SPECIAL_RESULT
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0200
	npc_msg 28
	goto _0260

_0200:
	fade_out_bgm 0, 10
	play_bgm SEQ_GS_TAIKAIMAE
	buffer_players_name 0
	npc_msg 13
	setflag FLAG_BUG_CONTEST_OTHER_POKES_HELD
	goto _0224

_021A:
	fade_out_bgm 0, 10
	play_bgm SEQ_GS_TAIKAIMAE
_0224:
	buffer_players_name 0
	npc_msg 14
	npc_msg 15
	setflag FLAG_BUG_CONTEST_ACTIVE
	setflag FLAG_UNK_24E
	setvar VAR_UNK_4118, 1
	setvar VAR_UNK_40F7, 1
	script_overlay_cmd 1, 0
	bug_contest_action 0, VAR_TEMP_x4000
	call _0268
	script_overlay_cmd 1, 1
	setflag FLAG_UNK_996
	goto _0262

_0260:
	wait_button_or_walk_away
_0262:
	closemsg
	endstd
	end

_0268:
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 627
_0274:
	is_npc_bug_contestant_registered VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _028B
	setflagvar VAR_SPECIAL_x8005
_028B:
	addvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8005, 1
	compare VAR_SPECIAL_x8004, 10
	goto_if_lt _0274
	return

_02A6:
	npc_msg 18
	goto _0260

_02B1:
	npc_msg 16
	goto _0260

_02BC:
	buffer_players_name 0
	npc_msg 20
	hasspaceforitem VAR_BUG_CONTEST_HELD_PRIZE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02F3
	copyvar VAR_SPECIAL_x8004, VAR_BUG_CONTEST_HELD_PRIZE
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	setvar VAR_BUG_CONTEST_HELD_PRIZE, 0
	goto _02F8

_02F3:
	npc_msg 21
	wait_button_or_walk_away
_02F8:
	closemsg
	return

scr_seq_0151_006:
	scrcmd_789 0
	npc_msg 23
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _032B
	npc_msg 26
	closemsg
	endstd
	end

_032B:
	npc_msg 27
	closemsg
	setvar VAR_UNK_4118, 2
	call _0076
	endstd
	end

scr_seq_0151_007:
	scrcmd_609
	lockall
	setvar VAR_UNK_4118, 0
	setvar VAR_UNK_40F7, 0
	script_overlay_cmd 1, 0
	judge_bug_contest VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_TEMP_x4002
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _053C
	wait_movement
	npc_msg 29
	buffer_bug_contest_winner 2
	compare VAR_TEMP_x4000, 2
	goto_if_ne _038E
	npc_msg 30
	goto _0391

_038E:
	npc_msg 31
_0391:
	play_fanfare SEQ_ME_MUSHITORI3
	wait_fanfare
	npc_msg 32
	buffer_bug_contest_winner 1
	compare VAR_TEMP_x4000, 1
	goto_if_ne _03B3
	npc_msg 33
	goto _03B6

_03B3:
	npc_msg 34
_03B6:
	play_fanfare SEQ_ME_MUSHITORI2
	wait_fanfare
	npc_msg 32
	buffer_bug_contest_winner 0
	compare VAR_TEMP_x4000, 0
	goto_if_ne _03DC
	setflag FLAG_WON_THIS_BUG_CONTEST
	npc_msg 35
	goto _03E3

_03DC:
	clearflag FLAG_WON_THIS_BUG_CONTEST
	npc_msg 36
_03E3:
	play_fanfare SEQ_ME_MUSHITORI1
	wait_fanfare
	npc_msg 32
	buffer_players_name 0
	buffer_item_name 3, VAR_TEMP_x4001
	setvar VAR_SPECIAL_x8004, 37
	addvar VAR_SPECIAL_x8004, VAR_TEMP_x4000
	non_npc_msg_var VAR_SPECIAL_x8004
	copyvar VAR_SPECIAL_x8004, VAR_TEMP_x4001
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _042F
	callstd std_give_item_verbose
	goto _043B

_042F:
	buffer_players_name 0
	npc_msg 45
	copyvar VAR_BUG_CONTEST_HELD_PRIZE, VAR_TEMP_x4001
_043B:
	call_if_set FLAG_BUG_CONTEST_OTHER_POKES_HELD, _04F6
	npc_msg 42
	compare VAR_TEMP_x4002, 0
	goto_if_ne _045E
	closemsg
	goto _04B5

_045E:
	buffer_species_name 1, VAR_TEMP_x4002, 2, 1
	npc_msg 43
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _049E
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 255, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_049E:
	buffer_bug_contest_mon_nick 5, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04B5
	npc_msg 46
	closemsg
_04B5:
	apply_movement 241, _0544
	wait_movement
	fade_out_bgm 0, 10
	play_bgm SEQ_GS_D_KOUEN
	scrcmd_103
	call _04FD
	setflag FLAG_DAILY_DID_BUG_CONTEST
	clearflag FLAG_BUG_CONTEST_ACTIVE
	clearflag FLAG_UNK_24E
	clearflag FLAG_BUG_CONTEST_OTHER_POKES_HELD
	bug_contest_action 1, 0
	script_overlay_cmd 1, 1
	fade_out_bgm 0, 30
	reset_bgm
	releaseall
	end

_04F6:
	npc_msg 47
	closemsg
	return

_04FD:
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 10
	setvar VAR_SPECIAL_x8006, 627
_050F:
	scrcmd_109 VAR_SPECIAL_x8005, 2
	clearflagvar VAR_SPECIAL_x8006
	addvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8005, 1
	addvar VAR_SPECIAL_x8006, 1
	compare VAR_SPECIAL_x8004, 10
	goto_if_lt _050F
	return

	.align 4
_053C:

	step 15, 5
	step_end
	.align 4
_0544:

	step 14, 5
	step_end
scr_seq_0151_008:
	simple_npc_msg 48
	end

scr_seq_0151_009:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0581
	simple_npc_msg 49
	goto _0592

_0581:
	simple_npc_msg 50
_0592:
	end

scr_seq_0151_010:
	simple_npc_msg 51
	end

scr_seq_0151_011:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _05C9
	simple_npc_msg 52
	goto _05DA

_05C9:
	simple_npc_msg 53
_05DA:
	end

scr_seq_0151_012:
	simple_npc_msg 54
	end

scr_seq_0151_013:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0611
	simple_npc_msg 55
	goto _0622

_0611:
	simple_npc_msg 56
_0622:
	end

scr_seq_0151_014:
	simple_npc_msg 57
	end

scr_seq_0151_015:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0659
	simple_npc_msg 58
	goto _066A

_0659:
	simple_npc_msg 59
_066A:
	end

scr_seq_0151_016:
	simple_npc_msg 60
	end

scr_seq_0151_017:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _06A1
	simple_npc_msg 61
	goto _06B2

_06A1:
	simple_npc_msg 62
_06B2:
	end

scr_seq_0151_018:
	simple_npc_msg 63
	end

scr_seq_0151_019:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _06E9
	simple_npc_msg 64
	goto _06FA

_06E9:
	simple_npc_msg 65
_06FA:
	end

scr_seq_0151_020:
	simple_npc_msg 66
	end

scr_seq_0151_021:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0731
	simple_npc_msg 67
	goto _0742

_0731:
	simple_npc_msg 68
_0742:
	end

scr_seq_0151_022:
	simple_npc_msg 69
	end

scr_seq_0151_023:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0779
	simple_npc_msg 70
	goto _078A

_0779:
	simple_npc_msg 71
_078A:
	end

scr_seq_0151_024:
	simple_npc_msg 72
	end

scr_seq_0151_025:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _07C1
	simple_npc_msg 73
	goto _07D2

_07C1:
	simple_npc_msg 74
_07D2:
	end

scr_seq_0151_026:
	simple_npc_msg 75
	end

scr_seq_0151_027:
	goto_if_set FLAG_WON_THIS_BUG_CONTEST, _0809
	simple_npc_msg 76
	goto _081A

_0809:
	simple_npc_msg 77
_081A:
	end

scr_seq_0151_028:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_BUG_CONTEST_HELD_PRIZE, 0
	goto_if_eq _083D
	call _02BC
	goto _0844

_083D:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
_0844:
	releaseall
	end
	.align 4


.close
