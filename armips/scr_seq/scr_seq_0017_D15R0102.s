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

.include "armips/scr_seq/event_D15R0102.inc"


// text archive to grab from: 055.txt

.create "build/a012/2_017", 0


scrdef scr_seq_D15R0102_000
scrdef scr_seq_D15R0102_001
scrdef scr_seq_D15R0102_002
scrdef scr_seq_D15R0102_003
scrdef_end

scr_seq_D15R0102_000:
	end

scr_seq_D15R0102_001:
	simple_npc_msg 0
	end

scr_seq_D15R0102_002:
	simple_npc_msg 1
	end

scr_seq_D15R0102_003:
	lockall
	hide_person 3
	setflag 16383
	giveitem_no_check ITEM_TM70, 1
	closemsg
	releaseall
	end
	.align 4


.close
