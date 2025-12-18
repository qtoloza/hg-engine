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

.include "armips/scr_seq/event_D23R0106.inc"


// text archive to grab from: 070.txt

.create "build/a012/2_034", 0


scrdef scr_seq_D23R0106_000
scrdef scr_seq_D23R0106_001
scrdef scr_seq_D23R0106_002
scrdef_end

scr_seq_D23R0106_000:
	// === Meloetta + NPC Visibility Control ===
	// If Meloetta is present (not hidden), hide the NPCs
	goto_if_set FLAG_HIDE_MELOETTA, _meloetta_hidden_entry
	// Meloetta not caught - check tier requirements
	goto_if_unset FLAG_GAME_CLEAR, _hide_meloetta_show_npcs
	goto_if_unset FLAG_RESTORED_POWER, _hide_meloetta_show_npcs
	// Meloetta meets tier requirements - hide NPCs
	setflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	goto _radio_tower_rocket_logic

_hide_meloetta_show_npcs:
	setflag FLAG_HIDE_MELOETTA
	clearflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	goto _radio_tower_rocket_logic

_meloetta_hidden_entry:
	// Meloetta already caught/hidden - show NPCs
	clearflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	goto _radio_tower_rocket_logic

_radio_tower_rocket_logic:
	// === Original Rocket Takeover Logic ===
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	setvar VAR_UNK_4125, 0
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0137
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

scr_seq_D23R0106_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	closemsg
	trainer_battle TRAINER_EXECUTIVE_ARCHER_ARCHER, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0139
	npc_msg 1
	closemsg
	heal_party
	show_person obj_D23R0106_sakaki
	move_person_facing obj_D23R0106_sakaki, 8, 0, 12, DIR_WEST
	apply_movement obj_D23R0106_sakaki, _0464
	wait_movement
	apply_movement obj_D23R0106_rkanbum, _047C
	wait_movement
	apply_movement obj_D23R0106_rkanbum, _0484
	apply_movement obj_player, _0484
	apply_movement obj_partner_poke, _0484
	wait_movement
	stop_bgm 0
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	npc_msg 12
	closemsg
	trainer_battle TRAINER_ROCKET_BOSS_GIOVANNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0139
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D23R0106_rkanbum
	hide_person obj_D23R0106_sakaki
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_ROCKET_TAKEOVER_ACTIVE
	fade_out_bgm 0, 30
	stop_bgm 0
	wait 15, VAR_SPECIAL_RESULT
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	move_person_facing obj_D23R0106_gsgentleman, 8, 1, 12, DIR_SOUTH
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 7
	goto_if_ne _013F
	apply_movement obj_D23R0106_gsgentleman, _048C
	goto _016B

_0137:
	end

_0139:
	white_out
	releaseall
	end

_013F:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _01B7
	apply_movement obj_D23R0106_gsgentleman, _04A8
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	call_if_eq _0218
	goto _016B

_016B:
	wait_movement
	compare VAR_TEMP_x4000, 8
	goto_if_ne _023D
	apply_movement obj_player, _04C4
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0272
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _02A6

_01B7:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _016B
	apply_movement obj_D23R0106_gsgentleman, _04CC
	wait_movement
	compare VAR_TEMP_x4000, 8
	goto_if_ne _023D
	apply_movement obj_player, _04C4
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0272
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _02A6

_0218:
	get_person_coords 253, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _02C1
	wait 112, VAR_SPECIAL_RESULT
	apply_movement obj_partner_poke, _04E8
	return

_023D:
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0272
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _02A6

_0272:
	giveitem_no_check ITEM_SILVER_FEATHER, 1
	setflag FLAG_UNK_094
	npc_msg 6
	closemsg
	compare VAR_TEMP_x4000, 7
	goto_if_ne _02C3
	apply_movement obj_D23R0106_gsgentleman, _04F8
	goto _02DE

_02A6:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _02C3
	apply_movement obj_D23R0106_gsgentleman, _04F8
	goto _02DE

_02C1:
	return

_02C3:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _030E
	apply_movement obj_D23R0106_gsgentleman, _0508
	goto _02DE

_02DE:
	wait_movement
	apply_movement obj_D23R0106_gsgentleman, _0518
	wait_movement
	apply_movement obj_player, _04C4
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0353
	npc_msg 7
	goto _03CE

_030E:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _02DE
	apply_movement obj_D23R0106_gsgentleman, _0520
	wait_movement
	apply_movement obj_D23R0106_gsgentleman, _0518
	wait_movement
	apply_movement obj_player, _04C4
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0353
	npc_msg 7
	goto _03CE

_0353:
	npc_msg 8
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0530
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0548
	wait_movement
	play_se SEQ_SE_DP_DOOR10
	wait_se SEQ_SE_DP_DOOR10
	wait 8, VAR_SPECIAL_RESULT
	hide_person obj_D23R0106_gsgentleman
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	releaseall
	setvar VAR_SCENE_ROCKET_TAKEOVER, 5
	setflag FLAG_BEAT_RADIO_TOWER_ROCKETS
	clearflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	setflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	compare VAR_UNK_40F8, 2
	goto_if_ne _0446
	setvar VAR_UNK_40F8, 0
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

_03CE:
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0530
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0548
	wait_movement
	play_se SEQ_SE_DP_DOOR10
	wait_se SEQ_SE_DP_DOOR10
	wait 8, VAR_SPECIAL_RESULT
	hide_person obj_D23R0106_gsgentleman
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	releaseall
	setvar VAR_SCENE_ROCKET_TAKEOVER, 5
	setflag FLAG_BEAT_RADIO_TOWER_ROCKETS
	clearflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	setflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	compare VAR_UNK_40F8, 2
	goto_if_ne _0446
	setvar VAR_UNK_40F8, 0
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

_0446:
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

	.align 4
_0464:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 4
	step 0, 1
	step_end
	.align 4
_047C:

	step 75, 1
	step_end
	.align 4
_0484:

	step 1, 1
	step_end
	.align 4
_048C:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 4
	step 12, 3
	step 34, 1
	step_end
	.align 4
_04A8:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 3
	step 12, 2
	step 35, 1
	step_end
	.align 4
_04C4:

	step 34, 1
	step_end
	.align 4
_04CC:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 4
	step 12, 3
	step 35, 1
	step_end
	.align 4
_04E8:

	step 12, 1
	step 15, 1
	step 33, 1
	step_end
	.align 4
_04F8:

	step 13, 3
	step 14, 4
	step 75, 1
	step_end
	.align 4
_0508:

	step 13, 2
	step 14, 3
	step 75, 1
	step_end
	.align 4
_0518:

	step 15, 1
	step_end
	.align 4
_0520:

	step 13, 3
	step 14, 4
	step 75, 1
	step_end
	.align 4
_0530:

	step 14, 1
	step 13, 1
	step 75, 1
	step 63, 3
	step 32, 1
	step_end
	.align 4
_0548:

	step 13, 6
	step 15, 4
	step_end
	.align 4

// Meloetta encounter (Lv45 Normal/Psychic) - Radio Tower 5F
// Tier 2: Requires FLAG_GAME_CLEAR + FLAG_RESTORED_POWER
scr_seq_D23R0106_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _meloetta_not_available
	goto_if_unset FLAG_RESTORED_POWER, _meloetta_not_available
	play_cry SPECIES_MELOETTA, 0
	npc_msg 13
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_MELOETTA, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _meloetta_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _meloetta_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _meloetta_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _meloetta_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _meloetta_defeated
	setflag FLAG_HIDE_MELOETTA
	hide_person obj_D23R0106_meloetta
	// Show NPCs after Meloetta is gone
	clearflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	releaseall
	end

_meloetta_not_available:
	releaseall
	end

_meloetta_lost:
	white_out
	releaseall
	end

_meloetta_fled:
	// Show NPCs after Meloetta flees
	clearflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	releaseall
	end

_meloetta_defeated:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	// Show NPCs after Meloetta defeated
	clearflag FLAG_HIDE_RADIO_TOWER_5F_NPCS
	releaseall
	end

_meloetta_caught:
	setflag FLAG_CAUGHT_MELOETTA
	return

	.align 4


.close
