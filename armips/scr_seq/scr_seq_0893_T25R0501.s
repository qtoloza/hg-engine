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

.include "armips/scr_seq/event_T25R0501.inc"


// text archive to grab from: 587.txt

.create "build/a012/2_893", 0


scrdef scr_seq_T25R0501_000
scrdef scr_seq_T25R0501_001
scrdef scr_seq_T25R0501_002
scrdef scr_seq_T25R0501_003
scrdef scr_seq_T25R0501_004
scrdef scr_seq_T25R0501_005
scrdef scr_seq_T25R0501_006
scrdef scr_seq_T25R0501_007
scrdef_end

scr_seq_T25R0501_006:
	scrcmd_582 MAP_T25, 348, 350
	goto_if_set FLAG_RESTORED_POWER, _0037
	end

_0037:
	setvar VAR_UNK_410B, 0
	end

scr_seq_T25R0501_005:
	goto_if_set FLAG_RESTORED_POWER, _004C
	end

_004C:
	move_person_facing obj_T25R0501_policeman, 4, 0, 6, DIR_EAST
	end

scr_seq_T25R0501_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _0078
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0078:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0096
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	goto _00A5

_0096:
	npc_msg 7
	closemsg
	apply_movement obj_T25R0501_policeman, _00AC
	wait_movement
_00A5:
	releaseall
	end


_00AC:

	step 3, 1
	step_end
scr_seq_T25R0501_001:
	scrcmd_609
	lockall
	apply_movement obj_player, _013C
	wait_movement
	goto_if_set FLAG_UNK_123, _0118
	npc_msg 1
	closemsg
	setflag FLAG_UNK_123
_00D6:
	wait 50, VAR_SPECIAL_x8004
	hasitem ITEM_PASS, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0123
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0144
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_0118:
	npc_msg 3
	closemsg
	goto _00D6

_0123:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_410B, 1
	setvar VAR_UNK_411E, 1
	releaseall
	end


_013C:

	step 34, 1
	step_end

_0144:

	step 13, 2
	step_end
scr_seq_T25R0501_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0501_002:
	end

scr_seq_T25R0501_003:
	end

scr_seq_T25R0501_004:
	end
	.align 4


.close
