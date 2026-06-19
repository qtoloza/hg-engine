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
	goto_if_ge _00A1
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _00A3
	goto _00A3

scr_seq_D52R0101_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _00B3
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
	wild_battle SPECIES_GROUDON, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C1
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _00C7
	compare VAR_TEMP_x4002, 4
	goto_if_eq _00D6
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	releaseall
	end

_00A1:
	end

_00A3:
	goto _0148

_00A9:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	end

_00B3:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	hide_person obj_D52R0101_follower_mon_static_groudon
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_00C1:
	white_out
	releaseall
	end

_00C7:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	releaseall
	end

_00D6:
	npc_msg 5
	play_se SEQ_SE_GS_STOPPERKAIJO
	npc_msg 6
	wait_se SEQ_SE_GS_STOPPERKAIJO
	buffer_players_name 0
	takeitem ITEM_RED_ORB, 1, VAR_SPECIAL_RESULT
	giveitem_no_check ITEM_BLUE_ORB, 1
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 4
	setflag FLAG_CAUGHT_GROUDON
	clearflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	show_person obj_D52R0101_mount_2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _016E
	apply_movement obj_D52R0101_mount_2, _021A
	wait_movement
	apply_movement obj_player, _0224
	wait_movement
	goto _01C9

_0148:
	goto_if_set FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE, _00A1
	hasitem ITEM_RED_ORB, 1, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ge _0210
	goto _00A9

_016E:
	apply_movement obj_D52R0101_mount_2, _022E
	wait_movement
	apply_movement obj_player, _0238
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	apply_movement obj_D52R0101_mount_2, _023E
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D52R0101_mount_2, _024C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D52R0101_mount_2, _0256
	wait_movement
	hide_person obj_D52R0101_mount_2
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	setflag FLAG_HIDE_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

_01C9:
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	apply_movement obj_D52R0101_mount_2, _023E
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D52R0101_mount_2, _024C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D52R0101_mount_2, _0256
	wait_movement
	hide_person obj_D52R0101_mount_2
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	setflag FLAG_HIDE_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

_0210:
	setflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON_HIKER
	clearflag FLAG_HIDE_EMBEDDED_TOWER_GROUDON
	end

	.align 4
_021A:

	step 12, 8
	step 32, 1
	step_end
	.align 4
_0224:

	step 33, 1
	step 13, 1
	step_end
	.align 4
_022E:

	step 12, 10
	step 32, 1
	step_end
	.align 4
_0238:

	step 33, 1
	step_end
	.align 4
_023E:

	step 33, 1
	step 9, 2
	step 32, 1
	step_end
	.align 4
_024C:

	step 12, 2
	step 32, 1
	step_end
	.align 4
_0256:

	step 13, 8
	step_end
	.align 4


.close
