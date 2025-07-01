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

.include "armips/scr_seq/event_T20R0201.inc"


// text archive to grab from: 545.txt

.create "build/a012/2_845", 0


scrdef scr_seq_T20R0201_000
scrdef scr_seq_T20R0201_001
scrdef scr_seq_T20R0201_002
scrdef scr_seq_T20R0201_003
scrdef scr_seq_T20R0201_004
scrdef scr_seq_T20R0201_005
scrdef scr_seq_T20R0201_006
scrdef_end

scr_seq_T20R0201_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _00A4
	apply_movement obj_T20R0201_gsmama, _00B0
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _00B8
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	setflag FLAG_GOT_BAG
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 2
	setflag FLAG_GOT_TRAINER_CARD
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 3
	setflag FLAG_GOT_SAVE_BUTTON
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 4
	setflag FLAG_GOT_OPTIONS_BUTTON
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 5
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _00C8
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 1
	releaseall
	end

	.align 4
_00A4:

	step 62, 1
	step 33, 1
	step_end
	.align 4
_00B0:

	step 32, 1
	step_end
	.align 4
_00B8:

	step 12, 2
	step 14, 3
	step 12, 1
	step_end
	.align 4
_00C8:

	step 33, 1
	step 13, 3
	step 15, 3
	step 32, 1
	step_end
scr_seq_T20R0201_006:
	scrcmd_609
	lockall
	apply_movement obj_player, _00A4
	apply_movement obj_T20R0201_gsmama, _00B0
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _00B8
	wait_movement
	buffer_players_name 0
	npc_msg 33
	closemsg
	apply_movement obj_T20R0201_gsmama, _00C8
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 4
	releaseall
	end

scr_seq_T20R0201_001:
	goto_if_set FLAG_GAME_CLEAR, _015C
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ge _0205
	goto_if_set FLAG_GOT_STARTER, _0179
	simple_npc_msg 6
	end

_015C:
	hasitem ITEM_SS_TICKET, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01F2
	goto _0205

_0179:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_POKEGEAR, _01D4
	buffer_players_name 0
	npc_msg 7
	buffer_players_name 0
	npc_msg 8
	setflag FLAG_GOT_POKEGEAR
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 9
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01C6
	npc_msg 11
	goto _01C9

_01C6:
	npc_msg 12
_01C9:
	npc_msg 13
	wait_button_or_dpad
	closemsg
	releaseall
	end

_01D4:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F2:
	simple_npc_msg 34
	end

_0205:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL, _0275
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0234
	npc_msg 15
	goto _023A

_0234:
	buffer_players_name 0
	npc_msg 16
_023A:
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0266
	npc_msg 17
	setflag FLAG_SYS_MOMS_SAVINGS
	goto _026D

_0266:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
_026D:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0275:
	npc_msg 20
	scrcmd_795 1, 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 29, 255, 0
	menu_item_add 30, 255, 1
	menu_item_add 31, 255, 2
	menu_item_add 32, 255, 3
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _02DF
	case 1, _0335
	case 2, _0398
	goto _03D1

_02DF:
	bank_or_wallet_is_full 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _043A
	check_bank_balance VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041C
	bank_transaction 1, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _03E0
	case 1, _0411
	releaseall
	end

_0335:
	bank_or_wallet_is_full 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _042B
	hasenoughmoneyvar VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0389
	bank_transaction 0, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _03FA
	case 1, _0411
	releaseall
	end

_0389:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0398:
	npc_msg 25
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	scrcmd_796
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03C2
	buffer_players_name 0
	npc_msg 17
	setflag FLAG_SYS_MOMS_SAVINGS
	goto _03C9

_03C2:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
_03C9:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D1:
	scrcmd_796
	touchscreen_menu_show
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E0:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	buffer_players_name 0
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03FA:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0411:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_041C:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_042B:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_043A:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0201_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0201_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
