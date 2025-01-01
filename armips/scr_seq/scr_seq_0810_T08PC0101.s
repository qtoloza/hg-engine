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

.include "armips/scr_seq/event_T08PC0101.inc"


// text archive to grab from: 515.txt

.create "build/a012/2_810", 0


scrdef scr_seq_T08PC0101_000
scrdef scr_seq_T08PC0101_001
scrdef scr_seq_T08PC0101_002
scrdef scr_seq_T08PC0101_003
scrdef scr_seq_T08PC0101_004
scrdef scr_seq_T08PC0101_005
scrdef scr_seq_T08PC0101_006
scrdef scr_seq_T08PC0101_007
scrdef_end

scr_seq_T08PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T08PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T08PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T08PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0115
	apply_movement obj_T08PC0101_gsgirl1, _01B2
	goto _0130

scr_seq_T08PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_CLOYSTER, 6
	npc_msg 4
	wait_cry
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	play_cry SPECIES_CLOYSTER, 0
	release obj_T08PC0101_follower_mon_cloyster
	scrcmd_523 obj_T08PC0101_follower_mon_cloyster, 4, 90, 4, 0
	lock obj_T08PC0101_follower_mon_cloyster
	wait_cry
	goto_if_set 16225, _014E
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08PC0101_005:
	play_cry SPECIES_SHELLDER, 5
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08PC0101_006:
	play_cry SPECIES_SHELLDER, 6
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08PC0101_007:
	play_cry SPECIES_SLOWPOKE, 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0115:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _013B
	apply_movement obj_T08PC0101_gsgirl1, _01D4
	goto _0130

_0130:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013B:
	apply_movement obj_T08PC0101_gsgirl1, _01F6
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_014E:
	stop_bgm 0
	play_bgm SEQ_GS_EYE_K_SHOUNEN
	npc_msg 10
	closemsg
	release obj_T08PC0101_follower_mon_cloyster
	scrcmd_523 obj_T08PC0101_follower_mon_cloyster, 2, 90, 2, 0
	lock obj_T08PC0101_follower_mon_cloyster
	play_cry SPECIES_CLOYSTER, 0
	npc_msg 11
	wait_cry
	closemsg
	wild_battle SPECIES_CLOYSTER, 59, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T08PC0101_follower_mon_cloyster
	hide_person obj_T08PC0101_follower_mon_shellder
	hide_person obj_T08PC0101_follower_mon_shellder_2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_01B2:

	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step_end
	.align 4
_01D4:

	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step_end
	.align 4
_01F6:

	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step_end
	.align 4


.close
