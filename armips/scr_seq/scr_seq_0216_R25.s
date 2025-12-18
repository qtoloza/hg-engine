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

.include "armips/scr_seq/event_R25.inc"


// text archive to grab from: 363.txt

.create "build/a012/2_216", 0


scrdef scr_seq_R25_000
scrdef scr_seq_R25_001
scrdef scr_seq_R25_002
scrdef scr_seq_R25_003
scrdef scr_seq_R25_004
scrdef scr_seq_R25_005
scrdef scr_seq_R25_006
scrdef scr_seq_R25_007
scrdef scr_seq_R25_008
scrdef scr_seq_R25_009
scrdef_end

scr_seq_R25_003:
	goto_if_unset FLAG_UNK_189, _0258
	clearflag FLAG_UNK_189
	end

scr_seq_R25_008:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _02DB
	end

scr_seq_R25_000:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 40
	goto_if_ne _02E9
	apply_movement obj_R25_gsleader11, _07EA
	apply_movement obj_R25_gsman1, _07FC
	apply_movement obj_player, _0816
	goto _0314

scr_seq_R25_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0341
	compare VAR_TEMP_x4002, 1
	goto_if_ge _03C5
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03CE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0411
	end

scr_seq_R25_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_NUGGET_FROM_ACE_TRAINER_M_KEVIN, _0422
	npc_msg 11
	goto_if_no_item_space ITEM_NUGGET, 1, _042D
	callstd std_give_item_verbose
	setflag FLAG_GOT_NUGGET_FROM_ACE_TRAINER_M_KEVIN
	npc_msg 13
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_M_KEVIN, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0437
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R25_004:
	scrcmd_609
	lockall
	setflag FLAG_HIDE_ROUTE_14_EUSINE_2
	clearflag FLAG_HIDE_ROUTE_25_EUSINE
	show_person obj_R25_minaki
	apply_movement obj_player, _0820
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_R25_follower_mon_static_suicune
	scrcmd_523 obj_R25_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_R25_follower_mon_static_suicune
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 40
	goto_if_ne _043D
	apply_movement obj_player, _0826
	goto _0458

scr_seq_R25_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R25_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R25_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SUICUNE, 0
	release obj_R25_follower_mon_static_suicune
	scrcmd_523 obj_R25_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_R25_follower_mon_static_suicune
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUICUNE, 40, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04A6
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _04AC
	compare VAR_TEMP_x4002, 4
	call_if_eq _04B0
	compare VAR_TEMP_x4002, 5
	goto_if_eq _04B6
	buffer_players_name 0
	npc_msg 18
	closemsg
	clearflag 16288
	goto_if_set FLAG_HIDE_ROUTE_25_EUSINE_2, _04DF
	goto _04FF

scr_seq_R25_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

_0258:
	compare VAR_SCENE_ROUTE_25, 2
	goto_if_ne _0523
	clearflag FLAG_HIDE_ROUTE_25_EUSINE_2
	setflag FLAG_HIDE_ROUTE_25_EUSINE
	check_badge BADGE_EARTH, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0591
	compare VAR_SCENE_ROUTE_25, 1
	goto_if_eq _0591
	compare VAR_SCENE_ROUTE_25, 2
	goto_if_eq _0591
	get_phone_book_rematch PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0597
	check_registered_phone_number PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _059D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _05B8
	clearflag FLAG_UNK_2CD
	goto _05CF

_02DB:
	setflag FLAG_HIDE_ROUTE_25_SUICUNE
	hide_person obj_R25_follower_mon_static_suicune
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_02E9:
	compare VAR_TEMP_x4001, 41
	goto_if_ne _05D1
	apply_movement obj_R25_gsleader11, _07EA
	apply_movement obj_R25_gsman1, _0830
	apply_movement obj_player, _0816
	goto _0314

_0314:
	wait_movement
	stop_bgm SEQ_GS_R_12_24
	play_bgm SEQ_GS_EYE_K_SHOUJO
	compare VAR_TEMP_x4001, 40
	goto_if_ne _0616
	apply_movement obj_R25_gsleader11, _084A
	apply_movement obj_player, _0854
	goto _0639

_0341:
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0663
	scrcmd_733 11, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0663
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _066E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0679
	npc_msg 7
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 84
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03C5:
	npc_msg 5
	goto _0684

_03CE:
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_MISTY
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_2CD
	hide_person obj_R25_gsleader11_2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0411:
	setvar VAR_TEMP_x4002, 1
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0422:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_042D:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0437:
	white_out
	releaseall
	end

_043D:
	compare VAR_TEMP_x4001, 41
	goto_if_ne _06A8
	apply_movement obj_player, _085E
	goto _0458

_0458:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	callstd std_play_eusine_music
	apply_movement obj_R25_minaki, _0870
	apply_movement obj_player, _0882
	wait_movement
	npc_msg 16
	closemsg
	apply_movement obj_R25_minaki, _088C
	apply_movement obj_player, _0896
	wait_movement
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_eusine_music
	setvar VAR_SCENE_ROUTE_25, 2
	releaseall
	end

_04A6:
	white_out
	releaseall
	end

_04AC:
	releaseall
	end

_04B0:
	setflag FLAG_CAUGHT_SUICUNE
	return

_04B6:
	wait 20, VAR_SPECIAL_x8004
	apply_movement obj_player, _08A0
	wait_movement
	buffer_players_name 0
	npc_msg 19
	closemsg
	goto_if_set FLAG_HIDE_ROUTE_25_EUSINE_2, _04DF
	goto _04FF

_04DF:
	apply_movement obj_player, _08A6
	apply_movement obj_R25_minaki, _08B0
	wait_movement
	hide_person obj_R25_minaki
	setflag FLAG_HIDE_ROUTE_25_EUSINE
	goto _06FE

_04FF:
	apply_movement obj_player, _08A6
	apply_movement obj_R25_minaki_2, _08B0
	wait_movement
	hide_person obj_R25_minaki_2
	setflag FLAG_HIDE_ROUTE_25_EUSINE_2
	setvar VAR_SCENE_ROUTE_25, 3
	releaseall
	end

_0523:
	check_badge BADGE_EARTH, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0591
	compare VAR_SCENE_ROUTE_25, 1
	goto_if_eq _0591
	compare VAR_SCENE_ROUTE_25, 2
	goto_if_eq _0591
	get_phone_book_rematch PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0597
	check_registered_phone_number PHONE_CONTACT_MISTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _059D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _05B8
	clearflag FLAG_UNK_2CD
	goto _05CF

_0591:
	setflag FLAG_UNK_2CD
	end

_0597:
	setflag FLAG_UNK_2CD
	end

_059D:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _0708
	clearflag FLAG_UNK_2CD
	goto _071F

_05B8:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _0721
	clearflag FLAG_UNK_2CD
	goto _05CF

_05CF:
	end

_05D1:
	apply_movement obj_R25_gsleader11, _07EA
	apply_movement obj_R25_gsman1, _08B6
	apply_movement obj_player, _08D0
	wait_movement
	stop_bgm SEQ_GS_R_12_24
	play_bgm SEQ_GS_EYE_K_SHOUJO
	compare VAR_TEMP_x4001, 40
	goto_if_ne _0616
	apply_movement obj_R25_gsleader11, _084A
	apply_movement obj_player, _0854
	goto _0639

_0616:
	compare VAR_TEMP_x4001, 41
	goto_if_ne _0727
	apply_movement obj_R25_gsleader11, _08EA
	apply_movement obj_player, _0854
	goto _0639

_0639:
	wait_movement
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 40
	goto_if_ne _0761
	apply_movement obj_R25_gsleader11, _08F4
	apply_movement obj_player, _08FE
	goto _0784

_0663:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_066E:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0679:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0684:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03CE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0411
	end

_06A8:
	apply_movement obj_player, _0910
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	callstd std_play_eusine_music
	apply_movement obj_R25_minaki, _0870
	apply_movement obj_player, _0882
	wait_movement
	npc_msg 16
	closemsg
	apply_movement obj_R25_minaki, _088C
	apply_movement obj_player, _0896
	wait_movement
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_eusine_music
	setvar VAR_SCENE_ROUTE_25, 2
	releaseall
	end

_06FE:
	setvar VAR_SCENE_ROUTE_25, 3
	releaseall
	end

_0708:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _07AC
	clearflag FLAG_UNK_2CD
	goto _071F

_071F:
	end

_0721:
	goto _0597

_0727:
	apply_movement obj_R25_gsleader11, _0922
	apply_movement obj_player, _0854
	wait_movement
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 40
	goto_if_ne _0761
	apply_movement obj_R25_gsleader11, _08F4
	apply_movement obj_player, _08FE
	goto _0784

_0761:
	compare VAR_TEMP_x4001, 41
	goto_if_ne _07B2
	apply_movement obj_R25_gsleader11, _092C
	apply_movement obj_player, _08FE
	goto _0784

_0784:
	wait_movement
	hide_person obj_R25_gsman1
	hide_person obj_R25_gsleader11
	stop_bgm SEQ_GS_EYE_K_SHOUJO
	play_bgm SEQ_GS_R_12_24
	setflag FLAG_HIDE_ROUTE_25_MISTYS_BOYFRIEND
	setflag FLAG_HIDE_ROUTE_25_MISTY
	clearflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	setvar VAR_UNK_4088, 2
	releaseall
	end

_07AC:
	setflag FLAG_UNK_2CD
	end

_07B2:
	apply_movement obj_R25_gsleader11, _0936
	apply_movement obj_player, _0940
	wait_movement
	hide_person obj_R25_gsman1
	hide_person obj_R25_gsleader11
	stop_bgm SEQ_GS_EYE_K_SHOUJO
	play_bgm SEQ_GS_R_12_24
	setflag FLAG_HIDE_ROUTE_25_MISTYS_BOYFRIEND
	setflag FLAG_HIDE_ROUTE_25_MISTY
	clearflag FLAG_HIDE_CERULEAN_GYM_POPULATION
	setvar VAR_UNK_4088, 2
	releaseall
	end

	.align 4
_07EA:

	step 63, 1
	step 2, 1
	step 66, 2
	step 0, 1
	step_end
	.align 4
_07FC:

	step 66, 1
	step 0, 1
	step 75, 1
	step 16, 5
	step 18, 5
	step 17, 8
	step_end
	.align 4
_0816:

	step 65, 6
	step 1, 1
	step_end
	.align 4
_0820:

	step 75, 1
	step_end
	.align 4
_0826:

	step 15, 3
	step 0, 1
	step_end
	.align 4
_0830:

	step 66, 1
	step 0, 1
	step 75, 1
	step 16, 5
	step 18, 5
	step 17, 8
	step_end
	.align 4
_084A:

	step 12, 7
	step 14, 2
	step_end
	.align 4
_0854:

	step 65, 3
	step 3, 1
	step_end
	.align 4
_085E:

	step 15, 1
	step 12, 1
	step 15, 2
	step 0, 1
	step_end
	.align 4
_0870:

	step 19, 8
	step 15, 3
	step 7, 1
	step 0, 1
	step_end
	.align 4
_0882:

	step 63, 2
	step 1, 1
	step_end
	.align 4
_088C:

	step 15, 1
	step 12, 2
	step_end
	.align 4
_0896:

	step 65, 1
	step 0, 1
	step_end
	.align 4
_08A0:

	step 1, 1
	step_end
	.align 4
_08A6:

	step 63, 2
	step 2, 1
	step_end
	.align 4
_08B0:

	step 14, 11
	step_end
	.align 4
_08B6:

	step 66, 1
	step 0, 1
	step 75, 1
	step 16, 6
	step 18, 5
	step 17, 9
	step_end
	.align 4
_08D0:

	step 65, 6
	step 0, 1
	step 63, 1
	step 2, 1
	step 63, 1
	step 1, 1
	step_end
	.align 4
_08EA:

	step 12, 6
	step 14, 2
	step_end
	.align 4
_08F4:

	step 13, 1
	step 14, 11
	step_end
	.align 4
_08FE:

	step 63, 1
	step 1, 1
	step 63, 1
	step 2, 1
	step_end
	.align 4
_0910:

	step 15, 1
	step 12, 2
	step 15, 2
	step 0, 1
	step_end
	.align 4
_0922:

	step 12, 5
	step 14, 2
	step_end
	.align 4
_092C:

	step 13, 1
	step 14, 11
	step_end
	.align 4
_0936:

	step 12, 1
	step 14, 11
	step_end
	.align 4
_0940:

	step 63, 1
	step 0, 1
	step 62, 1
	step 2, 1
	step_end
	.align 4


.close
