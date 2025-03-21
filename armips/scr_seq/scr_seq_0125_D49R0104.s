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

.include "armips/scr_seq/event_D49R0104.inc"


// text archive to grab from: 140.txt

.create "build/a012/2_125", 0


scrdef scr_seq_D49R0104_000
scrdef scr_seq_D49R0104_001
scrdef scr_seq_D49R0104_002
scrdef scr_seq_D49R0104_003
scrdef scr_seq_D49R0104_004
scrdef scr_seq_D49R0104_005
scrdef scr_seq_D49R0104_006
scrdef scr_seq_D49R0104_007
scrdef scr_seq_D49R0104_008
scrdef scr_seq_D49R0104_009
scrdef scr_seq_D49R0104_010
scrdef scr_seq_D49R0104_011
scrdef scr_seq_D49R0104_012
scrdef scr_seq_D49R0104_013
scrdef_end

scr_seq_D49R0104_012:
	goto_if_set FLAG_UNK_0EF, _004D
	setvar VAR_TEMP_x400B, 0
	end

_004D:
	setvar VAR_TEMP_x400B, 1
	end

scr_seq_D49R0104_011:
	compare VAR_TEMP_x400B, 1
	goto_if_ne _0074
	move_person_facing obj_D49R0104_pcwoman2_2, 2, 1, 3, DIR_EAST
	setvar VAR_TEMP_x400B, 0
_0074:
	end

scr_seq_D49R0104_000:
	simple_npc_msg 0
	end

scr_seq_D49R0104_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0EF, _00A7
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00A7:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0104_002:
	simple_npc_msg 3
	end

scr_seq_D49R0104_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	closemsg
	apply_movement obj_D49R0104_follower_mon_static_rattata, _00F0
	wait_movement
	play_cry SPECIES_RATTATA, 0
	npc_msg 11
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_00F0:

	step 48, 2
	step_end
scr_seq_D49R0104_004:
	simple_npc_msg 5
	end

scr_seq_D49R0104_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_RATTATA, 0
	npc_msg 10
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0104_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ZUBAT, 0
	npc_msg 12
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0104_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 6
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_712 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_D49R0104_008:
	simple_npc_msg 7
	end

scr_seq_D49R0104_009:
	simple_npc_msg 8
	end

scr_seq_D49R0104_010:
	simple_npc_msg 9
	end

scr_seq_D49R0104_013:
	simple_npc_msg 13
	end
	.align 4


.close
