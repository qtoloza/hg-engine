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

.include "armips/scr_seq/event_P01R0306.inc"


// text archive to grab from: 262.txt

.create "build/a012/2_161", 0


scrdef scr_seq_P01R0306_000
scrdef scr_seq_P01R0306_001
scrdef scr_seq_P01R0306_002
scrdef scr_seq_P01R0306_003
scrdef_end

scr_seq_P01R0306_001:
	compare VAR_UNK_40CB, 7
	goto_if_ge _00DC
	compare VAR_UNK_40CB, 4
	goto_if_gt _00E6
	setflag FLAG_UNK_218
	goto _00EC

scr_seq_P01R0306_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40CB, 3
	goto_if_gt _00EE
	apply_movement obj_P01R0306_gsgentleman, _0144
	wait_movement
	npc_msg 1
	goto _0104

scr_seq_P01R0306_003:
	scrcmd_609
	lockall
	apply_movement obj_P01R0306_gsbabygirl1_3, _014A
	wait_movement
	gender_msgbox 2, 3
	closemsg
	apply_movement obj_P01R0306_gsgentleman, _0150
	wait_movement
	buffer_players_name 0
	gender_msgbox 4, 5
	goto_if_no_item_space ITEM_METAL_COAT, 1, _010C
	callstd std_give_item_verbose
	setvar VAR_UNK_40CB, 6
	setflag FLAG_UNK_22A
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	setflag FLAG_BOAT_ARRIVED
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_P01R0306_002:
	simple_npc_msg 8
	end

_00DC:
	setflag FLAG_UNK_216
	setflag FLAG_UNK_218
	end

_00E6:
	clearflag FLAG_UNK_218
	end

_00EC:
	end

_00EE:
	compare VAR_UNK_40CB, 4
	goto_if_ne _0118
	npc_msg 0
	goto _0104

_0104:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010C:
	callstd std_bag_is_full
	closemsg
	goto _0123

_0118:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0123:
	setvar VAR_UNK_40CB, 6
	setflag FLAG_UNK_22A
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	setflag FLAG_BOAT_ARRIVED
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0144:

	step 49, 2
	step_end
	.align 4
_014A:

	step 51, 3
	step_end
	.align 4
_0150:

	step 9, 1
	step_end
	.align 4


.close
