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

.include "armips/scr_seq/event_T25R1101.inc"


// text archive to grab from: 599.txt

.create "build/a012/2_906", 0


scrdef scr_seq_T25R1101_000
scrdef scr_seq_T25R1101_001
scrdef scr_seq_T25R1101_002
scrdef scr_seq_T25R1101_003
scrdef scr_seq_T25R1101_004
scrdef scr_seq_T25R1101_005
scrdef scr_seq_T25R1101_006
scrdef scr_seq_T25R1101_007
scrdef scr_seq_T25R1101_008
scrdef scr_seq_T25R1101_009
scrdef scr_seq_T25R1101_010
scrdef scr_seq_T25R1101_011
scrdef scr_seq_T25R1101_012
scrdef scr_seq_T25R1101_013
scrdef scr_seq_T25R1101_014
scrdef scr_seq_T25R1101_015
scrdef scr_seq_T25R1101_016
scrdef scr_seq_T25R1101_017
scrdef scr_seq_T25R1101_018
scrdef scr_seq_T25R1101_019
scrdef scr_seq_T25R1101_020
scrdef scr_seq_T25R1101_021
scrdef scr_seq_T25R1101_022
scrdef scr_seq_T25R1101_023
scrdef scr_seq_T25R1101_024
scrdef scr_seq_T25R1101_025
scrdef scr_seq_T25R1101_026
scrdef scr_seq_T25R1101_027
scrdef scr_seq_T25R1101_028
scrdef scr_seq_T25R1101_029
scrdef scr_seq_T25R1101_030
scrdef scr_seq_T25R1101_031
scrdef scr_seq_T25R1101_032
scrdef_end

scr_seq_T25R1101_032:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _00A3
	goto _00AB

_00A3:
	goto _00FC

_00AB:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _00C6
	setflag FLAG_UNK_2DA
	goto _00FA

_00C6:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _00DD
	setflag FLAG_UNK_2DA
	goto _00FA

_00DD:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _00F4
	setflag FLAG_UNK_2DA
	goto _00FA

_00F4:
	goto _00FC

_00FA:
	end

_00FC:
	clearflag FLAG_UNK_2DA
	end

scr_seq_T25R1101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0139
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 0, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0139:
	releaseall
	end

_013D:
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0177
	script_overlay_cmd 3, 0
	check_coins_immediate VAR_SPECIAL_RESULT, 3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0186
	script_overlay_cmd 3, 1
	setvar VAR_TEMP_x4001, 0
	return

_0177:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	setvar VAR_TEMP_x4001, 1
	return

_0186:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	script_overlay_cmd 3, 1
	setvar VAR_TEMP_x4001, 1
	return

scr_seq_T25R1101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01D0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 1, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_01D0:
	releaseall
	end

scr_seq_T25R1101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _020B
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 2, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_020B:
	releaseall
	end

scr_seq_T25R1101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0246
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 3, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0246:
	releaseall
	end

scr_seq_T25R1101_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0281
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 4, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0281:
	releaseall
	end

scr_seq_T25R1101_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _02BC
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 5, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_02BC:
	releaseall
	end

scr_seq_T25R1101_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _02F7
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 6, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_02F7:
	releaseall
	end

scr_seq_T25R1101_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0332
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 7, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0332:
	releaseall
	end

scr_seq_T25R1101_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _036D
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 8, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_036D:
	releaseall
	end

scr_seq_T25R1101_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03A8
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 9, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_03A8:
	releaseall
	end

scr_seq_T25R1101_020:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03E3
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 10, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_03E3:
	releaseall
	end

scr_seq_T25R1101_021:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _041E
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 11, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_041E:
	releaseall
	end

scr_seq_T25R1101_022:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0459
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 21, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0459:
	releaseall
	end

scr_seq_T25R1101_023:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0494
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 12, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0494:
	releaseall
	end

scr_seq_T25R1101_024:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _04CF
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 13, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_04CF:
	releaseall
	end

scr_seq_T25R1101_025:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _050A
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 14, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_050A:
	releaseall
	end

scr_seq_T25R1101_026:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0545
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 15, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0545:
	releaseall
	end

scr_seq_T25R1101_027:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0580
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 16, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0580:
	releaseall
	end

scr_seq_T25R1101_028:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _05BB
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 17, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_05BB:
	releaseall
	end

scr_seq_T25R1101_029:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _05F6
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 18, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_05F6:
	releaseall
	end

scr_seq_T25R1101_030:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0631
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 19, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_0631:
	releaseall
	end

scr_seq_T25R1101_031:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _013D
	compare VAR_TEMP_x4001, 1
	goto_if_eq _066C
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 20, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_066C:
	releaseall
	end

scr_seq_T25R1101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _069B
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_069B:
	script_overlay_cmd 3, 0
	npc_msg 2
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	show_money_box 20, 7
_06B1:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 127, 255, 0
	menu_item_add 128, 255, 1
	menu_item_add 129, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _06FE
	case 1, _074A
	npc_msg 6
	goto _07A4

_06FE:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A1
	checkgivecoins VAR_SPECIAL_RESULT, 50
	snop
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0796
	submoneyimmediate 1000
	give_coins 50
	scrcmd_118 0
	update_money_box
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	npc_msg 3
	goto _06B1

_074A:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 10000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A1
	checkgivecoins VAR_SPECIAL_RESULT, 500
	snop
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0796
	submoneyimmediate 10000
	give_coins 500
	scrcmd_118 0
	update_money_box
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	npc_msg 3
	goto _06B1

_0796:
	npc_msg 5
	goto _07A4

_07A1:
	npc_msg 4
_07A4:
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	scrcmd_117
	hide_money_box
	script_overlay_cmd 3, 1
	releaseall
	end

scr_seq_T25R1101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 7
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
_07CE:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 37, 255, 0
	menu_item_add 38, 255, 1
	menu_item_add 36, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0816
	case 1, _08B2
	goto _11F9

_0816:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 39, 255, 0
	menu_item_add 40, 255, 1
	menu_item_add 41, 255, 2
	menu_item_add 42, 255, 3
	menu_item_add 43, 255, 4
	menu_item_add 44, 255, 5
	menu_item_add 36, 255, 6
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0924
	case 1, _09AF
	case 2, _0A3A
	case 3, _0AC5
	case 4, _0B50
	case 5, _0BDB
	goto _07CE

_08B2:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 45, 255, 0
	menu_item_add 46, 255, 1
	menu_item_add 47, 255, 2
	menu_item_add 48, 255, 3
	menu_item_add 36, 255, 4
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0C66
	case 1, _0CF1
	case 2, _0D7C
	case 3, _0E07
	goto _07CE

_0924:
	goto_if_no_item_space ITEM_TM90, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _096D
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_096D:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_09AF:
	goto_if_no_item_space ITEM_TM75, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09F8
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_09F8:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_0A3A:
	goto_if_no_item_space ITEM_TM44, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A83
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_0A83:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 6000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 6000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_0AC5:
	goto_if_no_item_space ITEM_TM35, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B0E
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_0B0E:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_0B50:
	goto_if_no_item_space ITEM_TM13, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B99
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_0B99:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_0BDB:
	goto_if_no_item_space ITEM_TM24, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C24
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0816
_0C24:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0816

_0C66:
	goto_if_no_item_space ITEM_SILK_SCARF, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0CAF
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B2
_0CAF:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _08B2

_0CF1:
	goto_if_no_item_space ITEM_WIDE_LENS, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3A
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B2
_0D3A:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _08B2

_0D7C:
	goto_if_no_item_space ITEM_ZOOM_LENS, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0DC5
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B2
_0DC5:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _08B2

_0E07:
	goto_if_no_item_space ITEM_METRONOME, 1, _1127
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E50
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B2
_0E50:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _11C8
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 17
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _08B2

scr_seq_T25R1101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 16
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0EC7
	goto _0ECD

_0EC7:
	goto _0F2A

_0ECD:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 49, 255, 0
	menu_item_add 50, 255, 1
	menu_item_add 51, 255, 2
	menu_item_add 36, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0F87
	case 1, _0F93
	case 2, _0F9F
	goto _11F9

_0F2A:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 49, 255, 0
	menu_item_add 52, 255, 1
	menu_item_add 51, 255, 2
	menu_item_add 36, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0F87
	case 1, _0FAB
	case 2, _0F9F
	goto _11F9

_0F87:
	setorcopyvar VAR_TEMP_x4002, 63
	goto _0FB7

_0F93:
	setorcopyvar VAR_TEMP_x4002, 23
	goto _0FB7

_0F9F:
	setorcopyvar VAR_TEMP_x4002, 147
	goto _0FB7

_0FAB:
	setorcopyvar VAR_TEMP_x4002, 27
	goto _0FB7

_0FB7:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0FD5
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	goto _1208

_0FD5:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 14
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1016
	closemsg
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1010
	goto _0ECD

_1010:
	goto _0F2A

_1016:
	compare VAR_TEMP_x4002, 63
	goto_if_ne _103A
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 200
	goto_if_lt _11D3
	goto _1093

_103A:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _105E
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _11D3
	goto _1093

_105E:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _1082
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _11D3
	goto _1093

_1082:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2100
	goto_if_lt _11D3
_1093:
	npc_msg 11
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 15
	compare VAR_TEMP_x4002, 63
	goto_if_ne _10CD
	take_coins 200
	goto _10FF

_10CD:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _10E4
	take_coins 700
	goto _10FF

_10E4:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _10FB
	take_coins 700
	goto _10FF

_10FB:
	take_coins 2100
_10FF:
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _111F
	goto _0ECD

_111F:
	goto _0F2A

_1127:
	npc_msg 12
	closemsg
_112C:
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _1145
	goto _0816

_1145:
	compare VAR_SPECIAL_x8004, 402
	goto_if_ne _115E
	goto _0816

_115E:
	compare VAR_SPECIAL_x8004, 371
	goto_if_ne _1177
	goto _0816

_1177:
	compare VAR_SPECIAL_x8004, 362
	goto_if_ne _1190
	goto _0816

_1190:
	compare VAR_SPECIAL_x8004, 340
	goto_if_ne _11A9
	goto _0816

_11A9:
	compare VAR_SPECIAL_x8004, 351
	goto_if_ne _11C2
	goto _0816

_11C2:
	goto _08B2

_11C8:
	npc_msg 9
	goto _112C

_11D3:
	npc_msg 9
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _11F3
	goto _0ECD

_11F3:
	goto _0F2A

_11F9:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	goto _1208

_1208:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

scr_seq_T25R1101_003:
	simple_npc_msg 18
	end

scr_seq_T25R1101_004:
	simple_npc_msg 19
	end

scr_seq_T25R1101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12DE
	npc_msg 31
	wait_button_or_walk_away
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12DE
	npc_msg 32
	wait_button_or_walk_away
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12DE
	npc_msg 33
	wait_button_or_walk_away
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12DE
	npc_msg 34
	wait_button_or_walk_away
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _12DE
	npc_msg 35
	wait_button_or_walk_away
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_12DE:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1101_006:
	simple_npc_msg 21
	end

scr_seq_T25R1101_007:
	simple_npc_msg 22
	end

scr_seq_T25R1101_008:
	simple_npc_msg 23
	end

scr_seq_T25R1101_009:
	simple_npc_msg 24
	end
	.align 4


.close
