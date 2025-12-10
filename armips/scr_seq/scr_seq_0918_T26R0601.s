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

.include "armips/scr_seq/event_T26R0601.inc"


// text archive to grab from: 610.txt

.create "build/a012/2_918", 0


scrdef scr_seq_T26R0601_000
scrdef scr_seq_T26R0601_001
scrdef scr_seq_T26R0601_002
scrdef scr_seq_T26R0601_003
scrdef scr_seq_T26R0601_004
scrdef_end

scr_seq_T26R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_ABB, _00D9
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _00E4
	compare VAR_TEMP_x4000, 4
	goto_if_eq _00E4
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _011E
	npc_msg 3
	giveitem_no_check ITEM_SUN_STONE, 1
	npc_msg 2
	setflag FLAG_UNK_ABB
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T26R0601_001:
	simple_npc_msg 6
	end

scr_seq_T26R0601_002:
	play_cry SPECIES_CLEFAIRY, 0
	simple_npc_msg 7
	end

scr_seq_T26R0601_003:
	play_cry SPECIES_SUNFLORA, 0
	simple_npc_msg 8
	end

scr_seq_T26R0601_004:
	simple_npc_msg 9
	end

_00D9:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E4:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _011E
	npc_msg 4
	giveitem_no_check ITEM_MOON_STONE, 1
	npc_msg 2
	setflag FLAG_UNK_ABB
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_011E:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4


.close
