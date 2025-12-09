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

.include "armips/scr_seq/event_T28PC0101.inc"


// text archive to grab from: 624.txt

.create "build/a012/2_935", 0


scrdef scr_seq_T28PC0101_000
scrdef scr_seq_T28PC0101_001
scrdef scr_seq_T28PC0101_002
scrdef scr_seq_T28PC0101_003
scrdef scr_seq_T28PC0101_004
scrdef scr_seq_T28PC0101_005
scrdef_end

scr_seq_T28PC0101_000:
	setvar VAR_SPECIAL_x8007, 2
	callstd std_nurse_joy
	end

scr_seq_T28PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T28PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T28PC0101_003:
	simple_npc_msg 2
	end

scr_seq_T28PC0101_004:
	play_cry SPECIES_POLIWHIRL, 0
	simple_npc_msg 3
	end

scr_seq_T28PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16253, _00AE
	gender_msgbox 4, 5
	giveitem_no_check ITEM_KINGS_ROCK, 1
	npc_msg 6
	setflag 16253
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00AE:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
