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

.include "armips/scr_seq/event_R32PC0101.inc"


// text archive to grab from: 381.txt

.create "build/a012/2_233", 0


scrdef scr_seq_R32PC0101_000
scrdef scr_seq_R32PC0101_001
scrdef scr_seq_R32PC0101_002
scrdef scr_seq_R32PC0101_003
scrdef scr_seq_R32PC0101_004
scrdef_end

scr_seq_R32PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_R32PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_OLD_ROD, _00BC
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C7
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00FE
	end

scr_seq_R32PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN, _0109
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0114
	npc_msg 8
	goto _014B

scr_seq_R32PC0101_003:
	simple_npc_msg 6
	end

scr_seq_R32PC0101_004:
	play_cry SPECIES_WOOPER, 0
	simple_npc_msg 13
	end

_00BC:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00C7:
	npc_msg 14
	goto_if_no_item_space ITEM_TM003, 1, _017F
	callstd std_give_item_verbose
	setflag FLAG_GOT_OLD_ROD
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00FE:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0109:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0114:
	npc_msg 9
	goto_if_no_item_space ITEM_LURE_BALL, 2, _0189
	callstd std_give_item_verbose
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	end

_014B:
	goto_if_no_item_space ITEM_LURE_BALL, 2, _0189
	callstd std_give_item_verbose
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	end

_017F:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0189:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.align 4


.close
