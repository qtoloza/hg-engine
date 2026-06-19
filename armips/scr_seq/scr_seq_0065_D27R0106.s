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

.include "armips/scr_seq/event_D27R0106.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_065", 0


scrdef scr_seq_D27R0106_000
scrdef scr_seq_D27R0106_001
scrdef scr_seq_D27R0106_002
scrdef scr_seq_D27R0106_003
scrdef scr_seq_D27R0106_004
scrdef_end

scr_seq_D27R0106_001:
	// === Tiered Genie Visibility Control ===

	// Tornadus: Tier 1 (FLAG_GAME_CLEAR only)
	goto_if_set FLAG_HIDE_TORNADUS, _check_thundurus_visibility
	goto_if_unset FLAG_GAME_CLEAR, _hide_tornadus
	clearflag FLAG_HIDE_TORNADUS
	goto _check_thundurus_visibility
_hide_tornadus:
	setflag FLAG_HIDE_TORNADUS

_check_thundurus_visibility:
	// Thundurus: Tier 2 (FLAG_RESTORED_POWER + Tornadus caught)
	goto_if_set FLAG_HIDE_THUNDURUS, _check_landorus_visibility
	goto_if_unset FLAG_GAME_CLEAR, _hide_thundurus
	goto_if_unset FLAG_RESTORED_POWER, _hide_thundurus
	goto_if_unset FLAG_CAUGHT_TORNADUS, _hide_thundurus
	clearflag FLAG_HIDE_THUNDURUS
	goto _check_landorus_visibility
_hide_thundurus:
	setflag FLAG_HIDE_THUNDURUS

_check_landorus_visibility:
	// Landorus: Tier 3 (FLAG_UNLOCKED_WEST_KANTO + Thundurus caught)
	goto_if_set FLAG_HIDE_LANDORUS, _genie_npc_logic
	goto_if_unset FLAG_GAME_CLEAR, _hide_landorus
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _hide_landorus
	goto_if_unset FLAG_CAUGHT_THUNDURUS, _hide_landorus
	clearflag FLAG_HIDE_LANDORUS
	goto _genie_npc_logic
_hide_landorus:
	setflag FLAG_HIDE_LANDORUS

_genie_npc_logic:
	// Hide NPCs when any genie is present (flag cleared = visible)
	goto_if_unset FLAG_HIDE_TORNADUS, _genies_present
	goto_if_unset FLAG_HIDE_THUNDURUS, _genies_present
	goto_if_unset FLAG_HIDE_LANDORUS, _genies_present
	// All genies are gone, show NPCs
	clearflag FLAG_HIDE_LIGHTHOUSE_GENIE_NPCS
	goto _continue_genie_entry
_genies_present:
	// At least one genie is present, hide NPCs
	setflag FLAG_HIDE_LIGHTHOUSE_GENIE_NPCS
_continue_genie_entry:
	goto_if_unset FLAG_UNK_189, _001B
	clearflag FLAG_UNK_189
	end

_001B:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _003F
	compare VAR_TEMP_x4000, 6
	goto_if_eq _003F
	setflag FLAG_HIDE_CAMERON
	end

_003F:
	clearflag FLAG_HIDE_CAMERON
	end

scr_seq_D27R0106_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0127
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _013B
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00B6
	apply_movement obj_player, _0150
	goto _00C6

_00B6:
	apply_movement obj_player, _015C
	apply_movement obj_D27R0106_gsmiddleman1, _0170
_00C6:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00ED
	apply_movement obj_partner_poke, _017C
	wait_movement
_00ED:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 27
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0127:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013B:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0150:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_015C:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0170:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_017C:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4

// Tornadus encounter (Lv50 Flying)
scr_seq_D27R0106_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _tornadus_not_postgame
	play_cry SPECIES_TORNADUS, 0
	npc_msg 1405
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_TORNADUS, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _tornadus_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _tornadus_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _tornadus_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _tornadus_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _tornadus_defeated
	setflag FLAG_HIDE_TORNADUS
	hide_person obj_D27R0106_tornadus
	releaseall
	end

_tornadus_not_postgame:
	releaseall
	end

_tornadus_lost:
	white_out
	releaseall
	end

_tornadus_fled:
	releaseall
	end

_tornadus_defeated:
	npc_msg 1410
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_tornadus_caught:
	setflag FLAG_CAUGHT_TORNADUS
	return

	.align 4

// Thundurus encounter (Lv50 Electric/Flying)
scr_seq_D27R0106_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _thundurus_not_postgame
	play_cry SPECIES_THUNDURUS, 0
	npc_msg 1406
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_THUNDURUS, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _thundurus_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _thundurus_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _thundurus_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _thundurus_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _thundurus_defeated
	setflag FLAG_HIDE_THUNDURUS
	hide_person obj_D27R0106_thundurus
	releaseall
	end

_thundurus_not_postgame:
	releaseall
	end

_thundurus_lost:
	white_out
	releaseall
	end

_thundurus_fled:
	releaseall
	end

_thundurus_defeated:
	npc_msg 1411
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_thundurus_caught:
	setflag FLAG_CAUGHT_THUNDURUS
	return

	.align 4

// Landorus encounter (Lv50 Ground/Flying)
scr_seq_D27R0106_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _landorus_not_postgame
	play_cry SPECIES_LANDORUS, 0
	npc_msg 1407
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_LANDORUS, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _landorus_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _landorus_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _landorus_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _landorus_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _landorus_defeated
	setflag FLAG_HIDE_LANDORUS
	hide_person obj_D27R0106_landorus
	releaseall
	end

_landorus_not_postgame:
	releaseall
	end

_landorus_lost:
	white_out
	releaseall
	end

_landorus_fled:
	releaseall
	end

_landorus_defeated:
	npc_msg 1412
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_landorus_caught:
	setflag FLAG_CAUGHT_LANDORUS
	return

	.align 4


.close
