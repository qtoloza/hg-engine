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
	buffer_players_name 0
	goto_if_unset FLAG_UNK_0ED, _0129
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0134
	apply_movement obj_P01R0303_seaman_2, _0230
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_P01R0303_seaman_2, _0252
	apply_movement obj_player, _026C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	trainer_battle TRAINER_SAILOR_STANLY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A3
	npc_msg 6
	closemsg
	apply_movement obj_P01R0303_seaman_2, _027E
	wait_movement
	setvar VAR_UNK_40CB, 3
	hide_person obj_P01R0303_seaman_2
	setflag FLAG_UNK_21A
	releaseall
	end

scr_seq_P01R0303_001:
	scrcmd_609
	lockall
	apply_movement obj_player, _0288
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
	goto_if_eq _01A9
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _0296
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_eq _01DB
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_UNK_40CB, 7
	goto_if_ge _01EC
	releaseall
	end

_0129:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0134:
	apply_movement obj_P01R0303_seaman_2, _02A0
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_P01R0303_seaman_2, _02C2
	apply_movement obj_player, _02DC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	trainer_battle TRAINER_SAILOR_STANLY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A3
	npc_msg 6
	closemsg
	apply_movement obj_P01R0303_seaman_2, _02EE
	wait_movement
	setvar VAR_UNK_40CB, 3
	hide_person obj_P01R0303_seaman_2
	setflag FLAG_UNK_21A
	releaseall
	end

_01A3:
	white_out
	releaseall
	end

_01A9:
	apply_movement obj_player, _0296
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_eq _01DB
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_UNK_40CB, 7
	goto_if_ge _01EC
	releaseall
	end

_01DB:
	compare VAR_UNK_40CB, 7
	goto_if_ge _01EC
	releaseall
	end

_01EC:
	goto_if_set FLAG_BOAT_ARRIVED, _0219
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	setflag FLAG_BOAT_ARRIVED
	compare VAR_BOAT_DIRECTION, 1
	goto_if_ne _021D
	npc_msg 3
	goto _0228

_0219:
	releaseall
	end

_021D:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0228:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0230:

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
_0252:

	step 0, 2
	step 16, 2
	step 3, 2
	step 19, 4
	step 1, 2
	step 17, 1
	step_end
	.align 4
_026C:

	step 65, 1
	step 3, 2
	step 15, 1
	step 0, 2
	step_end
	.align 4
_027E:

	step 0, 2
	step 16, 7
	step_end
	.align 4
_0288:

	step 1, 2
	step 65, 1
	step 75, 1
	step_end
	.align 4
_0296:

	step 3, 2
	step 55, 1
	step_end
	.align 4
_02A0:

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
_02C2:

	step 0, 2
	step 16, 2
	step 2, 2
	step 18, 4
	step 1, 2
	step 17, 1
	step_end
	.align 4
_02DC:

	step 65, 1
	step 2, 2
	step 14, 1
	step 0, 2
	step_end
	.align 4
_02EE:

	step 0, 2
	step 16, 3
	step 3, 2
	step 19, 4
	step 0, 2
	step 16, 4
	step_end
	.align 4


.close
