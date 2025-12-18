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

.include "armips/scr_seq/event_D02R0104.inc"


// text archive to grab from: 051.txt

.create "build/a012/2_010", 0


scrdef scr_seq_D02R0104_000
scrdef scr_seq_D02R0104_001
scrdef scr_seq_D02R0104_002
scrdef scr_seq_D02R0104_003
scrdef scr_seq_D02R0104_004
scrdef scr_seq_D02R0104_005
scrdef_end

scr_seq_D02R0104_000:
	setflag FLAG_UNK_298
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _026E
	goto _0281

scr_seq_D02R0104_005:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _029E
	goto _02B1

scr_seq_D02R0104_002:
	scrcmd_609
	lockall
	clearflag FLAG_UNK_298
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _03B6
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _03BC
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _03C6
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _03D0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _03DA
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _03E4
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _03EA
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _03F0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _03FE
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _040C
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _041A
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _0428
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _042E
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _0434
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _044E
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _0468
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _0482
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _049C
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _04BE
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _04E0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _04FA
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _0514
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _052E
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _0548
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _056A
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _058C
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _05A6
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _05C0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _05DA
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _05F4
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _0616
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _0638
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _064E
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _0668
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _0682
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _069C
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _06BE
	wait_movement
	play_cry SPECIES_CLEFAIRY, 0
	apply_movement obj_D02R0104_follower_mon_static_clefairy, _06E0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_2, _0702
	apply_movement obj_D02R0104_follower_mon_static_clefairy_3, _0724
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _074A
	apply_movement obj_D02R0104_follower_mon_static_clefairy_5, _076C
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _0786
	wait_movement
	show_person obj_D02R0104_monstarball
	apply_movement obj_D02R0104_follower_mon_static_clefairy_4, _07A0
	apply_movement obj_D02R0104_follower_mon_static_clefairy_6, _07BA
	wait_movement
	hide_person obj_D02R0104_follower_mon_static_clefairy
	hide_person obj_D02R0104_follower_mon_static_clefairy_2
	hide_person obj_D02R0104_follower_mon_static_clefairy_3
	hide_person obj_D02R0104_follower_mon_static_clefairy_4
	hide_person obj_D02R0104_follower_mon_static_clefairy_5
	hide_person obj_D02R0104_follower_mon_static_clefairy_6
	setflag FLAG_UNK_26E
	setvar VAR_UNK_40F6, 1
	setflag FLAG_UNK_AB5
	apply_movement 241, _07D8
	wait_movement
	scrcmd_103
	releaseall
	end

scr_seq_D02R0104_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D02R0104_003:
	setvar VAR_SPECIAL_x8008, 81
	setvar VAR_SPECIAL_x8009, 1
	goto _02C8

scr_seq_D02R0104_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_026E:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0304
	goto _0310

_0281:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _032D
	setvar VAR_UNK_40F6, 1
	setflag FLAG_UNK_26E
	end

_029E:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0339
	goto _033F

_02B1:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _0356
	goto _0358

_02C8:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8008
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8009
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0389
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _039A
	end

_0304:
	setvar VAR_UNK_40F6, 1
	setflag FLAG_UNK_26E
	end

_0310:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_eq _032D
	setvar VAR_UNK_40F6, 1
	setflag FLAG_UNK_26E
	end

_032D:
	setvar VAR_UNK_40F6, 0
	clearflag FLAG_UNK_26E
	end

_0339:
	goto _0358

_033F:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_eq _0356
	goto _0358

_0356:
	end

_0358:
	compare VAR_UNK_40F6, 1
	goto_if_eq _0356
	setflag FLAG_UNK_26E
	hide_person obj_D02R0104_follower_mon_static_clefairy
	hide_person obj_D02R0104_follower_mon_static_clefairy_2
	hide_person obj_D02R0104_follower_mon_static_clefairy_3
	hide_person obj_D02R0104_follower_mon_static_clefairy_4
	hide_person obj_D02R0104_follower_mon_static_clefairy_5
	hide_person obj_D02R0104_follower_mon_static_clefairy_6
	setvar VAR_UNK_40F6, 1
	end

_0389:
	hide_person VAR_SPECIAL_LAST_TALKED
	callstd std_give_item_verbose
	buffer_players_name 0
	closemsg
	releaseall
	end

_039A:
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 4
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 0
	goto _03B0

_03B0:
	closemsg
	releaseall
	end

	.align 4
_03B6:

	step 76, 2
	step_end
	.align 4
_03BC:

	step 32, 5
	step 35, 1
	step_end
	.align 4
_03C6:

	step 34, 5
	step 32, 1
	step_end
	.align 4
_03D0:

	step 33, 5
	step 34, 1
	step_end
	.align 4
_03DA:

	step 35, 5
	step 33, 1
	step_end
	.align 4
_03E4:

	step 34, 6
	step_end
	.align 4
_03EA:

	step 35, 6
	step_end
	.align 4
_03F0:

	step 35, 6
	step 15, 1
	step 59, 1
	step_end
	.align 4
_03FE:

	step 32, 6
	step 12, 1
	step 56, 1
	step_end
	.align 4
_040C:

	step 34, 6
	step 14, 1
	step 58, 1
	step_end
	.align 4
_041A:

	step 33, 6
	step 13, 1
	step 57, 1
	step_end
	.align 4
_0428:

	step 34, 8
	step_end
	.align 4
_042E:

	step 35, 8
	step_end
	.align 4
_0434:

	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 12, 4
	step 56, 1
	step_end
	.align 4
_044E:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 14, 4
	step 58, 1
	step_end
	.align 4
_0468:

	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 13, 4
	step 57, 1
	step_end
	.align 4
_0482:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 15, 4
	step 59, 1
	step_end
	.align 4
_049C:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step_end
	.align 4
_04BE:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step_end
	.align 4
_04E0:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 14, 4
	step 58, 1
	step_end
	.align 4
_04FA:

	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 13, 4
	step 57, 1
	step_end
	.align 4
_0514:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 15, 4
	step 59, 1
	step_end
	.align 4
_052E:

	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 12, 4
	step 56, 1
	step_end
	.align 4
_0548:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step_end
	.align 4
_056A:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step_end
	.align 4
_058C:

	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 13, 4
	step 57, 1
	step_end
	.align 4
_05A6:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 15, 4
	step 59, 1
	step_end
	.align 4
_05C0:

	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 12, 4
	step 56, 1
	step_end
	.align 4
_05DA:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 14, 4
	step 58, 1
	step_end
	.align 4
_05F4:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step_end
	.align 4
_0616:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step_end
	.align 4
_0638:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 75, 1
	step_end
	.align 4
_064E:

	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 12, 2
	step 56, 1
	step_end
	.align 4
_0668:

	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 14, 2
	step 58, 1
	step_end
	.align 4
_0682:

	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 13, 2
	step 57, 1
	step_end
	.align 4
_069C:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step_end
	.align 4
_06BE:

	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step 35, 1
	step 32, 1
	step 34, 1
	step 33, 1
	step_end
	.align 4
_06E0:

	step 48, 3
	step 19, 6
	step 16, 3
	step 19, 3
	step 17, 3
	step 19, 1
	step 59, 1
	step 19, 2
	step_end
	.align 4
_0702:

	step 33, 1
	step 75, 1
	step 17, 1
	step 19, 3
	step 17, 2
	step 19, 1
	step 59, 1
	step 19, 2
	step_end
	.align 4
_0724:

	step 33, 1
	step 75, 1
	step 19, 4
	step 17, 3
	step 19, 3
	step 17, 2
	step 19, 1
	step 59, 1
	step 19, 2
	step_end
	.align 4
_074A:

	step 33, 1
	step 75, 1
	step 17, 2
	step 19, 6
	step 16, 3
	step 19, 2
	step 17, 3
	step 50, 2
	step_end
	.align 4
_076C:

	step 33, 1
	step 75, 1
	step 17, 2
	step 19, 2
	step 59, 1
	step 19, 3
	step_end
	.align 4
_0786:

	step 33, 1
	step 75, 1
	step 15, 2
	step 13, 3
	step 15, 5
	step 51, 2
	step_end
	.align 4
_07A0:

	step 38, 2
	step 36, 4
	step 48, 2
	step 19, 2
	step 59, 1
	step 19, 3
	step_end
	.align 4
_07BA:

	step 15, 1
	step 12, 3
	step 15, 3
	step 13, 3
	step 15, 1
	step 59, 1
	step 15, 3
	step_end
	.align 4
_07D8:

	step 65, 1
	step 77, 2
	step_end
	.align 4


.close
