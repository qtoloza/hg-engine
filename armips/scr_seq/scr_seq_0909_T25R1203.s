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

.include "armips/scr_seq/event_T25R1203.inc"


// text archive to grab from: 602.txt

.create "build/a012/2_909", 0


scrdef scr_seq_T25R1203_000
scrdef scr_seq_T25R1203_001
scrdef scr_seq_T25R1203_002
scrdef scr_seq_T25R1203_003
scrdef scr_seq_T25R1203_004
scrdef scr_seq_T25R1203_005
scrdef scr_seq_T25R1203_006
scrdef scr_seq_T25R1203_007
scrdef scr_seq_T25R1203_008
scrdef scr_seq_T25R1203_009
scrdef scr_seq_T25R1203_010
scrdef scr_seq_T25R1203_011
scrdef_end

scr_seq_T25R1203_000:
	simple_npc_msg 0
	end

scr_seq_T25R1203_001:
	simple_npc_msg 1
	end

scr_seq_T25R1203_002:
	simple_npc_msg 2
	end

scr_seq_T25R1203_003:
	simple_npc_msg 3
	end

scr_seq_T25R1203_004:
	simple_npc_msg 4
	end

scr_seq_T25R1203_005:
	simple_npc_msg 5
	end

scr_seq_T25R1203_006:
	simple_npc_msg 6
	end

scr_seq_T25R1203_007:
	simple_npc_msg 7
	end

scr_seq_T25R1203_008:
	simple_npc_msg 8
	end

scr_seq_T25R1203_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1203_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1203_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8005, 2
	goto _0113

_0113:
	npc_msg 11
	touchscreen_menu_hide
	menu_init 21, 11, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 13, 255, 0
	menu_item_add 14, 255, 1
	menu_item_add 15, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _016A
	case 1, _018F
	goto _0162

_0162:
	touchscreen_menu_show
_0164:
	closemsg
	releaseall
	end

_016A:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0164
	closemsg
	scrcmd_815 0
	callstd std_enter_global_terminal
	releaseall
	end

_018F:
	npc_msg 12
	goto _0113

	.align 4


.close
