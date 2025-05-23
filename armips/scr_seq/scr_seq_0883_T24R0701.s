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
scrdef_end

scr_seq_T24R0701_000:
	simple_npc_msg 0
	end

scr_seq_T24R0701_001:
	simple_npc_msg 1
	end

scr_seq_T24R0701_002:
	simple_npc_msg 2
	end
	.align 4


.close
