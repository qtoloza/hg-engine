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

.include "armips/scr_seq/event_D48R0101.inc"


// text archive to grab from: 136.txt

.create "build/a012/2_121", 0


scrdef scr_seq_D48R0101_000
scrdef scr_seq_D48R0101_001
scrdef scr_seq_D48R0101_002
scrdef scr_seq_D48R0101_003
scrdef scr_seq_D48R0101_004
scrdef scr_seq_D48R0101_005
scrdef scr_seq_D48R0101_006
scrdef scr_seq_D48R0101_007
scrdef scr_seq_D48R0101_008
scrdef scr_seq_D48R0101_009
scrdef scr_seq_D48R0101_010
scrdef scr_seq_D48R0101_011
scrdef scr_seq_D48R0101_012
scrdef scr_seq_D48R0101_013
scrdef scr_seq_D48R0101_014
scrdef_end

scr_seq_D48R0101_005:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _0286
	setflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	end

scr_seq_D48R0101_006:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _028C
	end

scr_seq_D48R0101_004:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4001, 2
	goto_if_ne _02AB
	apply_movement obj_D48R0101_gsleader5, _043C
	goto _02D8

scr_seq_D48R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16360, _02FD
	compare VAR_UNK_40EB, 1
	goto_if_eq _0310
	goto_if_set FLAG_UNK_0F5, _031B
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D48R0101_001:
	simple_npc_msg 5
	end

scr_seq_D48R0101_002:
	simple_npc_msg 6
	end

scr_seq_D48R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F5, _033E
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D48R0101_007:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_D48R0101_rocketw, _0452
	wait_movement
	apply_movement obj_player, _0458
	npc_msg 12
	closemsg
	trainer_battle TRAINER_BEAUTY_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0349
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	setvar 24996, 2
	releaseall
	end

scr_seq_D48R0101_008:
	simple_npc_msg 13
	end

scr_seq_D48R0101_009:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_D48R0101_rocketm, _0452
	wait_movement
	apply_movement obj_player, _045E
	npc_msg 15
	closemsg
	trainer_battle TRAINER_BEAUTY_MICKEY_3, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0349
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	setvar 24995, 2
	releaseall
	end

scr_seq_D48R0101_010:
	simple_npc_msg 16
	end

scr_seq_D48R0101_011:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_D48R0101_rocketw_2, _0452
	wait_movement
	apply_movement obj_player, _045E
	npc_msg 17
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0349
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	setvar 24994, 2
	releaseall
	end

scr_seq_D48R0101_012:
	simple_npc_msg 18
	end

scr_seq_D48R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D48R0101_014:
	lockall
	buffer_players_name 0
	apply_movement obj_D48R0101_middlewoman1_2, _0452
	wait_movement
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _04C8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_0286:
	clearflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	end

_028C:
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 2
	goto_if_eq _034F
	move_person_facing obj_D48R0101_gsleader5, 19, 0, 40, DIR_SOUTH
	end

_02AB:
	apply_movement obj_D48R0101_gsleader5, _0464
	wait_movement
	buffer_players_name 0
	npc_msg 7
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0351
	apply_movement obj_D48R0101_gsleader5, _047A
	goto _037B

_02D8:
	wait_movement
	buffer_players_name 0
	npc_msg 7
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0351
	apply_movement obj_D48R0101_gsleader5, _047A
	goto _037B

_02FD:
	simple_npc_msg 14
	end

_0310:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031B:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _039D
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_033E:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0349:
	white_out
	releaseall
	end

_034F:
	end

_0351:
	apply_movement obj_D48R0101_gsleader5, _0484
	wait_movement
	npc_msg 8
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _03A8
	apply_movement obj_D48R0101_gsleader5, _048E
	goto _03DA

_037B:
	wait_movement
	npc_msg 8
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _03A8
	apply_movement obj_D48R0101_gsleader5, _048E
	goto _03DA

_039D:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03A8:
	apply_movement obj_D48R0101_gsleader5, _0494
	wait_movement
	npc_msg 9
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0404
	apply_movement obj_player, _049A
	apply_movement obj_D48R0101_gsleader5, _04AC
	goto _0424

_03DA:
	wait_movement
	npc_msg 9
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0404
	apply_movement obj_player, _049A
	apply_movement obj_D48R0101_gsleader5, _04AC
	goto _0424

_0404:
	apply_movement obj_D48R0101_gsleader5, _04B6
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	hide_person obj_D48R0101_gsleader5
	setvar VAR_SCENE_EMBEDDED_TOWER, 3
	releaseall
	end

_0424:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	hide_person obj_D48R0101_gsleader5
	setvar VAR_SCENE_EMBEDDED_TOWER, 3
	releaseall
	end

	.align 4
_043C:

	step 35, 1
	step 63, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end
	.align 4
_0452:

	step 75, 1
	step_end
	.align 4
_0458:

	step 0, 1
	step_end
	.align 4
_045E:

	step 3, 1
	step_end
	.align 4
_0464:

	step 33, 1
	step 63, 1
	step 13, 3
	step 14, 1
	step 13, 1
	step_end
	.align 4
_047A:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0484:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_048E:

	step 35, 1
	step_end
	.align 4
_0494:

	step 33, 1
	step_end
	.align 4
_049A:

	step 71, 1
	step 12, 1
	step 72, 1
	step 33, 1
	step_end
	.align 4
_04AC:

	step 63, 1
	step 15, 2
	step_end
	.align 4
_04B6:

	step 63, 1
	step 12, 4
	step 15, 2
	step 12, 9
	step_end
	.align 4
_04C8:

	step 15, 1
	step_end
	.align 4


.close
