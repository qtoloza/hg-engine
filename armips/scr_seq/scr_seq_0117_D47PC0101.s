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

.include "armips/scr_seq/event_D47PC0101.inc"


// text archive to grab from: 134.txt

.create "build/a012/2_117", 0


scrdef scr_seq_D47PC0101_000
scrdef scr_seq_D47PC0101_001
scrdef scr_seq_D47PC0101_002
scrdef scr_seq_D47PC0101_003
scrdef scr_seq_D47PC0101_004
scrdef_end

scr_seq_D47PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_D47PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16258, _01AA
	npc_msg 0
	giveitem_no_check ITEM_UP_GRADE, 1
	setflag 16258
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47PC0101_002:
	simple_npc_msg 1
	end

scr_seq_D47PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01B5
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_DUMMY2
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D47PC0101_pcwoman1_2, _01C0
	wait_movement
	clearflag 16383
	show_person obj_D47PC0101_rocketw
	hide_person obj_D47PC0101_pcwoman1_2
	show_person obj_D47PC0101_rkanbum
	apply_movement obj_D47PC0101_rocketw, _01C0
	apply_movement obj_D47PC0101_rkanbum, _01E2
	wait_movement
	apply_movement obj_player, _01EC
	wait_movement
	npc_msg 5
	closemsg
	show_person obj_D47PC0101_seven2
	apply_movement obj_D47PC0101_seven2, _01F2
	apply_movement obj_player, _01F8
	apply_movement obj_partner_poke, _01F8
	wait_movement
	npc_msg 6
	closemsg
	wait_movement
	apply_movement obj_player, _01EC
	apply_movement obj_D47PC0101_seven2, _01EC
	wait_movement
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D47PC0101_rkanbum, _01FE
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47PC0101_rkanbum
	wait_se SEQ_SE_DP_DOOR
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D47PC0101_seven2, _020C
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47PC0101_seven2
	wait_se SEQ_SE_DP_DOOR
	apply_movement obj_player, _0212
	wait_movement
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47PC0101_rocketw
	setflag 16383
	setflag 16352
	clearflag 16351
	setvar 24880, 0
	fade_screen 8, 1, 1, RGB_BLACK
	releaseall
	end

scr_seq_D47PC0101_004:
	play_cry SPECIES_PORYGON2, 0
	simple_npc_msg 17
	end

_01AA:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01B5:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_01C0:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_01E2:

	step 13, 7
	step 10, 3
	step_end
	.align 4
_01EC:

	step 3, 1
	step_end
	.align 4
_01F2:

	step 16, 4
	step_end
	.align 4
_01F8:

	step 1, 1
	step_end
	.align 4
_01FE:

	step 13, 5
	step 14, 2
	step 13, 1
	step_end
	.align 4
_020C:

	step 17, 4
	step_end
	.align 4
_0212:

	step 0, 1
	step_end
	.align 4


.close
