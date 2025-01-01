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

.include "armips/scr_seq/event_T07R0104.inc"


// text archive to grab from: 497.txt

.create "build/a012/2_792", 0


scrdef scr_seq_T07R0104_000
scrdef scr_seq_T07R0104_001
scrdef scr_seq_T07R0104_002
scrdef scr_seq_T07R0104_003
scrdef scr_seq_T07R0104_004
scrdef scr_seq_T07R0104_005
scrdef scr_seq_T07R0104_006
scrdef_end

scr_seq_T07R0104_004:
	goto_if_unset FLAG_UNK_189, _00D3
	clearflag FLAG_UNK_189
	end

scr_seq_T07R0104_005:
	check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00FF
	compare VAR_TEMP_x4004, 1
	goto_if_ne _0168
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	goto _01DB

scr_seq_T07R0104_006:
	compare VAR_TEMP_x4004, 1
	goto_if_ne _0168
	simple_npc_msg 15
	end

scr_seq_T07R0104_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 21
	callstd std_special_mart
	releaseall
	end

scr_seq_T07R0104_001:
	simple_npc_msg 16
	end

scr_seq_T07R0104_002:
	simple_npc_msg 17
	end

scr_seq_T07R0104_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00D3:
	check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01FF
	check_badge BADGE_SOUL, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0237
	goto _0256

_00FF:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0260
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _026B
	npc_msg 11
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 2
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0168:
	play_se SEQ_SE_DP_SELECT
	lockall
	apply_movement obj_T07R0104_gsleader1, _02E1
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_T07R0104_gsleader13, _02E7
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_T07R0104_gsleader1, _02E1
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_T07R0104_gsleader13, _02E7
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_T07R0104_gsleader1, _02ED
	wait_movement
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0276
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _02C0
	end

_01DB:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0276
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _02C0
	end

_01FF:
	get_phone_book_rematch PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0256
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_ne _02D1
	clearflag FLAG_UNK_260
	setflag FLAG_UNK_2E2
	set_object_facing obj_T07R0104_gsleader1, DIR_SOUTH
	goto _02D7

_0237:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _02D9
	clearflag FLAG_UNK_260
	clearflag FLAG_UNK_2E2
	goto _02DF

_0256:
	setflag FLAG_UNK_260
	setflag FLAG_UNK_2E2
	end

_0260:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_026B:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0276:
	npc_msg 5
	register_gear_number PHONE_CONTACT_FALKNER
	buffer_players_name 0
	npc_msg 6
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_260
	hide_person obj_T07R0104_gsleader1
	hide_person obj_T07R0104_gsleader13
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_02C0:
	setvar VAR_TEMP_x4004, 1
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D1:
	goto _0256

_02D7:
	end

_02D9:
	goto _0256

_02DF:
	end

	.align 4
_02E1:

	step 256, 65024
	step 8960, 256
	.align 4
_02E7:

	step 256, 65024
	step 8448, 256
	.align 4
_02ED:

	step 256, 65024
	step 0, 0
	.align 4


.close
