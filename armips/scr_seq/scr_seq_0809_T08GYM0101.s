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

.include "armips/scr_seq/event_T08GYM0101.inc"


// text archive to grab from: 514.txt

.create "build/a012/2_809", 0


scrdef scr_seq_T08GYM0101_000
scrdef scr_seq_T08GYM0101_001
scrdef scr_seq_T08GYM0101_002
scrdef scr_seq_T08GYM0101_003
scrdef scr_seq_T08GYM0101_004
scrdef scr_seq_T08GYM0101_005
scrdef scr_seq_T08GYM0101_006
scrdef scr_seq_T08GYM0101_007
scrdef scr_seq_T08GYM0101_008
scrdef scr_seq_T08GYM0101_009
scrdef_end

scr_seq_T08GYM0101_000:
	fuchsia_gym_init
	get_phone_book_rematch PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0245
	check_registered_phone_number PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _024B
	check_badge BADGE_SOUL, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0266
	goto _026C

scr_seq_T08GYM0101_008:
	compare VAR_TEMP_x400B, 111
	goto_if_ne _0272
	call_if_not_defeated TRAINER_LASS_LINDA, _0274
	call_if_not_defeated TRAINER_CAMPER_BARRY, _0286
	call_if_not_defeated TRAINER_LASS_ALICE, _0298
	call_if_not_defeated TRAINER_PICNICKER_CINDY, _02AA
	end

scr_seq_T08GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_defeated TRAINER_LASS_LINDA, _02BC
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02C7
	apply_movement obj_T08GYM0101_gsleader13_4, _08E2
	goto _02E2

scr_seq_T08GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_defeated TRAINER_CAMPER_BARRY, _030F
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _031A
	apply_movement obj_T08GYM0101_gsleader13_3, _08E2
	goto _0335

scr_seq_T08GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_defeated TRAINER_LASS_ALICE, _0362
	npc_msg 11
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _036D
	apply_movement obj_T08GYM0101_gsleader13_5, _08E2
	goto _0388

scr_seq_T08GYM0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_defeated TRAINER_PICNICKER_CINDY, _03B5
	npc_msg 14
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03C0
	apply_movement obj_T08GYM0101_gsleader13_2, _08E2
	goto _03DB

scr_seq_T08GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_SOUL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0408
	npc_msg 0
	closemsg
	setvar VAR_TEMP_x400B, 111
	trainer_battle TRAINER_LEADER_JANINE_JANINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041E
	setvar VAR_TEMP_x400B, 0
	give_badge BADGE_SOUL
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	settrainerflag TRAINER_PICNICKER_CINDY
	settrainerflag TRAINER_CAMPER_BARRY
	settrainerflag TRAINER_LASS_LINDA
	settrainerflag TRAINER_LASS_ALICE
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _0424

scr_seq_T08GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_SOUL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0479
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08GYM0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_SOUL, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0484
	npc_msg 17
	goto _048F

scr_seq_T08GYM0101_009:
	buffer_players_name 0
	end

_0245:
	setflag FLAG_UNK_2F3
	end

_024B:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 18
	goto_if_ne _0497
	setflag FLAG_UNK_2F3
	goto _04AE

_0266:
	goto _04B0

_026C:
	clearflag FLAG_UNK_2F3
	end

_0272:
	end

_0274:
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_REVEALED
	show_person obj_T08GYM0101_gsgirl1
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_4
	return

_0286:
	clearflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_REVEALED
	show_person obj_T08GYM0101_campboy_2
	setflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_3
	return

_0298:
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_REVEALED
	show_person obj_T08GYM0101_gsgirl1_2
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_5
	return

_02AA:
	clearflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_REVEALED
	show_person obj_T08GYM0101_picnicgirl_2
	setflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_2
	return

_02BC:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C7:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04CB
	apply_movement obj_T08GYM0101_gsleader13_4, _08F8
	goto _02E2

_02E2:
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_REVEALED
	show_person obj_T08GYM0101_gsgirl1
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_4
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04E6
	apply_movement obj_T08GYM0101_gsgirl1, _0916
	goto _0501

_030F:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031A:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0530
	apply_movement obj_T08GYM0101_gsleader13_3, _08F8
	goto _0335

_0335:
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_REVEALED
	show_person obj_T08GYM0101_campboy_2
	setflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _054B
	apply_movement obj_T08GYM0101_campboy_2, _0916
	goto _0566

_0362:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_036D:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0595
	apply_movement obj_T08GYM0101_gsleader13_5, _08F8
	goto _0388

_0388:
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_REVEALED
	show_person obj_T08GYM0101_gsgirl1_2
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_5
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05B0
	apply_movement obj_T08GYM0101_gsgirl1_2, _0916
	goto _05CB

_03B5:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03C0:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05FA
	apply_movement obj_T08GYM0101_gsleader13_2, _08F8
	goto _03DB

_03DB:
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_REVEALED
	show_person obj_T08GYM0101_picnicgirl_2
	setflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_2
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0615
	apply_movement obj_T08GYM0101_picnicgirl_2, _0916
	goto _0630

_0408:
	goto_if_unset FLAG_GOT_TM84_FROM_JANINE, _0424
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_041E:
	white_out
	releaseall
	end

_0424:
	goto_if_no_item_space ITEM_TM084, 1, _065F
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM84_FROM_JANINE
	goto_if_unset FLAG_GOT_TM84_FROM_JANINE, _0424
	npc_msg 4
	npc_msg 19
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 20
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_JANINE
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0479:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0484:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_048F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0497:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _0669
	setflag FLAG_UNK_2F3
	goto _04AE

_04AE:
	end

_04B0:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _066F
	setflag FLAG_UNK_2F3
	goto _0686

_04CB:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0688
	apply_movement obj_T08GYM0101_gsleader13_4, _0930
	goto _02E2

_04E6:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06BD
	apply_movement obj_T08GYM0101_gsgirl1, _094A
	goto _0501

_0501:
	wait_movement
	npc_msg 7
	closemsg
	trainer_battle TRAINER_LASS_LINDA, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D8
	settrainerflag TRAINER_LASS_LINDA
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0530:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _06E6
	apply_movement obj_T08GYM0101_gsleader13_3, _0930
	goto _0335

_054B:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _071B
	apply_movement obj_T08GYM0101_campboy_2, _094A
	goto _0566

_0566:
	wait_movement
	npc_msg 9
	closemsg
	trainer_battle TRAINER_CAMPER_BARRY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0736
	settrainerflag TRAINER_CAMPER_BARRY
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0595:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0744
	apply_movement obj_T08GYM0101_gsleader13_5, _0930
	goto _0388

_05B0:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0779
	apply_movement obj_T08GYM0101_gsgirl1_2, _094A
	goto _05CB

_05CB:
	wait_movement
	npc_msg 12
	closemsg
	trainer_battle TRAINER_LASS_ALICE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0794
	settrainerflag TRAINER_LASS_ALICE
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05FA:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _07A2
	apply_movement obj_T08GYM0101_gsleader13_2, _0930
	goto _03DB

_0615:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _07D7
	apply_movement obj_T08GYM0101_picnicgirl_2, _094A
	goto _0630

_0630:
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_PICNICKER_CINDY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07F2
	settrainerflag TRAINER_PICNICKER_CINDY
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_065F:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0669:
	goto _026C

_066F:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _0800
	setflag FLAG_UNK_2F3
	goto _0686

_0686:
	end

_0688:
	apply_movement obj_T08GYM0101_gsleader13_4, _096C
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_REVEALED
	show_person obj_T08GYM0101_gsgirl1
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_4
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04E6
	apply_movement obj_T08GYM0101_gsgirl1, _0916
	goto _0501

_06BD:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0806
	apply_movement obj_T08GYM0101_gsgirl1, _098E
	goto _0501

_06D8:
	white_out
	releaseall
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_REVEALED
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_LINDA_DISGUISED
	end

_06E6:
	apply_movement obj_T08GYM0101_gsleader13_3, _096C
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_REVEALED
	show_person obj_T08GYM0101_campboy_2
	setflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _054B
	apply_movement obj_T08GYM0101_campboy_2, _0916
	goto _0566

_071B:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _083D
	apply_movement obj_T08GYM0101_campboy_2, _098E
	goto _0566

_0736:
	white_out
	releaseall
	setflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_REVEALED
	clearflag FLAG_HIDE_FUCHSIA_GYM_CAMPER_BARRY_DISGUISED
	end

_0744:
	apply_movement obj_T08GYM0101_gsleader13_5, _096C
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_REVEALED
	show_person obj_T08GYM0101_gsgirl1_2
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_5
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05B0
	apply_movement obj_T08GYM0101_gsgirl1_2, _0916
	goto _05CB

_0779:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0874
	apply_movement obj_T08GYM0101_gsgirl1_2, _098E
	goto _05CB

_0794:
	white_out
	releaseall
	setflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_REVEALED
	clearflag FLAG_HIDE_FUCHSIA_GYM_LASS_ALICE_DISGUISED
	end

_07A2:
	apply_movement obj_T08GYM0101_gsleader13_2, _096C
	wait_movement
	clearflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_REVEALED
	show_person obj_T08GYM0101_picnicgirl_2
	setflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_DISGUISED
	hide_person obj_T08GYM0101_gsleader13_2
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0615
	apply_movement obj_T08GYM0101_picnicgirl_2, _0916
	goto _0630

_07D7:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _08AB
	apply_movement obj_T08GYM0101_picnicgirl_2, _098E
	goto _0630

_07F2:
	white_out
	releaseall
	setflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_REVEALED
	clearflag FLAG_HIDE_FUCHSIA_GYM_PICNICKER_CINDY_DISGUISED
	end

_0800:
	goto _026C

_0806:
	apply_movement obj_T08GYM0101_gsgirl1, _09A4
	wait_movement
	npc_msg 7
	closemsg
	trainer_battle TRAINER_LASS_LINDA, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D8
	settrainerflag TRAINER_LASS_LINDA
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_083D:
	apply_movement obj_T08GYM0101_campboy_2, _09A4
	wait_movement
	npc_msg 9
	closemsg
	trainer_battle TRAINER_CAMPER_BARRY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0736
	settrainerflag TRAINER_CAMPER_BARRY
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0874:
	apply_movement obj_T08GYM0101_gsgirl1_2, _09A4
	wait_movement
	npc_msg 12
	closemsg
	trainer_battle TRAINER_LASS_ALICE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0794
	settrainerflag TRAINER_LASS_ALICE
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_08AB:
	apply_movement obj_T08GYM0101_picnicgirl_2, _09A4
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_PICNICKER_CINDY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07F2
	settrainerflag TRAINER_PICNICKER_CINDY
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_08E2:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_08F8:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_0916:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0930:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_094A:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
	.align 4
_096C:

	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_098E:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.align 4
_09A4:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4


.close
