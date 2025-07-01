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

.include "armips/scr_seq/event_D44R0102.inc"


// text archive to grab from: 129.txt

.create "build/a012/2_111", 0


scrdef scr_seq_D44R0102_000
scrdef scr_seq_D44R0102_001
scrdef scr_seq_D44R0102_002
scrdef scr_seq_D44R0102_003
scrdef scr_seq_D44R0102_004
scrdef scr_seq_D44R0102_005
scrdef_end

scr_seq_D44R0102_002:
	goto_if_unset FLAG_UNK_189, _002B
	clearflag FLAG_UNK_189
	end

_002B:
	compare VAR_UNK_40FC, 2
	goto_if_ge _0047
	compare VAR_UNK_40FC, 1
	call_if_eq _015E
	end

_0047:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0062
	clearflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
	goto _007D

_0062:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0079
	clearflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
	goto _007D

_0079:
	setflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
_007D:
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00F6
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00AB
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _00F4

_00AB:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _00C2
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _00F4

_00C2:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _00D9
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _00F4

_00D9:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _00F0
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _00F4

_00F0:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
_00F4:
	end

_00F6:
	get_phone_book_rematch PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0158
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0124
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0156

_0124:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _013B
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0156

_013B:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _0152
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0156

_0152:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
_0156:
	end

_0158:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	end

_015E:
	get_starter_choice VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 152
	goto_if_ne _017B
	setvar VAR_OBJ_0, 1048
	goto _019A

_017B:
	compare VAR_TEMP_x4000, 155
	goto_if_ne _0194
	setvar VAR_OBJ_0, 1049
	goto _019A

_0194:
	setvar VAR_OBJ_0, 1047
_019A:
	return

scr_seq_D44R0102_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _02C0
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _01D5
	apply_movement obj_D44R0102_gsleader8, _02C8
	goto _01F8

_01D5:
	compare VAR_TEMP_x4000, 27
	goto_if_ne _01F0
	apply_movement obj_D44R0102_gsleader8, _02D0
	goto _01F8

_01F0:
	apply_movement obj_D44R0102_gsleader8, _02D8
_01F8:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	npc_msg 1
	goto_if_no_item_space ITEM_TM59, 1, _02A7
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM59_FROM_CLAIR
	npc_msg 3
_0236:
	npc_msg 5
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _0264
	apply_movement obj_D44R0102_gsleader8, _02E0
	apply_movement obj_player, _0310
	goto _0297

_0264:
	compare VAR_TEMP_x4000, 27
	goto_if_ne _0287
	apply_movement obj_D44R0102_gsleader8, _02F0
	apply_movement obj_player, _0310
	goto _0297

_0287:
	apply_movement obj_D44R0102_gsleader8, _0300
	apply_movement obj_player, _0310
_0297:
	wait_movement
	hide_person obj_D44R0102_gsleader8
	setvar VAR_UNK_40C4, 2
	releaseall
	end

_02A7:
	npc_msg 4
	closemsg
	goto _0236

	.align 4
_02C0:

	step 14, 1
	step_end
	.align 4
_02C8:

	step 15, 1
	step_end
	.align 4
_02D0:

	step 15, 2
	step_end
	.align 4
_02D8:

	step 15, 3
	step_end
	.align 4
_02E0:

	step 12, 1
	step 15, 3
	step 12, 7
	step_end
	.align 4
_02F0:

	step 12, 1
	step 15, 2
	step 12, 7
	step_end
	.align 4
_0300:

	step 12, 1
	step 15, 1
	step 12, 7
	step_end
	.align 4
_0310:

	step 0, 1
	step_end
scr_seq_D44R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0E2, _0340
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_0E2
	releaseall
	end

_0340:
	buffer_rivals_name 1
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D44R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03FC
	compare VAR_TEMP_x4002, 1
	goto_if_ge _03F1
	npc_msg 9
_0379:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _039D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _03E0
	end

_039D:
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CLAIR
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	hide_person obj_D44R0102_gsleader8
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_03E0:
	setvar VAR_TEMP_x4002, 1
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03F1:
	npc_msg 13
	goto _0379

_03FC:
	npc_msg 29
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _045D
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0468
	npc_msg 30
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 83
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_045D:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0468:
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D44R0102_004:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D44R0102_gsrivel_2, _0674
	compare VAR_TEMP_x4000, 24
	goto_if_ne _04AA
	apply_movement obj_player, _0688
	goto _04B2

_04AA:
	apply_movement obj_player, _0694
_04B2:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	callstd std_play_rival_intro_music
	buffer_rivals_name 1
	npc_msg 14
	closemsg
	move_person_facing obj_D44R0102_wataru, 28, 0, 34, DIR_SOUTH
	move_person_facing obj_D44R0102_gsleader8_2, 28, 0, 33, DIR_SOUTH
	callstd std_fade_end_rival_intro_music
	apply_movement obj_D44R0102_gsrivel_2, _0674
	apply_movement obj_player, _06A8
	apply_movement obj_D44R0102_wataru, _06E4
	apply_movement obj_D44R0102_gsleader8_2, _0704
	apply_movement obj_partner_poke, _06C8
	wait_movement
	buffer_players_name 0
	gender_msgbox 15, 16
	apply_movement obj_D44R0102_gsrivel_2, _0680
	wait_movement
	buffer_rivals_name 1
	npc_msg 17
	npc_msg 18
	apply_movement obj_D44R0102_gsrivel_2, _073C
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 19
	gender_msgbox 20, 21
	apply_movement obj_D44R0102_gsleader8_2, _0718
	wait_movement
	npc_msg 22
	buffer_rivals_name 1
	npc_msg 23
	apply_movement obj_D44R0102_gsrivel_2, _0744
	apply_movement obj_D44R0102_gsleader8_2, _0758
	apply_movement obj_player, _0764
	wait_movement
	buffer_players_name 0
	npc_msg 24
	closemsg
	apply_movement obj_D44R0102_gsrivel_2, _0770
	apply_movement obj_player, _0770
	apply_movement obj_D44R0102_gsleader8_2, _0718
	wait_movement
	compare VAR_OBJ_0, 1048
	goto_if_ne _05AC
	multi_battle TRAINER_PARTNER_RIVAL_2, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	goto _05D1

_05AC:
	compare VAR_OBJ_0, 1049
	goto_if_ne _05C8
	multi_battle TRAINER_PARTNER_RIVAL_3, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	goto _05D1

_05C8:
	multi_battle TRAINER_PARTNER_RIVAL_1, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
_05D1:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _066C
	buffer_players_name 0
	gender_msgbox 25, 26
	closemsg
	apply_movement obj_D44R0102_wataru, _06F4
	wait_movement
	hide_person obj_D44R0102_wataru
	buffer_players_name 0
	npc_msg 27
	closemsg
	apply_movement obj_D44R0102_gsleader8_2, _0720
	wait_movement
	hide_person obj_D44R0102_gsleader8_2
	apply_movement obj_D44R0102_gsrivel_2, _0778
	apply_movement obj_player, _0780
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 28
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D44R0102_gsrivel_2
	hide_person obj_D44R0102_var_1
	wait 20, VAR_SPECIAL_x8004
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement obj_partner_poke, _06DC
	wait_movement
	setvar VAR_UNK_40FC, 2
	setvar VAR_UNK_4119, 1
	releaseall
	end

_066C:
	white_out
	releaseall
	end

	.align 4
_0674:

	step 0, 1
	step 75, 1
	step_end
	.align 4
_0680:

	step 75, 1
	step_end
	.align 4
_0688:

	step 65, 2
	step 13, 2
	step_end
	.align 4
_0694:

	step 65, 1
	step 13, 1
	step 14, 1
	step 13, 1
	step_end
	.align 4
_06A8:

	step 65, 1
	step 0, 1
	step 75, 1
	step 65, 2
	step 15, 1
	step 13, 2
	step 0, 1
	step_end
	.align 4
_06C8:

	step 65, 4
	step 19, 1
	step 17, 5
	step 0, 1
	step_end
	.align 4
_06DC:

	step 12, 1
	step_end
	.align 4
_06E4:

	step 13, 7
	step 14, 3
	step 13, 3
	step_end
	.align 4
_06F4:

	step 12, 4
	step 15, 3
	step 12, 7
	step_end
	.align 4
_0704:

	step 63, 1
	step 13, 7
	step 14, 4
	step 13, 4
	step_end
	.align 4
_0718:

	step 13, 1
	step_end
	.align 4
_0720:

	step 71, 1
	step 8, 1
	step 72, 1
	step 16, 2
	step 19, 4
	step 16, 7
	step_end
	.align 4
_073C:

	step 36, 2
	step_end
	.align 4
_0744:

	step 20, 1
	step 63, 1
	step 13, 1
	step 35, 1
	step_end
	.align 4
_0758:

	step 71, 1
	step 20, 2
	step_end
	.align 4
_0764:

	step 65, 2
	step 34, 1
	step_end
	.align 4
_0770:

	step 32, 1
	step_end
	.align 4
_0778:

	step 3, 1
	step_end
	.align 4
_0780:

	step 2, 1
	step_end
scr_seq_D44R0102_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
