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
	apply_movement obj_player, _05EC
	apply_movement obj_T20R0201_gsmama, _05F6
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _05FC
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	setflag FLAG_GOT_BAG
	setflag FLAG_GOT_TRAINER_CARD
	setflag FLAG_GOT_SAVE_BUTTON
	setflag FLAG_GOT_OPTIONS_BUTTON
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 2
	setvar 24880, 2
	setflag 16360
	setflag 16359
	setflag 16351
	setflag 16343
	setflag 16342
	setflag 16341
	setflag 16326
	setflag 16325
	setflag 16324
	setflag 16322
	setflag 16319
	setflag 16318
	setflag 16316
	setflag 16314
	setflag 16311
	setflag 16307
	setflag 16306
	setflag 16288
	setflag 16283
	setflag 16267
	setflag 16226
	setflag 16221
	npc_msg 3
	give_running_shoes
	nat_dex_flag_action 1, VAR_SPECIAL_RESULT
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 4
	giveitem_no_check ITEM_BIKE, 1
	giveitem_no_check ITEM_GB_SOUNDS, 1
	npc_msg 5
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _060A
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 1
	releaseall
	end

scr_seq_T20R0201_006:
	scrcmd_609
	lockall
	apply_movement obj_player, _05EC
	apply_movement obj_T20R0201_gsmama, _05F6
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _05FC
	wait_movement
	buffer_players_name 0
	npc_msg 33
	closemsg
	clearflag 16283
	apply_movement obj_T20R0201_gsmama, _060A
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 4
	releaseall
	end

scr_seq_T20R0201_001:
	goto_if_set FLAG_GAME_CLEAR, _0202
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ge _021D
	goto_if_set FLAG_GOT_STARTER, _024C
	simple_npc_msg 6
	end

scr_seq_T20R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 16321, _0299
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A4
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

_0202:
	hasitem ITEM_SS_TICKET, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02CA
	goto _021D

_021D:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL, _02DD
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0345
	npc_msg 15
	goto _0377

_024C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_POKEGEAR, _03A3
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
	goto_if_ne _03AE
	npc_msg 11
	goto _03BC

_0299:
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A4:
	play_se SEQ_SE_GS_FW463
	npc_msg 39
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03C7
	play_se SEQ_SE_GS_HERO_SHUKUSHOU
	releaseall
	end

_02CA:
	simple_npc_msg 34
	end

_02DD:
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
	case 0, _0443
	case 1, _0499
	case 2, _04ED
	goto _0517

_0345:
	buffer_players_name 0
	npc_msg 16
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0526
	npc_msg 17
	setflag FLAG_SYS_MOMS_SAVINGS
	goto _0535

_0377:
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0526
	npc_msg 17
	setflag FLAG_SYS_MOMS_SAVINGS
	goto _0535

_03A3:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03AE:
	npc_msg 12
	npc_msg 13
	wait_button_or_dpad
	closemsg
	releaseall
	end

_03BC:
	npc_msg 13
	wait_button_or_dpad
	closemsg
	releaseall
	end

_03C7:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_se SEQ_SE_GS_ROUSOKU_KIERU
	wait_se SEQ_SE_GS_ROUSOKU_KIERU
	play_se SEQ_SE_GS_ROUSOKU_KIERU
	wait_se SEQ_SE_GS_ROUSOKU_KIERU
	play_se SEQ_SE_GS_ROUSOKU_KIERU
	wait_se SEQ_SE_GS_ROUSOKU_KIERU
	buffer_players_name 0
	npc_msg 40
	play_cry SPECIES_ROTOM, 6
	npc_msg 43
	wait_cry
	closemsg
	wild_battle SPECIES_ROTOM, 20, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _053D
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0543
	compare VAR_TEMP_x4002, 4
	call_if_eq _054E
	compare VAR_TEMP_x4002, 5
	goto_if_eq _0543
	releaseall
	end

_0443:
	bank_or_wallet_is_full 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _055D
	check_bank_balance VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _056C
	bank_transaction 1, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _057B
	case 1, _0595
	releaseall
	end

_0499:
	bank_or_wallet_is_full 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05A0
	hasenoughmoneyvar VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05AF
	bank_transaction 0, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _05BE
	case 1, _0595
	releaseall
	end

_04ED:
	npc_msg 25
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	scrcmd_796
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05D5
	buffer_players_name 0
	npc_msg 17
	setflag FLAG_SYS_MOMS_SAVINGS
	goto _05E4

_0517:
	scrcmd_796
	touchscreen_menu_show
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0526:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0535:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_053D:
	white_out
	releaseall
	end

_0543:
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_054E:
	npc_msg 42
	setflag 16321
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_055D:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_056C:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_057B:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	buffer_players_name 0
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0595:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05A0:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05AF:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05BE:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05D5:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05E4:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_05EC:

	step 62, 1
	step 33, 1
	step_end
	.align 4
_05F6:

	step 32, 1
	step_end
	.align 4
_05FC:

	step 12, 2
	step 14, 3
	step 12, 1
	step_end
	.align 4
_060A:

	step 33, 1
	step 13, 3
	step 15, 3
	step 32, 1
	step_end
	.align 4


.close
