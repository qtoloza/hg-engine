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

.include "armips/scr_seq/event_D32R0601.inc"


// text archive to grab from: 110.txt

.create "build/a012/2_087", 0


scrdef scr_seq_D32R0601_000
scrdef scr_seq_D32R0601_001
scrdef scr_seq_D32R0601_002
scrdef scr_seq_D32R0601_003
scrdef scr_seq_D32R0601_004
scrdef scr_seq_D32R0601_005
scrdef scr_seq_D32R0601_006
scrdef scr_seq_D32R0601_007
scrdef scr_seq_D32R0601_008
scrdef scr_seq_D32R0601_009
scrdef scr_seq_D32R0601_010
scrdef scr_seq_D32R0601_011
scrdef scr_seq_D32R0601_012
scrdef scr_seq_D32R0601_013
scrdef scr_seq_D32R0601_014
scrdef scr_seq_D32R0601_015
scrdef scr_seq_D32R0601_016
scrdef_end

scr_seq_D32R0601_014:
	end

scr_seq_D32R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	goto _0080

scr_seq_D32R0601_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 1
	goto _0080

_0080:
	scrcmd_682 0
	compare VAR_TEMP_x4004, 0
	call_if_eq _06A0
	compare VAR_TEMP_x4004, 1
	call_if_eq _06A5
	goto _00A6

_00A6:
	compare VAR_TEMP_x4004, 0
	call_if_eq _06AA
	compare VAR_TEMP_x4004, 1
	call_if_eq _06C9
	menu_item_add 41, 255, 2
	menu_item_add 42, 255, 3
	menu_exec
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _014B
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0178
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0110
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _01A5
	touchscreen_menu_show
	goto _0132

_0110:
	compare VAR_TEMP_x4004, 0
	call_if_eq _06E0
	compare VAR_TEMP_x4004, 1
	call_if_eq _06E5
	goto _00A6

_0132:
	goto _013A

_013A:
	setvar VAR_UNK_414A, 0
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_014B:
	setvar VAR_UNK_4149, 0
	scrcmd_643 0, 3, VAR_SPECIAL_RESULT
	buffer_int 0, 3
	buffer_int 1, 3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D2
	goto _01FC

_0178:
	setvar VAR_UNK_4149, 1
	scrcmd_643 0, 3, VAR_SPECIAL_RESULT
	buffer_int 0, 3
	buffer_int 1, 3
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D2
	goto _01FC

_01A5:
	setvar VAR_UNK_4149, 2
	scrcmd_643 0, 2, VAR_SPECIAL_RESULT
	buffer_int 0, 2
	buffer_int 1, 2
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01E7
	goto _01FC

_01D2:
	npc_msg 8
	scrcmd_444 9, 3, 0, 0
	touchscreen_menu_show
	goto _0132

_01E7:
	npc_msg 8
	scrcmd_444 9, 2, 0, 0
	touchscreen_menu_show
	goto _0132

_01FC:
	npc_msg 7
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_643 4, VAR_UNK_4149, VAR_SPECIAL_RESULT
	scrcmd_645 VAR_TEMP_x4002, VAR_TEMP_x4005, VAR_TEMP_x4006
	compare VAR_TEMP_x4002, 255
	goto_if_ne _022E
	scrcmd_815 0
_022E:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 255
	goto_if_eq _0132
	day_care_sanitize_mon VAR_TEMP_x4002, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0607
	day_care_sanitize_mon VAR_TEMP_x4005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0607
	compare VAR_UNK_4149, 2
	goto_if_eq _028F
	day_care_sanitize_mon VAR_TEMP_x4006, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0607
_028F:
	get_partymon_species VAR_TEMP_x4002, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _02AA
	touchscreen_menu_show
	goto _0132

_02AA:
	goto _02B2

_02B2:
	goto _02BA

_02BA:
	compare VAR_UNK_4149, 0
	call_if_eq _0476
	compare VAR_UNK_4149, 1
	call_if_eq _0476
	setvar VAR_TEMP_x4000, 0
	heal_party
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0132
	touchscreen_menu_show
	compare VAR_UNK_4149, 2
	goto_if_eq _030A
	goto _04D7

_030A:
	npc_msg 43
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _035B
	case 1, _03B3
	touchscreen_menu_show
	goto _0132

_035B:
	npc_msg 44
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _030A
	touchscreen_menu_show
	closemsg
	scrcmd_226 32, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03A1
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _03A9
	goto _040B

_03A1:
	goto _030A

_03A9:
	scrcmd_283
	goto _030A

_03B3:
	npc_msg 44
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _030A
	touchscreen_menu_show
	closemsg
	scrcmd_227 32, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03F9
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0401
	goto _040B

_03F9:
	goto _030A

_0401:
	scrcmd_283
	goto _030A

_040B:
	scrcmd_258
	scrcmd_257 154
	get_partymon_species VAR_TEMP_x4002, VAR_SPECIAL_x8000
	get_partymon_species VAR_TEMP_x4005, VAR_SPECIAL_x8001
	scrcmd_644 VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 1, _047E
	case 2, _0494
	case 3, _04AA
	scrcmd_258
	scrcmd_257 156
	npc_msg 45
	compare VAR_UNK_4149, 2
	call_if_eq _0476
	call _0711
	goto _04D7

_0476:
	setvar VAR_UNK_414A, 255
	return

_047E:
	call _04CD
	buffer_mon_species_name 0, VAR_TEMP_x4002
	npc_msg 29
	goto _04C5

_0494:
	call _04CD
	buffer_mon_species_name 0, VAR_TEMP_x4005
	npc_msg 29
	goto _04C5

_04AA:
	call _04CD
	buffer_mon_species_name 0, VAR_TEMP_x4002
	buffer_mon_species_name 1, VAR_TEMP_x4005
	npc_msg 30
	goto _04C5

_04C5:
	goto _0132

_04CD:
	scrcmd_258
	scrcmd_257 157
	scrcmd_283
	return

_04D7:
	compare VAR_UNK_4149, 0
	call_if_eq _056F
	compare VAR_UNK_4149, 1
	call_if_eq _058A
	compare VAR_UNK_4149, 2
	call_if_eq _05A5
	play_se SEQ_SE_DP_KAIDAN2
	goto _050A

_050A:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_815 0
	compare VAR_UNK_4149, 0
	call_if_eq _05CB
	compare VAR_UNK_4149, 1
	call_if_eq _05DF
	compare VAR_UNK_4149, 2
	call_if_eq _05F3
	scrcmd_420 59
	scrcmd_436
	scrcmd_627 15
	compare VAR_UNK_4149, 2
	call_if_eq _056B
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_682 1
	end

_056B:
	scrcmd_283
	return

_056F:
	npc_msg 32
	wait_button
	closemsg
	apply_movement obj_player, _0618
	apply_movement VAR_SPECIAL_LAST_TALKED, _0638
	wait_movement
	return

_058A:
	npc_msg 32
	wait_button
	closemsg
	apply_movement obj_player, _0618
	apply_movement VAR_SPECIAL_LAST_TALKED, _0638
	wait_movement
	return

_05A5:
	npc_msg_var 32
	wait 10, VAR_SPECIAL_RESULT
	scrcmd_258
	scrcmd_257 155
	closemsg
	apply_movement obj_player, _062C
	apply_movement VAR_SPECIAL_LAST_TALKED, _064C
	wait_movement
	return

_05CB:
	apply_movement obj_player, _0658
	apply_movement VAR_SPECIAL_LAST_TALKED, _0680
	wait_movement
	return

_05DF:
	apply_movement obj_player, _0658
	apply_movement VAR_SPECIAL_LAST_TALKED, _0680
	wait_movement
	return

_05F3:
	apply_movement obj_player, _0670
	apply_movement VAR_SPECIAL_LAST_TALKED, _0694
	wait_movement
	return

_0607:
	touchscreen_menu_show
	setvar VAR_UNK_414A, 0
	callstd std_bag_is_full_griseous_orb
	end


_0618:

	step 12, 2
	step 15, 1
	step 12, 2
	step 69, 1
	step_end

_062C:

	step 12, 4
	step 69, 1
	step_end

_0638:

	step 12, 1
	step 15, 1
	step 12, 2
	step 69, 1
	step_end

_064C:

	step 12, 3
	step 69, 1
	step_end

_0658:

	step 21, 2
	step 22, 1
	step 21, 2
	step 0, 1
	step 70, 1
	step_end

_0670:

	step 21, 4
	step 0, 1
	step 70, 1
	step_end

_0680:

	step 21, 1
	step 22, 1
	step 21, 2
	step 70, 1
	step_end

_0694:

	step 21, 3
	step 70, 1
	step_end
_06A0:
	npc_msg 0
	return

_06A5:
	npc_msg 3
	return

_06AA:
	npc_msg 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 38, 255, 0
	menu_item_add 39, 255, 1
	return

_06C9:
	npc_msg 4
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 40, 255, 4
	return

_06E0:
	npc_msg 2
	return

_06E5:
	npc_msg 5
	return

scr_seq_D32R0601_001:
	scrcmd_682 0
	setvar VAR_TEMP_x4003, 1
	setvar VAR_UNK_414A, 0
	npc_msg 33
	call _0476
	call _0711
	goto _04D7

_0711:
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	return

scr_seq_D32R0601_002:
	npc_msg 34
	scrcmd_646 VAR_UNK_4149
	compare VAR_BATTLE_ARCADE_PRINT_PROGRESS, 1
	call_if_eq _074C
	compare VAR_BATTLE_ARCADE_PRINT_PROGRESS, 3
	call_if_eq _0754
	goto _0132

_074C:
	setvar VAR_BATTLE_ARCADE_PRINT_PROGRESS, 0
	return

_0754:
	setvar VAR_BATTLE_ARCADE_PRINT_PROGRESS, 2
	return

scr_seq_D32R0601_003:
	compare VAR_UNK_4149, 0
	call_if_eq _0798
	compare VAR_UNK_4149, 1
	call_if_eq _0798
	compare VAR_BATTLE_ARCADE_PRINT_PROGRESS, 1
	call_if_eq _079E
	compare VAR_BATTLE_ARCADE_PRINT_PROGRESS, 3
	call_if_eq _07B5
	goto _0132

_0798:
	add_special_game_stat_2 30
	return

_079E:
	npc_msg 35
	buffer_players_name 0
	npc_msg 37
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_ARCADE_PRINT_PROGRESS, 2
	return

_07B5:
	npc_msg 35
	buffer_players_name 0
	npc_msg 36
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setvar VAR_BATTLE_ARCADE_PRINT_PROGRESS, 4
	callstd std_frontier_gold_prints_check
	return

scr_seq_D32R0601_004:
	goto _0132

scr_seq_D32R0601_006:
	simple_npc_msg 46
	end

scr_seq_D32R0601_007:
	simple_npc_msg 47
	end

scr_seq_D32R0601_008:
	simple_npc_msg 48
	end

scr_seq_D32R0601_009:
	simple_npc_msg 49
	end

scr_seq_D32R0601_010:
	simple_npc_msg 50
	end

scr_seq_D32R0601_011:
	simple_npc_msg 51
	end

scr_seq_D32R0601_012:
	simple_npc_msg 52
	end

scr_seq_D32R0601_013:
	simple_npc_msg 53
	end

scr_seq_D32R0601_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 54
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D32R0601_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 55
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
