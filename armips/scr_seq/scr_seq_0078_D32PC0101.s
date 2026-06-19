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

.include "armips/scr_seq/event_D32PC0101.inc"


// text archive to grab from: 102.txt

.create "build/a012/2_078", 0


scrdef scr_seq_D32PC0101_000
scrdef scr_seq_D32PC0101_001
scrdef scr_seq_D32PC0101_002
scrdef scr_seq_D32PC0101_003
scrdef scr_seq_D32PC0101_004
scrdef_end

scr_seq_D32PC0101_004:
	setvar VAR_UNK_40E5, 2
	end

scr_seq_D32PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_D32PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16252, _0085
	npc_msg 3
	giveitem_no_check ITEM_MACHO_BRACE, 1
	npc_msg 4
	setflag 16252
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D32PC0101_002:
	simple_npc_msg 1
	end

scr_seq_D32PC0101_003:
	simple_npc_msg 2
	end

_0085:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
