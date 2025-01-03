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
scrdef_end

scr_seq_T26R0701_004:
	goto_if_unset FLAG_UNK_189, _002F
	clearflag FLAG_UNK_189
	end

_002F:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _004A
	setflag FLAG_HIDE_CAMERON
	goto _004E

_004A:
	setflag FLAG_HIDE_CAMERON
_004E:
	goto_if_unset FLAG_GAME_CLEAR, _00C3
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _008F
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0087
	clearflag FLAG_UNK_2CB
	goto _008D

_0087:
	goto _00C3

_008D:
	end

_008F:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00C3
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _00BD
	clearflag FLAG_UNK_2CB
	goto _00C1

_00BD:
	setflag FLAG_UNK_2CB
_00C1:
	end

_00C3:
	setflag FLAG_UNK_2CB
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
	goto_if_eq _025E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0272
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _018C
	apply_movement obj_player, _0288
	apply_movement obj_T26R0701_gsmiddleman1, _02C0
	goto _01B7

_018C:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01A7
	apply_movement obj_player, _02A0
	goto _01B7

_01A7:
	apply_movement obj_player, _02AC
	apply_movement obj_T26R0701_gsmiddleman1, _02C0
_01B7:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01DE
	apply_movement obj_partner_poke, _02CC
	wait_movement
_01DE:
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

_025E:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0272:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_0288:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_02A0:

	step 12, 3
	step 33, 1
	step_end

_02AC:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_02C0:

	step 63, 1
	step 32, 1
	step_end

_02CC:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
scr_seq_T26R0701_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _038A
	compare VAR_TEMP_x4004, 1
	goto_if_ge _037F
	npc_msg 4
_0307:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _032B
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _036E
	end

_032B:
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

_036E:
	setvar VAR_TEMP_x4004, 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_037F:
	npc_msg 8
	goto _0307

_038A:
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03EB
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03F6
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

_03EB:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03F6:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
