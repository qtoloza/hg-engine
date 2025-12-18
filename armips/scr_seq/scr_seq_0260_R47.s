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

.include "armips/scr_seq/event_R47.inc"


// text archive to grab from: 407.txt

.create "build/a012/2_260", 0


scrdef scr_seq_R47_000
scrdef scr_seq_R47_001
scrdef scr_seq_R47_002
scrdef scr_seq_R47_003
scrdef scr_seq_R47_004
scrdef scr_seq_R47_005
scrdef scr_seq_R47_006
scrdef scr_seq_R47_007
scrdef scr_seq_R47_008
scrdef scr_seq_R47_009
scrdef scr_seq_R47_010
scrdef scr_seq_R47_011
scrdef scr_seq_R47_012
scrdef scr_seq_R47_013
scrdef scr_seq_R47_014
scrdef scr_seq_R47_015
scrdef scr_seq_R47_016
scrdef scr_seq_R47_017
scrdef scr_seq_R47_018
scrdef scr_seq_R47_019
scrdef scr_seq_R47_020
scrdef_end

scr_seq_R47_000:
	setvar VAR_UNK_40EB, 1
	setflag FLAG_UNK_9C9
	goto_if_unset FLAG_CAUGHT_GROUDON, _0674
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _06C4

scr_seq_R47_002:
	goto_if_set FLAG_CAUGHT_KYOGRE, _06FC
	goto_if_unset FLAG_CAUGHT_GROUDON, _0716
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _0730

scr_seq_R47_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER, _0732
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	setflag FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

scr_seq_R47_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_157, _073D
	npc_msg 2
	apply_movement obj_R47_leader3, _0894
	wait_movement
	npc_msg 3
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0757
	apply_movement obj_R47_leader3, _089A
	goto _0772

scr_seq_R47_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _078E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0799
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 91
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_player, _08A0
	wait_movement
	npc_msg 10
	wait_button_or_walk_away
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_D_SHINTO
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	setvar 24993, 2
	setflag 16359
	releaseall
	end

scr_seq_R47_006:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_R47_seven5, _08A6
	apply_movement obj_R47_seven5, _08A0
	wait_movement
	apply_movement obj_player, _08AC
	npc_msg 12
	apply_movement obj_player, _08B2
	apply_movement obj_R47_seven5, _08B2
	wait_movement
	npc_msg 13
	closemsg
	multi_battle TRAINER_SUPER_NERD_MICKEY, TRAINER_SAGE_MICKEY, TRAINER_SAGE_MICKEY_2, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A4
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R47_rocketm
	hide_person obj_R47_rocketm_2
	setflag 16358
	fade_screen 8, 1, 1, RGB_BLACK
	apply_movement obj_R47_seven5, _08A6
	apply_movement obj_player, _08AC
	npc_msg 15
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar 24992, 2
	releaseall
	end

scr_seq_R47_007:
	simple_npc_msg 16
	end

scr_seq_R47_008:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_R47_seven4, _08AC
	apply_movement obj_R47_seven4, _08A0
	wait_movement
	apply_movement obj_player, _08A6
	npc_msg 20
	apply_movement obj_player, _08B2
	apply_movement obj_R47_seven4, _08B2
	wait_movement
	npc_msg 21
	closemsg
	multi_battle TRAINER_TEAM_ROCKET_MICKEY, TRAINER_ACE_TRAINER_M_MICKEY, TRAINER_ACE_TRAINER_M_MICKEY_2, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A4
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R47_rocketw
	hide_person obj_R47_rocketw_2
	setflag 16358
	fade_screen 8, 1, 1, RGB_BLACK
	apply_movement obj_R47_seven4, _08AC
	apply_movement obj_player, _08A6
	npc_msg 23
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	closemsg
	setvar 24991, 2
	releaseall
	end

scr_seq_R47_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset 16358, _07AA
	faceplayer
	play_cry SPECIES_ALAKAZAM, 0
	npc_msg 17
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16357, _07BD
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_011:
	simple_npc_msg 24
	end

scr_seq_R47_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset 16357, _07CC
	faceplayer
	play_cry SPECIES_CLAYDOL, 0
	npc_msg 25
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_013:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_R47_seven1, _08A6
	apply_movement obj_R47_seven1, _08A0
	wait_movement
	apply_movement obj_player, _08AC
	wait_movement
	npc_msg 26
	apply_movement obj_player, _08B2
	apply_movement obj_R47_seven1, _08B2
	wait_movement
	npc_msg 27
	closemsg
	multi_battle TRAINER_CAMPER_MICKEY, TRAINER_SWIMMER_F_MICKEY, TRAINER_SWIMMER_F_MICKEY_2, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A4
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R47_rocketw_3
	hide_person obj_R47_rocketm_3
	setflag 16356
	fade_screen 8, 1, 1, RGB_BLACK
	apply_movement obj_R47_seven1, _08A6
	apply_movement obj_player, _08AC
	npc_msg 29
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	closemsg
	setvar 24990, 2
	releaseall
	end

scr_seq_R47_014:
	simple_npc_msg 30
	end

scr_seq_R47_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset 16356, _07DF
	faceplayer
	play_cry SPECIES_BLISSEY, 0
	npc_msg 31
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_016:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_R47_seven3, _08A6
	apply_movement obj_R47_seven3, _08A0
	wait_movement
	apply_movement obj_player, _08AC
	wait_movement
	npc_msg 32
	apply_movement obj_player, _08B8
	apply_movement obj_R47_seven3, _08B8
	wait_movement
	npc_msg 33
	closemsg
	multi_battle TRAINER_CAMPER_MICKEY_2, TRAINER_SWIMMER_F_MICKEY_3, TRAINER_SWIMMER_M_MICKEY, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07A4
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R47_rocketm_4
	hide_person obj_R47_rocketw_4
	setflag 16355
	fade_screen 8, 1, 1, RGB_BLACK
	apply_movement obj_R47_seven3, _08A6
	apply_movement obj_player, _08AC
	npc_msg 35
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	closemsg
	setvar 24889, 2
	releaseall
	end

scr_seq_R47_017:
	simple_npc_msg 36
	end

scr_seq_R47_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset 16355, _07F2
	faceplayer
	play_cry SPECIES_ARCANINE, 0
	npc_msg 37
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_019:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag 16383
	npc_msg 38
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_M_MICKEY_3, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06C4
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R47_rkanbuw
	fade_screen 8, 1, 1, RGB_BLACK
	setflag 16353
	npc_msg 41
	giveitem_no_check ITEM_TM084, 1
	closemsg
	releaseall
	end

scr_seq_R47_020:
	simple_npc_msg 40
	end

_0674:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _0805
	compare VAR_SCENE_EMBEDDED_TOWER, 3
	goto_if_eq _0805
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _080B
	goto_if_unset FLAG_UNK_189, _0829
	clearflag FLAG_UNK_189
	end

_06C4:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _0805
	compare VAR_SCENE_EMBEDDED_TOWER, 3
	goto_if_eq _0805
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _080B
	goto_if_unset FLAG_UNK_189, _0829
	clearflag FLAG_UNK_189
	end

_06FC:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	end

_0716:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
	end

_0730:
	end

_0732:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_073D:
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0894
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_0757:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _083A
	apply_movement obj_R47_leader3, _08BE
	goto _0772

_0772:
	wait_movement
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0894
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_078E:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0799:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07A4:
	white_out
	releaseall
	end

_07AA:
	play_cry SPECIES_ALAKAZAM, 0
	npc_msg 17
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07BD:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	hide_person obj_R47_rock
	releaseall
	end

_07CC:
	play_cry SPECIES_CLAYDOL, 0
	npc_msg 25
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07DF:
	play_cry SPECIES_BLISSEY, 0
	npc_msg 31
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07F2:
	play_cry SPECIES_ARCANINE, 0
	npc_msg 37
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0805:
	setflag FLAG_UNK_304
	end

_080B:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	goto _0805

_0829:
	goto_if_set FLAG_GAME_CLEAR, _085E
	goto _0805

_083A:
	apply_movement obj_R47_leader3, _08C4
	wait_movement
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0894
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_085E:
	get_phone_book_rematch PHONE_CONTACT_CHUCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0805
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _088C
	clearflag FLAG_UNK_304
	goto _0892

_088C:
	setflag FLAG_UNK_304
	end

_0892:
	end

	.align 4
_0894:

	step 32, 1
	step_end
	.align 4
_089A:

	step 33, 1
	step_end
	.align 4
_08A0:

	step 75, 1
	step_end
	.align 4
_08A6:

	step 1, 1
	step_end
	.align 4
_08AC:

	step 0, 1
	step_end
	.align 4
_08B2:

	step 2, 1
	step_end
	.align 4
_08B8:

	step 3, 1
	step_end
	.align 4
_08BE:

	step 34, 1
	step_end
	.align 4
_08C4:

	step 35, 1
	step_end
	.align 4


.close
