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

.include "armips/scr_seq/event_T25SP0101.inc"


// text archive to grab from: 603.txt

.create "build/a012/2_910", 0


scrdef scr_seq_T25SP0101_000
scrdef scr_seq_T25SP0101_001
scrdef scr_seq_T25SP0101_002
scrdef scr_seq_T25SP0101_003
scrdef scr_seq_T25SP0101_004
scrdef scr_seq_T25SP0101_005
scrdef scr_seq_T25SP0101_006
scrdef scr_seq_T25SP0101_007
scrdef scr_seq_T25SP0101_008
scrdef scr_seq_T25SP0101_009
scrdef scr_seq_T25SP0101_010
scrdef scr_seq_T25SP0101_011
scrdef_end

scr_seq_T25SP0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0254
	apply_movement obj_T25SP0101_suit, _11DC
	wait_movement
	npc_msg 40
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 0, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_TEMP_x4001, 2
	releaseall
	end

scr_seq_T25SP0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_ne _026A
	call _0292
	goto _02B3

scr_seq_T25SP0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D3
	compare VAR_TEMP_x4001, 0
	goto_if_ne _02E9
	npc_msg 34
	setvar VAR_TEMP_x4001, 1
	goto _02FF

scr_seq_T25SP0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 0
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 11, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0307
	case 1, _03A3
	goto _0415

scr_seq_T25SP0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 9
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0422
	goto _0428

scr_seq_T25SP0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	gender_msgbox 42, 43
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0485
	npc_msg 44
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BELLOSSOM, 0
	npc_msg 52
	wait_cry
	buffer_players_name 0
	apply_movement obj_T25SP0101_follower_mon_bellossom, _11E2
	wait_movement
	faceplayer
	play_cry SPECIES_BELLOSSOM, 0
	npc_msg 58
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_WYNAUT, 0
	npc_msg 53
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_WOBBUFFET, 0
	npc_msg 54
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16372, _04E6
	npc_msg 55
	play_cry SPECIES_SPINDA, 0
	npc_msg 56
	setflag 16372
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LUDICOLO, 0
	npc_msg 57
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25SP0101_011:
	end

_0254:
	npc_msg 38
	apply_movement obj_T25SP0101_suit, _11DC
	wait_movement
	npc_msg 39
	goto _04F9

_026A:
	apply_movement obj_T25SP0101_suit, _11DC
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0501
	npc_msg 41
	goto _04F9

_0292:
	get_player_coords VAR_TEMP_x4002, VAR_TEMP_x4003
	compare VAR_TEMP_x4002, 6
	goto_if_ne _050C
	apply_movement obj_T25SP0101_suit, _1244
	goto _0516

_02B3:
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0501
	npc_msg 41
	goto _04F9

_02D3:
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0518
	npc_msg 28
	goto _0552

_02E9:
	compare VAR_TEMP_x4001, 1
	goto_if_ne _0589
	npc_msg 35
	goto _02FF

_02FF:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0307:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 16, 255, 2
	menu_item_add 17, 255, 3
	menu_item_add 18, 255, 4
	menu_item_add 19, 255, 5
	menu_item_add 11, 255, 6
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0594
	case 1, _061D
	case 2, _06A6
	case 3, _072F
	case 4, _07B8
	case 5, _0841
	goto _08CA

_03A3:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 20, 255, 0
	menu_item_add 21, 255, 1
	menu_item_add 22, 255, 2
	menu_item_add 23, 255, 3
	menu_item_add 11, 255, 4
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0912
	case 1, _099B
	case 2, _0A24
	case 3, _0AAD
	goto _08CA

_0415:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	goto _0B36

_0422:
	goto _0B42

_0428:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 25, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0B9F
	case 1, _0BAB
	case 2, _0BB7
	goto _0415

_0485:
	script_overlay_cmd 3, 0
	npc_msg 49
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	show_money_box 20, 7
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 45, 255, 0
	menu_item_add 46, 255, 1
	menu_item_add 11, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0BC3
	case 1, _0C0D
	npc_msg 50
	goto _0C57

_04E6:
	play_cry SPECIES_SPINDA, 0
	npc_msg 56
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04F9:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0501:
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_050C:
	apply_movement obj_T25SP0101_suit, _124A
	return

_0516:
	return

_0518:
	npc_msg 37
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C69
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _04F9

_0552:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C69
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _04F9

_0589:
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0594:
	goto_if_no_item_space ITEM_TM090, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C90
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_061D:
	goto_if_no_item_space ITEM_TM075, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0CD9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_06A6:
	goto_if_no_item_space ITEM_TM044, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D19
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_072F:
	goto_if_no_item_space ITEM_TM035, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D59
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_07B8:
	goto_if_no_item_space ITEM_TM013, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D99
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0841:
	goto_if_no_item_space ITEM_TM024, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0DD9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0307
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_08CA:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 11, 255, 2
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0307
	case 1, _03A3
	goto _0415

_0912:
	goto_if_no_item_space ITEM_SILK_SCARF, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E19
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03A3
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_099B:
	goto_if_no_item_space ITEM_WIDE_LENS, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E59
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03A3
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0A24:
	goto_if_no_item_space ITEM_ZOOM_LENS, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E99
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03A3
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0AAD:
	goto_if_no_item_space ITEM_METRONOME, 1, _0C78
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0ED9
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03A3
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0B36:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

_0B42:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 27, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0B9F
	case 1, _0F19
	case 2, _0BB7
	goto _0415

_0B9F:
	setorcopyvar VAR_TEMP_x4002, 235
	goto _0F25

_0BAB:
	setorcopyvar VAR_TEMP_x4002, 114
	goto _0F25

_0BB7:
	setorcopyvar VAR_TEMP_x4002, 137
	goto _0F25

_0BC3:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F43
	checkgivecoins VAR_SPECIAL_RESULT, 100
	snop
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F58
	submoneyimmediate 1000
	give_coins 100
	scrcmd_118 0
	update_money_box
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	npc_msg 51
	goto _0F61

_0C0D:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 10000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F43
	checkgivecoins VAR_SPECIAL_RESULT, 1000
	snop
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0F58
	submoneyimmediate 10000
	give_coins 1000
	scrcmd_118 0
	update_money_box
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	npc_msg 51
	goto _0F61

_0C57:
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	scrcmd_117
	hide_money_box
	script_overlay_cmd 3, 1
	releaseall
	end

_0C69:
	setvar VAR_TEMP_x4001, 1
	npc_msg 33
	goto _04F9

_0C78:
	npc_msg 5
	closemsg
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _0FAC
	goto _0307

_0C90:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0CD0:
	npc_msg 2
	goto _0FBF

_0CD9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0D19:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0D59:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0D99:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0DD9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 4000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0307

_0E19:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0E59:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0E99:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0ED9:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _0CD0
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _03A3

_0F19:
	setorcopyvar VAR_TEMP_x4002, 114
	goto _0F25

_0F25:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0FD2
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	goto _0B36

_0F43:
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	scrcmd_117
	hide_money_box
	script_overlay_cmd 3, 1
	releaseall
	end

_0F58:
	npc_msg 48
	goto _0C57

_0F61:
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 45, 255, 0
	menu_item_add 46, 255, 1
	menu_item_add 11, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0BC3
	case 1, _0C0D
	npc_msg 50
	goto _0C57

_0FAC:
	compare VAR_SPECIAL_x8004, 402
	goto_if_ne _1007
	goto _0307

_0FBF:
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _0FAC
	goto _0307

_0FD2:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 7
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _101A
	closemsg
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _103E
	goto _0428

_1007:
	compare VAR_SPECIAL_x8004, 371
	goto_if_ne _1044
	goto _0307

_101A:
	compare VAR_TEMP_x4002, 235
	goto_if_ne _1057
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _107B
	goto _1095

_103E:
	goto _0B42

_1044:
	compare VAR_SPECIAL_x8004, 362
	goto_if_ne _10CF
	goto _0307

_1057:
	compare VAR_TEMP_x4002, 114
	goto_if_ne _10E2
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2300
	goto_if_lt _107B
	goto _1095

_107B:
	npc_msg 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1106
	goto _0428

_1095:
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 22, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 235
	goto_if_ne _110C
	take_coins 1000
	goto _1123

_10CF:
	compare VAR_SPECIAL_x8004, 340
	goto_if_ne _113D
	goto _0307

_10E2:
	compare VAR_TEMP_x4002, 114
	goto_if_ne _1150
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2300
	goto_if_lt _107B
	goto _1095

_1106:
	goto _0B42

_110C:
	compare VAR_TEMP_x4002, 114
	goto_if_ne _119B
	take_coins 2300
	goto _1123

_1123:
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _11B2
	goto _0428

_113D:
	compare VAR_SPECIAL_x8004, 351
	goto_if_ne _11B8
	goto _0307

_1150:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 3500
	goto_if_lt _107B
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 22, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 235
	goto_if_ne _110C
	take_coins 2300
	goto _1123

_119B:
	compare VAR_TEMP_x4002, 459
	goto_if_ne _11BE
	take_coins 2300
	goto _1123

_11B2:
	goto _0B42

_11B8:
	goto _03A3

_11BE:
	take_coins 3500
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _11B2
	goto _0428

	.align 4
_11DC:

	step 1, 1
	step_end
	.align 4
_11E2:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.align 4
_1244:

	step 2, 1
	step_end
	.align 4
_124A:

	step 3, 1
	step_end
	.align 4


.close
