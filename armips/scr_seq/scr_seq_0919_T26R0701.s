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

.include "armips/scr_seq/event_T26R0701.inc"


// text archive to grab from: 611.txt

.create "build/a012/2_919", 0


scrdef scr_seq_T26R0701_000
scrdef scr_seq_T26R0701_001
scrdef scr_seq_T26R0701_002
scrdef scr_seq_T26R0701_003
scrdef scr_seq_T26R0701_004
scrdef scr_seq_T26R0701_005
scrdef scr_seq_T26R0701_006
scrdef scr_seq_T26R0701_007
scrdef_end

scr_seq_T26R0701_004:
	goto_if_unset FLAG_UNK_189, _017F
	clearflag FLAG_UNK_189
	end

scr_seq_T26R0701_006:
	simple_npc_msg 0
	end

scr_seq_T26R0701_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T26R0701_001:
	simple_npc_msg 2
	end

scr_seq_T26R0701_002:
	simple_npc_msg 3
	end

scr_seq_T26R0701_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _019A
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01AE
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01C2
	apply_movement obj_player, _04F4
	apply_movement obj_T26R0701_gsmiddleman1, _050A
	goto _01DD

scr_seq_T26R0701_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _023E
	compare VAR_TEMP_x4004, 1
	goto_if_ge _029F
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02A8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _02EB
	end

scr_seq_T26R0701_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_GOOD_ROD, _049B
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04A6
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04DF
	end

_017F:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _02FC
	setflag FLAG_HIDE_CAMERON
	goto _0339

_019A:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AE:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01C2:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0372
	apply_movement obj_player, _0514
	goto _01DD

_01DD:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03E3
	apply_movement obj_partner_poke, _051E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 25
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

_023E:
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _041D
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0428
	npc_msg 10
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 89
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_029F:
	npc_msg 8
	goto _0433

_02A8:
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_JASMINE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_2CB
	hide_person obj_T26R0701_gsleader6
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_02EB:
	setvar VAR_TEMP_x4004, 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02FC:
	setflag FLAG_HIDE_CAMERON
	goto_if_unset FLAG_GAME_CLEAR, _0457
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _045D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _048B
	clearflag FLAG_UNK_2CB
	goto _0491

_0339:
	goto_if_unset FLAG_GAME_CLEAR, _0457
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _045D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _048B
	clearflag FLAG_UNK_2CB
	goto _0491

_0372:
	apply_movement obj_player, _052C
	apply_movement obj_T26R0701_gsmiddleman1, _050A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03E3
	apply_movement obj_partner_poke, _051E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 25
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

_03E3:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 25
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

_041D:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0428:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0433:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02A8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _02EB
	end

_0457:
	setflag FLAG_UNK_2CB
	end

_045D:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0457
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0493
	clearflag FLAG_UNK_2CB
	goto _0499

_048B:
	goto _0457

_0491:
	end

_0493:
	setflag FLAG_UNK_2CB
	end

_0499:
	end

_049B:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A6:
	goto_if_no_item_space ITEM_GOOD_ROD, 1, _04EA
	npc_msg 15
	wait_button_or_walk_away
	callstd std_give_item_verbose
	setflag FLAG_GOT_GOOD_ROD
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04DF:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04EA:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_04F4:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_050A:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0514:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_051E:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_052C:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
