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

.include "armips/scr_seq/event_R06.inc"


// text archive to grab from: 334.txt

.create "build/a012/2_184", 0


scrdef scr_seq_R06_000
scrdef scr_seq_R06_001
scrdef scr_seq_R06_002
scrdef_end

scr_seq_R06_000:
	simple_npc_msg 0
	end

scr_seq_R06_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R06_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PSYDUCK, 0
	wait_cry
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
