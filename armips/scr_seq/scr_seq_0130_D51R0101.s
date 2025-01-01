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

.include "armips/scr_seq/event_D51R0101.inc"


// text archive to grab from: 145.txt

.create "build/a012/2_130", 0


scrdef scr_seq_D51R0101_000
scrdef scr_seq_D51R0101_001
scrdef scr_seq_D51R0101_002
scrdef scr_seq_D51R0101_003
scrdef scr_seq_D51R0101_004
scrdef_end

scr_seq_D51R0101_002:
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 5
	goto_if_eq _0104
	end

scr_seq_D51R0101_000:
	scrcmd_609
	lockall
	apply_movement obj_D51R0101_kabigon, _0112
	wait_movement
	apply_movement obj_player, _0128
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_D51R0101_kabigon, _012E
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_D51R0101_kabigon, _0138
	wait_movement
	move_person_facing obj_D51R0101_kabigon, 13, 1, 28, DIR_NORTH
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 5
	releaseall
	end

scr_seq_D51R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	closemsg
	apply_movement obj_D51R0101_kabigon, _0146
	wait_movement
	scrcmd_307 0, 0, 20, 25, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_D51R0101_kabigon, _0150
	wait_movement
	hide_person obj_D51R0101_kabigon
	setflag FLAG_UNK_2DB
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 6
	releaseall
	end

scr_seq_D51R0101_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 7, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D51R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	closemsg
	apply_movement obj_player, _0156
	wait_movement
	hide_person obj_D51R0101_kabigon
	giveitem_no_check ITEM_ICICLE_PLATE, 1
	closemsg
	releaseall
	end

_0104:
	move_person_facing obj_D51R0101_kabigon, 13, 1, 28, DIR_NORTH
	end

	.align 4
_0112:

	step 32, 1
	step 75, 1
	step 63, 1
	step 12, 3
	step 34, 1
	step_end
	.align 4
_0128:

	step 35, 1
	step_end
	.align 4
_012E:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0138:

	step 13, 4
	step 14, 1
	step 13, 4
	step_end
	.align 4
_0146:

	step 15, 7
	step 12, 2
	step_end
	.align 4
_0150:

	step 12, 1
	step_end
	.align 4
_0156:

	step 75, 1
	step_end
	.align 4


.close
