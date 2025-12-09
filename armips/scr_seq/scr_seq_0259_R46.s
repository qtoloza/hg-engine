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

.include "armips/scr_seq/event_R46.inc"


// text archive to grab from: 406.txt

.create "build/a012/2_259", 0


scrdef scr_seq_R46_000
scrdef scr_seq_R46_001
scrdef scr_seq_R46_002
scrdef scr_seq_R46_003
scrdef_end

scr_seq_R46_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_079, _00BF
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R46_001:
	direction_signpost 0, 1, 3, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R46_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R46_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GLIGAR, 0
	wait_cry
	wild_battle SPECIES_GLIGAR, 15, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00CA
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 7
	setflag 16379
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	lockall
	npc_msg 4
	giveitem_no_check ITEM_TM040, 1
	closemsg
	releaseall
	end

_00BF:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00CA:
	white_out
	releaseall
	end

	.align 4


.close
