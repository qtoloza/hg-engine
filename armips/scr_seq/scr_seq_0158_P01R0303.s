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

.include "armips/scr_seq/event_P01R0303.inc"


// text archive to grab from: 261.txt

.create "build/a012/2_158", 0


scrdef scr_seq_P01R0303_000
scrdef scr_seq_P01R0303_001
scrdef_end

scr_seq_P01R0303_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_0ED, _0112
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _009D
	apply_movement obj_P01R0303_seaman_2, _0120
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_P01R0303_seaman_2, _0144
	apply_movement obj_player, _01C8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	trainer_battle TRAINER_SAILOR_STANLY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _010C
	npc_msg 6
	closemsg
	apply_movement obj_P01R0303_seaman_2, _0160
	wait_movement
	setvar VAR_UNK_40CB, 3
	hide_person obj_P01R0303_seaman_2
	setflag FLAG_UNK_21A
	releaseall
	end

_009D:
	apply_movement obj_P01R0303_seaman_2, _016C
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_P01R0303_seaman_2, _0190
	apply_movement obj_player, _01DC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	trainer_battle TRAINER_SAILOR_STANLY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _010C
	npc_msg 6
	closemsg
	apply_movement obj_P01R0303_seaman_2, _01AC
	wait_movement
	setvar VAR_UNK_40CB, 3
	hide_person obj_P01R0303_seaman_2
	setflag FLAG_UNK_21A
	releaseall
	end

_010C:
	white_out
	releaseall
	end

_0112:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0120:

	step 75, 1
	step 63, 1
	step 3, 2
	step 2, 2
	step 3, 2
	step 71, 1
	step 58, 1
	step 72, 1
	step_end
	.align 4
_0144:

	step 0, 2
	step 16, 2
	step 3, 2
	step 19, 4
	step 1, 2
	step 17, 1
	step_end
	.align 4
_0160:

	step 0, 2
	step 16, 7
	step_end
	.align 4
_016C:

	step 75, 1
	step 63, 1
	step 2, 2
	step 3, 2
	step 2, 2
	step 71, 1
	step 59, 1
	step 72, 1
	step_end
	.align 4
_0190:

	step 0, 2
	step 16, 2
	step 2, 2
	step 18, 4
	step 1, 2
	step 17, 1
	step_end
	.align 4
_01AC:

	step 0, 2
	step 16, 3
	step 3, 2
	step 19, 4
	step 0, 2
	step 16, 4
	step_end
	.align 4
_01C8:

	step 65, 1
	step 3, 2
	step 15, 1
	step 0, 2
	step_end
	.align 4
_01DC:

	step 65, 1
	step 2, 2
	step 14, 1
	step 0, 2
	step_end
scr_seq_P01R0303_001:
	scrcmd_609
	lockall
	apply_movement obj_player, _02B4
	wait_movement
	npc_msg 0
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
	npc_msg 1
	closemsg
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0247
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
_0247:
	apply_movement obj_player, _02C4
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0268
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
_0268:
	compare VAR_UNK_40CB, 7
	goto_if_ge _0279
	releaseall
	end

_0279:
	goto_if_set FLAG_BOAT_ARRIVED, _02AD
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	setflag FLAG_BOAT_ARRIVED
	compare VAR_BOAT_DIRECTION, 1
	goto_if_ne _02A6
	npc_msg 3
	goto _02A9

_02A6:
	npc_msg 2
_02A9:
	wait_button_or_walk_away
	closemsg
_02AD:
	releaseall
	end

	.align 4
_02B4:

	step 1, 2
	step 65, 1
	step 75, 1
	step_end
	.align 4
_02C4:

	step 3, 2
	step 55, 1
	step_end
	.align 4


.close
