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

.include "armips/scr_seq/event_T26FS0101.inc"


// text archive to grab from: 605.txt

.create "build/a012/2_912", 0


scrdef scr_seq_T26FS0101_000
scrdef scr_seq_T26FS0101_001
scrdef scr_seq_T26FS0101_002
scrdef scr_seq_T26FS0101_003
scrdef_end

scr_seq_T26FS0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_pokemart
	releaseall
	end

scr_seq_T26FS0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 10
	callstd std_special_mart
	releaseall
	end

scr_seq_T26FS0101_001:
	simple_npc_msg 0
	end

scr_seq_T26FS0101_002:
	simple_npc_msg 1
	end
	.align 4


.close
