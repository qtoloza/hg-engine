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

.include "armips/scr_seq/event_T24R0501.inc"


// text archive to grab from: 577.txt

.create "build/a012/2_881", 0


scrdef scr_seq_T24R0501_000
scrdef_end

scr_seq_T24R0501_000:
	goto_if_unset FLAG_GOT_TM01_FROM_CHUCK, _00B1
	goto_if_set FLAG_GOT_SECRETPOTION, _002F
	compare VAR_SCENE_LIGHTHOUSE_JASMINE, 1
	goto_if_eq _005C
	goto _002F

_002F:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag FLAG_SPECIAL_MART_PHARMACY
	npc_msg 3
	holdmsg
	setvar VAR_SPECIAL_x8004, 11
	callstd std_special_mart
	apply_movement obj_T24R0501_sunglasses, _00C4
	wait_movement
	clearflag FLAG_SPECIAL_MART_PHARMACY
	releaseall
	end

_005C:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	wait_button
	goto_if_no_item_space ITEM_SECRET_MEDICINE, 1, _00A7
	callstd std_give_item_verbose
	setflag FLAG_GOT_SECRETPOTION
	npc_msg 2
	wait_button
	closemsg
	apply_movement obj_T24R0501_sunglasses, _00C4
	wait_movement
	releaseall
	end

_00A7:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_00B1:
	simple_npc_msg 9
	end

	.align 4
_00C4:

	step 0, 1
	step_end
	.align 4


.close
