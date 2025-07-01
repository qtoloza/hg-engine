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

.include "armips/scr_seq/event_T07SP0101.inc"


// text archive to grab from: 511.txt

.create "build/a012/2_806", 0


scrdef scr_seq_T07SP0101_000
scrdef scr_seq_T07SP0101_001
scrdef scr_seq_T07SP0101_002
scrdef scr_seq_T07SP0101_003
scrdef_end

scr_seq_T07SP0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0066
	apply_movement obj_T07SP0101_suit, _007C
	wait_movement
	npc_msg 12
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 0, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_TEMP_x4001, 2
	releaseall
	end

_0066:
	npc_msg 10
	apply_movement obj_T07SP0101_suit, _007C
	wait_movement
	npc_msg 11
	goto _00E4

	.align 4
_007C:

	step 1, 1
	step_end
	.align 4
_0084:

	step 2, 1
	step_end
	.align 4
_008C:

	step 3, 1
	step_end
scr_seq_T07SP0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_ne _00B9
	call _00EC
	goto _00C1

_00B9:
	apply_movement obj_T07SP0101_suit, _007C
_00C1:
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00E1
	npc_msg 13
	goto _00E4

_00E1:
	npc_msg 11
_00E4:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00EC:
	get_player_coords VAR_TEMP_x4002, VAR_TEMP_x4003
	get_player_coords VAR_TEMP_x4002, VAR_TEMP_x4003
	compare VAR_TEMP_x4002, 6
	goto_if_ne _0113
	apply_movement obj_T07SP0101_suit, _0084
	goto _0128

_0113:
	compare VAR_TEMP_x4002, 8
	goto_if_ne _0128
	apply_movement obj_T07SP0101_suit, _008C
_0128:
	return

scr_seq_T07SP0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0184
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0163
	npc_msg 6
	setvar VAR_TEMP_x4001, 1
	goto _017C

_0163:
	compare VAR_TEMP_x4001, 1
	goto_if_ne _0179
	npc_msg 7
	goto _017C

_0179:
	npc_msg 8
_017C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0184:
	compare VAR_TEMP_x4001, 0
	goto_if_ne _019A
	npc_msg 0
	goto _019D

_019A:
	npc_msg 9
_019D:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01D4
	npc_msg 3
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 4
	goto _00E4

_01D4:
	setvar VAR_TEMP_x4001, 1
	npc_msg 5
	goto _00E4

scr_seq_T07SP0101_001:
	simple_npc_msg 14
	end
	.align 4


.close
