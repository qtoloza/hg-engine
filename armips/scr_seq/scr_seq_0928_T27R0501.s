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

.include "armips/scr_seq/event_T27R0501.inc"


// text archive to grab from: 618.txt

.create "build/a012/2_928", 0


scrdef scr_seq_T27R0501_000
scrdef scr_seq_T27R0501_001
scrdef scr_seq_T27R0501_002
scrdef scr_seq_T27R0501_003
scrdef scr_seq_T27R0501_004
scrdef scr_seq_T27R0501_005
scrdef scr_seq_T27R0501_006
scrdef scr_seq_T27R0501_007
scrdef scr_seq_T27R0501_008
scrdef scr_seq_T27R0501_009
scrdef scr_seq_T27R0501_010
scrdef scr_seq_T27R0501_011
scrdef scr_seq_T27R0501_012
scrdef scr_seq_T27R0501_013
scrdef scr_seq_T27R0501_014
scrdef scr_seq_T27R0501_015
scrdef scr_seq_T27R0501_016
scrdef_end

scr_seq_T27R0501_013:
	compare VAR_UNK_410C, 1
	goto_if_gt _046D
	make_object_visible obj_T27R0501_rocketm_2
	compare VAR_UNK_410C, 0
	goto_if_ne _04D2
	move_person_facing obj_T27R0501_rocketm, 6, 0, 6, DIR_EAST
	move_person_facing obj_T27R0501_dancer_3, 8, 0, 6, DIR_WEST
	compare VAR_TEMP_x4009, 222
	goto_if_ne _0512
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _053A
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _0559

scr_seq_T27R0501_015:
	scrcmd_609
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_T27R0501_rocketm, _1074
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _107A
	wait_movement
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_T27R0501_rocketm, _1080
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_T27R0501_dancer_3, _1086
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_T27R0501_rocketm, _108C
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_T27R0501_dancer_3, _1092
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T27R0501_rocketm, _10A0
	wait_movement
	apply_movement obj_T27R0501_rocketm, _10A6
	apply_movement 241, _1180
	wait_movement
	scrcmd_103
	releaseall
	setvar VAR_UNK_410C, 1
	end

scr_seq_T27R0501_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 5
	closemsg
	setvar VAR_TEMP_x4009, 222
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_26, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _058B
	npc_msg 6
	closemsg
	get_player_facing VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0591
	apply_movement obj_T27R0501_rocketm_2, _118A
	goto _05AC

scr_seq_T27R0501_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_410C, 1
	goto_if_eq _05CE
	compare VAR_TEMP_x400A, 10
	goto_if_eq _05D9
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_011:
	scrcmd_609
	lockall
	apply_movement obj_T27R0501_gsgentleman, _1198
	wait_movement
	npc_msg 26
	goto_if_no_item_space ITEM_HM03, 1, _05E7
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM03
	setvar VAR_UNK_410C, 3
	setvar VAR_UNK_4090, 1
	npc_msg 28
	closemsg
	apply_movement obj_T27R0501_gsgentleman, _11A6
	wait_movement
	releaseall
	end

scr_seq_T27R0501_012:
	scrcmd_609
	lockall
	apply_movement obj_T27R0501_gsgentleman, _11B8
	wait_movement
	npc_msg 26
	goto_if_no_item_space ITEM_HM03, 1, _05E7
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM03
	setvar VAR_UNK_4090, 1
	setvar VAR_UNK_410C, 3
	npc_msg 28
	closemsg
	apply_movement obj_T27R0501_gsgentleman, _11C6
	wait_movement
	releaseall
	end

scr_seq_T27R0501_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_HM03, _05F1
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 30
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x400A, 10
	goto_if_eq _05FC
	compare VAR_UNK_410C, 1
	goto_if_eq _0607
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x400A, 10
	goto_if_eq _061D
	compare VAR_UNK_410C, 1
	goto_if_eq _0628
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_010:
	simple_npc_msg 39
	end

scr_seq_T27R0501_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0633
	goto_if_set FLAG_UNK_109, _0633
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _063E
	goto_if_set FLAG_UNK_109, _063E
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8000, 77
	goto_if_set FLAG_UNK_108, _0649
	goto_if_set FLAG_UNK_109, _0649
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _065B
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_ne _066A
	goto _068F

scr_seq_T27R0501_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0863
	goto_if_set FLAG_UNK_109, _0863
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _086E
	goto_if_set FLAG_UNK_109, _086E
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27R0501_016:
	scrcmd_609
	lockall
	setvar VAR_SPECIAL_x8000, 11
	setvar VAR_UNK_410C, 5
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _11D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0879
	npc_msg 11
	goto _0A67

_046D:
	compare VAR_UNK_410C, 0
	goto_if_ne _04D2
	move_person_facing obj_T27R0501_rocketm, 6, 0, 6, DIR_EAST
	move_person_facing obj_T27R0501_dancer_3, 8, 0, 6, DIR_WEST
	compare VAR_TEMP_x4009, 222
	goto_if_ne _0512
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _053A
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _0559

_04D2:
	compare VAR_TEMP_x4009, 222
	goto_if_ne _0512
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _053A
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _0559

_0512:
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C52
	compare VAR_UNK_410C, 3
	goto_if_ne _0C52
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_053A:
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0C54
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_NORTH
	goto _0559

_0559:
	scrcmd_374 obj_T27R0501_rocketm_2
	setvar VAR_TEMP_x4009, 0
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C52
	compare VAR_UNK_410C, 3
	goto_if_ne _0C52
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_058B:
	white_out
	releaseall
	end

_0591:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0C73
	apply_movement obj_T27R0501_rocketm_2, _11EE
	goto _05AC

_05AC:
	wait_movement
	npc_msg 7
	closemsg
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0C8E
	apply_movement obj_T27R0501_rocketm_2, _11FC
	goto _0CA9

_05CE:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05D9:
	buffer_players_name 0
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05E7:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_05F1:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05FC:
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0607:
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0CC3
	npc_msg 32
	goto _0CD9

_061D:
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0628:
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0633:
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_063E:
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0649:
	buffer_players_name 0
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_107
	releaseall
	end

_065B:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	call _0CF8
	end

_066A:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0D0D
	apply_movement obj_player, _1206
	goto _0D28

_068F:
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _1218
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_6, _1256
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1260
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer, _128E
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_7, _140C
	wait_movement
	npc_msg 46
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_7, _143A
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_8, _1448
	wait_movement
	npc_msg 47
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_8, _1476
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _1298
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_5, _12C6
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _12D0
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_2, _12FA
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _1308
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_4, _1332
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _1340
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0D48
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0DA6

_0863:
	npc_msg 43
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_086E:
	npc_msg 44
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0879:
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _065B
	closemsg
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _1218
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_6, _1256
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1260
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer, _128E
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_7, _140C
	wait_movement
	npc_msg 46
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_7, _143A
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_8, _1448
	wait_movement
	npc_msg 47
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_8, _1476
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _1298
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_5, _12C6
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _12D0
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_2, _12FA
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _1308
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_4, _1332
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _1340
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0D48
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0DA6

_0A67:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _065B
	closemsg
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _1218
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_6, _1256
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1260
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer, _128E
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_7, _140C
	wait_movement
	npc_msg 46
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_7, _143A
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_8, _1448
	wait_movement
	npc_msg 47
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_8, _1476
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _1298
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_5, _12C6
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _12D0
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_2, _12FA
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _1308
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D3E
	apply_movement obj_T27R0501_dancer_4, _1332
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _1340
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0D48
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0DA6

_0C52:
	end

_0C54:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0DF0
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_EAST
	goto _0559

_0C73:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _0E2E
	apply_movement obj_T27R0501_rocketm_2, _1346
	goto _05AC

_0C8E:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0E58
	apply_movement obj_T27R0501_rocketm_2, _1354
	goto _0CA9

_0CA9:
	wait_movement
	hide_person obj_T27R0501_rocketm_2
	setflag FLAG_UNK_23A
	releaseall
	setvar VAR_UNK_410C, 2
	setvar VAR_TEMP_x400A, 10
	end

_0CC3:
	compare VAR_TEMP_x400B, 1
	goto_if_ne _0E73
	npc_msg 34
	goto _0CD9

_0CD9:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 2
	goto_if_ge _0E95
	addvar VAR_TEMP_x400B, 1
	goto _0E9D

_0CF8:
	compare VAR_SPECIAL_x8000, 77
	goto_if_ne _0E9F
	releaseall
	goto _0EA3

_0D0D:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0EA5
	apply_movement obj_player, _135E
	goto _0D28

_0D28:
	apply_movement obj_T27R0501_dancer_6, _136C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0D3E:
	white_out
	call _0CF8
	end

_0D48:
	giveitem_no_check ITEM_TIDAL_BELL, 1
	setflag FLAG_UNK_104
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 6
	wait_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	show_person obj_T27R0501_gsbabygirl1
	apply_movement obj_T27R0501_gsbabygirl1, _1376
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _1380
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0ED0
	npc_msg 21
	goto _0EF8

_0DA6:
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 6
	wait_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	show_person obj_T27R0501_gsbabygirl1
	apply_movement obj_T27R0501_gsbabygirl1, _1376
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _1380
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0ED0
	npc_msg 21
	goto _0EF8

_0DF0:
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_WEST
	scrcmd_374 obj_T27R0501_rocketm_2
	setvar VAR_TEMP_x4009, 0
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C52
	compare VAR_UNK_410C, 3
	goto_if_ne _0C52
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_0E2E:
	apply_movement obj_T27R0501_rocketm_2, _1386
	wait_movement
	npc_msg 7
	closemsg
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0C8E
	apply_movement obj_T27R0501_rocketm_2, _11FC
	goto _0CA9

_0E58:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _0F1D
	apply_movement obj_T27R0501_rocketm_2, _1394
	goto _0CA9

_0E73:
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 2
	goto_if_ge _0E95
	addvar VAR_TEMP_x400B, 1
	goto _0E9D

_0E95:
	setvar VAR_TEMP_x400B, 0
	end

_0E9D:
	end

_0E9F:
	releaseall
	return

_0EA3:
	return

_0EA5:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0D28
	apply_movement obj_player, _139E
	apply_movement obj_T27R0501_dancer_6, _136C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0ED0:
	npc_msg 22
	closemsg
	apply_movement obj_T27R0501_dancer_6, _13AC
	wait_movement
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0F3F
	npc_msg 23
	goto _0FD7

_0EF8:
	closemsg
	apply_movement obj_T27R0501_dancer_6, _13AC
	wait_movement
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0F3F
	npc_msg 23
	goto _0FD7

_0F1D:
	apply_movement obj_T27R0501_rocketm_2, _13B2
	wait_movement
	hide_person obj_T27R0501_rocketm_2
	setflag FLAG_UNK_23A
	releaseall
	setvar VAR_UNK_410C, 2
	setvar VAR_TEMP_x400A, 10
	end

_0F3F:
	npc_msg 24
	closemsg
	apply_movement obj_T27R0501_dancer, _13C0
	apply_movement obj_T27R0501_dancer_2, _13CA
	apply_movement obj_T27R0501_dancer_8, _1484
	apply_movement obj_T27R0501_dancer_6, _13D8
	apply_movement obj_T27R0501_dancer_4, _13E6
	apply_movement obj_T27R0501_dancer_5, _13F4
	apply_movement obj_T27R0501_gsbabygirl1, _13FE
	apply_movement obj_T27R0501_dancer_7, _1492
	wait_movement
	hide_person obj_T27R0501_dancer
	hide_person obj_T27R0501_dancer_2
	hide_person obj_T27R0501_dancer_6
	hide_person obj_T27R0501_dancer_4
	hide_person obj_T27R0501_dancer_5
	hide_person obj_T27R0501_gsbabygirl1
	hide_person obj_T27R0501_dancer_8
	hide_person obj_T27R0501_dancer_7
	setflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	call _0CF8
	setvar VAR_UNK_410C, 6
	setvar VAR_UNK_40FA, 1
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _106C
	clearflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	goto _1072

_0FD7:
	closemsg
	apply_movement obj_T27R0501_dancer, _13C0
	apply_movement obj_T27R0501_dancer_2, _13CA
	apply_movement obj_T27R0501_dancer_8, _1484
	apply_movement obj_T27R0501_dancer_6, _13D8
	apply_movement obj_T27R0501_dancer_4, _13E6
	apply_movement obj_T27R0501_dancer_5, _13F4
	apply_movement obj_T27R0501_gsbabygirl1, _13FE
	apply_movement obj_T27R0501_dancer_7, _1492
	wait_movement
	hide_person obj_T27R0501_dancer
	hide_person obj_T27R0501_dancer_2
	hide_person obj_T27R0501_dancer_6
	hide_person obj_T27R0501_dancer_4
	hide_person obj_T27R0501_dancer_5
	hide_person obj_T27R0501_gsbabygirl1
	hide_person obj_T27R0501_dancer_8
	hide_person obj_T27R0501_dancer_7
	setflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	call _0CF8
	setvar VAR_UNK_410C, 6
	setvar VAR_UNK_40FA, 1
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _106C
	clearflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	goto _1072

_106C:
	clearflag FLAG_HIDE_WHIRL_ISLANDS_BOTTOM_KIMONO_GIRLS
	end

_1072:
	end

	.align 4
_1074:

	step 3, 1
	step_end
	.align 4
_107A:

	step 76, 9
	step_end
	.align 4
_1080:

	step 15, 1
	step_end
	.align 4
_1086:

	step 38, 1
	step_end
	.align 4
_108C:

	step 51, 2
	step_end
	.align 4
_1092:

	step 71, 1
	step 15, 2
	step 72, 1
	step_end
	.align 4
_10A0:

	step 33, 1
	step_end
	.align 4
_10A6:

	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step_end
	.align 4
_1180:

	step 66, 1
	step 77, 9
	step_end
	.align 4
_118A:

	step 71, 1
	step 12, 1
	step 72, 1
	step_end
	.align 4
_1198:

	step 12, 1
	step 14, 5
	step 12, 2
	step_end
	.align 4
_11A6:

	step 13, 2
	step 15, 5
	step 13, 1
	step 0, 1
	step_end
	.align 4
_11B8:

	step 12, 1
	step 15, 3
	step 12, 2
	step_end
	.align 4
_11C6:

	step 13, 2
	step 14, 3
	step 13, 1
	step 0, 1
	step_end
	.align 4
_11D8:

	step 12, 5
	step 14, 4
	step 12, 5
	step 15, 4
	step 32, 1
	step_end
	.align 4
_11EE:

	step 71, 1
	step 13, 1
	step 72, 1
	step_end
	.align 4
_11FC:

	step 18, 4
	step 17, 12
	step_end
	.align 4
_1206:

	step 15, 1
	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_1218:

	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 33, 1
	step_end
	.align 4
_1256:

	step 12, 1
	step 33, 1
	step_end
	.align 4
_1260:

	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 35, 1
	step 15, 5
	step 33, 1
	step_end
	.align 4
_128E:

	step 14, 5
	step 33, 1
	step_end
	.align 4
_1298:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 34, 1
	step 14, 5
	step 33, 1
	step_end
	.align 4
_12C6:

	step 15, 5
	step 33, 1
	step_end
	.align 4
_12D0:

	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 15, 3
	step 33, 1
	step_end
	.align 4
_12FA:

	step 14, 3
	step 12, 1
	step 33, 1
	step_end
	.align 4
_1308:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 14, 3
	step 33, 1
	step_end
	.align 4
_1332:

	step 15, 3
	step 12, 1
	step 33, 1
	step_end
	.align 4
_1340:

	step 13, 1
	step_end
	.align 4
_1346:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.align 4
_1354:

	step 18, 4
	step 17, 10
	step_end
	.align 4
_135E:

	step 13, 1
	step 14, 1
	step 32, 1
	step_end
	.align 4
_136C:

	step 63, 2
	step 33, 1
	step_end
	.align 4
_1376:

	step 16, 10
	step 19, 3
	step_end
	.align 4
_1380:

	step 34, 1
	step_end
	.align 4
_1386:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_1394:

	step 18, 3
	step 17, 10
	step_end
	.align 4
_139E:

	step 13, 1
	step 15, 1
	step 32, 1
	step_end
	.align 4
_13AC:

	step 75, 1
	step_end
	.align 4
_13B2:

	step 17, 1
	step 19, 3
	step 17, 9
	step_end
	.align 4
_13C0:

	step 15, 1
	step 13, 11
	step_end
	.align 4
_13CA:

	step 63, 1
	step 14, 1
	step 13, 12
	step_end
	.align 4
_13D8:

	step 63, 1
	step 15, 4
	step 13, 11
	step_end
	.align 4
_13E6:

	step 63, 1
	step 15, 1
	step 13, 12
	step_end
	.align 4
_13F4:

	step 14, 1
	step 13, 11
	step_end
	.align 4
_13FE:

	step 63, 2
	step 15, 5
	step 13, 11
	step_end
	.align 4
_140C:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 13, 1
	step 15, 2
	step 33, 1
	step_end
	.align 4
_143A:

	step 14, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_1448:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 13, 1
	step 14, 2
	step 33, 1
	step_end
	.align 4
_1476:

	step 15, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_1484:

	step 63, 1
	step 15, 2
	step 13, 12
	step_end
	.align 4
_1492:

	step 63, 1
	step 14, 2
	step 13, 12
	step_end
	.align 4


.close
