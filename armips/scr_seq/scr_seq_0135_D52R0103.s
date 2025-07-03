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

.include "armips/scr_seq/event_D52R0103.inc"


// text archive to grab from: 150.txt

.create "build/a012/2_135", 0


scrdef scr_seq_D52R0103_000
scrdef scr_seq_D52R0103_001
scrdef scr_seq_D52R0103_002
scrdef scr_seq_D52R0103_003
scrdef_end

scr_seq_D52R0103_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0119
	end

scr_seq_D52R0103_003:
	compare VAR_SCENE_EMBEDDED_TOWER, 7
	goto_if_ge _0123
	clearflag FLAG_HIDE_EMBEDDED_TOWER_RAYQUAZA
	end

scr_seq_D52R0103_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _014A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_RAYQUAZA, 0
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _014A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	release obj_D52R0103_follower_mon_static_rayquaza
	scrcmd_523 obj_D52R0103_follower_mon_static_rayquaza, 8, 90, 3, 0
	play_cry SPECIES_RAYQUAZA, 0
	npc_msg 0
	wait_cry
	lock obj_D52R0103_follower_mon_static_rayquaza
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 6
	releaseall
	end

scr_seq_D52R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	release obj_D52R0103_follower_mon_static_rayquaza
	scrcmd_523 obj_D52R0103_follower_mon_static_rayquaza, 8, 90, 3, 0
	play_cry SPECIES_RAYQUAZA, 0
	npc_msg 0
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_RAYQUAZA, 75, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0125
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _012B
	compare VAR_TEMP_x4002, 4
	goto_if_eq _013C
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 9
	releaseall
	end

_0119:
	setflag FLAG_HIDE_EMBEDDED_TOWER_RAYQUAZA
	hide_person obj_D52R0103_follower_mon_static_rayquaza
	end

_0123:
	end

_0125:
	white_out
	releaseall
	end

_012B:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 9
	releaseall
	end

_013C:
	setvar VAR_SCENE_EMBEDDED_TOWER, 7
	setflag FLAG_CAUGHT_RAYQUAZA
	releaseall
	end

	.align 4
_014A:

	step 12, 8
	step 63, 2
	step_end
	.align 4


.close
