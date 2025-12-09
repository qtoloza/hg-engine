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

.include "armips/scr_seq/event_T06.inc"


// text archive to grab from: 483.txt

.create "build/a012/2_776", 0


scrdef scr_seq_T06_000
scrdef scr_seq_T06_001
scrdef scr_seq_T06_002
scrdef scr_seq_T06_003
scrdef scr_seq_T06_004
scrdef scr_seq_T06_005
scrdef scr_seq_T06_006
scrdef scr_seq_T06_007
scrdef scr_seq_T06_008
scrdef scr_seq_T06_009
scrdef scr_seq_T06_010
scrdef scr_seq_T06_011
scrdef scr_seq_T06_012
scrdef scr_seq_T06_013
scrdef scr_seq_T06_014
scrdef scr_seq_T06_015
scrdef scr_seq_T06_016
scrdef_end

scr_seq_T06_009:
	goto_if_unset FLAG_UNK_189, _0315
	clearflag FLAG_UNK_189
	end

scr_seq_T06_013:
	scrcmd_609
	lockall
	buffer_players_name 0
	buffer_players_name 0
	apply_movement obj_T06_daigo, _0A40
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0A52
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 16
	closemsg
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	get_game_version VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 8
	goto_if_eq _0330
	scrcmd_452 SPECIES_LATIAS, 1
	npc_msg 17
	closemsg
	create_roamer 2
	scrcmd_453
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	npc_msg 21
	closemsg
	goto _0364

scr_seq_T06_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_491 247
	goto_if_set FLAG_GOT_PP_MAX_FROM_VERMILLION_CITY_MAN, _0393
	compare VAR_UNK_4135, 8
	goto_if_ge _039E
	compare VAR_UNK_4135, 5
	goto_if_ge _03D5
	compare VAR_UNK_4135, 1
	goto_if_ge _03E0
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06_011:
	scrcmd_609
	lockall
	clearflag FLAG_HIDE_VERMILION_EUSINE
	show_person obj_T06_minaki
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 1334
	goto_if_ne _03EB
	goto _0450

scr_seq_T06_012:
	scrcmd_609
	lockall
	clearflag FLAG_HIDE_VERMILION_EUSINE_2
	show_person obj_T06_minaki_2
	apply_movement obj_player, _0A66
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_T06_follower_mon_static_suicune
	scrcmd_523 obj_T06_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_T06_follower_mon_static_suicune
	wait_cry
	callstd std_play_eusine_music
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 1324
	goto_if_ne _04DA
	apply_movement obj_T06_minaki_2, _0A6C
	apply_movement obj_player, _0A7E
	apply_movement obj_T06_follower_mon_static_suicune, _0A88
	goto _0505

scr_seq_T06_001:
	simple_npc_msg 0
	end

scr_seq_T06_002:
	simple_npc_msg 3
	end

scr_seq_T06_003:
	simple_npc_msg 1
	end

scr_seq_T06_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MAKUHITA, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06_005:
	direction_signpost 10, 0, 6, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T06_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T06_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T06_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T06_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0574
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0588
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _059C
	apply_movement obj_player, _0A92
	goto _05BF

scr_seq_T06_014:
	simple_npc_msg 24
	end

scr_seq_T06_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	hasitem ITEM_SOUL_DEW, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0620
	releaseall
	end

scr_seq_T06_016:
	buffer_players_name 0
	end

_0315:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _06F2
	clearflag FLAG_HIDE_CAMERON
	goto _0709

_0330:
	scrcmd_452 SPECIES_LATIOS, 0
	npc_msg 18
	closemsg
	create_roamer 3
	scrcmd_453
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	npc_msg 20
	closemsg
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	npc_msg 22
	closemsg
	goto _0364

_0364:
	apply_movement obj_T06_daigo, _0A60
	wait_movement
	npc_msg 23
	closemsg
	apply_movement obj_T06_daigo, _0A9C
	wait_movement
	setvar VAR_UNK_4130, 2
	hide_person obj_T06_daigo
	setflag FLAG_HIDE_VERMILION_CITY_STEVEN
	clearflag 16314
	releaseall
	end

_0393:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_039E:
	npc_msg 7
	goto_if_no_item_space ITEM_PP_MAX, 1, _0711
	callstd std_give_item_verbose
	setflag FLAG_GOT_PP_MAX_FROM_VERMILLION_CITY_MAN
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D5:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E0:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03EB:
	apply_movement obj_player, _0A66
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_T06_follower_mon_static_suicune
	scrcmd_523 obj_T06_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_T06_follower_mon_static_suicune
	wait_cry
	callstd std_play_eusine_music
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 331
	goto_if_ne _071B
	apply_movement obj_player, _0AA2
	apply_movement obj_T06_minaki, _0AB0
	apply_movement obj_T06_follower_mon_static_suicune, _0A88
	goto _0746

_0450:
	apply_movement obj_player, _0A66
	apply_movement obj_T06_follower_mon_static_suicune, _0ABE
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_T06_follower_mon_static_suicune
	scrcmd_523 obj_T06_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_T06_follower_mon_static_suicune
	wait_cry
	callstd std_play_eusine_music
	apply_movement obj_T06_follower_mon_static_suicune, _0AC4
	apply_movement obj_T06_minaki, _0AE2
	apply_movement obj_player, _0AF0
	wait_movement
	apply_movement obj_T06_minaki, _0AFA
	apply_movement obj_player, _0B00
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T06_minaki, _0B06
	wait_movement
	npc_msg 15
	closemsg
	apply_movement obj_T06_minaki, _0B0C
	apply_movement obj_player, _0B12
	wait_movement
	goto _07AD

_04DA:
	compare VAR_TEMP_x4000, 1325
	goto_if_ne _07DF
	apply_movement obj_T06_minaki_2, _0B18
	apply_movement obj_player, _0B2A
	apply_movement obj_T06_follower_mon_static_suicune, _0B34
	goto _0505

_0505:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 14
	closemsg
	apply_movement obj_T06_minaki_2, _0B3E
	apply_movement obj_player, _0B44
	wait_movement
	buffer_players_name 0
	npc_msg 15
	closemsg
	apply_movement obj_T06_minaki_2, _0B4A
	apply_movement obj_player, _0B54
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_T06_minaki_2
	hide_person obj_T06_follower_mon_static_suicune
	setflag FLAG_HIDE_VERMILION_EUSINE
	setflag FLAG_HIDE_VERMILION_EUSINE_2
	setflag FLAG_HIDE_VERMILION_SUICUNE
	setvar VAR_UNK_4070, 0
	setvar VAR_UNK_4071, 0
	clearflag FLAG_HIDE_ROUTE_14_SUICUNE
	setvar VAR_UNK_4086, 1
	releaseall
	end

_0574:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0588:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_059C:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0866
	apply_movement obj_player, _0B66
	apply_movement obj_T06_gsmiddleman1_2, _0B78
	goto _05BF

_05BF:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08D7
	apply_movement obj_partner_poke, _0B82
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 50
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0620:
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	stop_bgm 0
	play_se SEQ_SE_GS_STOPPERKAIJO
	wait_se SEQ_SE_GS_STOPPERKAIJO
	npc_msg 30
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0911
	fade_screen 11, 5, 0, RGB_WHITE
	wait_fade
	hide_person obj_T06_babyboy1_12
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0919
	move_person_facing obj_T06_follower_mon_static_latios, 1319, 0, 299, DIR_SOUTH
	apply_movement obj_T06_follower_mon_static_latios, _0B90
	play_cry SPECIES_LATIOS, 0
	wait_cry
	fade_screen 11, 5, 1, RGB_WHITE
	wait_fade
	play_cry SPECIES_LATIOS, 0
	npc_msg 33
	wait_cry
	wild_battle SPECIES_LATIOS, 40, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _099D
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	call_if_eq _09A3
	lockall
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T06_follower_mon_static_latios
	setflag 16330
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	goto _09A9

_06F2:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _09B5
	clearflag FLAG_HIDE_CAMERON
	goto _0709

_0709:
	setvar VAR_UNK_4085, 0
	end

_0711:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_071B:
	compare VAR_TEMP_x4001, 332
	goto_if_ne _09C1
	apply_movement obj_player, _0B96
	apply_movement obj_T06_minaki, _0BA4
	apply_movement obj_T06_follower_mon_static_suicune, _0B34
	goto _0746

_0746:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 14
	closemsg
	apply_movement obj_T06_minaki, _0BB2
	wait_movement
	buffer_players_name 0
	npc_msg 15
	closemsg
	apply_movement obj_T06_minaki, _0B0C
	apply_movement obj_player, _0B12
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_T06_minaki
	hide_person obj_T06_follower_mon_static_suicune
	setflag FLAG_HIDE_VERMILION_EUSINE
	setflag FLAG_HIDE_VERMILION_EUSINE_2
	setflag FLAG_HIDE_VERMILION_SUICUNE
	setvar VAR_UNK_4070, 0
	setvar VAR_UNK_4071, 0
	clearflag FLAG_HIDE_ROUTE_14_SUICUNE
	setvar VAR_UNK_4086, 1
	releaseall
	end

_07AD:
	callstd std_fade_end_eusine_music
	hide_person obj_T06_minaki
	hide_person obj_T06_follower_mon_static_suicune
	setflag FLAG_HIDE_VERMILION_EUSINE
	setflag FLAG_HIDE_VERMILION_EUSINE_2
	setflag FLAG_HIDE_VERMILION_SUICUNE
	setvar VAR_UNK_4070, 0
	setvar VAR_UNK_4071, 0
	clearflag FLAG_HIDE_ROUTE_14_SUICUNE
	setvar VAR_UNK_4086, 1
	releaseall
	end

_07DF:
	apply_movement obj_T06_minaki_2, _0BB8
	apply_movement obj_player, _0BCA
	apply_movement obj_T06_follower_mon_static_suicune, _0BD4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 14
	closemsg
	apply_movement obj_T06_minaki_2, _0B3E
	apply_movement obj_player, _0B44
	wait_movement
	buffer_players_name 0
	npc_msg 15
	closemsg
	apply_movement obj_T06_minaki_2, _0B4A
	apply_movement obj_player, _0B54
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_T06_minaki_2
	hide_person obj_T06_follower_mon_static_suicune
	setflag FLAG_HIDE_VERMILION_EUSINE
	setflag FLAG_HIDE_VERMILION_EUSINE_2
	setflag FLAG_HIDE_VERMILION_SUICUNE
	setvar VAR_UNK_4070, 0
	setvar VAR_UNK_4071, 0
	clearflag FLAG_HIDE_ROUTE_14_SUICUNE
	setvar VAR_UNK_4086, 1
	releaseall
	end

_0866:
	apply_movement obj_player, _0BDE
	apply_movement obj_T06_gsmiddleman1_2, _0B78
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08D7
	apply_movement obj_partner_poke, _0B82
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 50
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_08D7:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 50
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0911:
	play_bgm SEQ_GS_C_KUCHIBA
	releaseall
	end

_0919:
	move_person_facing obj_T06_follower_mon_static_latias, 1319, 0, 299, DIR_SOUTH
	apply_movement obj_T06_follower_mon_static_latias, _0B90
	play_cry SPECIES_LATIAS, 0
	wait_cry
	fade_screen 11, 5, 1, RGB_WHITE
	wait_fade
	play_cry SPECIES_LATIAS, 0
	npc_msg 28
	wait_cry
	wild_battle SPECIES_LATIAS, 40, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _099D
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	call_if_eq _09A3
	lockall
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	setflag 16330
	hide_person obj_T06_follower_mon_static_latias
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	goto _09A9

_099D:
	white_out
	releaseall
	end

_09A3:
	setflag 16303
	return

_09A9:
	lockall
	setflag 16330
	closemsg
	releaseall
	end

_09B5:
	setflag FLAG_HIDE_CAMERON
	setvar VAR_UNK_4085, 0
	end

_09C1:
	apply_movement obj_player, _0BF0
	apply_movement obj_T06_minaki, _0BFE
	apply_movement obj_T06_follower_mon_static_suicune, _0BD4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 14
	closemsg
	apply_movement obj_T06_minaki, _0BB2
	wait_movement
	buffer_players_name 0
	npc_msg 15
	closemsg
	apply_movement obj_T06_minaki, _0B0C
	apply_movement obj_player, _0B12
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_T06_minaki
	hide_person obj_T06_follower_mon_static_suicune
	setflag FLAG_HIDE_VERMILION_EUSINE
	setflag FLAG_HIDE_VERMILION_EUSINE_2
	setflag FLAG_HIDE_VERMILION_SUICUNE
	setvar VAR_UNK_4070, 0
	setvar VAR_UNK_4071, 0
	clearflag FLAG_HIDE_ROUTE_14_SUICUNE
	setvar VAR_UNK_4086, 1
	releaseall
	end

	.align 4
_0A40:

	step 75, 1
	step 63, 1
	step 14, 4
	step 34, 1
	step_end
	.align 4
_0A52:

	step 65, 4
	step 13, 1
	step 35, 1
	step_end
	.align 4
_0A60:

	step 34, 1
	step_end
	.align 4
_0A66:

	step 75, 1
	step_end
	.align 4
_0A6C:

	step 63, 1
	step 19, 7
	step 16, 3
	step 19, 1
	step_end
	.align 4
_0A7E:

	step 13, 4
	step 15, 2
	step_end
	.align 4
_0A88:

	step 62, 9
	step 112, 1
	step_end
	.align 4
_0A92:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0A9C:

	step 15, 10
	step_end
	.align 4
_0AA2:

	step 15, 2
	step 12, 2
	step 15, 1
	step_end
	.align 4
_0AB0:

	step 63, 1
	step 17, 6
	step 19, 1
	step_end
	.align 4
_0ABE:

	step 35, 1
	step_end
	.align 4
_0AC4:

	step 62, 4
	step 21, 2
	step 53, 1
	step 57, 1
	step 21, 2
	step 53, 1
	step 57, 2
	step_end
	.align 4
_0AE2:

	step 62, 2
	step 19, 1
	step 17, 2
	step_end
	.align 4
_0AF0:

	step 62, 4
	step 1, 1
	step_end
	.align 4
_0AFA:

	step 49, 3
	step_end
	.align 4
_0B00:

	step 2, 1
	step_end
	.align 4
_0B06:

	step 3, 1
	step_end
	.align 4
_0B0C:

	step 12, 8
	step_end
	.align 4
_0B12:

	step 0, 1
	step_end
	.align 4
_0B18:

	step 63, 2
	step 19, 7
	step 16, 3
	step 19, 1
	step_end
	.align 4
_0B2A:

	step 13, 4
	step 15, 1
	step_end
	.align 4
_0B34:

	step 62, 11
	step 112, 1
	step_end
	.align 4
_0B3E:

	step 0, 1
	step_end
	.align 4
_0B44:

	step 1, 1
	step_end
	.align 4
_0B4A:

	step 14, 2
	step 12, 13
	step_end
	.align 4
_0B54:

	step 63, 2
	step 2, 1
	step 63, 1
	step 0, 1
	step_end
	.align 4
_0B66:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0B78:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0B82:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0B90:

	step 33, 1
	step_end
	.align 4
_0B96:

	step 15, 2
	step 12, 3
	step 15, 1
	step_end
	.align 4
_0BA4:

	step 62, 3
	step 17, 6
	step 19, 1
	step_end
	.align 4
_0BB2:

	step 1, 1
	step_end
	.align 4
_0BB8:

	step 63, 3
	step 19, 7
	step 16, 3
	step 19, 1
	step_end
	.align 4
_0BCA:

	step 13, 4
	step 3, 1
	step_end
	.align 4
_0BD4:

	step 62, 13
	step 112, 1
	step_end
	.align 4
_0BDE:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0BF0:

	step 15, 2
	step 12, 4
	step 15, 1
	step_end
	.align 4
_0BFE:

	step 62, 5
	step 17, 6
	step 19, 1
	step_end
	.align 4


.close
