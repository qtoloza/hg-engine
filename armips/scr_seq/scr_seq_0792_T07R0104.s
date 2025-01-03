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
	goto_if_unset FLAG_UNK_189, _002F
	clearflag FLAG_UNK_189
	end

_002F:
	check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0082
	check_badge BADGE_SOUL, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _005B
	goto _00C2

_005B:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _007A
	clearflag FLAG_UNK_260
	clearflag FLAG_UNK_2E2
	goto _0080

_007A:
	goto _00C2

_0080:
	end

_0082:
	get_phone_book_rematch PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00C2
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_ne _00BA
	clearflag FLAG_UNK_260
	setflag FLAG_UNK_2E2
	set_object_facing obj_T07R0104_gsleader1, DIR_SOUTH
	goto _00C0

_00BA:
	goto _00C2

_00C0:
	end

_00C2:
	setflag FLAG_UNK_260
	setflag FLAG_UNK_2E2
	end

_00CC:
	play_se SEQ_SE_DP_SELECT
	lockall
	apply_movement obj_T07R0104_gsleader1, _026C
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_T07R0104_gsleader13, _0274
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_T07R0104_gsleader1, _026C
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_T07R0104_gsleader13, _0274
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_T07R0104_gsleader1, _027C
	wait_movement
	npc_msg 4
_011B:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _013F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0189
	end

_013F:
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

_0189:
	setvar VAR_TEMP_x4004, 1
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0104_005:
	check_registered_phone_number PHONE_CONTACT_FALKNER, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01CD
	compare VAR_TEMP_x4004, 1
	goto_if_ne _00CC
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	goto _011B

_01CD:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0236
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0241
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

_0236:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0241:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T07R0104_006:
	compare VAR_TEMP_x4004, 1
	goto_if_ne _00CC
	simple_npc_msg 15
	end


_026C:

	step 34, 1
	step_end

_0274:

	step 35, 1
	step_end

_027C:

	step 33, 1
	step_end
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
	.align 4


.close
