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

.include "armips/scr_seq/event_D25R0103.inc"


// text archive to grab from: 089.txt

.create "build/a012/2_058", 0


scrdef scr_seq_D25R0103_000
scrdef scr_seq_D25R0103_001
scrdef scr_seq_D25R0103_002
scrdef_end

scr_seq_D25R0103_002:
	goto_if_set FLAG_DAILY_CAUGHT_LAPRAS, _0079
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _007F
	clearflag FLAG_HIDE_UNION_CAVE_LAPRAS
	goto _0085

scr_seq_D25R0103_001:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0087
	end

scr_seq_D25R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LAPRAS, 0
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_LAPRAS, 25, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0091
	setflag FLAG_DAILY_CAUGHT_LAPRAS
	releaseall
	end

_0079:
	setflag FLAG_HIDE_UNION_CAVE_LAPRAS
	end

_007F:
	setflag FLAG_HIDE_UNION_CAVE_LAPRAS
	end

_0085:
	end

_0087:
	setflag FLAG_HIDE_UNION_CAVE_LAPRAS
	hide_person obj_D25R0103_rapurasu
	end

_0091:
	white_out
	releaseall
	end
	.align 4


.close
