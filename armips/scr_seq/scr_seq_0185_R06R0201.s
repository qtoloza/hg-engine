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

.include "armips/scr_seq/event_R06R0201.inc"


// text archive to grab from: 335.txt

.create "build/a012/2_185", 0


scrdef scr_seq_R06R0201_000
scrdef scr_seq_R06R0201_001
scrdef_end

scr_seq_R06R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _0078
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R06R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_R06R0201_counterm, _00AC
	wait_movement
	apply_movement obj_player, _00B8
	wait_movement
	goto_if_set FLAG_UNK_2FB, _0083
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _00B2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_0078:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0083:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _00B2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

	.align 4
_00AC:

	step 75, 1
	step_end
	.align 4
_00B2:

	step 13, 1
	step_end
	.align 4
_00B8:

	step 2, 1
	step_end
	.align 4


.close
