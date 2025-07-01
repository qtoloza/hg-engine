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

.include "armips/scr_seq/event_D43R0103.inc"


// text archive to grab from: 128.txt

.create "build/a012/2_110", 0


scrdef scr_seq_D43R0103_000
scrdef scr_seq_D43R0103_001
scrdef scr_seq_D43R0103_002
scrdef scr_seq_D43R0103_003
scrdef scr_seq_D43R0103_004
scrdef scr_seq_D43R0103_005
scrdef scr_seq_D43R0103_006
scrdef scr_seq_D43R0103_007
scrdef_end

scr_seq_D43R0103_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _0384
	wait_movement
	clearflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	show_person obj_D43R0103_gsrivel
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _00FA
	apply_movement obj_D43R0103_gsrivel, _0392
	goto _0115

scr_seq_D43R0103_001:
	end

scr_seq_D43R0103_002:
	setvar VAR_TEMP_x4000, 57
	setvar VAR_TEMP_x4001, 42
	goto _015A

scr_seq_D43R0103_003:
	setvar VAR_TEMP_x4000, 28
	setvar VAR_TEMP_x4001, 38
	goto _015A

scr_seq_D43R0103_004:
	setvar VAR_TEMP_x4000, 31
	setvar VAR_TEMP_x4001, 44
	goto _015A

scr_seq_D43R0103_005:
	setvar VAR_TEMP_x4000, 22
	setvar VAR_TEMP_x4001, 17
	goto _015A

scr_seq_D43R0103_006:
	setvar VAR_TEMP_x4000, 58
	setvar VAR_TEMP_x4001, 28
	goto _015A

scr_seq_D43R0103_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00FA:
	compare VAR_TEMP_x4000, 38
	goto_if_ne _018B
	apply_movement obj_D43R0103_gsrivel, _03A8
	goto _0115

_0115:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03BE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _01D8
	trainer_battle TRAINER_RIVAL_SILVER_9, 0, 0, 0
	goto _01F3

_015A:
	scrcmd_609
	lockall
	setvar VAR_UNK_40CA, 1
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _022E
	apply_movement obj_player, _03C4
	apply_movement obj_partner_poke, _03CE
	goto _0251

_018B:
	apply_movement obj_D43R0103_gsrivel, _03DC
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03BE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _01D8
	trainer_battle TRAINER_RIVAL_SILVER_9, 0, 0, 0
	goto _01F3

_01D8:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _027F
	trainer_battle TRAINER_RIVAL_SILVER_13, 0, 0, 0
	goto _01F3

_01F3:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02C2
	callstd std_play_rival_outro_music
	npc_msg 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _02D0
	apply_movement obj_D43R0103_gsrivel, _03F2
	goto _02EB

_022E:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0303
	apply_movement obj_player, _040C
	apply_movement obj_partner_poke, _0416
	goto _0251

_0251:
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D43R0102, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_027F:
	trainer_battle TRAINER_RIVAL_SILVER_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02C2
	callstd std_play_rival_outro_music
	npc_msg 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _02D0
	apply_movement obj_D43R0103_gsrivel, _03F2
	goto _02EB

_02C2:
	hide_person obj_D43R0103_gsrivel
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	white_out
	releaseall
	end

_02D0:
	compare VAR_TEMP_x4000, 38
	goto_if_ne _0326
	apply_movement obj_D43R0103_gsrivel, _0424
	goto _02EB

_02EB:
	wait_movement
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	hide_person obj_D43R0103_gsrivel
	callstd std_fade_end_rival_outro_music
	setvar VAR_UNK_40C5, 1
	releaseall
	end

_0303:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0346
	apply_movement obj_player, _0444
	apply_movement obj_partner_poke, _044E
	goto _0251

_0326:
	apply_movement obj_D43R0103_gsrivel, _045C
	wait_movement
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	hide_person obj_D43R0103_gsrivel
	callstd std_fade_end_rival_outro_music
	setvar VAR_UNK_40C5, 1
	releaseall
	end

_0346:
	apply_movement obj_player, _0476
	apply_movement obj_partner_poke, _0480
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D43R0102, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0384:

	step 75, 1
	step 63, 2
	step 1, 2
	step_end
	.align 4
_0392:

	step 16, 3
	step 3, 2
	step 19, 4
	step 0, 2
	step 16, 3
	step_end
	.align 4
_03A8:

	step 16, 3
	step 3, 2
	step 19, 5
	step 0, 2
	step 16, 3
	step_end
	.align 4
_03BE:

	step 9, 1
	step_end
	.align 4
_03C4:

	step 40, 4
	step 69, 1
	step_end
	.align 4
_03CE:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
	.align 4
_03DC:

	step 16, 3
	step 3, 2
	step 19, 6
	step 0, 2
	step 16, 3
	step_end
	.align 4
_03F2:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 5
	step 1, 2
	step 13, 7
	step_end
	.align 4
_040C:

	step 41, 4
	step 69, 1
	step_end
	.align 4
_0416:

	step 62, 3
	step 21, 1
	step 69, 1
	step_end
	.align 4
_0424:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 6
	step 1, 2
	step 13, 7
	step_end
	.align 4
_0444:

	step 43, 4
	step 69, 1
	step_end
	.align 4
_044E:

	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.align 4
_045C:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 7
	step 1, 2
	step 13, 7
	step_end
	.align 4
_0476:

	step 42, 4
	step 69, 1
	step_end
	.align 4
_0480:

	step 62, 3
	step 22, 1
	step 69, 1
	step_end
	.align 4


.close
