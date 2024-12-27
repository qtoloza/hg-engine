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

.include "armips/scr_seq/event_T25R1002.inc"


// text archive to grab from: 593.txt

.create "build/a012/2_900", 0


scrdef scr_seq_T25R1002_000
scrdef scr_seq_T25R1002_001
scrdef scr_seq_T25R1002_002
scrdef scr_seq_T25R1002_003
scrdef scr_seq_T25R1002_004
scrdef scr_seq_T25R1002_005
scrdef scr_seq_T25R1002_006
scrdef scr_seq_T25R1002_007
scrdef_end

scr_seq_T25R1002_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 3
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1002_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 4
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1002_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _00F1
	npc_msg 1
	goto _00FC

scr_seq_T25R1002_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0104
	npc_msg 5
	goto _010F

scr_seq_T25R1002_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0117
	npc_msg 3
	goto _0122

scr_seq_T25R1002_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1002_006:
	simple_npc_msg 9
	end

scr_seq_T25R1002_007:
	play_cry SPECIES_IGGLYBUFF, 0
	simple_npc_msg 10
	end

_00F1:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00FC:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0104:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0117:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0122:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
