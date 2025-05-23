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

.include "armips/scr_seq/event_D52R0101.inc"


// text archive to grab from: 148.txt

.create "build/a012/2_133", 0


scrdef scr_seq_D52R0101_000
scrdef scr_seq_D52R0101_001
scrdef scr_seq_D52R0101_002
scrdef_end

scr_seq_D52R0101_001:
	compare VAR_SCENE_EMBEDDED_TOWER, 4
	goto_if_ge _007C
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0038
	goto _0040

_0038:
	goto _004A

_0040:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	end

_004A:
	goto_if_set FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE, _007C
	hasitem ITEM_RED_ORB, 1, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ge _0072
	goto _0040

_0072:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	clearflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	end

_007C:
	end

scr_seq_D52R0101_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _008B
	end

_008B:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	hide_person obj_D52R0101_follower_mon_static_groudon
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

scr_seq_D52R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GROUDON, 0
	npc_msg 0
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_GROUDON, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _019D
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _00EC
	compare VAR_TEMP_x4002, 4
	goto_if_eq _00FB
_00EC:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	releaseall
	end

_00FB:
	setvar VAR_SCENE_EMBEDDED_TOWER, 4
	setflag FLAG_CAUGHT_GROUDON
	clearflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	show_person obj_D52R0101_mount_2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0142
	apply_movement obj_D52R0101_mount_2, _01A4
	wait_movement
	apply_movement obj_player, _01B0
	wait_movement
	goto _0156

_0142:
	apply_movement obj_D52R0101_mount_2, _01BC
	wait_movement
	apply_movement obj_player, _01C8
	wait_movement
_0156:
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	apply_movement obj_D52R0101_mount_2, _01D0
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D52R0101_mount_2, _01E0
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D52R0101_mount_2, _01EC
	wait_movement
	hide_person obj_D52R0101_mount_2
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	setflag FLAG_HIDE_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

_019D:
	white_out
	releaseall
	end


_01A4:

	step 12, 8
	step 32, 1
	step_end

_01B0:

	step 33, 1
	step 13, 1
	step_end

_01BC:

	step 12, 10
	step 32, 1
	step_end

_01C8:

	step 33, 1
	step_end

_01D0:

	step 33, 1
	step 9, 2
	step 32, 1
	step_end

_01E0:

	step 12, 2
	step 32, 1
	step_end

_01EC:

	step 13, 8
	step_end
	.align 4


.close
