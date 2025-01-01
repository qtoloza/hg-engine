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
scrdef scr_seq_D37R0103_004
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
	goto_if_set FLAG_UNK_096, _013A
	goto_if_set FLAG_UNK_097, _0194
	goto_if_set FLAG_UNK_098, _01DD
	end

scr_seq_D37R0103_000:
	goto_if_set FLAG_UNK_096, _021B
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke, _0556
	apply_movement obj_D37R0103_babyboy1_5_3, _0556
	apply_movement obj_D37R0103_stop, _0556
	apply_movement obj_D37R0103_stop_2, _0556
	apply_movement obj_D37R0103_stop_3, _0556
	wait_movement
	setflag FLAG_UNK_096
	scrcmd_109 0, 9
	releaseall
	end

scr_seq_D37R0103_001:
	get_person_coords 4, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 15
	goto_if_ne _022E
	goto _0241

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

scr_seq_D37R0103_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_D37R0103_thief, _05AE
	wait_movement
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	play_cry SPECIES_CLAYDOL, 0
	wait_cry
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _055C
	wait_movement
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	warp MAP_T11R0702, 0, 5, 9, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	scrcmd_606
	releaseall
	end

_013A:
	goto_if_set FLAG_UNK_097, _0265
	goto_if_set FLAG_UNK_098, _02F0
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	end

_0194:
	goto_if_set FLAG_UNK_098, _0370
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	end

_01DD:
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_021B:
	simple_npc_msg 1
	end

_022E:
	compare VAR_TEMP_x4001, 16
	goto_if_ne _03EA
	goto _03F0

_0241:
	goto_if_set FLAG_UNK_097, _021B
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0414
	goto _041A

_0265:
	goto_if_set FLAG_UNK_098, _0457
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

_02F0:
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

_0370:
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

_03EA:
	goto _021B

_03F0:
	goto_if_set FLAG_UNK_098, _021B
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0513
	goto _0519

_0414:
	goto _021B

_041A:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_2, _05A2
	apply_movement obj_D37R0103_babyboy1_5_2, _05A2
	apply_movement obj_D37R0103_stop_4, _05A2
	apply_movement obj_D37R0103_stop_5, _05A2
	apply_movement obj_D37R0103_stop_6, _05A2
	wait_movement
	setflag FLAG_UNK_097
	releaseall
	end

_0457:
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

_0513:
	goto _021B

_0519:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_3, _05A8
	apply_movement obj_D37R0103_babyboy1_5, _05A8
	apply_movement obj_D37R0103_stop_7, _05A8
	apply_movement obj_D37R0103_stop_8, _05A8
	apply_movement obj_D37R0103_stop_9, _05A8
	wait_movement
	setflag FLAG_UNK_098
	releaseall
	end

	.align 4
_0556:

	step 9, 2
	step_end
	.align 4
_055C:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.align 4
_05A2:

	step 10, 2
	step_end
	.align 4
_05A8:

	step 11, 2
	step_end
	.align 4
_05AE:

	step 75, 1
	step_end
	.align 4


.close
