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
	goto_if_unset FLAG_UNK_189, _002B
	clearflag FLAG_UNK_189
	end

_002B:
	goto_if_set FLAG_UNK_0EA, _003C
	goto _005A

_003C:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0064
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0064
_005A:
	setflag FLAG_HIDE_CAMERON
	goto _0068

_0064:
	clearflag FLAG_HIDE_CAMERON
_0068:
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0075
	end

_0075:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO
	end

scr_seq_D44R0103_003:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0370
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
_00A0:
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
	goto_if_eq _0310
	npc_msg 9
_00DF:
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
	goto_if_eq _0310
	npc_msg 9
_011E:
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
	goto_if_eq _0310
	npc_msg 9
_015D:
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
	goto_if_eq _0310
	npc_msg 9
_019C:
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
	goto_if_eq _0310
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0390
	apply_movement obj_D44R0103_gsleader8, _03A8
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _03C0
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _03D0
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _03DC
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _03EC
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _03F4
	apply_movement obj_D44R0103_chourou, _03FC
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _0408
	apply_movement obj_player, _0418
	apply_movement obj_D44R0103_gsleader8, _0424
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _0434
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _0450
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _02D3
	npc_msg 20
	goto _02D6

_02D3:
	npc_msg 21
_02D6:
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

_0310:
	setflag FLAG_FAILED_DRAGONS_DEN_QUIZ
	apply_movement obj_D44R0103_chourou, _0378
	wait_movement
	npc_msg 7
	apply_movement obj_D44R0103_chourou, _0388
	wait_movement
	npc_msg 8
	wait_button
	switch VAR_SPECIAL_x8004
	case 0, _00A0
	case 1, _00DF
	case 2, _011E
	case 3, _015D
	goto _019C


_0370:

	step 12, 8
	step_end

_0378:

	step 63, 2
	step 3, 1
	step 63, 2
	step_end

_0388:

	step 1, 1
	step_end

_0390:

	step 63, 1
	step 75, 1
	step 1, 1
	step 63, 8
	step 2, 1
	step_end

_03A8:

	step 63, 4
	step 12, 8
	step 14, 1
	step 12, 2
	step 3, 1
	step_end

_03C0:

	step 63, 1
	step 71, 1
	step 18, 1
	step_end

_03D0:

	step 63, 1
	step 10, 1
	step_end

_03DC:

	step 63, 1
	step 9, 1
	step 10, 1
	step_end

_03EC:

	step 75, 1
	step_end

_03F4:

	step 15, 2
	step_end

_03FC:

	step 63, 2
	step 3, 1
	step_end

_0408:

	step 8, 1
	step 11, 1
	step 1, 1
	step_end

_0418:

	step 65, 2
	step 0, 1
	step_end

_0424:

	step 72, 1
	step 65, 2
	step 0, 1
	step_end

_0434:

	step 71, 1
	step 13, 1
	step 72, 1
	step 21, 3
	step 23, 1
	step 21, 4
	step_end

_0450:

	step 33, 1
	step_end
scr_seq_D44R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO, _053D
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _052E
	goto_if_set FLAG_GOT_TM59_FROM_CLAIR, _04A6
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _049B
	npc_msg 20
	goto _049E

_049B:
	npc_msg 22
_049E:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A6:
	npc_msg 26
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _04C3
	npc_msg 28
	goto _0548

_04C3:
	buffer_players_name 0
	npc_msg 27
	play_fanfare SEQ_ME_SHINKAOME
	wait_fanfare
	give_mon SPECIES_DRATINI, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	goto_if_set FLAG_FAILED_DRAGONS_DEN_QUIZ, _04F0
	set_mon_move VAR_SPECIAL_x8005, 0, MOVE_EXTREME_SPEED
_04F0:
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _050E
	goto _052E

_050E:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_052E:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_053D:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0548:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

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
	goto_if_eq _069E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06B2
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05EF
	apply_movement obj_player, _06C8
	apply_movement obj_D44R0103_gsmiddleman1, _0714
	goto _063D

_05EF:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _060A
	apply_movement obj_player, _06E0
	goto _063D

_060A:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _062D
	apply_movement obj_player, _0700
	apply_movement obj_D44R0103_gsmiddleman1, _0714
	goto _063D

_062D:
	apply_movement obj_player, _06EC
	apply_movement obj_D44R0103_gsmiddleman1, _0714
_063D:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0664
	apply_movement obj_partner_poke, _0720
	wait_movement
_0664:
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

_069E:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06B2:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_06C8:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_06E0:

	step 12, 3
	step 33, 1
	step_end

_06EC:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_0700:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_0714:

	step 63, 1
	step 32, 1
	step_end

_0720:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4


.close
