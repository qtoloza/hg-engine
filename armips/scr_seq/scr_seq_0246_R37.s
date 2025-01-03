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

.include "armips/scr_seq/event_R37.inc"


// text archive to grab from: 393.txt

.create "build/a012/2_246", 0


scrdef scr_seq_R37_000
scrdef scr_seq_R37_001
scrdef scr_seq_R37_002
scrdef scr_seq_R37_003
scrdef_end

scr_seq_R37_000:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _002D
	clearflag FLAG_UNK_1C3
	goto _0031

_002D:
	setflag FLAG_UNK_1C3
_0031:
	end

scr_seq_R37_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SMILE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0159
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _016D
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0107
	goto_if_set FLAG_GOT_MAGNET_FROM_SUNNY, _00E9
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _009A
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 27
	goto _00E1

_009A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 24
	goto_if_no_item_space ITEM_MAGNET, 1, _00FD
	callstd std_give_item_verbose
	setflag FLAG_GOT_MAGNET_FROM_SUNNY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 25
_00E1:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E9:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00FD:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0107:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _012A
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 27
	goto _00E1

_012A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 52
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 54
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SMILE
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0159:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 53
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016D:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 55
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R37_002:
	direction_signpost 0, 1, 3, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R37_003:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
