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

.include "armips/scr_seq/event_D46R0101.inc"


// text archive to grab from: 132.txt

.create "build/a012/2_115", 0


scrdef scr_seq_D46R0101_000
scrdef scr_seq_D46R0101_001
scrdef scr_seq_D46R0101_002
scrdef scr_seq_D46R0101_003
scrdef scr_seq_D46R0101_004
scrdef scr_seq_D46R0101_005
scrdef scr_seq_D46R0101_006
scrdef scr_seq_D46R0101_007
scrdef_end

scr_seq_D46R0101_001:
	check_registered_phone_number PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01BF
	goto_if_set FLAG_GAME_CLEAR, _01C5
	goto _01BF

scr_seq_D46R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4002, 1
	goto_if_ge _01DC
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01E5
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0228
	end

scr_seq_D46R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEW, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_D46R0101_follower_mon_mew, _0272
	wait_movement
	hide_person obj_D46R0101_follower_mon_mew
	move_person_facing obj_D46R0101_follower_mon_mew_2, 33, 0, 25, DIR_SOUTH
	apply_movement obj_D46R0101_follower_mon_mew_2, _02B8
	clearflag 16328
	releaseall
	end

scr_seq_D46R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEW, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_D46R0101_follower_mon_mew_2, _0272
	wait_movement
	hide_person obj_D46R0101_follower_mon_mew_2
	move_person_facing obj_D46R0101_follower_mon_mew_3, 41, 0, 62, DIR_SOUTH
	apply_movement obj_D46R0101_follower_mon_mew_3, _02B8
	releaseall
	end

scr_seq_D46R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEW, 0
	npc_msg 5
	wait_cry
	wait_button_or_walk_away
	closemsg
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_D46R0101_follower_mon_mew_3, _0272
	wait_movement
	hide_person obj_D46R0101_follower_mon_mew_3
	move_person_facing obj_D46R0101_follower_mon_mew_4, 26, 0, 41, DIR_EAST
	apply_movement obj_D46R0101_follower_mon_mew_4, _02BE
	releaseall
	end

scr_seq_D46R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEW, 0
	npc_msg 6
	closemsg
	wait_cry
	wild_battle SPECIES_MEW, 45, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0239
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D46R0101_follower_mon_mew_4
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _023F
	compare VAR_TEMP_x4002, 5
	call_if_eq _023F
	releaseall
	end

scr_seq_D46R0101_006:
	buffer_players_name 0
	end

scr_seq_D46R0101_007:
	setflag FLAG_UNK_263
	end

_01BF:
	setflag FLAG_UNK_263
	end

_01C5:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _01BF
	clearflag FLAG_UNK_263
	end

_01DC:
	npc_msg 4
	goto _024E

_01E5:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BUGSY
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_263
	hide_person obj_D46R0101_gsleader2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0228:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0239:
	white_out
	releaseall
	end

_023F:
	npc_msg 7
	clearflag 16328
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_024E:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01E5
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0228
	end

	.align 4
_0272:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.align 4
_02B8:

	step 33, 1
	step_end
	.align 4
_02BE:

	step 34, 1
	step_end
	.align 4


.close
