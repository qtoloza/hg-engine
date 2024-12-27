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

.include "armips/scr_seq/event_P01R0307.inc"


// text archive to grab from: 263.txt

.create "build/a012/2_162", 0


scrdef scr_seq_P01R0307_000
scrdef scr_seq_P01R0307_001
scrdef scr_seq_P01R0307_002
scrdef scr_seq_P01R0307_003
scrdef_end

scr_seq_P01R0307_002:
	compare VAR_UNK_40CB, 4
	goto_if_ne _0029
	clearflag FLAG_UNK_219
	goto _002D

_0029:
	setflag FLAG_UNK_219
_002D:
	end

scr_seq_P01R0307_001:
	scrcmd_609
	lockall
	setflag FLAG_UNK_0ED
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 19
	goto_if_eq _0088
	apply_movement obj_P01R0307_seaman_2, _00C4
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _006B
	apply_movement obj_partner_poke, _0114
_006B:
	apply_movement obj_player, _0104
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_P01R0307_seaman_2, _00D4
	wait_movement
	releaseall
	end

_0088:
	apply_movement obj_P01R0307_seaman_2, _00E4
	compare VAR_TEMP_x4002, 0
	goto_if_eq _00A5
	apply_movement obj_partner_poke, _0114
_00A5:
	apply_movement obj_player, _0104
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_P01R0307_seaman_2, _00F4
	wait_movement
	releaseall
	end


_00C4:

	step 0, 2
	step 12, 1
	step 2, 2
	step_end

_00D4:

	step 1, 2
	step 13, 1
	step 2, 2
	step_end

_00E4:

	step 1, 2
	step 13, 1
	step 2, 2
	step_end

_00F4:

	step 0, 2
	step 12, 1
	step 2, 2
	step_end

_0104:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end

_0114:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
scr_seq_P01R0307_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40CB, 3
	goto_if_ge _0148
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_0ED
	releaseall
	end

_0148:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_P01R0307_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_P01R0307_gsbabygirl1, _020C
	wait_movement
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0180
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
_0180:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01A7
	apply_movement obj_player, _0218
	apply_movement obj_P01R0307_gsbabygirl1, _0238
	goto _01B7

_01A7:
	apply_movement obj_player, _0228
	apply_movement obj_P01R0307_gsbabygirl1, _0244
_01B7:
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_eq _01D0
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
_01D0:
	npc_msg 6
	closemsg
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	setvar VAR_UNK_40CB, 5
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_P01R0306, 0, 9, 10, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end


_020C:

	step 75, 1
	step 63, 1
	step_end

_0218:

	step 71, 1
	step 8, 1
	step 72, 1
	step_end

_0228:

	step 71, 1
	step 11, 2
	step 72, 1
	step_end

_0238:

	step 0, 2
	step 8, 1
	step_end

_0244:

	step 3, 2
	step 11, 2
	step_end
	.align 4


.close
