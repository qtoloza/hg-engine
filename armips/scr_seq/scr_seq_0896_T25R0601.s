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

.include "armips/scr_seq/event_T25R0601.inc"


// text archive to grab from: 589.txt

.create "build/a012/2_896", 0


scrdef scr_seq_T25R0601_000
scrdef scr_seq_T25R0601_001
scrdef scr_seq_T25R0601_002
scrdef scr_seq_T25R0601_003
scrdef_end

scr_seq_T25R0601_002:
	goto_if_set FLAG_UNK_15D, _0176
	goto_if_unset FLAG_UNK_0B5, _0176
	get_party_slot_with_fateful_encounter VAR_TEMP_x4000, 492
	compare VAR_TEMP_x4000, 255
	goto_if_eq _0176
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 492
	goto_if_ne _0176
	setvar VAR_UNK_4082, 1
	end

scr_seq_T25R0601_003:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _056A
	apply_movement obj_T25R0601_gsgirl1, _0574
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T25R0601_gsgirl1, _0582
	apply_movement obj_player, _058C
	apply_movement obj_partner_poke, _0592
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_T25R0601_gsgirl1, _0598
	wait_movement
	npc_msg 6
	setvar VAR_SPECIAL_x8004, 466
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0178
	callstd std_give_item_verbose
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_15D
	setvar VAR_UNK_4082, 0
	releaseall
	end

scr_seq_T25R0601_000:
	goto_if_set FLAG_UNK_0B5, _018A
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _021B
	simple_npc_msg 0
	end

scr_seq_T25R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04F6
	goto_if_set FLAG_UNK_15D, _0266
	get_party_slot_with_fateful_encounter VAR_SPECIAL_RESULT, 492
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _029B
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 492
	goto_if_eq _02A6
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0176:
	end

_0178:
	callstd std_bag_is_full
	closemsg
	releaseall
	setvar VAR_UNK_4082, 0
	releaseall
	end

_018A:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	npc_msg 8
	touchscreen_menu_hide
	show_money_box 20, 2
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 213, 470, 0
	menu_item_add 214, 472, 1
	menu_item_add 215, 471, 2
	menu_item_add 216, 473, 3
	menu_item_add 217, 474, 4
	menu_exec
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_x8000
	case 0, _02D4
	case 1, _02E0
	case 2, _02EC
	case 3, _02F8
	npc_msg 10
	goto _0304

_021B:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0310
	npc_msg 1
	goto_if_no_item_space ITEM_SQUIRT_BOTTLE, 1, _031B
	callstd std_give_item_verbose
	closemsg
	releaseall
	end

_0266:
	get_party_slot_with_fateful_encounter VAR_SPECIAL_RESULT, 492
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _029B
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 492
	goto_if_ne _029B
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_029B:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A6:
	apply_movement obj_T25R0601_gsgirl1, _059E
	wait_movement
	npc_msg 5
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0325
	apply_movement obj_T25R0601_gsgirl1, _05A4
	goto _0340

_02D4:
	setvar VAR_SPECIAL_x8001, 95
	goto _037F

_02E0:
	setvar VAR_SPECIAL_x8001, 96
	goto _037F

_02EC:
	setvar VAR_SPECIAL_x8001, 97
	goto _037F

_02F8:
	setvar VAR_SPECIAL_x8001, 98
	goto _037F

_0304:
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	hide_money_box
	releaseall
	end

_0310:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031B:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0325:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0428
	apply_movement obj_T25R0601_gsgirl1, _05AA
	goto _0340

_0340:
	wait_movement
	npc_msg 6
	setvar VAR_SPECIAL_x8004, 466
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0443
	callstd std_give_item_verbose
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_15D
	setvar VAR_UNK_4082, 0
	releaseall
	end

_037F:
	compare VAR_SPECIAL_x8000, 0
	call_if_eq _0455
	compare VAR_SPECIAL_x8000, 1
	call_if_eq _045F
	compare VAR_SPECIAL_x8000, 2
	call_if_eq _0469
	compare VAR_SPECIAL_x8000, 3
	call_if_eq _0473
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _047D
	hasspaceforitem VAR_SPECIAL_x8001, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0486
	compare VAR_SPECIAL_x8000, 0
	call_if_eq _048F
	compare VAR_SPECIAL_x8000, 1
	call_if_eq _0497
	compare VAR_SPECIAL_x8000, 2
	call_if_eq _049F
	compare VAR_SPECIAL_x8000, 3
	call_if_eq _04A7
	update_money_box
	play_se SEQ_SE_DP_REGI
	giveitem VAR_SPECIAL_x8001, 1, VAR_SPECIAL_RESULT
	buffer_item_name 0, VAR_SPECIAL_x8001
	npc_msg 11
	npc_msg 9
	goto _0304

_0428:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _04AF
	apply_movement obj_T25R0601_gsgirl1, _05B0
	goto _0340

_0443:
	callstd std_bag_is_full
	closemsg
	releaseall
	setvar VAR_UNK_4082, 0
	releaseall
	end

_0455:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 200
	return

_045F:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 200
	return

_0469:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 200
	return

_0473:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 200
	return

_047D:
	npc_msg 13
	goto _0304

_0486:
	npc_msg 12
	goto _0304

_048F:
	submoneyimmediate 200
	return

_0497:
	submoneyimmediate 200
	return

_049F:
	submoneyimmediate 200
	return

_04A7:
	submoneyimmediate 200
	return

_04AF:
	apply_movement obj_T25R0601_gsgirl1, _0598
	wait_movement
	npc_msg 6
	setvar VAR_SPECIAL_x8004, 466
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0443
	callstd std_give_item_verbose
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_15D
	setvar VAR_UNK_4082, 0
	releaseall
	end

_04F6:
	goto_if_set 16317, _0514
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	clearflag 16318
	setflag 16317
	releaseall
	end

_0514:
	goto_if_unset 16318, _055F
	goto_if_set FLAG_UNK_15D, _0266
	get_party_slot_with_fateful_encounter VAR_SPECIAL_RESULT, 492
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _029B
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 492
	goto_if_eq _02A6
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_055F:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_056A:

	step 12, 1
	step 63, 1
	step_end
	.align 4
_0574:

	step 63, 1
	step 2, 1
	step 75, 1
	step_end
	.align 4
_0582:

	step 13, 1
	step 14, 1
	step_end
	.align 4
_058C:

	step 3, 1
	step_end
	.align 4
_0592:

	step 3, 1
	step_end
	.align 4
_0598:

	step 38, 4
	step_end
	.align 4
_059E:

	step 75, 1
	step_end
	.align 4
_05A4:

	step 37, 4
	step_end
	.align 4
_05AA:

	step 36, 4
	step_end
	.align 4
_05B0:

	step 39, 4
	step_end
	.align 4


.close
