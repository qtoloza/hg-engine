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

.include "armips/scr_seq/event_R08R0201.inc"


// text archive to grab from: 339.txt

.create "build/a012/2_189", 0


scrdef scr_seq_R08R0201_000
scrdef scr_seq_R08R0201_001
scrdef_end

scr_seq_R08R0201_000:
	simple_npc_msg 0
	end

scr_seq_R08R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_R08R0201_counterm, _0058
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _005E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

	.align 4
_0058:

	step 75, 1
	step_end
	.align 4
_005E:

	step 15, 1
	step_end
	.align 4


.close
