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

.include "armips/scr_seq/event_D15R0103.inc"


// text archive to grab from: 056.txt

.create "build/a012/2_018", 0


scrdef scr_seq_D15R0103_000
scrdef scr_seq_D15R0103_001
scrdef scr_seq_D15R0103_002
scrdef_end

scr_seq_D15R0103_000:
	clearflag FLAG_UNK_1A3
	goto_if_set FLAG_UNK_078, _01A7
	end

scr_seq_D15R0103_001:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A4, 1
	apply_movement obj_player, _0360
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _036A
	wait_movement
	apply_movement obj_D15R0103_chourou, _0370
	wait_movement
	npc_msg 0
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	apply_movement obj_D15R0103_gsrivel, _0376
	wait_movement
	npc_msg 1
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	buffer_rivals_name 0
	npc_msg 2
	wait_button
	closemsg
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D15R0103_gsrivel, _037C
	wait_movement
	hide_person obj_D15R0103_gsrivel
	setflag FLAG_UNK_078
	callstd std_fade_end_rival_outro_music
	apply_movement 241, _03D6
	wait_movement
	scrcmd_103
	releaseall
	end

scr_seq_D15R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	checkflag FLAG_UNK_076
	buffer_players_name 0
	goto_if_eq _01AD
	npc_msg 3
	closemsg
	trainer_battle TRAINER_ELDER_LI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01B8
	npc_msg 4
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 9, 255, 0
	menu_item_add 10, 255, 1
	menu_item_add 11, 255, 2
	menu_item_add 12, 255, 3
	menu_item_add 13, 255, 4
	menu_item_add 14, 255, 5
	menu_item_add 15, 255, 6
	menu_item_add 17, 255, 7
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	case 0, _01BE
	case 1, _01D7
	case 2, _01F0
	case 3, _0209
	case 4, _0222
	case 5, _023B
	case 6, _0254
	case 7, _026D
	goto _026D

_01A7:
	setflag FLAG_UNK_1A3
	end

_01AD:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01B8:
	white_out
	releaseall
	end

_01BE:
	npc_msg 16
	giveitem_no_check ITEM_WATER_STONE, 1
	goto _0276

_01D7:
	npc_msg 16
	giveitem_no_check ITEM_THUNDER_STONE, 1
	goto _0276

_01F0:
	npc_msg 16
	giveitem_no_check ITEM_FIRE_STONE, 1
	goto _0276

_0209:
	npc_msg 16
	giveitem_no_check ITEM_WORKS_KEY, 1
	goto _0276

_0222:
	npc_msg 16
	giveitem_no_check ITEM_STICKER_BAG, 1
	goto _0276

_023B:
	npc_msg 16
	giveitem_no_check ITEM_GUIDEBOOK, 1
	goto _0276

_0254:
	npc_msg 16
	giveitem_no_check ITEM_OLD_CHARM, 1
	goto _0276

_026D:
	npc_msg 18
	goto _02A2

_0276:
	touchscreen_menu_show
	setflag FLAG_UNK_076
	setflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_AFTER_SPROUT
	clearflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_BEFORE_SPROUT
	npc_msg 19
	giveitem_no_check ITEM_TM070, 1
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A2:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 9, 255, 0
	menu_item_add 10, 255, 1
	menu_item_add 11, 255, 2
	menu_item_add 12, 255, 3
	menu_item_add 13, 255, 4
	menu_item_add 14, 255, 5
	menu_item_add 15, 255, 6
	menu_item_add 17, 255, 7
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _01BE
	case 1, _01D7
	case 2, _01F0
	case 3, _0209
	case 4, _0222
	case 5, _023B
	case 6, _0254
	case 7, _026D
	releaseall
	end

	.align 4
_0360:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_036A:

	step 12, 5
	step_end
	.align 4
_0370:

	step 33, 2
	step_end
	.align 4
_0376:

	step 13, 1
	step_end
	.align 4
_037C:

	step 2, 4
	step 0, 4
	step 3, 4
	step 1, 4
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 1
	step 0, 1
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
_03D6:

	step 13, 5
	step_end
	.align 4


.close
