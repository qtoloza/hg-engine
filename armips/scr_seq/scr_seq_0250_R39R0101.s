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

.include "armips/scr_seq/event_R39R0101.inc"


// text archive to grab from: 397.txt

.create "build/a012/2_250", 0


scrdef scr_seq_R39R0101_000
scrdef scr_seq_R39R0101_001
scrdef_end

scr_seq_R39R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0AA, _004A
	setflag FLAG_UNK_0A8
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R39R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0AA, _0076
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_004A:
	setvar VAR_SPECIAL_x8004, 33
	setvar VAR_SPECIAL_x8005, 0
	hasitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 999
	goto_if_ne _00B5
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0076:
	goto_if_set FLAG_GOT_TM83_FROM_MOOMOO_FARM_WOMAN, _0154
	npc_msg 8
	wait_button
	goto_if_no_item_space ITEM_TM083, 1, _015F
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM83_FROM_MOOMOO_FARM_WOMAN
	goto _0154

_00B5:
	show_money_box 20, 2
	npc_msg 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 12, 255, 1
	menu_item_add 13, 255, 2
	menu_item_add 14, 255, 3
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _016A
	compare VAR_SPECIAL_RESULT, 1
	call_if_eq _0177
	compare VAR_SPECIAL_RESULT, 2
	call_if_eq _0185
	hasenoughmoneyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4001
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0193
	goto_if_no_item_space ITEM_MOOMOO_MILK, VAR_TEMP_x4000, _01A0
	submoneyvar VAR_TEMP_x4001
	update_money_box
	npc_msg 2
	callstd std_give_item_verbose
	closemsg
	hide_money_box
	releaseall
	end

_0154:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_015F:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016A:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_0177:
	setvar VAR_TEMP_x4000, 1
	setvar VAR_TEMP_x4001, 500
	return

_0185:
	setvar VAR_TEMP_x4000, 12
	setvar VAR_TEMP_x4001, 6000
	return

_0193:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_01A0:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end
	.align 4


.close
