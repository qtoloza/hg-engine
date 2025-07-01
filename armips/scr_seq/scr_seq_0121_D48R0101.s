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

.include "armips/scr_seq/event_D48R0101.inc"


// text archive to grab from: 136.txt

.create "build/a012/2_121", 0


scrdef scr_seq_D48R0101_000
scrdef scr_seq_D48R0101_001
scrdef scr_seq_D48R0101_002
scrdef scr_seq_D48R0101_003
scrdef scr_seq_D48R0101_004
scrdef scr_seq_D48R0101_005
scrdef scr_seq_D48R0101_006
scrdef_end

scr_seq_D48R0101_005:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _0031
	setflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	end

_0031:
	clearflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	end

scr_seq_D48R0101_006:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _0046
	end

_0046:
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 2
	goto_if_eq _0065
	move_person_facing obj_D48R0101_gsleader5, 19, 0, 40, DIR_SOUTH
	end

_0065:
	end

scr_seq_D48R0101_004:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0086
	apply_movement obj_D48R0101_gsleader5, _0130
	goto _008E

_0086:
	apply_movement obj_D48R0101_gsleader5, _0148
_008E:
	wait_movement
	buffer_players_name 0
	npc_msg 7
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _00B3
	apply_movement obj_D48R0101_gsleader5, _0160
	goto _00BB

_00B3:
	apply_movement obj_D48R0101_gsleader5, _016C
_00BB:
	wait_movement
	npc_msg 8
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _00DD
	apply_movement obj_D48R0101_gsleader5, _0178
	goto _00E5

_00DD:
	apply_movement obj_D48R0101_gsleader5, _0180
_00E5:
	wait_movement
	npc_msg 9
	closemsg
	compare VAR_TEMP_x4001, 2
	goto_if_ne _010F
	apply_movement obj_player, _01A8
	apply_movement obj_D48R0101_gsleader5, _0188
	goto _0117

_010F:
	apply_movement obj_D48R0101_gsleader5, _0194
_0117:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CLIFFS_EDGE_GATE_CHUCK
	hide_person obj_D48R0101_gsleader5
	setvar VAR_SCENE_EMBEDDED_TOWER, 3
	releaseall
	end

	.align 4
_0130:

	step 35, 1
	step 63, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end
	.align 4
_0148:

	step 33, 1
	step 63, 1
	step 13, 3
	step 14, 1
	step 13, 1
	step_end
	.align 4
_0160:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_016C:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0178:

	step 35, 1
	step_end
	.align 4
_0180:

	step 33, 1
	step_end
	.align 4
_0188:

	step 63, 1
	step 15, 2
	step_end
	.align 4
_0194:

	step 63, 1
	step 12, 4
	step 15, 2
	step 12, 9
	step_end
	.align 4
_01A8:

	step 71, 1
	step 12, 1
	step 72, 1
	step 33, 1
	step_end
scr_seq_D48R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40EB, 1
	goto_if_eq _0215
	goto_if_set FLAG_UNK_0F5, _01E7
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E7:
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _020A
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_020A:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0215:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D48R0101_001:
	simple_npc_msg 5
	end

scr_seq_D48R0101_002:
	simple_npc_msg 6
	end

scr_seq_D48R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F5, _027C
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_027C:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
