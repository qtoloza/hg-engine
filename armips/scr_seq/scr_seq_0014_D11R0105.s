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

.include "armips/scr_seq/event_D11R0105.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_014", 0


scrdef scr_seq_D11R0105_000
scrdef scr_seq_D11R0105_001
scrdef_end

scr_seq_D11R0105_001:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0017
	end

_0017:
	setflag FLAG_HIDE_SEAFOAM_ISLAND_ARTICUNO
	hide_person obj_D11R0105_tsure_poke_static_articuno
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

scr_seq_D11R0105_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ARTICUNO, 0
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ARTICUNO, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0077
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _0073
	compare VAR_TEMP_x4002, 4
	call_if_eq _007D
_0073:
	releaseall
	end

_0077:
	white_out
	releaseall
	end

_007D:
	setflag FLAG_CAUGHT_ARTICUNO
	return
	.align 4





.close
