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

.include "armips/scr_seq/event_T24PC0101.inc"


// text archive to grab from: 575.txt

.create "build/a012/2_878", 0


scrdef scr_seq_T24PC0101_000
scrdef scr_seq_T24PC0101_001
scrdef scr_seq_T24PC0101_002
scrdef scr_seq_T24PC0101_003
scrdef scr_seq_T24PC0101_004
scrdef scr_seq_T24PC0101_005
scrdef_end

scr_seq_T24PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_T24PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T24PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 540
	goto_if_ne _013C
	goto _0142

scr_seq_T24PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0159
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T24PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16237, _01E1
	apply_movement obj_T24PC0101_gsfighter, _01F2
	apply_movement obj_T24PC0101_follower_mon_meditite, _01EC
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_T24PC0101_gsfighter, _01F2
	apply_movement obj_T24PC0101_follower_mon_meditite, _01EC
	wait_movement
	npc_msg 11
	closemsg
	apply_movement obj_T24PC0101_gsfighter, _01F2
	apply_movement obj_T24PC0101_follower_mon_meditite, _01EC
	wait_movement
	npc_msg 12
	closemsg
	apply_movement obj_T24PC0101_gsfighter, _01F2
	apply_movement obj_T24PC0101_follower_mon_meditite, _01EC
	wait_movement
	npc_msg 13
	closemsg
	apply_movement obj_T24PC0101_gsfighter, _01F2
	apply_movement obj_T24PC0101_follower_mon_meditite, _01EC
	wait_movement
	faceplayer
	npc_msg 10
	giveitem_no_check ITEM_CHOICE_BAND, 1
	npc_msg 8
	setflag 16237
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T24PC0101_005:
	play_cry SPECIES_MEDITITE, 0
	simple_npc_msg 9
	end

_013C:
	goto _0167

_0142:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0172
	goto _0178

_0159:
	buffer_players_name 0
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0167:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0172:
	goto _0167

_0178:
	npc_msg 4
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon SPECIES_TENTACOOL, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01B5
	touchscreen_menu_show
	closemsg
	goto _01DD

_01B5:
	closemsg
	scrcmd_815 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 1, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_01DD:
	releaseall
	end

_01E1:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_01EC:

	step 51, 1
	step_end
	.align 4
_01F2:

	step 50, 1
	step_end
	.align 4


.close
