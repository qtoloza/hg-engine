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

.include "armips/scr_seq/event_T02GYM0101.inc"


// text archive to grab from: 454.txt

.create "build/a012/2_743", 0


scrdef scr_seq_T02GYM0101_000
scrdef scr_seq_T02GYM0101_001
scrdef scr_seq_T02GYM0101_002
scrdef scr_seq_T02GYM0101_003
scrdef scr_seq_T02GYM0101_004
scrdef_end

scr_seq_T02GYM0101_002:
	viridian_gym_init
	setvar VAR_UNK_4127, 0
	get_phone_book_rematch PHONE_CONTACT_BLUE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _017E
	compare VAR_UNK_40FD, 0
	goto_if_eq _0184
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 5
	goto_if_ne _018A
	setflag FLAG_UNK_2F6
	goto _0190

scr_seq_T02GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0192
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_BLUE_BLUE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A8
	give_badge BADGE_EARTH
	addvar VAR_UNK_4135, 1
	setflag FLAG_UNK_998
	add_special_game_stat 22
	settrainerflag TRAINER_ACE_TRAINER_M_ARABELLA
	settrainerflag TRAINER_ACE_TRAINER_F_SALMA
	settrainerflag TRAINER_ACE_TRAINER_M_BONITA
	settrainerflag TRAINER_DOUBLE_TEAM_ELAN_AND_IDA
	setflag FLAG_UNK_97F
	clearflag FLAG_HIDE_ROUTE_10_ZAPDOS
	clearflag 16316
	clearflag 16307
	setflag FLAG_UNK_30F
	setvar VAR_UNK_4096, 1
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _01AE

scr_seq_T02GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01FB
	npc_msg 6
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4127, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T02GYM0101_003:
	scrcmd_609
	lockall
	goto_if_set FLAG_UNK_13A, _0206
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 1
	goto_if_ne _021D
	apply_movement obj_T02GYM0101_sunglasses, _0444
	apply_movement obj_player, _0452
	goto _0240

scr_seq_T02GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0266
	npc_msg 9
	goto _0271

_017E:
	setflag FLAG_UNK_2F6
	end

_0184:
	clearflag FLAG_UNK_2F6
	end

_018A:
	clearflag FLAG_UNK_2F6
	end

_0190:
	end

_0192:
	goto_if_unset FLAG_GOT_TM92_FROM_BLUE, _01AE
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A8:
	white_out
	releaseall
	end

_01AE:
	goto_if_no_item_space ITEM_TM092, 1, _0279
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM92_FROM_BLUE
	buffer_players_name 0
	npc_msg 4
	npc_msg 11
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 12
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BLUE
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01FB:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0206:
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4127, 1
	releaseall
	end

_021D:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0283
	apply_movement obj_T02GYM0101_sunglasses, _045C
	apply_movement obj_player, _0452
	goto _0240

_0240:
	wait_movement
	npc_msg 8
	closemsg
	setflag FLAG_UNK_13A
	compare VAR_TEMP_x4000, 1
	goto_if_ne _02A6
	apply_movement obj_T02GYM0101_sunglasses, _046A
	goto _02C1

_0266:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0271:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0279:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0283:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _02DA
	apply_movement obj_T02GYM0101_sunglasses, _0474
	apply_movement obj_player, _0452
	goto _0240

_02A6:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _02FD
	apply_movement obj_T02GYM0101_sunglasses, _0482
	goto _02C1

_02C1:
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4127, 1
	releaseall
	end

_02DA:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0318
	apply_movement obj_T02GYM0101_sunglasses, _048C
	apply_movement obj_player, _049A
	goto _0240

_02FD:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _033B
	apply_movement obj_T02GYM0101_sunglasses, _04A4
	goto _02C1

_0318:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0356
	apply_movement obj_T02GYM0101_sunglasses, _04AE
	apply_movement obj_player, _049A
	goto _0240

_033B:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0379
	apply_movement obj_T02GYM0101_sunglasses, _04BC
	goto _02C1

_0356:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0394
	apply_movement obj_T02GYM0101_sunglasses, _04C6
	apply_movement obj_player, _049A
	goto _0240

_0379:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _03B7
	apply_movement obj_T02GYM0101_sunglasses, _04D0
	goto _02C1

_0394:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _03D2
	apply_movement obj_T02GYM0101_sunglasses, _04DA
	apply_movement obj_player, _04E4
	goto _0240

_03B7:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0408
	apply_movement obj_T02GYM0101_sunglasses, _04EE
	goto _02C1

_03D2:
	apply_movement obj_T02GYM0101_sunglasses, _04F4
	apply_movement obj_player, _04E4
	wait_movement
	npc_msg 8
	closemsg
	setflag FLAG_UNK_13A
	compare VAR_TEMP_x4000, 1
	goto_if_ne _02A6
	apply_movement obj_T02GYM0101_sunglasses, _046A
	goto _02C1

_0408:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0423
	apply_movement obj_T02GYM0101_sunglasses, _04EE
	goto _02C1

_0423:
	apply_movement obj_T02GYM0101_sunglasses, _0502
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4127, 1
	releaseall
	end

	.align 4
_0444:

	step 2, 1
	step 75, 1
	step 14, 5
	step_end
	.align 4
_0452:

	step 65, 2
	step 3, 1
	step_end
	.align 4
_045C:

	step 2, 1
	step 75, 1
	step 14, 4
	step_end
	.align 4
_046A:

	step 15, 5
	step 1, 1
	step_end
	.align 4
_0474:

	step 2, 1
	step 75, 1
	step 14, 3
	step_end
	.align 4
_0482:

	step 15, 4
	step 1, 1
	step_end
	.align 4
_048C:

	step 2, 1
	step 75, 1
	step 14, 2
	step_end
	.align 4
_049A:

	step 63, 2
	step 3, 1
	step_end
	.align 4
_04A4:

	step 15, 3
	step 1, 1
	step_end
	.align 4
_04AE:

	step 2, 1
	step 75, 1
	step 14, 1
	step_end
	.align 4
_04BC:

	step 15, 2
	step 1, 1
	step_end
	.align 4
_04C6:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_04D0:

	step 15, 1
	step 1, 1
	step_end
	.align 4
_04DA:

	step 3, 1
	step 75, 1
	step_end
	.align 4
_04E4:

	step 63, 2
	step 2, 1
	step_end
	.align 4
_04EE:

	step 1, 1
	step_end
	.align 4
_04F4:

	step 3, 1
	step 75, 1
	step 15, 1
	step_end
	.align 4
_0502:

	step 14, 1
	step 1, 1
	step_end
	.align 4


.close
