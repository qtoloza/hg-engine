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

.include "armips/scr_seq/event_T26PC0101.inc"


// text archive to grab from: 607.txt

.create "build/a012/2_914", 0


scrdef scr_seq_T26PC0101_000
scrdef scr_seq_T26PC0101_001
scrdef scr_seq_T26PC0101_002
scrdef scr_seq_T26PC0101_003
scrdef scr_seq_T26PC0101_004
scrdef scr_seq_T26PC0101_005
scrdef scr_seq_T26PC0101_006
scrdef_end

scr_seq_T26PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T26PC0101_004:
	goto_if_defeated TRAINER_BEAUTY_CHARLOTTE, _0144
	compare VAR_TEMP_x4007, 77
	goto_if_eq _0157
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	setvar VAR_TEMP_x4007, 77
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0168
	apply_movement obj_T26PC0101_gswoman2, _02DA
	goto _01C4

scr_seq_T26PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T26PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T26PC0101_003:
	simple_npc_msg 2
	end

scr_seq_T26PC0101_005:
	buffer_players_name 0
	end

scr_seq_T26PC0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _020B
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021A
	setflag 16343
	setflag 16342
	setflag 16341
	setflag 16326
	setflag 16325
	setflag 16324
	setflag 16322
	setflag 16319
	setflag 16318
	setflag 16316
	setflag 16314
	setflag 16311
	setflag 16307
	setflag 16306
	setflag 16288
	setflag 16283
	setflag 16267
	setflag 16226
	setflag 16221
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	hide_person obj_T26PC0101_pcwoman3
	releaseall
	end

_0144:
	simple_npc_msg 6
	end

_0157:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	goto _0287

_0168:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01C4
	apply_movement obj_T26PC0101_gswoman2, _02E0
	wait_movement
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C9
	npc_msg 5
	closemsg
	trainer_battle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D4
	settrainerflag TRAINER_BEAUTY_CHARLOTTE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01C4:
	wait_movement
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C9
	npc_msg 5
	closemsg
	trainer_battle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D4
	settrainerflag TRAINER_BEAUTY_CHARLOTTE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_020B:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	hide_person obj_T26PC0101_pcwoman3
	releaseall
	end

_021A:
	setvar 24880, 2
	setflag 16360
	setflag 16359
	setflag 16351
	setflag 16343
	setflag 16342
	setflag 16341
	setflag 16326
	setflag 16325
	setflag 16324
	setflag 16322
	setflag 16319
	setflag 16318
	setflag 16316
	setflag 16314
	setflag 16311
	setflag 16307
	setflag 16306
	setflag 16288
	setflag 16283
	setflag 16267
	setflag 16226
	setflag 16221
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	hide_person obj_T26PC0101_pcwoman3
	releaseall
	end

_0287:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C9
	npc_msg 5
	closemsg
	trainer_battle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D4
	settrainerflag TRAINER_BEAUTY_CHARLOTTE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C9:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D4:
	white_out
	releaseall
	end

	.align 4
_02DA:

	step 35, 1
	step_end
	.align 4
_02E0:

	step 33, 1
	step_end
	.align 4


.close
