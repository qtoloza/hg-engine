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

.include "armips/scr_seq/event_D27R0107.inc"


// text archive to grab from: 094.txt

.create "build/a012/2_066", 0


scrdef scr_seq_D27R0107_000
scrdef scr_seq_D27R0107_001
scrdef scr_seq_D27R0107_002
scrdef scr_seq_D27R0107_003
scrdef scr_seq_D27R0107_004
scrdef scr_seq_D27R0107_005
scrdef scr_seq_D27R0107_006
scrdef_end

scr_seq_D27R0107_003:
	setvar VAR_UNK_4125, 0
	end

scr_seq_D27R0107_004:
	// Hide NPCs when Reshiram is present (FLAG_HIDE_RESHIRAM is cleared)
	goto_if_set FLAG_HIDE_RESHIRAM, _reshiram_not_present_entry
	setflag FLAG_HIDE_LIGHTHOUSE_TOP_NPCS
	goto _continue_d27r0107_entry
_reshiram_not_present_entry:
	clearflag FLAG_HIDE_LIGHTHOUSE_TOP_NPCS
_continue_d27r0107_entry:
	goto_if_set FLAG_UNK_1D8, _0093
	make_object_visible obj_D27R0107_stop
	end

scr_seq_D27R0107_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_SECRETPOTION, _0095
	compare VAR_SCENE_LIGHTHOUSE_JASMINE, 0
	goto_if_eq _0169
	npc_msg 1
	closemsg
	apply_movement obj_D27R0107_gsleader6, _01FA
	wait_movement
	releaseall
	end

scr_seq_D27R0107_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_LIGHTHOUSE_JASMINE, 2
	goto_if_lt _01BC
	play_cry SPECIES_AMPHAROS, 0
	npc_msg 12
	wait_cry
	goto _01D2

scr_seq_D27R0107_002:
	end

scr_seq_D27R0107_005:
	buffer_players_name 0
	end

_0093:
	end

_0095:
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01DA
	takeitem ITEM_SECRET_MEDICINE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 3
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 4
	closemsg
	apply_movement obj_D27R0107_gsleader6, _01FA
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D27R0107_follower_mon_static_ampharos, _0200
	wait_movement
	play_cry SPECIES_AMPHAROS, 0
	npc_msg 6
	wait_cry
	closemsg
	scrcmd_459
	apply_movement obj_D27R0107_follower_mon_static_ampharos, _0206
	wait_movement
	play_cry SPECIES_AMPHAROS, 0
	wait_cry
	npc_msg 7
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _020C
	apply_movement obj_D27R0107_gsleader6, _022A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D27R0107_gsleader6
	releaseall
	setflag FLAG_UNK_96A
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 2
	setvar VAR_UNK_410E, 1
	setvar 24878, 2
	setflag FLAG_UNK_1D7
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	setflag FLAG_UNK_1DA
	setflag FLAG_UNK_1DB
	clearflag FLAG_HIDE_OLIVINE_GYM_GENTLEMAN
	clearflag FLAG_HIDE_OLIVINE_GYM_GIRL
	clearflag 16360
	setflag FLAG_UNK_998
	end

_0169:
	npc_msg 0
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _0240
	apply_movement obj_D27R0107_gsleader6, _025E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_DOOR
	hide_person obj_D27R0107_stop
	hide_person obj_D27R0107_babyboy1_8
	wait_se SEQ_SE_DP_DOOR
	apply_movement obj_D27R0107_gsleader6, _0274
	wait_movement
	releaseall
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 1
	setflag FLAG_UNK_1D8
	end

_01BC:
	play_cry SPECIES_AMPHAROS, 12
	npc_msg 10
	wait_cry
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01D2:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01DA:
	npc_msg 8
	closemsg
	apply_movement obj_D27R0107_gsleader6, _01FA
	wait_movement
	npc_msg 9
	closemsg
	play_cry SPECIES_AMPHAROS, 12
	wait_cry
	releaseall
	end

	.align 4
_01FA:

	step 31, 1
	step_end
	.align 4
_0200:

	step 30, 1
	step_end
	.align 4
_0206:

	step 50, 3
	step_end
	.align 4
_020C:

	step 0, 1
	step 71, 1
	step 13, 1
	step 72, 1
	step 63, 2
	step 62, 1
	step 35, 1
	step_end
	.align 4
_022A:

	step 63, 1
	step 13, 1
	step 15, 2
	step 33, 1
	step 13, 1
	step_end
	.align 4
_0240:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step 63, 3
	step 62, 1
	step 33, 1
	step_end
	.align 4
_025E:

	step 63, 1
	step 13, 3
	step 15, 1
	step 33, 1
	step 65, 1
	step_end
	.align 4
_0274:

	step 14, 1
	step 12, 3
	step 35, 1
	step_end
	.align 4

// Reshiram encounter (Lv70 Dragon/Fire)
scr_seq_D27R0107_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _reshiram_not_postgame
	play_cry SPECIES_RESHIRAM, 0
	npc_msg 13
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_RESHIRAM, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _reshiram_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _reshiram_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _reshiram_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _reshiram_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _reshiram_defeated
	setflag FLAG_HIDE_RESHIRAM
	clearflag FLAG_HIDE_LIGHTHOUSE_TOP_NPCS
	hide_person obj_D27R0107_reshiram
	releaseall
	end

_reshiram_not_postgame:
	releaseall
	end

_reshiram_lost:
	white_out
	releaseall
	end

_reshiram_fled:
	releaseall
	end

_reshiram_defeated:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	clearflag FLAG_HIDE_LIGHTHOUSE_TOP_NPCS
	releaseall
	end

_reshiram_caught:
	setflag FLAG_CAUGHT_RESHIRAM
	return

	.align 4


.close
