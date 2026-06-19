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
scrdef scr_seq_R37_004
scrdef_end

scr_seq_R37_000:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0110
	clearflag FLAG_UNK_1C3
	goto _0116

scr_seq_R37_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SMILE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0118
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _012C
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0140
	goto_if_set FLAG_GOT_MAGNET_FROM_SUNNY, _0163
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0177
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 27
	goto _01C6

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

scr_seq_R37_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GIRAFARIG, 0
	wait_cry
	wild_battle SPECIES_GIRAFARIG, 26, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01CE
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 9
	setflag 16364
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0110:
	setflag FLAG_UNK_1C3
	end

_0116:
	end

_0118:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 53
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_012C:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 55
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0140:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D4
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 27
	goto _01C6

_0163:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0177:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 24
	goto_if_no_item_space ITEM_MAGNET, 1, _01FD
	callstd std_give_item_verbose
	setflag FLAG_GOT_MAGNET_FROM_SUNNY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01C6:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01CE:
	white_out
	releaseall
	end

_01D4:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 52
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 54
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SMILE
	play_fanfare 20
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01FD:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.align 4


.close
