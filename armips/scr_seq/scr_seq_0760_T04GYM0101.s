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

.include "armips/scr_seq/event_T04GYM0101.inc"


// text archive to grab from: 469.txt

.create "build/a012/2_760", 0


scrdef scr_seq_T04GYM0101_000
scrdef scr_seq_T04GYM0101_001
scrdef scr_seq_T04GYM0101_002
scrdef scr_seq_T04GYM0101_003
scrdef scr_seq_T04GYM0101_004
scrdef scr_seq_T04GYM0101_005
scrdef scr_seq_T04GYM0101_006
scrdef scr_seq_T04GYM0101_007
scrdef_end

scr_seq_T04GYM0101_007:
	get_phone_book_rematch PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0267
	check_badge BADGE_EARTH, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _026D
	compare VAR_SCENE_ROUTE_25, 1
	goto_if_eq _026F
	compare VAR_SCENE_ROUTE_25, 2
	goto_if_eq _026F
	check_registered_phone_number PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0275
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0290
	setflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	goto _02A7

scr_seq_T04GYM0101_004:
	scrcmd_609
	lockall
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_T04GYM0101_rocketm, _0444
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	npc_msg 0
	apply_movement obj_T04GYM0101_rocketm, _044A
	wait_movement
	npc_msg 1
	apply_movement obj_T04GYM0101_rocketm, _045C
	wait_movement
	npc_msg 2
	apply_movement obj_T04GYM0101_rocketm, _046A
	wait_movement
	npc_msg 3
	closemsg
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02A9
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02F5
	end

scr_seq_T04GYM0101_006:
	scrcmd_814
	goto_if_set FLAG_HIDE_CERULEAN_GYM_MACHINE_PART, _0315
	make_object_visible obj_T04GYM0101_stop
	make_object_visible obj_T04GYM0101_stop_2
	end

scr_seq_T04GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 16
	goto_if_no_item_space ITEM_MACHINE_PART, 1, _0317
	callstd std_obtain_item_verbose
	hide_person obj_T04GYM0101_stop
	hide_person obj_T04GYM0101_stop_2
	setflag FLAG_HIDE_CERULEAN_GYM_MACHINE_PART
	setvar VAR_SCENE_ROUTE_24_ROCKET, 4
	closemsg
	releaseall
	end

scr_seq_T04GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_CASCADE, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0321
	npc_msg 8
	closemsg
	trainer_battle TRAINER_LEADER_MISTY_MISTY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0337
	give_badge BADGE_CASCADE
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	settrainerflag TRAINER_SWIMMER_F_DIANA
	settrainerflag TRAINER_SWIMMER_F_BRIANA
	settrainerflag TRAINER_SWIMMER_F_JOY
	settrainerflag TRAINER_SAILOR_PARKER
	settrainerflag TRAINER_SAILOR_EDDIE
	npc_msg 9
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	call_if_set FLAG_UNK_14D, _033D
	buffer_players_name 0
	npc_msg 11
	goto _0349

scr_seq_T04GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4088, 2
	goto_if_ne _0396
	check_badge BADGE_CASCADE, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _039F
	npc_msg 6
	goto _03A8

scr_seq_T04GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4088, 2
	goto_if_ne _03AE
	check_badge BADGE_CASCADE, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03B9
	npc_msg 6
	goto _03C2

scr_seq_T04GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_CASCADE, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C8
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0267:
	setflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	end

_026D:
	end

_026F:
	clearflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	end

_0275:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _03D3
	setflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	goto _03EA

_0290:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _03EC
	setflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	goto _02A7

_02A7:
	end

_02A9:
	apply_movement obj_T04GYM0101_rocketm, _0470
	apply_movement obj_player, _0476
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T04GYM0101_rocketm
	wait_se SEQ_SE_DP_KAIDAN2
	stop_bgm SEQ_GS_EYE_ROCKET
	play_bgm SEQ_GS_GYM
	setflag FLAG_HIDE_CERULEAN_GYM_ROCKET
	clearflag FLAG_HIDE_ROUTE_24_ROCKET
	clearflag FLAG_HIDE_ROUTE_25_MISTY
	clearflag FLAG_HIDE_ROUTE_25_MISTYS_BOYFRIEND
	setvar VAR_UNK_411C, 2
	setvar VAR_SCENE_ROUTE_24_ROCKET, 1
	setvar VAR_UNK_4088, 1
	releaseall
	end

_02F5:
	apply_movement obj_T04GYM0101_rocketm, _0470
	apply_movement obj_player, _0476
	apply_movement obj_partner_poke, _0480
	wait_movement
	goto _03F2

_0315:
	end

_0317:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0321:
	goto_if_unset FLAG_GOT_TM03_FROM_MISTY, _0349
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0337:
	white_out
	releaseall
	end

_033D:
	clearflag FLAG_HIDE_ROUTE_25_SUICUNE
	setvar VAR_SCENE_ROUTE_25, 1
	return

_0349:
	goto_if_no_item_space ITEM_TM003, 1, _042C
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM03_FROM_MISTY
	buffer_players_name 0
	npc_msg 12
	npc_msg 17
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 18
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_MISTY
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0396:
	npc_msg 4
	goto _0436

_039F:
	npc_msg 7
	goto _0436

_03A8:
	goto _0436

_03AE:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03B9:
	npc_msg 7
	goto _0436

_03C2:
	goto _0436

_03C8:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D3:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _043E
	setflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	goto _03EA

_03EA:
	end

_03EC:
	clearflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	end

_03F2:
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T04GYM0101_rocketm
	wait_se SEQ_SE_DP_KAIDAN2
	stop_bgm SEQ_GS_EYE_ROCKET
	play_bgm SEQ_GS_GYM
	setflag FLAG_HIDE_CERULEAN_GYM_ROCKET
	clearflag FLAG_HIDE_ROUTE_24_ROCKET
	clearflag FLAG_HIDE_ROUTE_25_MISTY
	clearflag FLAG_HIDE_ROUTE_25_MISTYS_BOYFRIEND
	setvar VAR_UNK_411C, 2
	setvar VAR_SCENE_ROUTE_24_ROCKET, 1
	setvar VAR_UNK_4088, 1
	releaseall
	end

_042C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0436:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_043E:
	clearflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	end

	.align 4
_0444:

	step 21, 5
	step_end
	.align 4
_044A:

	step 71, 1
	step 56, 1
	step 63, 2
	step 17, 2
	step_end
	.align 4
_045C:

	step 75, 1
	step 71, 1
	step 12, 2
	step_end
	.align 4
_046A:

	step 13, 2
	step_end
	.align 4
_0470:

	step 17, 1
	step_end
	.align 4
_0476:

	step 18, 1
	step 3, 1
	step_end
	.align 4
_0480:

	step 18, 1
	step_end
	.align 4


.close
