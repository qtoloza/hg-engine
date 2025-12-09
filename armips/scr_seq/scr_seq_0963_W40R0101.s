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

.include "armips/scr_seq/event_W40R0101.inc"


// text archive to grab from: 745.txt

.create "build/a012/2_963", 0


scrdef scr_seq_W40R0101_000
scrdef scr_seq_W40R0101_001
scrdef scr_seq_W40R0101_002
scrdef scr_seq_W40R0101_003
scrdef_end

scr_seq_W40R0101_001:
	compare VAR_UNK_40E5, 1
	goto_if_ge _0088
	goto_if_set FLAG_GOT_TM23_FROM_JASMINE, _0090
	end

scr_seq_W40R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set FLAG_UNK_0FB, _009E
	goto_if_set FLAG_GAME_CLEAR, _00A9
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_ne _00B6
	apply_movement obj_W40R0101_gsmiddleman1, _0116
	goto _00D1

scr_seq_W40R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _00E6
	npc_msg 3
	goto _00F1

scr_seq_W40R0101_003:
	buffer_players_name 0
	end

_0088:
	setvar VAR_UNK_40E5, 2
	end

_0090:
	move_person_facing obj_W40R0101_gsmiddleman1, 3, 0, 3, DIR_NORTH
	end

_009E:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00A9:
	npc_msg 1
	closemsg
	releaseall
	setflag FLAG_UNK_0FB
	end

_00B6:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _00F9
	apply_movement obj_W40R0101_gsmiddleman1, _011C
	goto _00D1

_00D1:
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_W40R0101_gsmiddleman1, _0122
	wait_movement
	releaseall
	end

_00E6:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F1:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F9:
	apply_movement obj_W40R0101_gsmiddleman1, _0128
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_W40R0101_gsmiddleman1, _0122
	wait_movement
	releaseall
	end

	.align 4
_0116:

	step 34, 1
	step_end
	.align 4
_011C:

	step 35, 1
	step_end
	.align 4
_0122:

	step 32, 1
	step_end
	.align 4
_0128:

	step 33, 1
	step_end
	.align 4


.close
