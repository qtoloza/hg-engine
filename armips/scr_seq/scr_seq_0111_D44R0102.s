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
	goto_if_unset FLAG_UNK_189, _0127
	clearflag FLAG_UNK_189
	end

scr_seq_D44R0102_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _08CE
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _0143
	apply_movement obj_D44R0102_gsleader8, _08D4
	goto _015E

scr_seq_D44R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0E2, _01E2
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_0E2
	releaseall
	end

scr_seq_D44R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01F0
	compare VAR_TEMP_x4002, 1
	goto_if_ge _0251
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _025A
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _029D
	end

scr_seq_D44R0102_004:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D44R0102_gsrivel_2, _08DA
	compare VAR_TEMP_x4000, 24
	goto_if_ne _02AE
	apply_movement obj_player, _08E4
	goto _03B0

scr_seq_D44R0102_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

_0127:
	compare VAR_UNK_40FC, 2
	goto_if_ge _04AA
	compare VAR_UNK_40FC, 1
	call_if_eq _04C5
	end

_0143:
	compare VAR_TEMP_x4000, 27
	goto_if_ne _04E2
	apply_movement obj_D44R0102_gsleader8, _08EE
	goto _015E

_015E:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	npc_msg 1
	goto_if_no_item_space ITEM_TM059, 1, _0556
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM59_FROM_CLAIR
	npc_msg 3
	npc_msg 5
	npc_msg 35
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 36
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CLAIR
	wait_button_or_walk_away
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _0561
	apply_movement obj_D44R0102_gsleader8, _08F4
	apply_movement obj_player, _0902
	goto _0584

_01E2:
	buffer_rivals_name 1
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F0:
	npc_msg 29
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0594
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _059F
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

_0251:
	npc_msg 13
	goto _05AA

_025A:
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

_029D:
	setvar VAR_TEMP_x4002, 1
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AE:
	apply_movement obj_player, _0908
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
	apply_movement obj_D44R0102_gsrivel_2, _08DA
	apply_movement obj_player, _091A
	apply_movement obj_D44R0102_wataru, _0938
	apply_movement obj_D44R0102_gsleader8_2, _0946
	apply_movement obj_partner_poke, _0958
	wait_movement
	buffer_players_name 0
	gender_msgbox 15, 16
	apply_movement obj_D44R0102_gsrivel_2, _096A
	wait_movement
	buffer_rivals_name 1
	npc_msg 17
	npc_msg 18
	apply_movement obj_D44R0102_gsrivel_2, _0970
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 19
	gender_msgbox 20, 21
	apply_movement obj_D44R0102_gsleader8_2, _0976
	wait_movement
	npc_msg 22
	buffer_rivals_name 1
	npc_msg 23
	apply_movement obj_D44R0102_gsrivel_2, _097C
	apply_movement obj_D44R0102_gsleader8_2, _098E
	apply_movement obj_player, _0998
	wait_movement
	buffer_players_name 0
	npc_msg 24
	closemsg
	apply_movement obj_D44R0102_gsrivel_2, _09A2
	apply_movement obj_player, _09A2
	apply_movement obj_D44R0102_gsleader8_2, _0976
	wait_movement
	compare VAR_OBJ_0, 1048
	goto_if_ne _05CE
	multi_battle TRAINER_PARTNER_RIVAL_2, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	goto _05EA

_03B0:
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
	apply_movement obj_D44R0102_gsrivel_2, _08DA
	apply_movement obj_player, _091A
	apply_movement obj_D44R0102_wataru, _0938
	apply_movement obj_D44R0102_gsleader8_2, _0946
	apply_movement obj_partner_poke, _0958
	wait_movement
	buffer_players_name 0
	gender_msgbox 15, 16
	apply_movement obj_D44R0102_gsrivel_2, _096A
	wait_movement
	buffer_rivals_name 1
	npc_msg 17
	npc_msg 18
	apply_movement obj_D44R0102_gsrivel_2, _0970
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 19
	gender_msgbox 20, 21
	apply_movement obj_D44R0102_gsleader8_2, _0976
	wait_movement
	npc_msg 22
	buffer_rivals_name 1
	npc_msg 23
	apply_movement obj_D44R0102_gsrivel_2, _097C
	apply_movement obj_D44R0102_gsleader8_2, _098E
	apply_movement obj_player, _0998
	wait_movement
	buffer_players_name 0
	npc_msg 24
	closemsg
	apply_movement obj_D44R0102_gsrivel_2, _09A2
	apply_movement obj_player, _09A2
	apply_movement obj_D44R0102_gsleader8_2, _0976
	wait_movement
	compare VAR_OBJ_0, 1048
	goto_if_ne _05CE
	multi_battle TRAINER_PARTNER_RIVAL_2, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	goto _05EA

_04AA:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0685
	clearflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
	goto _069C

_04C5:
	get_starter_choice VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 152
	goto_if_ne _06CA
	setvar VAR_OBJ_0, 1048
	goto _06E3

_04E2:
	apply_movement obj_D44R0102_gsleader8, _09AE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	npc_msg 1
	goto_if_no_item_space ITEM_TM059, 1, _0556
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM59_FROM_CLAIR
	npc_msg 3
	npc_msg 5
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _0561
	apply_movement obj_D44R0102_gsleader8, _08F4
	apply_movement obj_player, _0902
	goto _0584

_0556:
	npc_msg 4
	closemsg
	goto _06E5

_0561:
	compare VAR_TEMP_x4000, 27
	goto_if_ne _0713
	apply_movement obj_D44R0102_gsleader8, _09BC
	apply_movement obj_player, _0902
	goto _0584

_0584:
	wait_movement
	hide_person obj_D44R0102_gsleader8
	setvar VAR_UNK_40C4, 2
	releaseall
	end

_0594:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_059F:
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05AA:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _025A
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _029D
	end

_05CE:
	compare VAR_OBJ_0, 1049
	goto_if_ne _0733
	multi_battle TRAINER_PARTNER_RIVAL_3, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	goto _05EA

_05EA:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07D7
	buffer_players_name 0
	gender_msgbox 25, 26
	closemsg
	apply_movement obj_D44R0102_wataru, _09BC
	wait_movement
	hide_person obj_D44R0102_wataru
	buffer_players_name 0
	npc_msg 27
	closemsg
	apply_movement obj_D44R0102_gsleader8_2, _09CA
	wait_movement
	hide_person obj_D44R0102_gsleader8_2
	apply_movement obj_D44R0102_gsrivel_2, _09E4
	apply_movement obj_player, _09EA
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
	apply_movement obj_partner_poke, _09F0
	wait_movement
	setvar VAR_UNK_40FC, 2
	setvar VAR_UNK_4119, 1
	releaseall
	end

_0685:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _07DD
	clearflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
	goto _069C

_069C:
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _080F
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _083D
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0854

_06CA:
	compare VAR_TEMP_x4000, 155
	goto_if_ne _0856
	setvar VAR_OBJ_0, 1049
	goto _06E3

_06E3:
	return

_06E5:
	npc_msg 5
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 26
	goto_if_ne _0561
	apply_movement obj_D44R0102_gsleader8, _08F4
	apply_movement obj_player, _0902
	goto _0584

_0713:
	apply_movement obj_D44R0102_gsleader8, _0A04
	apply_movement obj_player, _0902
	wait_movement
	hide_person obj_D44R0102_gsleader8
	setvar VAR_UNK_40C4, 2
	releaseall
	end

_0733:
	multi_battle TRAINER_PARTNER_RIVAL_1, TRAINER_CHAMPION_LANCE_3, TRAINER_LEADER_CLAIR_CLAIR_3, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07D7
	buffer_players_name 0
	gender_msgbox 25, 26
	closemsg
	apply_movement obj_D44R0102_wataru, _09CA
	wait_movement
	hide_person obj_D44R0102_wataru
	buffer_players_name 0
	npc_msg 27
	closemsg
	apply_movement obj_D44R0102_gsleader8_2, _09E4
	wait_movement
	hide_person obj_D44R0102_gsleader8_2
	apply_movement obj_D44R0102_gsrivel_2, _09EA
	apply_movement obj_player, _09F0
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
	apply_movement obj_partner_poke, _09F6
	wait_movement
	setvar VAR_UNK_40FC, 2
	setvar VAR_UNK_4119, 1
	releaseall
	end

_07D7:
	white_out
	releaseall
	end

_07DD:
	setflag FLAG_HIDE_CHAMPIONS_ROOM_RETREAT
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _080F
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _083D
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0854

_080F:
	get_phone_book_rematch PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _085E
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0864
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _087B

_083D:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _087D
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0854

_0854:
	end

_0856:
	setvar VAR_OBJ_0, 1047
	return

_085E:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	end

_0864:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _0894
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _087B

_087B:
	end

_087D:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _08AB
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0854

_0894:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _08C2
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _087B

_08AB:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _08C8
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	goto _0854

_08C2:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	end

_08C8:
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	end

	.align 4
_08CE:

	step 14, 1
	step_end
	.align 4
_08D4:

	step 15, 1
	step_end
	.align 4
_08DA:

	step 0, 1
	step 75, 1
	step_end
	.align 4
_08E4:

	step 65, 2
	step 13, 2
	step_end
	.align 4
_08EE:

	step 15, 2
	step_end
	.align 4
_08F4:

	step 12, 1
	step 15, 3
	step 12, 7
	step_end
	.align 4
_0902:

	step 0, 1
	step_end
	.align 4
_0908:

	step 65, 1
	step 13, 1
	step 14, 1
	step 13, 1
	step_end
	.align 4
_091A:

	step 65, 1
	step 0, 1
	step 75, 1
	step 65, 2
	step 15, 1
	step 13, 2
	step 0, 1
	step_end
	.align 4
_0938:

	step 13, 7
	step 14, 3
	step 13, 3
	step_end
	.align 4
_0946:

	step 63, 1
	step 13, 7
	step 14, 4
	step 13, 4
	step_end
	.align 4
_0958:

	step 65, 4
	step 19, 1
	step 17, 5
	step 0, 1
	step_end
	.align 4
_096A:

	step 75, 1
	step_end
	.align 4
_0970:

	step 36, 2
	step_end
	.align 4
_0976:

	step 13, 1
	step_end
	.align 4
_097C:

	step 20, 1
	step 63, 1
	step 13, 1
	step 35, 1
	step_end
	.align 4
_098E:

	step 71, 1
	step 20, 2
	step_end
	.align 4
_0998:

	step 65, 2
	step 34, 1
	step_end
	.align 4
_09A2:

	step 32, 1
	step_end
	.align 4
_09AE:

	step 12, 1
	step 15, 2
	step 12, 7
	step_end
	.align 4
_09BC:

	step 12, 4
	step 15, 3
	step 12, 7
	step_end
	.align 4
_09CA:

	step 71, 1
	step 8, 1
	step 72, 1
	step 16, 2
	step 19, 4
	step 16, 7
	step_end
	.align 4
_09E4:

	step 3, 1
	step_end
	.align 4
_09EA:

	step 2, 1
	step_end
	.align 4
_09F0:

	step 12, 1
	step_end
	.align 4
_09F6:

	step 12, 1
	step 15, 1
	step 12, 7
	step_end
	.align 4
_0A04:

	step 12, 1
	step 15, 1
	step 12, 7
	step_end
	.align 4


.close
