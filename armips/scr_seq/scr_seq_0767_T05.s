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

.include "armips/scr_seq/event_T05.inc"


// text archive to grab from: 475.txt

.create "build/a012/2_767", 0


scrdef scr_seq_T05_000
scrdef scr_seq_T05_001
scrdef scr_seq_T05_002
scrdef scr_seq_T05_003
scrdef scr_seq_T05_004
scrdef scr_seq_T05_005
scrdef scr_seq_T05_006
scrdef scr_seq_T05_007
scrdef_end

scr_seq_T05_000:
	simple_npc_msg 0
	end

scr_seq_T05_001:
	simple_npc_msg 1
	end

scr_seq_T05_002:
	simple_npc_msg 2
	end

scr_seq_T05_003:
	simple_npc_msg 3
	end

scr_seq_T05_004:
	direction_signpost 4, 0, 5, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T05_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 5, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T05_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T05_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 7, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
