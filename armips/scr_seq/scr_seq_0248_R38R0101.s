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

.include "armips/scr_seq/event_R38R0101.inc"


// text archive to grab from: 395.txt

.create "build/a012/2_248", 0


scrdef scr_seq_R38R0101_000
scrdef scr_seq_R38R0101_001
scrdef scr_seq_R38R0101_002
scrdef scr_seq_R38R0101_003
scrdef scr_seq_R38R0101_004
scrdef_end

scr_seq_R38R0101_000:
	end

scr_seq_R38R0101_001:
	simple_npc_msg 0
	end

scr_seq_R38R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_R38R0101_counterm, _0132
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0138
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_R38R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	closemsg
	setvar 24997, 2
	clearflag 16364
	clearflag 16363
	releaseall
	end

scr_seq_R38R0101_004:
	lockall
	play_se SEQ_SE_DP_KAIDAN2
	buffer_players_name 0
	move_person_facing obj_R38R0101_daigo, 10, 1, 7, DIR_WEST
	apply_movement obj_R38R0101_daigo, _0144
	wait_movement
	wait_se SEQ_SE_DP_DOOR
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _014A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_R38R0101_daigo, _0150
	wait_movement
	apply_movement obj_R38R0101_daigo, _0132
	wait_movement
	npc_msg 4
	apply_movement obj_R38R0101_daigo, _013E
	wait_movement
	npc_msg 5
	apply_movement obj_R38R0101_daigo, _0144
	wait_movement
	npc_msg 6
	giveitem_no_check ITEM_IRON_PLATE, 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	apply_movement obj_R38R0101_daigo, _014A
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_R38R0101_daigo
	wait_se SEQ_SE_DP_DOOR
	setvar 24879, 2
	releaseall
	end

	.align 4
_0132:

	step 75, 1
	step_end
	.align 4
_0138:

	step 15, 1
	step_end
	.align 4
_013E:

	step 35, 1
	step_end
	.align 4
_0144:

	step 34, 1
	step_end
	.align 4
_014A:

	step 15, 4
	step_end
	.align 4
_0150:

	step 14, 4
	step_end
	.align 4


.close
