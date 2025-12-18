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
	goto_if_set FLAG_UNK_172, _0146
	setflag FLAG_UNK_172
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0164
	goto _016D

scr_seq_T07R0501_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 9
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 21, 255, 0
	menu_item_add 22, 255, 1
	menu_item_add 20, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _01E5
	case 1, _0281
	goto _02F3

scr_seq_T07R0501_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 18
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 33, 255, 0
	menu_item_add 34, 255, 1
	menu_item_add 35, 255, 2
	menu_item_add 20, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0300
	case 1, _030C
	case 2, _0318
	goto _02F3

scr_seq_T07R0501_000:
	simple_npc_msg 0
	end

scr_seq_T07R0501_001:
	simple_npc_msg 1
	end

_0146:
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0164
	goto _016D

_0164:
	npc_msg 6
	goto _0324

_016D:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _0164
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _032C
	get_hidden_power_type VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 65535
	goto_if_eq _0335
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HIDDEN_POWER, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _033E
	buffer_type_name 0, VAR_SPECIAL_x8004
	npc_msg 5
	goto _0324

_01E5:
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
	case 0, _034C
	case 1, _03D5
	case 2, _045E
	case 3, _04E7
	case 4, _0570
	case 5, _05F9
	goto _0682

_0281:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 29, 255, 0
	menu_item_add 30, 255, 1
	menu_item_add 31, 255, 2
	menu_item_add 32, 255, 3
	menu_item_add 20, 255, 4
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _06CA
	case 1, _0753
	case 2, _07DC
	case 3, _0865
	goto _0682

_02F3:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	goto _08EE

_0300:
	setorcopyvar VAR_TEMP_x4002, 236
	goto _08FA

_030C:
	setorcopyvar VAR_TEMP_x4002, 133
	goto _08FA

_0318:
	setorcopyvar VAR_TEMP_x4002, 375
	goto _08FA

_0324:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_032C:
	npc_msg 7
	goto _0324

_0335:
	npc_msg 8
	goto _0324

_033E:
	buffer_type_name 0, VAR_SPECIAL_x8004
	npc_msg 4
	goto _0324

_034C:
	goto_if_no_item_space ITEM_TM058, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0930
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_03D5:
	goto_if_no_item_space ITEM_TM032, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0979
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_045E:
	goto_if_no_item_space ITEM_TM010, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09B9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 6000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 6000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_04E7:
	goto_if_no_item_space ITEM_TM029, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09F9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0570:
	goto_if_no_item_space ITEM_TM074, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A39
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_05F9:
	goto_if_no_item_space ITEM_TM068, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A79
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 15000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 15000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0682:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 21, 255, 0
	menu_item_add 22, 255, 1
	menu_item_add 20, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _01E5
	case 1, _0281
	goto _02F3

_06CA:
	goto_if_no_item_space ITEM_SILK_SCARF, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0AB9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0281
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0753:
	goto_if_no_item_space ITEM_WIDE_LENS, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0AF9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0281
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_07DC:
	goto_if_no_item_space ITEM_ZOOM_LENS, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B39
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0281
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0865:
	goto_if_no_item_space ITEM_METRONOME, 1, _0918
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B79
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0281
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_08EE:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

_08FA:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0BB9
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	goto _08EE

_0918:
	npc_msg 14
	closemsg
	compare VAR_SPECIAL_x8004, 385
	goto_if_ne _0BDD
	goto _01E5

_0930:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0970:
	npc_msg 11
	goto _0BF0

_0979:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_09B9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 6000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 6000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_09F9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0A39:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 10000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0A79:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 15000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 15000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _01E5

_0AB9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0AF9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0B39:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0B79:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0970
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 19
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0281

_0BB9:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 16
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C03
	closemsg
	goto _0C27

_0BDD:
	compare VAR_SPECIAL_x8004, 359
	goto_if_ne _0C84
	goto _01E5

_0BF0:
	compare VAR_SPECIAL_x8004, 385
	goto_if_ne _0BDD
	goto _01E5

_0C03:
	compare VAR_TEMP_x4002, 236
	goto_if_ne _0C97
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1500
	goto_if_lt _0CBB
	goto _0CC4

_0C27:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 33, 255, 0
	menu_item_add 34, 255, 1
	menu_item_add 35, 255, 2
	menu_item_add 20, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0300
	case 1, _030C
	case 2, _0318
	goto _02F3

_0C84:
	compare VAR_SPECIAL_x8004, 337
	goto_if_ne _0CFE
	goto _01E5

_0C97:
	compare VAR_TEMP_x4002, 133
	goto_if_ne _0D11
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 3000
	goto_if_lt _0CBB
	goto _0CC4

_0CBB:
	npc_msg 11
	goto _0C27

_0CC4:
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 17
	compare VAR_TEMP_x4002, 236
	goto_if_ne _0D5C
	take_coins 1500
	goto _0D73

_0CFE:
	compare VAR_SPECIAL_x8004, 356
	goto_if_ne _0D7C
	goto _01E5

_0D11:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4500
	goto_if_lt _0CBB
	npc_msg 13
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 17
	compare VAR_TEMP_x4002, 122
	goto_if_ne _0D5C
	take_coins 1500
	goto _0D73

_0D5C:
	compare VAR_TEMP_x4002, 133
	goto_if_ne _0D8F
	take_coins 3000
	goto _0D73

_0D73:
	scrcmd_118 0
	goto _0C27

_0D7C:
	compare VAR_SPECIAL_x8004, 401
	goto_if_ne _0D9C
	goto _01E5

_0D8F:
	take_coins 4500
	scrcmd_118 0
	goto _0C27

_0D9C:
	compare VAR_SPECIAL_x8004, 395
	goto_if_ne _0DAF
	goto _01E5

_0DAF:
	goto _0281
	.align 4


.close
