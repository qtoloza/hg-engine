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

.include "armips/scr_seq/event_T23.inc"


// text archive to grab from: 564.txt

.create "build/a012/2_866", 0


scrdef scr_seq_T23_000
scrdef scr_seq_T23_001
scrdef scr_seq_T23_002
scrdef scr_seq_T23_003
scrdef scr_seq_T23_004
scrdef scr_seq_T23_005
scrdef scr_seq_T23_006
scrdef scr_seq_T23_007
scrdef scr_seq_T23_008
scrdef scr_seq_T23_009
scrdef scr_seq_T23_010
scrdef scr_seq_T23_011
scrdef scr_seq_T23_012
scrdef scr_seq_T23_013
scrdef scr_seq_T23_014
scrdef scr_seq_T23_015
scrdef scr_seq_T23_016
scrdef scr_seq_T23_017
scrdef scr_seq_T23_018
scrdef scr_seq_T23_019
scrdef_end

scr_seq_T23_004:
	compare VAR_UNK_4080, 0
	goto_if_ne _031F
	setflag FLAG_UNK_19F
	clearflag FLAG_AZALEA_ROCKET_HARASSING_CIVILIAN
	clearflag FLAG_AZALEA_HARASSED_CIVILIAN
	end

scr_seq_T23_000:
scr_seq_T23_005:
	simple_npc_msg 3
	end

scr_seq_T23_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	play_cry SPECIES_SLOWPOKE, 0
	npc_msg 10
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T23_002:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _0580
	wait_movement
	setvar VAR_FARFETCHD1_STICKS1, 1
	callstd std_play_rival_intro_music
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _0321
	move_person_facing obj_T23_gsrivel, 404, 0, 463, DIR_WEST
	apply_movement obj_T23_gsrivel, _0586
	apply_movement obj_player, _0590
	goto _0350

scr_seq_T23_003:
	scrcmd_609
	lockall
	apply_movement obj_T23_rocketm_3, _05A2
	wait_movement
	npc_msg 16
	play_se SEQ_SE_DP_WALL_HIT
	npc_msg 17
	closemsg
	apply_movement obj_T23_gsmiddleman1_2, _05A8
	wait_movement
	move_person_facing obj_T23_gsmiddleman1_2, 23, 0, 16, DIR_EAST
	apply_movement obj_T23_rocketm_3, _05C2
	wait_movement
	hide_person obj_T23_gsmiddleman1_2
	setflag FLAG_AZALEA_HARASSED_CIVILIAN
	setflag FLAG_AZALEA_ROCKET_HARASSING_CIVILIAN
	clearflag FLAG_UNK_19F
	setvar VAR_UNK_4080, 1
	releaseall
	end

scr_seq_T23_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _0379
	npc_msg 18
	goto _0384

scr_seq_T23_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _038C
	npc_msg 5
	goto _0384

scr_seq_T23_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_011:
	direction_signpost 11, 0, 14, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_012:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_013:
	direction_signpost 0, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_014:
	simple_npc_msg 4
	end

scr_seq_T23_015:
	simple_npc_msg 7
	end

scr_seq_T23_016:
	simple_npc_msg 8
	end

scr_seq_T23_017:
	end

scr_seq_T23_018:
	hasitem ITEM_ODD_KEYSTONE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _031F
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 20
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0395
	buffer_players_name 0
	npc_msg 21
	closemsg
	buffer_players_name 0
	apply_movement obj_T23_gswoman1, _05CC
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	wait_se SEQ_SE_DP_WALL_HIT2
	apply_movement obj_T23_gswoman1, _05CC
	wait_movement
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	play_cry SPECIES_SPIRITOMB, 6
	npc_msg 23
	wait_cry
	closemsg
	takeitem ITEM_ODD_KEYSTONE, 1, VAR_SPECIAL_RESULT
	rocket_trap_battle SPECIES_SPIRITOMB, 20
	get_static_encounter_outcome VAR_TEMP_x4002
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _039B
	compare VAR_TEMP_x4002, 1
	goto_if_eq _03A1
	compare VAR_TEMP_x4002, 5
	goto_if_eq _03A1
	releaseall
	end

scr_seq_T23_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16245, _0575
	npc_msg 24
	giveitem_no_check ITEM_TM046, 1
	npc_msg 25
	setflag 16245
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031F:
	end

_0321:
	compare VAR_SPECIAL_x8005, 463
	goto_if_ne _03AC
	move_person_facing obj_T23_gsrivel, 404, 0, 464, DIR_WEST
	apply_movement obj_T23_gsrivel, _0586
	apply_movement obj_player, _0590
	goto _0350

_0350:
	wait_movement
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _03DB
	trainer_battle TRAINER_RIVAL_SILVER_7, 0, 0, 0
	goto _03F6

_0379:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0384:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_038C:
	npc_msg 6
	goto _0384

_0395:
	closemsg
	releaseall
	end

_039B:
	white_out
	releaseall
	end

_03A1:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03AC:
	compare VAR_SPECIAL_x8005, 464
	goto_if_ne _043A
	move_person_facing obj_T23_gsrivel, 404, 0, 463, DIR_WEST
	apply_movement obj_T23_gsrivel, _05D6
	apply_movement obj_player, _05E0
	goto _0350

_03DB:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _0469
	trainer_battle TRAINER_RIVAL_SILVER_10, 0, 0, 0
	goto _03F6

_03F6:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04B5
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 2
	closemsg
	setvar VAR_UNK_4075, 2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _04BB
	apply_movement obj_T23_gsrivel, _05F2
	goto _04D6

_043A:
	compare VAR_SPECIAL_x8005, 465
	goto_if_ne _04E4
	move_person_facing obj_T23_gsrivel, 404, 0, 464, DIR_WEST
	apply_movement obj_T23_gsrivel, _05D6
	apply_movement obj_player, _05E0
	goto _0350

_0469:
	trainer_battle TRAINER_RIVAL_SILVER, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04B5
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 2
	closemsg
	setvar VAR_UNK_4075, 2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _04BB
	apply_movement obj_T23_gsrivel, _05F2
	goto _04D6

_04B5:
	white_out
	releaseall
	end

_04BB:
	compare VAR_SPECIAL_x8005, 463
	goto_if_ne _0529
	apply_movement obj_T23_gsrivel, _05F8
	goto _04D6

_04D6:
	wait_movement
	hide_person obj_T23_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_04E4:
	move_person_facing obj_T23_gsrivel, 404, 0, 465, DIR_WEST
	apply_movement obj_T23_gsrivel, _05D6
	apply_movement obj_player, _05E0
	wait_movement
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _03DB
	trainer_battle TRAINER_RIVAL_SILVER_7, 0, 0, 0
	goto _03F6

_0529:
	compare VAR_SPECIAL_x8005, 464
	goto_if_ne _0544
	apply_movement obj_T23_gsrivel, _05F2
	goto _04D6

_0544:
	compare VAR_SPECIAL_x8005, 465
	goto_if_ne _055F
	apply_movement obj_T23_gsrivel, _05F8
	goto _04D6

_055F:
	apply_movement obj_T23_gsrivel, _0606
	wait_movement
	hide_person obj_T23_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_0575:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0580:

	step 75, 1
	step_end
	.align 4
_0586:

	step 14, 9
	step 0, 1
	step_end
	.align 4
_0590:

	step 3, 1
	step 62, 6
	step 63, 7
	step 1, 1
	step_end
	.align 4
_05A2:

	step 34, 2
	step_end
	.align 4
_05A8:

	step 71, 1
	step 22, 1
	step 63, 2
	step 10, 2
	step 72, 1
	step 18, 9
	step_end
	.align 4
_05C2:

	step 12, 2
	step 33, 1
	step_end
	.align 4
_05CC:

	step 32, 1
	step 33, 1
	step_end
	.align 4
_05D6:

	step 14, 9
	step 1, 1
	step_end
	.align 4
_05E0:

	step 3, 1
	step 62, 6
	step 63, 7
	step 0, 1
	step_end
	.align 4
_05F2:

	step 14, 3
	step_end
	.align 4
_05F8:

	step 14, 1
	step 12, 1
	step 14, 2
	step_end
	.align 4
_0606:

	step 14, 1
	step 12, 2
	step 14, 2
	step_end
	.align 4


.close
