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

.include "armips/scr_seq/event_D42R0101.inc"


// text archive to grab from: 127.txt

.create "build/a012/2_108", 0


scrdef scr_seq_D42R0101_000
scrdef scr_seq_D42R0101_001
scrdef scr_seq_D42R0101_002
scrdef scr_seq_D42R0101_003
scrdef scr_seq_D42R0101_004
scrdef_end

// Map entry script - Diancie visibility control (Tier 3)
scr_seq_D42R0101_003:
	// === Diancie Visibility Control (Tier 3) ===
	goto_if_set FLAG_HIDE_DIANCIE, _diancie_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_diancie_entry
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _hide_diancie_entry
	clearflag FLAG_HIDE_DIANCIE
	goto _diancie_vis_done
_hide_diancie_entry:
	setflag FLAG_HIDE_DIANCIE
_diancie_vis_done:
	end

scr_seq_D42R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN, _00D5
	npc_msg 0
	goto_if_no_item_space ITEM_BLACK_GLASSES, 1, _00E0
	callstd std_give_item_verbose
	setflag FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D42R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_REGISTEEL, 6
	release obj_D42R0101_follower_mon_registeel
	scrcmd_523 obj_D42R0101_follower_mon_registeel, 2, 90, 2, 0
	lock obj_D42R0101_follower_mon_registeel
	npc_msg 4
	closemsg
	wait_cry
	wild_battle SPECIES_REGISTEEL, 40, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EB
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D42R0101_follower_mon_registeel
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _00F1
	compare VAR_TEMP_x4002, 5
	goto_if_eq _00F1
	releaseall
	end

_00D5:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E0:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00EB:
	white_out
	releaseall
	end

_00F1:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	clearflag 16341
	releaseall
	end
	.align 4

// Diancie encounter (Lv45 Rock/Fairy)
scr_seq_D42R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _diancie_not_postgame
	play_cry SPECIES_DIANCIE, 0
	npc_msg 9
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_DIANCIE, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _diancie_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _diancie_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _diancie_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _diancie_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _diancie_defeated
	setflag FLAG_HIDE_DIANCIE
	hide_person obj_D42R0101_diancie
	releaseall
	end

_diancie_not_postgame:
	releaseall
	end

_diancie_lost:
	white_out
	releaseall
	end

_diancie_fled:
	releaseall
	end

_diancie_defeated:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_diancie_caught:
	setflag FLAG_CAUGHT_DIANCIE
	return

	.align 4

// Jewel collector NPC - Diancie hint
scr_seq_D42R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _collector_normal
	goto_if_set FLAG_CAUGHT_DIANCIE, _collector_post_diancie
	npc_msg 7
	goto _collector_end
_collector_post_diancie:
	npc_msg 8
	goto _collector_end
_collector_normal:
	npc_msg 7
_collector_end:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4


.close
