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

.include "armips/scr_seq/event_R02R0401.inc"


// text archive to grab from: 324.txt

.create "build/a012/2_173", 0


scrdef scr_seq_R02R0401_000
scrdef scr_seq_R02R0401_001
scrdef_end

scr_seq_R02R0401_000:
	simple_npc_msg 0
	end

scr_seq_R02R0401_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_R02R0401_counterm, _007C
	wait_movement
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _006B
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0082
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_006B:
	npc_msg 2
	setvar 24884, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_007C:

	step 75, 1
	step_end
	.align 4
_0082:

	step 13, 1
	step_end
	.align 4


.close
