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

.include "armips/scr_seq/event_R33.inc"


// text archive to grab from: 383.txt

.create "build/a012/2_236", 0


scrdef scr_seq_R33_000
scrdef scr_seq_R33_001
scrdef scr_seq_R33_002
scrdef_end

scr_seq_R33_000:
	simple_npc_msg 0
	end

scr_seq_R33_001:
	direction_signpost 1, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R33_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_FEAROW, 0
	wait_cry
	wild_battle SPECIES_FEAROW, 20, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0084
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 4
	setflag 16377
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0084:
	white_out
	releaseall
	end
	.align 4


.close
