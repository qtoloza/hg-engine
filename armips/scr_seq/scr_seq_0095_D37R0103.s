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

.include "armips/scr_seq/event_D37R0103.inc"


// text archive to grab from: 118.txt

.create "build/a012/2_095", 0


scrdef scr_seq_D37R0103_000
scrdef scr_seq_D37R0103_001
scrdef scr_seq_D37R0103_002
scrdef scr_seq_D37R0103_003
scrdef_end

scr_seq_D37R0103_003:
	make_object_visible obj_D37R0103_stop
	make_object_visible obj_D37R0103_stop_2
	make_object_visible obj_D37R0103_stop_3
	make_object_visible obj_D37R0103_stop_4
	make_object_visible obj_D37R0103_stop_5
	make_object_visible obj_D37R0103_stop_6
	make_object_visible obj_D37R0103_stop_7
	make_object_visible obj_D37R0103_stop_8
	make_object_visible obj_D37R0103_stop_9
	goto_if_set FLAG_UNK_096, _0059
	goto_if_set FLAG_UNK_097, _01BE
	goto_if_set FLAG_UNK_098, _0207
	end

_0059:
	goto_if_set FLAG_UNK_097, _00B3
	goto_if_set FLAG_UNK_098, _013E
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	end

_00B3:
	goto_if_set FLAG_UNK_098, _02BF
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	end

_013E:
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_01BE:
	goto_if_set FLAG_UNK_098, _0245
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	end

_0207:
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_0245:
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_02BF:
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

scr_seq_D37R0103_000:
	goto_if_set FLAG_UNK_096, _03C9
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke, _0504
	apply_movement obj_D37R0103_babyboy1_5_3, _0504
	apply_movement obj_D37R0103_stop, _0504
	apply_movement obj_D37R0103_stop_2, _0504
	apply_movement obj_D37R0103_stop_3, _0504
	wait_movement
	setflag FLAG_UNK_096
	scrcmd_109 0, 9
	releaseall
	end

_03C9:
	simple_npc_msg 1
	end

scr_seq_D37R0103_001:
	get_person_coords 4, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 15
	goto_if_ne _03FD
	goto _041C

_03FD:
	compare VAR_TEMP_x4001, 16
	goto_if_ne _0416
	goto _0483

_0416:
	goto _03C9

_041C:
	goto_if_set FLAG_UNK_097, _03C9
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0440
	goto _0446

_0440:
	goto _03C9

_0446:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_2, _050C
	apply_movement obj_D37R0103_babyboy1_5_2, _050C
	apply_movement obj_D37R0103_stop_4, _050C
	apply_movement obj_D37R0103_stop_5, _050C
	apply_movement obj_D37R0103_stop_6, _050C
	wait_movement
	setflag FLAG_UNK_097
	releaseall
	end

_0483:
	goto_if_set FLAG_UNK_098, _03C9
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _04A7
	goto _04AD

_04A7:
	goto _03C9

_04AD:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_3, _0514
	apply_movement obj_D37R0103_babyboy1_5, _0514
	apply_movement obj_D37R0103_stop_7, _0514
	apply_movement obj_D37R0103_stop_8, _0514
	apply_movement obj_D37R0103_stop_9, _0514
	wait_movement
	setflag FLAG_UNK_098
	releaseall
	end

scr_seq_D37R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_MACHOKE, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0504:

	step 9, 2
	step_end
	.align 4
_050C:

	step 10, 2
	step_end
	.align 4
_0514:

	step 11, 2
	step_end
	.align 4


.close
