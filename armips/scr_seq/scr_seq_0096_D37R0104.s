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

.include "armips/scr_seq/event_D37R0104.inc"


// text archive to grab from: 119.txt

.create "build/a012/2_096", 0


scrdef scr_seq_D37R0104_000
scrdef scr_seq_D37R0104_001
scrdef scr_seq_D37R0104_002
scrdef scr_seq_D37R0104_003
scrdef scr_seq_D37R0104_004
scrdef scr_seq_D37R0104_005
scrdef scr_seq_D37R0104_006
scrdef_end

scr_seq_D37R0104_006:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0033
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
_0033:
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 1
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	setvar VAR_TEMP_x4005, 0
	setvar VAR_TEMP_x4006, 0
	setvar VAR_TEMP_x4007, 0
	setvar VAR_TEMP_x4008, 0
	setvar VAR_TEMP_x4009, 1
	end

scr_seq_D37R0104_005:
	make_object_visible obj_D37R0104_stop_3
	make_object_visible obj_D37R0104_stop_2
	make_object_visible obj_D37R0104_stop
	make_object_visible obj_D37R0104_stop_4
	make_object_visible obj_D37R0104_stop_5
	make_object_visible obj_D37R0104_stop_6
	goto_if_set FLAG_OPENED_GOLDENROD_PURPLE_GATE, _0096
	end

_0096:
	move_person_facing obj_D37R0104_gate_left_6, 18, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0104_gate_right_6, 24, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0104_stop_6, 24, 0, 14, DIR_NORTH
	end

scr_seq_D37R0104_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00F5
	apply_movement obj_D37R0104_gate_left_2, _05CC
	apply_movement obj_D37R0104_gate_right_2, _05D4
	apply_movement obj_D37R0104_stop_2, _060C
	setvar VAR_TEMP_x4001, 1
	goto _0113

_00F5:
	apply_movement obj_D37R0104_gate_left_2, _05DC
	apply_movement obj_D37R0104_gate_right_2, _05E4
	apply_movement obj_D37R0104_stop_2, _0614
	setvar VAR_TEMP_x4001, 0
_0113:
	compare VAR_TEMP_x4003, 0
	goto_if_ne _013C
	apply_movement obj_D37R0104_gate_top_2, _05EC
	apply_movement obj_D37R0104_gate_bottom_2, _05F4
	setvar VAR_TEMP_x4003, 1
	goto _0152

_013C:
	apply_movement obj_D37R0104_gate_top_2, _05FC
	apply_movement obj_D37R0104_gate_bottom_2, _0604
	setvar VAR_TEMP_x4003, 0
_0152:
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0183
	apply_movement obj_D37R0104_gate_left_4, _05CC
	apply_movement obj_D37R0104_gate_right_4, _05D4
	apply_movement obj_D37R0104_stop_4, _060C
	setvar VAR_TEMP_x4005, 1
	goto _01A1

_0183:
	apply_movement obj_D37R0104_gate_left_4, _05DC
	apply_movement obj_D37R0104_gate_right_4, _05E4
	apply_movement obj_D37R0104_stop_4, _0614
	setvar VAR_TEMP_x4005, 0
_01A1:
	compare VAR_TEMP_x4006, 0
	goto_if_ne _01D2
	apply_movement obj_D37R0104_gate_left_5, _05CC
	apply_movement obj_D37R0104_gate_right_5, _05D4
	apply_movement obj_D37R0104_stop_5, _060C
	setvar VAR_TEMP_x4006, 1
	goto _01F0

_01D2:
	apply_movement obj_D37R0104_gate_left_5, _05DC
	apply_movement obj_D37R0104_gate_right_5, _05E4
	apply_movement obj_D37R0104_stop_5, _0614
	setvar VAR_TEMP_x4006, 0
_01F0:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0219
	apply_movement obj_D37R0104_gate_top_3, _05EC
	apply_movement obj_D37R0104_gate_bottom_3, _05F4
	setvar VAR_TEMP_x4007, 1
	goto _022F

_0219:
	apply_movement obj_D37R0104_gate_top_3, _05FC
	apply_movement obj_D37R0104_gate_bottom_3, _0604
	setvar VAR_TEMP_x4007, 0
_022F:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0258
	apply_movement obj_D37R0104_gate_top_4, _05EC
	apply_movement obj_D37R0104_gate_bottom_4, _05F4
	setvar VAR_TEMP_x4008, 1
	goto _026E

_0258:
	apply_movement obj_D37R0104_gate_top_4, _05FC
	apply_movement obj_D37R0104_gate_bottom_4, _0604
	setvar VAR_TEMP_x4008, 0
_026E:
	wait_movement
	releaseall
	end

scr_seq_D37R0104_001:
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4000, 0
	goto_if_ne _02AD
	apply_movement obj_D37R0104_gate_left, _05CC
	apply_movement obj_D37R0104_gate_right, _05D4
	apply_movement obj_D37R0104_stop_3, _060C
	setvar VAR_TEMP_x4000, 1
	goto _02CB

_02AD:
	apply_movement obj_D37R0104_gate_left, _05DC
	apply_movement obj_D37R0104_gate_right, _05E4
	apply_movement obj_D37R0104_stop_3, _0614
	setvar VAR_TEMP_x4000, 0
_02CB:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _02F4
	apply_movement obj_D37R0104_gate_top, _05EC
	apply_movement obj_D37R0104_gate_bottom, _05F4
	setvar VAR_TEMP_x4002, 1
	goto _030A

_02F4:
	apply_movement obj_D37R0104_gate_top, _05FC
	apply_movement obj_D37R0104_gate_bottom, _0604
	setvar VAR_TEMP_x4002, 0
_030A:
	compare VAR_TEMP_x4004, 0
	goto_if_ne _033B
	apply_movement obj_D37R0104_gate_left_3, _05CC
	apply_movement obj_D37R0104_gate_right_3, _05D4
	apply_movement obj_D37R0104_stop, _060C
	setvar VAR_TEMP_x4004, 1
	goto _0359

_033B:
	apply_movement obj_D37R0104_gate_left_3, _05DC
	apply_movement obj_D37R0104_gate_right_3, _05E4
	apply_movement obj_D37R0104_stop, _0614
	setvar VAR_TEMP_x4004, 0
_0359:
	compare VAR_TEMP_x4006, 0
	goto_if_ne _038A
	apply_movement obj_D37R0104_gate_left_5, _05CC
	apply_movement obj_D37R0104_gate_right_5, _05D4
	apply_movement obj_D37R0104_stop_5, _060C
	setvar VAR_TEMP_x4006, 1
	goto _03A8

_038A:
	apply_movement obj_D37R0104_gate_left_5, _05DC
	apply_movement obj_D37R0104_gate_right_5, _05E4
	apply_movement obj_D37R0104_stop_5, _0614
	setvar VAR_TEMP_x4006, 0
_03A8:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _03D1
	apply_movement obj_D37R0104_gate_top_4, _05EC
	apply_movement obj_D37R0104_gate_bottom_4, _05F4
	setvar VAR_TEMP_x4008, 1
	goto _03E7

_03D1:
	apply_movement obj_D37R0104_gate_top_4, _05FC
	apply_movement obj_D37R0104_gate_bottom_4, _0604
	setvar VAR_TEMP_x4008, 0
_03E7:
	compare VAR_TEMP_x4009, 0
	goto_if_ne _0410
	apply_movement obj_D37R0104_gate_top_5, _05EC
	apply_movement obj_D37R0104_gate_bottom_5, _05F4
	setvar VAR_TEMP_x4009, 1
	goto _0426

_0410:
	apply_movement obj_D37R0104_gate_top_5, _05FC
	apply_movement obj_D37R0104_gate_bottom_5, _0604
	setvar VAR_TEMP_x4009, 0
_0426:
	wait_movement
	releaseall
	end

scr_seq_D37R0104_000:
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4002, 0
	goto_if_ne _045D
	apply_movement obj_D37R0104_gate_top, _05EC
	apply_movement obj_D37R0104_gate_bottom, _05F4
	setvar VAR_TEMP_x4002, 1
	goto _0473

_045D:
	apply_movement obj_D37R0104_gate_top, _05FC
	apply_movement obj_D37R0104_gate_bottom, _0604
	setvar VAR_TEMP_x4002, 0
_0473:
	compare VAR_TEMP_x4003, 0
	goto_if_ne _049C
	apply_movement obj_D37R0104_gate_top_2, _05EC
	apply_movement obj_D37R0104_gate_bottom_2, _05F4
	setvar VAR_TEMP_x4003, 1
	goto _04B2

_049C:
	apply_movement obj_D37R0104_gate_top_2, _05FC
	apply_movement obj_D37R0104_gate_bottom_2, _0604
	setvar VAR_TEMP_x4003, 0
_04B2:
	compare VAR_TEMP_x4004, 0
	goto_if_ne _04E3
	apply_movement obj_D37R0104_gate_left_3, _05CC
	apply_movement obj_D37R0104_gate_right_3, _05D4
	apply_movement obj_D37R0104_stop, _060C
	setvar VAR_TEMP_x4004, 1
	goto _0501

_04E3:
	apply_movement obj_D37R0104_gate_left_3, _05DC
	apply_movement obj_D37R0104_gate_right_3, _05E4
	apply_movement obj_D37R0104_stop, _0614
	setvar VAR_TEMP_x4004, 0
_0501:
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0532
	apply_movement obj_D37R0104_gate_left_4, _05CC
	apply_movement obj_D37R0104_gate_right_4, _05D4
	apply_movement obj_D37R0104_stop_4, _060C
	setvar VAR_TEMP_x4005, 1
	goto _0550

_0532:
	apply_movement obj_D37R0104_gate_left_4, _05DC
	apply_movement obj_D37R0104_gate_right_4, _05E4
	apply_movement obj_D37R0104_stop_4, _0614
	setvar VAR_TEMP_x4005, 0
_0550:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0579
	apply_movement obj_D37R0104_gate_top_3, _05EC
	apply_movement obj_D37R0104_gate_bottom_3, _05F4
	setvar VAR_TEMP_x4007, 1
	goto _058F

_0579:
	apply_movement obj_D37R0104_gate_top_3, _05FC
	apply_movement obj_D37R0104_gate_bottom_3, _0604
	setvar VAR_TEMP_x4007, 0
_058F:
	wait_movement
	releaseall
	end

scr_seq_D37R0104_003:
	goto_if_set FLAG_OPENED_GOLDENROD_PURPLE_GATE, _05CA
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_ZUKAN06
	apply_movement obj_D37R0104_gate_left_6, _05DC
	apply_movement obj_D37R0104_gate_right_6, _05E4
	apply_movement obj_D37R0104_stop_6, _0614
	wait_movement
	setflag FLAG_OPENED_GOLDENROD_PURPLE_GATE
	releaseall
	end

_05CA:
	end

	.align 4
_05CC:

	step 15, 2
	step_end
	.align 4
_05D4:

	step 14, 2
	step_end
	.align 4
_05DC:

	step 14, 2
	step_end
	.align 4
_05E4:

	step 15, 2
	step_end
	.align 4
_05EC:

	step 13, 2
	step_end
	.align 4
_05F4:

	step 12, 2
	step_end
	.align 4
_05FC:

	step 12, 2
	step_end
	.align 4
_0604:

	step 13, 2
	step_end
	.align 4
_060C:

	step 15, 2
	step_end
	.align 4
_0614:

	step 14, 2
	step_end
scr_seq_D37R0104_004:
	scrcmd_609
	lockall
	callstd std_play_rival_intro_music
	move_person_facing obj_D37R0104_gsrivel, 28, 0, 4, DIR_WEST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D37R0104_gsrivel, _06E0
	apply_movement obj_player, _06F4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _067D
	trainer_battle TRAINER_RIVAL_SILVER_18, 0, 0, 0
	goto _06A0

_067D:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _0698
	trainer_battle TRAINER_RIVAL_SILVER_12, 0, 0, 0
	goto _06A0

_0698:
	trainer_battle TRAINER_RIVAL_SILVER_17, 0, 0, 0
_06A0:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D9
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	setvar VAR_UNK_40A0, 1
	apply_movement obj_D37R0104_gsrivel, _0700
	wait_movement
	hide_person obj_D37R0104_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_06D9:
	white_out
	releaseall
	end

	.align 4
_06E0:

	step 62, 6
	step 14, 3
	step 13, 1
	step 14, 4
	step_end
	.align 4
_06F4:

	step 75, 1
	step 15, 1
	step_end
	.align 4
_0700:

	step 15, 4
	step 12, 1
	step 15, 4
	step_end
	.align 4


.close
