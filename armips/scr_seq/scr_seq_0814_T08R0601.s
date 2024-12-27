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

.include "armips/scr_seq/event_T08R0601.inc"


// text archive to grab from: 518.txt

.create "build/a012/2_814", 0


scrdef scr_seq_T08R0601_000
scrdef scr_seq_T08R0601_001
scrdef scr_seq_T08R0601_002
scrdef scr_seq_T08R0601_003
scrdef_end

scr_seq_T08R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16227, _0081
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AIPOM, 0
	npc_msg 1
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08R0601_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AIPOM, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08R0601_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AIPOM, 0
	npc_msg 3
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0081:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
