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

.include "armips/scr_seq/event_T07PC0101.inc"


// text archive to grab from: 493.txt

.create "build/a012/2_787", 0


scrdef scr_seq_T07PC0101_000
scrdef scr_seq_T07PC0101_001
scrdef scr_seq_T07PC0101_002
scrdef scr_seq_T07PC0101_003
scrdef scr_seq_T07PC0101_004
scrdef_end

scr_seq_T07PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T07PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T07PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T07PC0101_003:
	simple_npc_msg 2
	end

scr_seq_T07PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	buffer_players_name 0
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 243
	goto_if_eq _00F2
	compare VAR_TEMP_x4001, 244
	goto_if_eq _00F2
	compare VAR_TEMP_x4001, 245
	goto_if_eq _010A
	npc_msg 3
	goto _00B4

_00A3:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00AE:
	white_out
	releaseall
	end

_00B4:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00A3
	npc_msg 5
	closemsg
	trainer_battle TRAINER_LASS_MICKEY_3, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00AE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F2:
	apply_movement obj_T07PC0101_minaki, _0122
	wait_movement
	buffer_mon_species_name 1, 0
	npc_msg 7
	goto _00B4

_010A:
	apply_movement obj_T07PC0101_minaki, _0122
	wait_movement
	buffer_mon_species_name 1, 0
	npc_msg 8
	goto _00B4

	.align 4
_0122:

	step 75, 1
	step_end
	.align 4


.close
