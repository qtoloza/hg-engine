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

.include "armips/scr_seq/event_D17R0101.inc"


// text archive to grab from: 057.txt

.create "build/a012/2_019", 0


scrdef scr_seq_D17R0101_000
scrdef scr_seq_D17R0101_001
scrdef scr_seq_D17R0101_002
scrdef scr_seq_D17R0101_003
scrdef_end

scr_seq_D17R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_CAUGHT_HO_OH, _00A0
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _00AB
	goto_if_set FLAG_UNK_108, _00B6
	goto_if_set FLAG_UNK_105, _00C1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D17R0101_001:
	scrcmd_609
	lockall
	get_player_facing VAR_TEMP_x400A
	compare VAR_TEMP_x400A, 0
	goto_if_ne _00CC
	apply_movement obj_D17R0101_bozu, _03A2
	goto _0126

scr_seq_D17R0101_002:
	wait 30, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x400A, 0
	goto_if_ne _0178
	apply_movement obj_D17R0101_bozu, _03A8
	goto _018B

scr_seq_D17R0101_003:
	buffer_players_name 0
	end

_00A0:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00AB:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B6:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00C1:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00CC:
	apply_movement obj_D17R0101_bozu, _03B6
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_TEMP_x400A, 0
	call_if_eq _0196
	compare VAR_TEMP_x400A, 2
	call_if_eq _01B1
	goto_if_set FLAG_UNK_093, _01CC
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	compare VAR_TEMP_x400A, 0
	goto_if_ne _01DF
	apply_movement obj_player, _03C0
	goto _0215

_0126:
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_TEMP_x400A, 0
	call_if_eq _0196
	compare VAR_TEMP_x400A, 2
	call_if_eq _01B1
	goto_if_set FLAG_UNK_093, _01CC
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	compare VAR_TEMP_x400A, 0
	goto_if_ne _01DF
	apply_movement obj_player, _03C0
	goto _0215

_0178:
	apply_movement obj_D17R0101_bozu, _03CE
	wait_movement
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	end

_018B:
	wait_movement
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	end

_0196:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _023B
	apply_movement obj_D17R0101_bozu, _03DC
	goto _0256

_01B1:
	compare VAR_SPECIAL_x8005, 7
	goto_if_ne _025A
	apply_movement obj_D17R0101_bozu, _03EA
	goto _0275

_01CC:
	npc_msg 2
	closemsg
	show_legendary_wing 0
	releaseall
	setvar VAR_UNK_40F3, 1
	end

_01DF:
	apply_movement obj_D17R0101_bozu, _03F8
	apply_movement obj_player, _03F8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0279
	npc_msg 0
	goto _02A2

_0215:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0279
	npc_msg 0
	goto _02A2

_023B:
	compare VAR_SPECIAL_x8004, 8
	goto_if_ne _02C8
	apply_movement obj_D17R0101_bozu, _0406
	goto _0256

_0256:
	wait_movement
	return

_025A:
	compare VAR_SPECIAL_x8005, 8
	goto_if_ne _02D4
	apply_movement obj_D17R0101_bozu, _040C
	goto _0275

_0275:
	wait_movement
	return

_0279:
	npc_msg 1
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_TEMP_x400A, 0
	call_if_eq _02EF
	compare VAR_TEMP_x400A, 2
	call_if_eq _030A
	releaseall
	end

_02A2:
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_TEMP_x400A, 0
	call_if_eq _02EF
	compare VAR_TEMP_x400A, 2
	call_if_eq _030A
	releaseall
	end

_02C8:
	apply_movement obj_D17R0101_bozu, _0412
	wait_movement
	return

_02D4:
	compare VAR_SPECIAL_x8005, 9
	goto_if_ne _0325
	apply_movement obj_D17R0101_bozu, _0420
	goto _0275

_02EF:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _0331
	apply_movement obj_D17R0101_bozu, _042A
	goto _034C

_030A:
	compare VAR_SPECIAL_x8005, 7
	goto_if_ne _0350
	apply_movement obj_D17R0101_bozu, _043C
	goto _036B

_0325:
	apply_movement obj_D17R0101_bozu, _0446
	wait_movement
	return

_0331:
	compare VAR_SPECIAL_x8004, 8
	goto_if_ne _036F
	apply_movement obj_D17R0101_bozu, _0450
	goto _034C

_034C:
	wait_movement
	return

_0350:
	compare VAR_SPECIAL_x8005, 8
	goto_if_ne _037B
	apply_movement obj_D17R0101_bozu, _045A
	goto _036B

_036B:
	wait_movement
	return

_036F:
	apply_movement obj_D17R0101_bozu, _0464
	wait_movement
	return

_037B:
	compare VAR_SPECIAL_x8005, 9
	goto_if_ne _0396
	apply_movement obj_D17R0101_bozu, _0476
	goto _036B

_0396:
	apply_movement obj_D17R0101_bozu, _0484
	wait_movement
	return

	.align 4
_03A2:

	step 75, 1
	step_end
	.align 4
_03A8:

	step 71, 1
	step 4, 1
	step 72, 1
	step_end
	.align 4
_03B6:

	step 3, 1
	step 75, 1
	step_end
	.align 4
_03C0:

	step 71, 1
	step 13, 1
	step 72, 1
	step_end
	.align 4
_03CE:

	step 71, 1
	step 6, 1
	step 72, 1
	step_end
	.align 4
_03DC:

	step 13, 2
	step 14, 1
	step 13, 1
	step_end
	.align 4
_03EA:

	step 12, 1
	step 15, 2
	step 15, 1
	step_end
	.align 4
_03F8:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_0406:

	step 13, 3
	step_end
	.align 4
_040C:

	step 15, 3
	step_end
	.align 4
_0412:

	step 13, 2
	step 15, 1
	step 13, 1
	step_end
	.align 4
_0420:

	step 13, 1
	step 15, 3
	step_end
	.align 4
_042A:

	step 12, 1
	step 15, 1
	step 12, 2
	step 33, 1
	step_end
	.align 4
_043C:

	step 14, 4
	step 13, 1
	step_end
	.align 4
_0446:

	step 13, 2
	step 15, 3
	step_end
	.align 4
_0450:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_045A:

	step 14, 4
	step 33, 1
	step_end
	.align 4
_0464:

	step 12, 1
	step 14, 1
	step 12, 2
	step 33, 1
	step_end
	.align 4
_0476:

	step 14, 4
	step 12, 1
	step 33, 1
	step_end
	.align 4
_0484:

	step 14, 4
	step 12, 2
	step 33, 1
	step_end
	.align 4


.close
