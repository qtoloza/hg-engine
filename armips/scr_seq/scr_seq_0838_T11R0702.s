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

.include "armips/scr_seq/event_T11R0702.inc"


// text archive to grab from: 538.txt

.create "build/a012/2_838", 0


scrdef scr_seq_T11R0702_000
scrdef scr_seq_T11R0702_001
scrdef scr_seq_T11R0702_002
scrdef scr_seq_T11R0702_003
scrdef scr_seq_T11R0702_004
scrdef scr_seq_T11R0702_005
scrdef scr_seq_T11R0702_006
scrdef scr_seq_T11R0702_007
scrdef scr_seq_T11R0702_008
scrdef scr_seq_T11R0702_009
scrdef_end

scr_seq_T11R0702_006:
	// === Genesect + NPC Visibility Control ===
	// If Genesect is present (not hidden), hide the NPCs
	goto_if_set FLAG_HIDE_GENESECT, _genesect_hidden
	// Genesect is visible - check tier requirements
	goto_if_unset FLAG_GAME_CLEAR, _hide_genesect_show_npcs
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _hide_genesect_show_npcs
	// Genesect meets tier requirements - hide NPCs
	setflag FLAG_HIDE_ROTOM_ROOM_NPCS
	goto _rotom_logic

_hide_genesect_show_npcs:
	setflag FLAG_HIDE_GENESECT
	clearflag FLAG_HIDE_ROTOM_ROOM_NPCS
	goto _rotom_logic

_genesect_hidden:
	// Genesect already caught/hidden - show NPCs
	clearflag FLAG_HIDE_ROTOM_ROOM_NPCS
	goto _rotom_logic

_rotom_logic:
	// === Rotom Form Visibility Logic ===
	setflag FLAG_HIDE_SILPH_ROTOM_HEAT
	setflag FLAG_HIDE_SILPH_ROTOM_WASH
	setflag FLAG_HIDE_SILPH_ROTOM_FROST
	setflag FLAG_HIDE_SILPH_ROTOM_FAN
	setflag FLAG_HIDE_SILPH_ROTOM_MOW
	get_owned_rotom_formes VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_TEMP_x4002, VAR_TEMP_x4003, VAR_TEMP_x4004
	compare VAR_TEMP_x4000, 0
	call_if_eq _01A2
	compare VAR_TEMP_x4001, 0
	call_if_eq _01A8
	compare VAR_TEMP_x4002, 0
	call_if_eq _01AE
	compare VAR_TEMP_x4003, 0
	call_if_eq _01B4
	compare VAR_TEMP_x4004, 0
	call_if_eq _01BA
	end

scr_seq_T11R0702_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 1
	goto _01C0

scr_seq_T11R0702_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 4
	goto _01C0

scr_seq_T11R0702_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 3
	goto _01C0

scr_seq_T11R0702_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 2
	goto _01C0

scr_seq_T11R0702_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 5
	goto _01C0

scr_seq_T11R0702_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 0
	goto_if_eq _0240
	npc_msg 13
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 19, 255, 1
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _024D
	goto _026C

scr_seq_T11R0702_000:
	simple_npc_msg 35
	end

scr_seq_T11R0702_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 44
	play_cry SPECIES_CLAYDOL, 0
	wait_cry
	wait_button_or_walk_away
	closemsg
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	buffer_players_name 0
	apply_movement obj_player, _094A
	wait_movement
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	warp MAP_T25, 0, 352, 369, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	scrcmd_606
	npc_msg 45
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A2:
	clearflag FLAG_HIDE_SILPH_ROTOM_HEAT
	return

_01A8:
	clearflag FLAG_HIDE_SILPH_ROTOM_WASH
	return

_01AE:
	clearflag FLAG_HIDE_SILPH_ROTOM_FROST
	return

_01B4:
	clearflag FLAG_HIDE_SILPH_ROTOM_FAN
	return

_01BA:
	clearflag FLAG_HIDE_SILPH_ROTOM_MOW
	return

_01C0:
	player_has_species VAR_SPECIAL_RESULT, SPECIES_ROTOM
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0274
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _02BB
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _02C0
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _02C5
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _02CA
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _02CF
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 1
	goto_if_ge _02D4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _031E
	goto _0376

_0240:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	goto _03D0

_024D:
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 2
	goto_if_ge _03D4
	goto _043F

_026C:
	touchscreen_menu_show
	closemsg
	releaseall
	end

_0274:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _04AC
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _04B1
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _04B6
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _04BB
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _04C0
	goto _026C

_02BB:
	npc_msg 21
	return

_02C0:
	npc_msg 24
	return

_02C5:
	npc_msg 27
	return

_02CA:
	npc_msg 30
	return

_02CF:
	npc_msg 33
	return

_02D4:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 15, 255, 0
	menu_item_add 14, 255, 1
	menu_item_add 16, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0376
	case 1, _024D
	goto _031E

_031E:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _04C5
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _04CC
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _04D3
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _04DA
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _04E1
	compare VAR_TEMP_x400A, 1
	call_if_eq _04E8
	nop_var_490 VAR_TEMP_x4006
	goto _026C

_0376:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _04FC
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0504
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _050C
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0514
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _051C
	count_party_mons_of_species VAR_SPECIAL_RESULT, SPECIES_ROTOM
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0524
	goto _0530

_03D0:
	releaseall
	end

_03D4:
	npc_msg 7
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _0588
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _058E
	compare VAR_SPECIAL_RESULT, 479
	goto_if_ne _0599
	get_party_mon_forme VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05A4
	goto _043F

_043F:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 11
	update_rotom_forme VAR_SPECIAL_x8000, 0, 0, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	get_party_mon_forme VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _05AF
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _05B9
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _05C3
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _05CD
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _05D7
	goto _05E1

_04AC:
	npc_msg 20
	return

_04B1:
	npc_msg 23
	return

_04B6:
	npc_msg 26
	return

_04BB:
	npc_msg 29
	return

_04C0:
	npc_msg 32
	return

_04C5:
	npc_msg 22
	wait_button_or_walk_away
	return

_04CC:
	npc_msg 25
	wait_button_or_walk_away
	return

_04D3:
	npc_msg 28
	wait_button_or_walk_away
	return

_04DA:
	npc_msg 31
	wait_button_or_walk_away
	return

_04E1:
	npc_msg 34
	wait_button_or_walk_away
	return

_04E8:
	release obj_partner_poke
	apply_movement obj_partner_poke, _093A
	wait_movement
	lock obj_partner_poke
	return

_04FC:
	setvar VAR_SPECIAL_x8001, 315
	return

_0504:
	setvar VAR_SPECIAL_x8001, 59
	return

_050C:
	setvar VAR_SPECIAL_x8001, 56
	return

_0514:
	setvar VAR_SPECIAL_x8001, 403
	return

_051C:
	setvar VAR_SPECIAL_x8001, 437
	return

_0524:
	get_party_slot_with_species VAR_SPECIAL_x8000, SPECIES_ROTOM
	goto _061E

_0530:
	npc_msg 7
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _031E
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _058E
	compare VAR_SPECIAL_RESULT, 479
	goto_if_ne _0599
	goto _061E

_0588:
	touchscreen_menu_show
	releaseall
	end

_058E:
	npc_msg 8
	wait_button_or_walk_away
	goto _026C

_0599:
	npc_msg 9
	wait_button_or_walk_away
	goto _026C

_05A4:
	npc_msg 17
	wait_button_or_walk_away
	goto _026C

_05AF:
	clearflag FLAG_HIDE_SILPH_ROTOM_HEAT
	show_person obj_T11R0702_rotomf
	return

_05B9:
	clearflag FLAG_HIDE_SILPH_ROTOM_FROST
	show_person obj_T11R0702_rotomi
	return

_05C3:
	clearflag FLAG_HIDE_SILPH_ROTOM_WASH
	show_person obj_T11R0702_rotomw
	return

_05CD:
	clearflag FLAG_HIDE_SILPH_ROTOM_FAN
	show_person obj_T11R0702_rotoms
	return

_05D7:
	clearflag FLAG_HIDE_SILPH_ROTOM_MOW
	show_person obj_T11R0702_rotomg
	return

_05E1:
	scrcmd_815 0
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_T11R0702, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	nop_var_490 VAR_TEMP_x400B
	compare VAR_TEMP_x400A, 1
	call_if_eq _04E8
	goto _03D0

_061E:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_OVERHEAT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A6
	mon_has_move VAR_SPECIAL_RESULT, MOVE_BLIZZARD, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A6
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HYDRO_PUMP, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A6
	mon_has_move VAR_SPECIAL_RESULT, MOVE_AIR_SLASH, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A6
	mon_has_move VAR_SPECIAL_RESULT, MOVE_LEAF_STORM, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A6
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	copyvar VAR_SPECIAL_x8002, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _06B2
	goto _071E

_06A6:
	setvar VAR_SPECIAL_x8002, 0
	goto _071E

_06B2:
	nop_var_490 VAR_TEMP_x4007
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 479
	goto_if_ne _076C
	nop_var_490 VAR_TEMP_x4000
	nop_var_490 VAR_SPECIAL_x8000
	compare VAR_TEMP_x4000, VAR_SPECIAL_x8000
	goto_if_ne _0790
	release obj_partner_poke
	apply_movement obj_partner_poke, _0940
	wait_movement
	lock obj_partner_poke
	setvar VAR_TEMP_x400A, 1
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 0
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BA
	goto _07E0

_071E:
	nop_var_490 VAR_TEMP_x4005
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 479
	goto_if_ne _087C
	compare VAR_TEMP_x4000, VAR_SPECIAL_x8000
	goto_if_ne _088A
	release obj_partner_poke
	apply_movement obj_partner_poke, _0940
	wait_movement
	lock obj_partner_poke
	setvar VAR_TEMP_x400A, 1
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 10
	goto _089E

_076C:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 0
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BA
	goto _07E0

_0790:
	setvar VAR_TEMP_x400A, 1
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 0
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BA
	goto _07E0

_07BA:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 2
	wait_button_or_walk_away
	compare VAR_TEMP_x400A, 1
	call_if_eq _04E8
	nop_var_490 VAR_TEMP_x400D
	goto _026C

_07E0:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	pokemon_summary_screen 1, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	get_move_selection 1, VAR_SPECIAL_x8002
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8002, 4
	goto_if_eq _08FD
	mon_get_move VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8002
	buffer_move_name 1, VAR_SPECIAL_RESULT
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BA
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	mon_get_move VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8002
	buffer_move_name 1, VAR_SPECIAL_RESULT
	npc_msg 4
	play_se SEQ_SE_DP_KON
	wait_se SEQ_SE_DP_KON
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 5
	wait 32, VAR_SPECIAL_RESULT
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 6
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	goto _089E

_087C:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 10
	goto _089E

_088A:
	setvar VAR_TEMP_x400A, 1
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 10
	goto _089E

_089E:
	update_rotom_forme VAR_SPECIAL_x8000, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001, VAR_SPECIAL_x8004
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _091C
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0922
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0928
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _092E
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0934
	goto _05E1

_08FD:
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 1
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07E0
	goto _07BA

_091C:
	hide_person obj_T11R0702_rotomf
	return

_0922:
	hide_person obj_T11R0702_rotoms
	return

_0928:
	hide_person obj_T11R0702_rotomi
	return

_092E:
	hide_person obj_T11R0702_rotomw
	return

_0934:
	hide_person obj_T11R0702_rotomg
	return

	.align 4
_093A:

	step 70, 1
	step_end
	.align 4
_0940:

	step 45, 2
	step 69, 1
	step_end
	.align 4
_094A:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.align 4

// Genesect encounter (Lv50 Bug/Steel) - Silph Co Rotom Room
// Tier 3: Requires FLAG_GAME_CLEAR + FLAG_UNLOCKED_WEST_KANTO
scr_seq_T11R0702_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _genesect_not_available
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _genesect_not_available
	play_cry SPECIES_GENESECT, 0
	npc_msg 46
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_GENESECT, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _genesect_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _genesect_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _genesect_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _genesect_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _genesect_defeated
	setflag FLAG_HIDE_GENESECT
	hide_person obj_T11R0702_genesect
	// Show NPCs after Genesect is gone
	clearflag FLAG_HIDE_ROTOM_ROOM_NPCS
	releaseall
	end

_genesect_not_available:
	releaseall
	end

_genesect_lost:
	white_out
	releaseall
	end

_genesect_fled:
	// Show NPCs after Genesect flees
	clearflag FLAG_HIDE_ROTOM_ROOM_NPCS
	releaseall
	end

_genesect_defeated:
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	// Show NPCs after Genesect defeated
	clearflag FLAG_HIDE_ROTOM_ROOM_NPCS
	releaseall
	end

_genesect_caught:
	setflag FLAG_CAUGHT_GENESECT
	return

	.align 4


.close
