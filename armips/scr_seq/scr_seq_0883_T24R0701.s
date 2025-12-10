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

.include "armips/scr_seq/event_T24R0701.inc"


// text archive to grab from: 579.txt

.create "build/a012/2_883", 0


scrdef scr_seq_T24R0701_000
scrdef scr_seq_T24R0701_001
scrdef scr_seq_T24R0701_002
scrdef scr_seq_T24R0701_003
scrdef scr_seq_T24R0701_004
scrdef_end

scr_seq_T24R0701_000:
	simple_npc_msg 0
	end

scr_seq_T24R0701_001:
	play_cry SPECIES_GLIGAR, 0
	simple_npc_msg 1
	end

scr_seq_T24R0701_002:
	play_cry SPECIES_SNEASEL, 0
	simple_npc_msg 2
	end

scr_seq_T24R0701_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16266, _0100
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F5
	npc_msg 4
	giveitem_no_check ITEM_RAZOR_FANG, 1
	setflag 16266
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T24R0701_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16265, _010B
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F5
	npc_msg 7
	giveitem_no_check ITEM_RAZOR_CLAW, 1
	setflag 16265
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F5:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0100:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010B:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
