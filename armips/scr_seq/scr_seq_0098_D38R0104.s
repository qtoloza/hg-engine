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

.include "armips/scr_seq/event_D38R0104.inc"


// text archive to grab from: 121.txt

.create "build/a012/2_098", 0


scrdef scr_seq_D38R0104_000
scrdef scr_seq_D38R0104_001
scrdef scr_seq_D38R0104_002
scrdef scr_seq_D38R0104_003
scrdef scr_seq_D38R0104_004
scrdef scr_seq_D38R0104_005
scrdef scr_seq_D38R0104_006
scrdef_end

// Map entry script - Xerneas (Tier 1) and Volcanion (Tier 4) visibility
scr_seq_D38R0104_006:
	// === Xerneas Visibility Control (Tier 1) ===
	goto_if_set FLAG_HIDE_XERNEAS, _xerneas_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_xerneas_entry
	clearflag FLAG_HIDE_XERNEAS
	goto _xerneas_vis_done
_hide_xerneas_entry:
	setflag FLAG_HIDE_XERNEAS
_xerneas_vis_done:
	// === Volcanion Visibility Control (Tier 4) ===
	// Requires all 3 Aura Trio + MT_SILVER
	goto_if_set FLAG_HIDE_VOLCANION, _volcanion_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_volcanion_entry
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _hide_volcanion_entry
	goto_if_unset FLAG_CAUGHT_XERNEAS, _hide_volcanion_entry
	goto_if_unset FLAG_CAUGHT_YVELTAL, _hide_volcanion_entry
	goto_if_unset FLAG_CAUGHT_ZYGARDE, _hide_volcanion_entry
	clearflag FLAG_HIDE_VOLCANION
	goto _volcanion_vis_done
_hide_volcanion_entry:
	setflag FLAG_HIDE_VOLCANION
_volcanion_vis_done:
	end

scr_seq_D38R0104_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TYROGUE_FROM_KARATE_KING, _0121
	goto_if_set FLAG_BEAT_KARATE_KING, _0130
	npc_msg 0
	closemsg
	trainer_battle TRAINER_BLACK_BELT_KIYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _014D
	setflag FLAG_BEAT_KARATE_KING
	npc_msg 1
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0153
	npc_msg 4
	goto _0196

scr_seq_D38R0104_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_REGIROCK, 6
	release obj_D38R0104_follower_mon_regirock
	scrcmd_523 obj_D38R0104_follower_mon_regirock, 2, 90, 2, 0
	lock obj_D38R0104_follower_mon_regirock
	npc_msg 7
	closemsg
	wait_cry
	wild_battle SPECIES_REGIROCK, 40, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _014D
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D38R0104_follower_mon_regirock
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _019E
	compare VAR_TEMP_x4002, 5
	goto_if_eq _019E
	releaseall
	end

scr_seq_D38R0104_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	hasitem ITEM_AZURE_FLUTE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01AD
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D38R0104_003:
	buffer_players_name 0
	buffer_players_name 0
	end

_0121:
	setflag FLAG_GOT_TYROGUE_FROM_KARATE_KING
	// Check for Keldeo hint - requires all 3 Swords caught
	goto_if_unset FLAG_CAUGHT_COBALION, _karate_king_normal
	goto_if_unset FLAG_CAUGHT_TERRAKION, _karate_king_normal
	goto_if_unset FLAG_CAUGHT_VIRIZION, _karate_king_normal
	goto_if_set FLAG_CAUGHT_KELDEO, _karate_king_post_keldeo
	// Pre-Keldeo hint
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end
_karate_king_post_keldeo:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end
_karate_king_normal:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0130:
	npc_msg 1
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _0153
	npc_msg 4
	goto _0196

_014D:
	white_out
	releaseall
	end

_0153:
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon SPECIES_TYROGUE, 5, 303, 0, 0, VAR_SPECIAL_RESULT
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _028D
	touchscreen_menu_show
	setflag FLAG_GOT_TYROGUE_FROM_KARATE_KING
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0196:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019E:
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	clearflag 16343
	releaseall
	end

_01AD:
	npc_msg 11
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02B3
	stop_bgm 0
	play_bgm SEQ_GS_PHC
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 10
	closemsg
	fade_screen 6, 10, 0, RGB_WHITE
	wait_fade
	fade_screen 6, 10, 1, RGB_WHITE
	wait_fade
	apply_movement obj_D38R0104_follower_mon_jirachi, _0440
	wait_movement
	faceplayer
	apply_movement obj_D38R0104_follower_mon_jirachi, _047E
	wait_movement
	play_cry SPECIES_JIRACHI, 0
	npc_msg 12
	wait_cry
	closemsg
	faceplayer
	play_cry SPECIES_JIRACHI, 0
	npc_msg 13
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 16, 255, 2
	menu_item_add 17, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	case 0, _02B7
	switch VAR_TEMP_x4000
	case 1, _0309
	switch VAR_TEMP_x4000
	case 2, _0344
	goto _0368

_028D:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

_02B3:
	releaseall
	end

_02B7:
	npc_msg 18
	npc_msg 19
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	addmoney 30000
	play_fanfare SEQ_ME_HYOUKA5
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	goto _03DF

_0309:
	npc_msg 18
	npc_msg 21
	script_overlay_cmd 3, 0
	scrcmd_116 0, 20, 2
	give_coins 10000
	give_coins 10000
	give_coins 10000
	give_coins 10000
	give_coins 10000
	scrcmd_117
	script_overlay_cmd 3, 1
	play_fanfare SEQ_ME_HYOUKA3
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	goto _03DF

_0344:
	npc_msg 18
	npc_msg 22
	play_fanfare SEQ_ME_HYOUKA2
	wait_fanfare
	giveitem_no_check ITEM_RARE_CANDY, 99
	closemsg
	goto _03DF

_0368:
	npc_msg 18
	play_cry SPECIES_JIRACHI, 6
	npc_msg 23
	wait_cry
	closemsg
	wild_battle SPECIES_JIRACHI, 45, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0412
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _03DF
	compare VAR_TEMP_x4002, 4
	goto_if_eq _0418
	compare VAR_TEMP_x4002, 5
	call_if_eq _03DF
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	setflag 16307
	hide_person obj_D38R0104_follower_mon_jirachi
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_03DF:
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	play_se SEQ_SE_GS_TIMESLIP
	wait_se SEQ_SE_GS_TIMESLIP
	hide_person obj_D38R0104_follower_mon_jirachi
	setflag 16307
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0412:
	white_out
	releaseall
	end

_0418:
	setflag 16302
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	setflag 16307
	hide_person obj_D38R0104_follower_mon_jirachi
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0440:

	step 75, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 34, 3
	step 62, 1
	step 1, 1
	step 62, 1
	step 33, 3
	step 62, 1
	step 3, 1
	step 62, 1
	step 35, 3
	step 62, 1
	step 49, 3
	step_end
	.align 4
_047E:

	step 75, 1
	step_end
	.align 4

// Xerneas encounter (Lv70 Fairy)
scr_seq_D38R0104_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _xerneas_not_postgame
	play_cry SPECIES_XERNEAS, 0
	npc_msg 26
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_XERNEAS, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _xerneas_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _xerneas_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _xerneas_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _xerneas_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _xerneas_defeated
	setflag FLAG_HIDE_XERNEAS
	hide_person obj_D38R0104_xerneas
	releaseall
	end

_xerneas_not_postgame:
	releaseall
	end

_xerneas_lost:
	white_out
	releaseall
	end

_xerneas_fled:
	releaseall
	end

_xerneas_defeated:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_xerneas_caught:
	setflag FLAG_CAUGHT_XERNEAS
	return

	.align 4

// Volcanion encounter (Lv45 Fire/Water) - Mt Mortar Depths
scr_seq_D38R0104_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _volcanion_not_postgame
	play_cry SPECIES_VOLCANION, 0
	npc_msg 27
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_VOLCANION, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _volcanion_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _volcanion_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _volcanion_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _volcanion_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _volcanion_defeated
	setflag FLAG_HIDE_VOLCANION
	hide_person obj_D38R0104_volcanion
	releaseall
	end

_volcanion_not_postgame:
	releaseall
	end

_volcanion_lost:
	white_out
	releaseall
	end

_volcanion_fled:
	releaseall
	end

_volcanion_defeated:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_volcanion_caught:
	setflag FLAG_CAUGHT_VOLCANION
	return

	.align 4


.close
