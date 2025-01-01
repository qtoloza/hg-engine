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

.include "armips/scr_seq/event_D44R0103.inc"


// text archive to grab from: 130.txt

.create "build/a012/2_112", 0


scrdef scr_seq_D44R0103_000
scrdef scr_seq_D44R0103_001
scrdef scr_seq_D44R0103_002
scrdef scr_seq_D44R0103_003
scrdef scr_seq_D44R0103_004
scrdef scr_seq_D44R0103_005
scrdef_end

scr_seq_D44R0103_004:
	goto_if_unset FLAG_UNK_189, _0365
	clearflag FLAG_UNK_189
	end

scr_seq_D44R0103_003:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0F88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	setvar VAR_SPECIAL_x8004, 0
	npc_msg 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 280, 255, 0
	menu_item_add 281, 255, 1
	menu_item_add 282, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

scr_seq_D44R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO, _044D
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0458
	goto_if_set FLAG_GOT_TM59_FROM_CLAIR, _0467
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0484
	npc_msg 20
	goto _048F

scr_seq_D44R0103_001:
	simple_npc_msg 24
	end

scr_seq_D44R0103_002:
	simple_npc_msg 25
	end

scr_seq_D44R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0497
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04AB
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04BF
	apply_movement obj_player, _103C
	apply_movement obj_D44R0103_gsmiddleman1, _1052
	goto _04DA

_0365:
	goto_if_set FLAG_UNK_0EA, _053B
	goto _0563

_0376:
	setflag FLAG_FAILED_DRAGONS_DEN_QUIZ
	apply_movement obj_D44R0103_chourou, _105C
	wait_movement
	npc_msg 7
	apply_movement obj_D44R0103_chourou, _106A
	wait_movement
	npc_msg 8
	wait_button
	switch VAR_SPECIAL_x8004
	case 0, _056D
	case 1, _07A0
	case 2, _0994
	case 3, _0B49
	goto _0CBF

_03D6:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_UNK_998
	setflag FLAG_UNK_0EA
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 1
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setvar VAR_UNK_40C3, 1
	setvar VAR_UNK_407B, 1
	setvar VAR_SCENE_ELMS_LAB, 8
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 1
	end

_0413:
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_UNK_998
	setflag FLAG_UNK_0EA
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 1
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setvar VAR_UNK_40C3, 1
	setvar VAR_UNK_407B, 1
	setvar VAR_SCENE_ELMS_LAB, 8
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 1
	end

_044D:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0458:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0467:
	npc_msg 26
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0DF6
	npc_msg 28
	goto _0E41

_0484:
	npc_msg 22
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
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04AB:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04BF:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E49
	apply_movement obj_player, _1070
	goto _04DA

_04DA:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E6C
	apply_movement obj_partner_poke, _107A
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_053B:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0EA6
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0EA6
	setflag FLAG_HIDE_CAMERON
	goto _0EB7

_0563:
	setflag FLAG_HIDE_CAMERON
	goto _0EB7

_056D:
	setvar VAR_SPECIAL_x8004, 0
	npc_msg 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 280, 255, 0
	menu_item_add 281, 255, 1
	menu_item_add 282, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

_07A0:
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

_0994:
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

_0B49:
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

_0CBF:
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0376
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0F8E
	apply_movement obj_D44R0103_gsleader8, _0FA4
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FBA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FC8
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _0FD2
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _0FE0
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _0FE6
	apply_movement obj_D44R0103_chourou, _0FEC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0FF6
	apply_movement obj_player, _1004
	apply_movement obj_D44R0103_gsleader8, _100E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _101C
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _1036
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03D6
	npc_msg 20
	goto _0413

_0DF6:
	buffer_players_name 0
	npc_msg 27
	play_fanfare SEQ_ME_SHINKAOME
	wait_fanfare
	give_mon SPECIES_DRATINI, 5, 311, 0, 0, VAR_SPECIAL_RESULT
	goto_if_set FLAG_FAILED_DRAGONS_DEN_QUIZ, _0EC4
	set_mon_move VAR_SPECIAL_x8005, 0, MOVE_EXTREME_SPEED
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0EE2
	goto _0458

_0E41:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0E49:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0F11
	apply_movement obj_player, _1088
	apply_movement obj_D44R0103_gsmiddleman1, _1052
	goto _04DA

_0E6C:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_0EA6:
	clearflag FLAG_HIDE_CAMERON
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0F82
	end

_0EB7:
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0F82
	end

_0EC4:
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0EE2
	goto _0458

_0EE2:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setflag FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0F11:
	apply_movement obj_player, _109A
	apply_movement obj_D44R0103_gsmiddleman1, _1052
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E6C
	apply_movement obj_partner_poke, _107A
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_0F82:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO
	end

	.align 4
_0F88:

	step 12, 8
	step_end
	.align 4
_0F8E:

	step 63, 1
	step 75, 1
	step 1, 1
	step 63, 8
	step 2, 1
	step_end
	.align 4
_0FA4:

	step 63, 4
	step 12, 8
	step 14, 1
	step 12, 2
	step 3, 1
	step_end
	.align 4
_0FBA:

	step 63, 1
	step 71, 1
	step 18, 1
	step_end
	.align 4
_0FC8:

	step 63, 1
	step 10, 1
	step_end
	.align 4
_0FD2:

	step 63, 1
	step 9, 1
	step 10, 1
	step_end
	.align 4
_0FE0:

	step 75, 1
	step_end
	.align 4
_0FE6:

	step 15, 2
	step_end
	.align 4
_0FEC:

	step 63, 2
	step 3, 1
	step_end
	.align 4
_0FF6:

	step 8, 1
	step 11, 1
	step 1, 1
	step_end
	.align 4
_1004:

	step 65, 2
	step 0, 1
	step_end
	.align 4
_100E:

	step 72, 1
	step 65, 2
	step 0, 1
	step_end
	.align 4
_101C:

	step 71, 1
	step 13, 1
	step 72, 1
	step 21, 3
	step 23, 1
	step 21, 4
	step_end
	.align 4
_1036:

	step 33, 1
	step_end
	.align 4
_103C:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_1052:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_105C:

	step 63, 2
	step 3, 1
	step 63, 2
	step_end
	.align 4
_106A:

	step 1, 1
	step_end
	.align 4
_1070:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_107A:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_1088:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_109A:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
