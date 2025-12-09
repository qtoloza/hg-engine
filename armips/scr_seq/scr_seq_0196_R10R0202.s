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

.include "armips/scr_seq/event_R10R0202.inc"


// text archive to grab from: 345.txt

.create "build/a012/2_196", 0


scrdef scr_seq_R10R0202_000
scrdef scr_seq_R10R0202_001
scrdef scr_seq_R10R0202_002
scrdef scr_seq_R10R0202_003
scrdef scr_seq_R10R0202_004
scrdef scr_seq_R10R0202_005
scrdef scr_seq_R10R0202_006
scrdef scr_seq_R10R0202_007
scrdef scr_seq_R10R0202_008
scrdef scr_seq_R10R0202_009
scrdef scr_seq_R10R0202_010
scrdef scr_seq_R10R0202_011
scrdef scr_seq_R10R0202_012
scrdef_end

// Map entry script - Cobalion + NPC visibility control
scr_seq_R10R0202_012:
	// === Cobalion + NPC Visibility Control ===
	// If Cobalion is present (not hidden), hide the NPCs
	goto_if_set FLAG_HIDE_COBALION, _cobalion_hidden_entry
	// Cobalion not caught - check tier requirements
	goto_if_unset FLAG_GAME_CLEAR, _hide_cobalion_show_npcs
	// Cobalion meets tier requirements (Tier 1) - hide NPCs
	setflag FLAG_HIDE_POWER_PLANT_NPCS
	end

_hide_cobalion_show_npcs:
	setflag FLAG_HIDE_COBALION
	clearflag FLAG_HIDE_POWER_PLANT_NPCS
	end

_cobalion_hidden_entry:
	// Cobalion already caught/hidden - show NPCs
	clearflag FLAG_HIDE_POWER_PLANT_NPCS
	end

scr_seq_R10R0202_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_MACHINE_PART, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0246
	goto_if_set FLAG_GOT_POWER_PLANT_MANAGERS_STORY, _02E3
	setflag FLAG_GOT_POWER_PLANT_MANAGERS_STORY
	setvar VAR_SCENE_ROUTE_10_POWER_PLANT, 1
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	apply_movement obj_R10R0202_policeman, _0326
	wait_movement
	releaseall
	end

scr_seq_R10R0202_007:
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_PHONE0
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R10R0202_policeman, _032C
	apply_movement obj_player, _0346
	apply_movement obj_R10R0202_gsassistantm, _035C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 1
	closemsg
	apply_movement obj_R10R0202_policeman, _0366
	apply_movement obj_player, _0374
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_R10R0202_policeman, _037E
	wait_movement
	clearflag FLAG_HIDE_CERULEAN_GYM_ROCKET
	setvar VAR_SCENE_ROUTE_10_POWER_PLANT, 0
	setvar VAR_UNK_411C, 1
	releaseall
	end

scr_seq_R10R0202_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_POWER_PLANT_MANAGERS_STORY, _02F8
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0202_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON, _0303
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _030E
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _030E
	load_npc_trade 8
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0319
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_AURA_SPHERE
	setflag FLAG_TRADE_POWER_PLANT_DUGTRIO_MAGNETON
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 21
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

scr_seq_R10R0202_003:
	simple_npc_msg 6
	end

scr_seq_R10R0202_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Cobalion hint dialogue - postgame only
	goto_if_unset FLAG_GAME_CLEAR, _worker1_normal
	goto_if_set FLAG_CAUGHT_COBALION, _worker1_post_catch
	goto_if_set FLAG_HIDE_COBALION, _worker1_normal  // Already fled/defeated
	// Pre-catch hint
	npc_msg 22
	goto _worker1_end
_worker1_post_catch:
	npc_msg 23
	goto _worker1_end
_worker1_normal:
	npc_msg 4
_worker1_end:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10R0202_002:
	simple_npc_msg 5
	end

scr_seq_R10R0202_004:
	simple_npc_msg 7
	end

scr_seq_R10R0202_008:
	simple_npc_msg 18
	end

scr_seq_R10R0202_009:
	simple_npc_msg 19
	end

scr_seq_R10R0202_010:
	buffer_players_name 0
	end

_0246:
	npc_msg 14
	closemsg
	takeitem ITEM_MACHINE_PART, 1, VAR_SPECIAL_RESULT
	apply_movement obj_R10R0202_gsbigman, _0390
	wait_movement
	wait_se SEQ_SE_GS_W012
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0201, 0, 13, 7, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 15
	apply_movement obj_R10R0202_gsbigman, _03A6
	wait_movement
	setflag FLAG_RESTORED_POWER
	npc_msg 16
	giveitem_no_check ITEM_TM057, 1
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	giveitem_no_check ITEM_RED_CHAIN, 1
	closemsg
	setflag FLAG_UNK_258
	clearflag FLAG_HIDE_LAVENDER_RADIO_TOWER_DIRECTOR
	setflag FLAG_UNK_2FB
	clearflag FLAG_HIDE_VERMILION_FAN_CLUB_LOST_ITEM
	setvar VAR_UNK_40FF, 1
	releaseall
	end

_02E3:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	apply_movement obj_R10R0202_policeman, _0326
	wait_movement
	releaseall
	end

_02F8:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0303:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_030E:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0319:
	npc_trade_end
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0326:

	step 1, 1
	step_end
	.align 4
_032C:

	step 75, 1
	step 13, 1
	step 15, 2
	step 12, 3
	step 15, 5
	step 12, 2
	step_end
	.align 4
_0346:

	step 66, 2
	step 12, 1
	step 1, 1
	step 65, 1
	step 3, 1
	step_end
	.align 4
_035C:

	step 66, 4
	step 1, 1
	step_end
	.align 4
_0366:

	step 13, 2
	step 14, 5
	step 0, 1
	step_end
	.align 4
_0374:

	step 63, 7
	step 1, 1
	step_end
	.align 4
_037E:

	step 13, 3
	step 14, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_0390:

	step 34, 1
	step 61, 1
	step 34, 1
	step 61, 1
	step 34, 1
	step_end
	.align 4
_03A6:

	step 0, 1
	step_end
	.align 4

// Cobalion encounter (Lv45 Steel/Fighting) - Power Plant
scr_seq_R10R0202_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _cobalion_not_postgame
	play_cry SPECIES_COBALION, 0
	npc_msg 24
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_COBALION, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _cobalion_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _cobalion_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _cobalion_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _cobalion_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _cobalion_defeated
	setflag FLAG_HIDE_COBALION
	hide_person obj_R10R0202_cobalion
	// Show NPCs after Cobalion is gone
	clearflag FLAG_HIDE_POWER_PLANT_NPCS
	releaseall
	end

_cobalion_not_postgame:
	releaseall
	end

_cobalion_lost:
	white_out
	releaseall
	end

_cobalion_fled:
	// Show NPCs after Cobalion flees
	clearflag FLAG_HIDE_POWER_PLANT_NPCS
	releaseall
	end

_cobalion_defeated:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	clearflag FLAG_HIDE_POWER_PLANT_NPCS
	releaseall
	end

_cobalion_caught:
	setflag FLAG_CAUGHT_COBALION
	return

	.align 4


.close
