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

.include "armips/scr_seq/event_P01R0103.inc"


// text archive to grab from: 257.txt

.create "build/a012/2_154", 0


scrdef scr_seq_P01R0103_000
scrdef scr_seq_P01R0103_001
scrdef scr_seq_P01R0103_002
scrdef_end

scr_seq_P01R0103_001:
	scrcmd_445 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 387
	goto_if_eq _0021
	end

_0021:
	set_object_facing obj_P01R0103_seaman_2, DIR_SOUTH
	end

scr_seq_P01R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4002, 1
	goto_if_ge _014D
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_eq _0158
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _006C
	goto _00EF

_006C:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0085
	goto _0142

_0085:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _009E
	goto _0142

_009E:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _00B7
	goto _00EF

_00B7:
	compare VAR_SPECIAL_RESULT, 4
	goto_if_ne _00D0
	goto _0142

_00D0:
	compare VAR_SPECIAL_RESULT, 5
	goto_if_ne _00E9
	goto _0142

_00E9:
	goto _0142

_00EF:
	npc_msg 0
	closemsg
	apply_movement obj_P01R0103_seaman_2, _0190
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _01B0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_TEMP_x4002, 1
	setvar VAR_BOAT_DIRECTION, 2
	setvar VAR_UNK_40DC, 0
	clearflag FLAG_BOAT_ARRIVED
	setflag FLAG_UNK_22A
	clearflag FLAG_UNK_22C
	setflag FLAG_UNK_22B
	releaseall
	end

_0142:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_014D:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0158:
	apply_movement obj_P01R0103_seaman_2, _01B8
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _01D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_P01R0103_seaman_2, _01E4
	wait_movement
	releaseall
	end

	.align 4
_0190:

	step 71, 1
	step 13, 1
	step 72, 1
	step 2, 2
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_01B0:

	step 13, 2
	step_end
	.align 4
_01B8:

	step 71, 1
	step 12, 1
	step 72, 1
	step 2, 2
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_01D8:

	step 63, 1
	step 12, 4
	step_end
	.align 4
_01E4:

	step 14, 1
	step 1, 2
	step 13, 1
	step 32, 1
	step_end
scr_seq_P01R0103_002:
	simple_npc_msg 3
	end
	.align 4


.close
