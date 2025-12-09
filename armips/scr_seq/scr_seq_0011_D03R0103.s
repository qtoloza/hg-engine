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

.include "armips/scr_seq/event_D03R0103.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_011", 0


scrdef scr_seq_D03R0103_000
scrdef scr_seq_D03R0103_001
scrdef scr_seq_D03R0103_002
scrdef_end

scr_seq_D03R0103_001:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _00DE
	end

scr_seq_D03R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEWTWO, 0
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_MEWTWO, 75, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EC
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _00F2
	compare VAR_TEMP_x4002, 4
	call_if_eq _00F6
	releaseall
	end

scr_seq_D03R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LUGIA, 6
	wait_cry
	play_cry SPECIES_HO_OH, 6
	wait_cry
	play_cry SPECIES_MEWTWO, 6
	wait_cry
	trainer_battle TRAINER_YOUNGSTER_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0100
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	play_cry SPECIES_LUGIA, 6
	wait_cry
	play_cry SPECIES_HO_OH, 6
	wait_cry
	play_cry SPECIES_MEWTWO, 6
	wait_cry
	hide_person obj_D03R0103_gsrivel
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	releaseall
	end

_00DE:
	setflag FLAG_HIDE_CERULEAN_CAVE_MEWTWO
	hide_person obj_D03R0103_follower_mon_static_mewtwo
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_00EC:
	white_out
	releaseall
	end

_00F2:
	releaseall
	end

_00F6:
	setflag FLAG_CAUGHT_MEWTWO
	clearflag 16221
	return

_0100:
	white_out
	releaseall
	end
	.align 4


.close
