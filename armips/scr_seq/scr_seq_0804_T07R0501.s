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

.include "armips/scr_seq/event_T07R0501.inc"


// text archive to grab from: 509.txt

.create "build/a012/2_804", 0


scrdef scr_seq_T07R0501_000
scrdef scr_seq_T07R0501_001
scrdef scr_seq_T07R0501_002
scrdef scr_seq_T07R0501_003
scrdef scr_seq_T07R0501_004
scrdef_end

scr_seq_T07R0501_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_172, _004D
	setflag FLAG_UNK_172
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F2
	goto _006D

_004D:
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F2
	goto _006D

_006D:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _00F2
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _00FD
	get_hidden_power_type VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 65535
	goto_if_eq _00E7
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HIDDEN_POWER, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0108
	buffer_type_name 0, VAR_SPECIAL_x8004
	npc_msg 5
	goto _0118

_00E7:
	npc_msg 8
	goto _0118

_00F2:
	npc_msg 6
	goto _0118

_00FD:
	npc_msg 7
	goto _0118

_0108:
	buffer_type_name 0, VAR_SPECIAL_x8004
	npc_msg 4
	goto _0118

_0118:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0501_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 9
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
_0138:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 21, 255, 0
	menu_item_add 22, 255, 1
	menu_item_add 20, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0180
	case 1, _021C
	goto _0A43

_0180:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 23, 255, 0
	menu_item_add 24, 255, 1
	menu_item_add 25, 255, 2
	menu_item_add 26, 255, 3
	menu_item_add 27, 255, 4
	menu_item_add 28, 255, 5
	menu_item_add 20, 255, 6
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _028E
	case 1, _0319
	case 2, _03A4
	case 3, _042F
	case 4, _04BA
	case 5, _0545
	goto _0138

_021C:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 29, 255, 0
	menu_item_add 30, 255, 1
	menu_item_add 31, 255, 2
	menu_item_add 32, 255, 3
	menu_item_add 20, 255, 4
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _05D0
	case 1, _065B
	case 2, _06E6
	case 3, _0771
	goto _0138

_028E:
	goto_if_no_item_space ITEM_TM58, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D7
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_02D7:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_0319:
	goto_if_no_item_space ITEM_TM32, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0362
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_0362:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_03A4:
	goto_if_no_item_space ITEM_TM10, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03ED
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_03ED:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 6000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 6000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_042F:
	goto_if_no_item_space ITEM_TM29, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0478
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_0478:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_04BA:
	goto_if_no_item_space ITEM_TM74, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0503
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_0503:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_0545:
	goto_if_no_item_space ITEM_TM68, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _058E
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
_058E:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 15000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 15000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0180

_05D0:
	goto_if_no_item_space ITEM_SILK_SCARF, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0619
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021C
_0619:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _021C

_065B:
	goto_if_no_item_space ITEM_WIDE_LENS, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06A4
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021C
_06A4:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _021C

_06E6:
	goto_if_no_item_space ITEM_ZOOM_LENS, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _072F
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021C
_072F:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _021C

_0771:
	goto_if_no_item_space ITEM_METRONOME, 1, _0990
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07BA
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021C
_07BA:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0A31
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _021C

scr_seq_T07R0501_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 18
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
_0814:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 33, 255, 0
	menu_item_add 34, 255, 1
	menu_item_add 35, 255, 2
	menu_item_add 20, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0871
	case 1, _087D
	case 2, _0889
	goto _0A43

_0871:
	setorcopyvar VAR_TEMP_x4002, 122
	goto _0895

_087D:
	setorcopyvar VAR_TEMP_x4002, 133
	goto _0895

_0889:
	setorcopyvar VAR_TEMP_x4002, 137
	goto _0895

_0895:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _08B3
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	goto _0A52

_08B3:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 16
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08D7
	closemsg
	goto _0814

_08D7:
	compare VAR_TEMP_x4002, 122
	goto_if_ne _08FB
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 3333
	goto_if_lt _0A3A
	goto _0930

_08FB:
	compare VAR_TEMP_x4002, 133
	goto_if_ne _091F
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 6666
	goto_if_lt _0A3A
	goto _0930

_091F:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 9999
	goto_if_lt _0A3A
_0930:
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 17
	compare VAR_TEMP_x4002, 122
	goto_if_ne _096A
	take_coins 3333
	goto _0985

_096A:
	compare VAR_TEMP_x4002, 133
	goto_if_ne _0981
	take_coins 6666
	goto _0985

_0981:
	take_coins 9999
_0985:
	scrcmd_118 0
	goto _0814

_0990:
	npc_msg 14
	closemsg
_0995:
	compare VAR_SPECIAL_x8004, 385
	goto_if_ne _09AE
	goto _0180

_09AE:
	compare VAR_SPECIAL_x8004, 359
	goto_if_ne _09C7
	goto _0180

_09C7:
	compare VAR_SPECIAL_x8004, 337
	goto_if_ne _09E0
	goto _0180

_09E0:
	compare VAR_SPECIAL_x8004, 356
	goto_if_ne _09F9
	goto _0180

_09F9:
	compare VAR_SPECIAL_x8004, 401
	goto_if_ne _0A12
	goto _0180

_0A12:
	compare VAR_SPECIAL_x8004, 395
	goto_if_ne _0A2B
	goto _0180

_0A2B:
	goto _021C

_0A31:
	npc_msg 11
	goto _0995

_0A3A:
	npc_msg 11
	goto _0814

_0A43:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	goto _0A52

_0A52:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

scr_seq_T07R0501_000:
	simple_npc_msg 0
	end

scr_seq_T07R0501_001:
	simple_npc_msg 1
	end
	.align 4


.close
