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

.include "armips/scr_seq/event_R31.inc"


// text archive to grab from: 378.txt

.create "build/a012/2_230", 0


scrdef scr_seq_R31_000
scrdef scr_seq_R31_001
scrdef scr_seq_R31_002
scrdef scr_seq_R31_003
scrdef scr_seq_R31_004
scrdef scr_seq_R31_005
scrdef scr_seq_R31_006
scrdef_end

scr_seq_R31_000:
	end

scr_seq_R31_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_LOAN_SPEAROW, 1
	goto_if_ne _0092
	goto _00A5

scr_seq_R31_002:
	direction_signpost 13, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R31_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R31_004:
	simple_npc_msg 12
	end

scr_seq_R31_005:
	simple_npc_msg 11
	end

scr_seq_R31_006:
	buffer_players_name 0
	end

_0092:
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _015C
	goto _016F

_00A5:
	npc_msg 1
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 255
	goto_if_eq _01AD
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_eq _01C6
	kenya_check VAR_SPECIAL_RESULT, VAR_TEMP_x4000, 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01DF
	kenya_check VAR_SPECIAL_RESULT, VAR_TEMP_x4000, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01F8
	check_return_loan_mon 7, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0211
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _024B
	return_loan_mon VAR_TEMP_x4000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0264
	apply_movement obj_player, _03D0
	goto _027F

_015C:
	compare VAR_LOAN_SPEAROW, 4
	goto_if_ne _02E3
	goto _016F

_016F:
	goto_if_no_item_space ITEM_TM044, 1, _030C
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _0316
	setvar VAR_LOAN_SPEAROW, 3
	goto _0327

_01AD:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01C6:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01DF:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F8:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0211:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 4
	closemsg
	buffer_players_name 0
	npc_msg 6
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	mon_give_mail 150
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_024B:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0264:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0332
	apply_movement obj_player, _03D6
	goto _027F

_027F:
	wait_movement
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 7
	setvar VAR_LOAN_SPEAROW, 2
	compare VAR_TEMP_x4000, VAR_TEMP_x4001
	goto_if_ne _016F
	scrcmd_606
	goto_if_no_item_space ITEM_TM044, 1, _030C
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _0316
	setvar VAR_LOAN_SPEAROW, 3
	goto _0327

_02E3:
	compare VAR_LOAN_SPEAROW, 6
	goto_if_ne _034D
	kenya_check_party_or_mailbox VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0358
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_030C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0316:
	setvar VAR_LOAN_SPEAROW, 5
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0327:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0332:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0364
	apply_movement obj_player, _03DC
	goto _027F

_034D:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0358:
	setvar VAR_LOAN_SPEAROW, 1
	goto _00A5

_0364:
	apply_movement obj_player, _03E2
	wait_movement
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 7
	setvar VAR_LOAN_SPEAROW, 2
	compare VAR_TEMP_x4000, VAR_TEMP_x4001
	goto_if_ne _016F
	scrcmd_606
	goto_if_no_item_space ITEM_TM044, 1, _030C
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _0316
	setvar VAR_LOAN_SPEAROW, 3
	goto _0327

	.align 4
_03D0:

	step 32, 1
	step_end
	.align 4
_03D6:

	step 33, 1
	step_end
	.align 4
_03DC:

	step 34, 1
	step_end
	.align 4
_03E2:

	step 35, 1
	step_end
	.align 4


.close
