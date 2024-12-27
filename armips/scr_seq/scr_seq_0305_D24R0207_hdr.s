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


.create "build/a012/2_305", 0


	.byte 1
	.word scr_seq_D24R0207_map_scripts_2-.-4
	.byte 3
	.halfword 2, 0
.byte 0

scr_seq_D24R0207_map_scripts_2:
	.halfword VAR_UNK_40D5, 1, 1
	.halfword 0

.align 4


.close
