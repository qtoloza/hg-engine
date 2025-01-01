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

.include "armips/scr_seq/event_R42R0101.inc"


// text archive to grab from: 400.txt

.create "build/a012/2_253", 0


scrdef scr_seq_R42R0101_000
scrdef scr_seq_R42R0101_001
scrdef scr_seq_R42R0101_002
scrdef scr_seq_R42R0101_003
scrdef scr_seq_R42R0101_004
scrdef_end

scr_seq_R42R0101_000:
	end

scr_seq_R42R0101_001:
	simple_npc_msg 0
	end

scr_seq_R42R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_R42R0101_counterm, _0088
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _008E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_R42R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R42R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0088:

	step 75, 1
	step_end
	.align 4
_008E:

	step 14, 1
	step_end
	.align 4


.close
