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

.include "armips/scr_seq/event_D32R0301.inc"


// text archive to grab from: 107.txt

.create "build/a012/2_084", 0


scrdef scr_seq_D32R0301_000
scrdef scr_seq_D32R0301_001
scrdef scr_seq_D32R0301_002
scrdef scr_seq_D32R0301_003
scrdef scr_seq_D32R0301_004
scrdef scr_seq_D32R0301_005
scrdef scr_seq_D32R0301_006
scrdef scr_seq_D32R0301_007
scrdef scr_seq_D32R0301_008
scrdef scr_seq_D32R0301_009
scrdef scr_seq_D32R0301_010
scrdef scr_seq_D32R0301_011
scrdef scr_seq_D32R0301_012
scrdef scr_seq_D32R0301_013
scrdef_end

scr_seq_D32R0301_013:
	end

scr_seq_D32R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	goto _0074

scr_seq_D32R0301_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 1
	goto _0074

_0074:
	scrcmd_682 0
	compare VAR_TEMP_x4004, 0
	call_if_eq _057C
	compare VAR_TEMP_x4004, 1
	call_if_eq _0581
	goto _009A

_009A:
	compare VAR_TEMP_x4004, 0
	call_if_eq _0586
	compare VAR_TEMP_x4004, 1
	call_if_eq _05A5
	menu_item_add 19, 255, 2
	menu_item_add 20, 255, 3
	menu_exec
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _013F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _014D
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0104
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _015B
	touchscreen_menu_show
	goto _0126

_0104:
	compare VAR_TEMP_x4004, 0
	call_if_eq _05BC
	compare VAR_TEMP_x4004, 1
	call_if_eq _05C1
	goto _009A

_0126:
	goto _012E

_012E:
	setvar VAR_UNK_4142, 0
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013F:
	setvar VAR_UNK_4143, 0
	goto _0169

_014D:
	setvar VAR_UNK_4143, 1
	goto _0169

_015B:
	setvar VAR_UNK_4143, 2
	goto _0169

_0169:
	npc_msg 7
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 21, 255, 0
	menu_item_add 22, 255, 1
	menu_item_add 23, 255, 2
	menu_exec
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01B2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01C0
	touchscreen_menu_show
	goto _0126

_01B2:
	setvar VAR_UNK_4144, 0
	goto _01CE

_01C0:
	setvar VAR_UNK_4144, 1
	goto _01CE

_01CE:
	goto _01D6

_01D6:
	compare VAR_UNK_4143, 0
	call_if_eq _0399
	compare VAR_UNK_4143, 1
	call_if_eq _0399
	setvar VAR_TEMP_x4000, 0
	heal_party
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0126
	touchscreen_menu_show
	compare VAR_UNK_4143, 2
	goto_if_eq _0226
	goto _03A1

_0226:
	npc_msg 24
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0277
	case 1, _02F9
	touchscreen_menu_show
	goto _0126

_0277:
	npc_msg 25
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0226
	touchscreen_menu_show
	closemsg
	compare VAR_UNK_4144, 0
	call_if_eq _02CF
	compare VAR_UNK_4144, 1
	call_if_eq _02DB
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02E7
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _02EF
	goto _037B

_02CF:
	scrcmd_226 27, 0, 0, VAR_SPECIAL_RESULT
	return

_02DB:
	scrcmd_226 28, 0, 0, VAR_SPECIAL_RESULT
	return

_02E7:
	goto _0226

_02EF:
	scrcmd_283
	goto _0226

_02F9:
	npc_msg 25
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0226
	touchscreen_menu_show
	closemsg
	compare VAR_UNK_4144, 0
	call_if_eq _0351
	compare VAR_UNK_4144, 1
	call_if_eq _035D
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0369
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0371
	goto _037B

_0351:
	scrcmd_227 27, 0, 0, VAR_SPECIAL_RESULT
	return

_035D:
	scrcmd_227 28, 0, 0, VAR_SPECIAL_RESULT
	return

_0369:
	goto _0226

_0371:
	scrcmd_283
	goto _0226

_037B:
	npc_msg 26
	compare VAR_UNK_4143, 2
	call_if_eq _0399
	call _05ED
	goto _03A1

_0399:
	setvar VAR_UNK_4142, 255
	return

_03A1:
	compare VAR_UNK_4143, 0
	call_if_eq _0439
	compare VAR_UNK_4143, 1
	call_if_eq _0454
	compare VAR_UNK_4143, 2
	call_if_eq _046F
	play_se SEQ_SE_DP_KAIDAN2
	goto _03D4

_03D4:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_815 0
	compare VAR_UNK_4143, 0
	call_if_eq _0495
	compare VAR_UNK_4143, 1
	call_if_eq _04A9
	compare VAR_UNK_4143, 2
	call_if_eq _04BD
	scrcmd_420 59
	scrcmd_436
	scrcmd_627 3
	compare VAR_UNK_4143, 2
	call_if_eq _0435
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_682 1
	end

_0435:
	scrcmd_283
	return

_0439:
	npc_msg 9
	wait_button
	closemsg
	apply_movement obj_player, _04D4
	apply_movement VAR_SPECIAL_LAST_TALKED, _04FC
	wait_movement
	return

_0454:
	npc_msg 9
	wait_button
	closemsg
	apply_movement obj_player, _04D4
	apply_movement VAR_SPECIAL_LAST_TALKED, _04FC
	wait_movement
	return

_046F:
	npc_msg_var 9
	wait 15, VAR_SPECIAL_RESULT
	scrcmd_258
	scrcmd_257 169
	closemsg
	apply_movement obj_player, _04E8
	apply_movement VAR_SPECIAL_LAST_TALKED, _0510
	wait_movement
	return

_0495:
	apply_movement obj_player, _0524
	apply_movement VAR_SPECIAL_LAST_TALKED, _0554
	wait_movement
	return

_04A9:
	apply_movement obj_player, _0524
	apply_movement VAR_SPECIAL_LAST_TALKED, _0554
	wait_movement
	return

_04BD:
	apply_movement obj_player, _053C
	apply_movement VAR_SPECIAL_LAST_TALKED, _0568
	wait_movement
	return


_04D4:

	step 12, 3
	step 15, 1
	step 12, 4
	step 69, 1
	step_end

_04E8:

	step 12, 3
	step 14, 1
	step 12, 4
	step 69, 1
	step_end

_04FC:

	step 12, 2
	step 15, 1
	step 12, 4
	step 69, 1
	step_end

_0510:

	step 12, 2
	step 14, 1
	step 12, 4
	step 69, 1
	step_end

_0524:

	step 21, 3
	step 22, 1
	step 21, 4
	step 0, 1
	step 70, 1
	step_end

_053C:

	step 21, 3
	step 23, 1
	step 21, 4
	step 0, 1
	step 70, 1
	step_end

_0554:

	step 21, 2
	step 22, 1
	step 21, 4
	step 70, 1
	step_end

_0568:

	step 21, 2
	step 23, 1
	step 21, 4
	step 70, 1
	step_end
_057C:
	npc_msg 0
	return

_0581:
	npc_msg 3
	return

_0586:
	npc_msg 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	return

_05A5:
	npc_msg 4
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 18, 255, 4
	return

_05BC:
	npc_msg 2
	return

_05C1:
	npc_msg 5
	return

scr_seq_D32R0301_001:
	scrcmd_682 0
	setvar VAR_TEMP_x4003, 1
	setvar VAR_UNK_4142, 0
	npc_msg 11
	call _0399
	call _05ED
	goto _03A1

_05ED:
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	return

scr_seq_D32R0301_002:
	lockall
	faceplayer
	npc_msg 12
	scrcmd_628 VAR_UNK_4143, VAR_UNK_4144
	compare VAR_BATTLE_FACTORY_PRINT_PROGRESS, 1
	call_if_eq _062E
	compare VAR_BATTLE_FACTORY_PRINT_PROGRESS, 3
	call_if_eq _0636
	goto _0126

_062E:
	setvar VAR_BATTLE_FACTORY_PRINT_PROGRESS, 0
	return

_0636:
	setvar VAR_BATTLE_FACTORY_PRINT_PROGRESS, 2
	return

scr_seq_D32R0301_003:
	compare VAR_UNK_4143, 0
	call_if_eq _067A
	compare VAR_UNK_4143, 1
	call_if_eq _067A
	compare VAR_BATTLE_FACTORY_PRINT_PROGRESS, 1
	call_if_eq _0680
	compare VAR_BATTLE_FACTORY_PRINT_PROGRESS, 3
	call_if_eq _0697
	goto _0126

_067A:
	add_special_game_stat_2 27
	return

_0680:
	npc_msg 13
	buffer_players_name 0
	npc_msg 15
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_FACTORY_PRINT_PROGRESS, 2
	return

_0697:
	npc_msg 13
	buffer_players_name 0
	npc_msg 14
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_FACTORY_PRINT_PROGRESS, 4
	callstd std_frontier_gold_prints_check
	return

scr_seq_D32R0301_004:
	goto _0126

scr_seq_D32R0301_006:
	simple_npc_msg 27
	end

scr_seq_D32R0301_007:
	simple_npc_msg 28
	end

scr_seq_D32R0301_008:
	simple_npc_msg 29
	end

scr_seq_D32R0301_009:
	simple_npc_msg 30
	end

scr_seq_D32R0301_010:
	simple_npc_msg 31
	end

scr_seq_D32R0301_011:
	simple_npc_msg 32
	end

scr_seq_D32R0301_012:
	simple_npc_msg 33
	end
	.align 4


.close
