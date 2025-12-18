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

.include "armips/scr_seq/event_T20R0202.inc"


// text archive to grab from: 546.txt

.create "build/a012/2_846", 0


scrdef scr_seq_T20R0202_000
scrdef scr_seq_T20R0202_001
scrdef scr_seq_T20R0202_002
scrdef_end

scr_seq_T20R0202_000:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_PC_ON
	buffer_players_name 0
	npc_msg 0
	closemsg
	scrcmd_377 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_376
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T20R0202_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0202_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	apply_movement obj_player, _0256
	scrcmd_600
	buffer_players_name 0
	goto_if_set 16320, _00CD
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00FE
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_00C2:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00CD:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_00FE:
	hasitem ITEM_LUNAR_FEATHER, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0154
	fade_screen 6, 6, 0, RGB_BLACK
	wait_fade
	stop_bgm 0
	play_se SEQ_SE_GS_TAMASYUTUGEN
	wait_se SEQ_SE_GS_TAMASYUTUGEN
	play_cry SPECIES_DARKRAI, 0
	wait_cry
	play_bgm SEQ_GS_T_WAKABA
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 4
	clearflag 16319
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_0154:
	npc_msg 5
	closemsg
	fade_screen 8, 6, 0, RGB_BLACK
	wait_fade
	stop_bgm 0
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	play_cry SPECIES_DARKRAI, 0
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_cry
	play_bgm SEQ_GS_T_WAKABA
	show_person obj_T20R0202_follower_mon_darkrai
	move_person_facing obj_T20R0202_follower_mon_darkrai, 2, 0, 7, DIR_NORTH
	apply_movement obj_T20R0202_follower_mon_darkrai, _025C
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	play_cry SPECIES_DARKRAI, 6
	release obj_T20R0202_follower_mon_darkrai
	scrcmd_523 obj_T20R0202_follower_mon_darkrai, 8, 90, 2, 0
	lock obj_T20R0202_follower_mon_darkrai
	wait_cry
	goto _01D2

_01D2:
	wild_battle SPECIES_DARKRAI, 50, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0239
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T20R0202_follower_mon_darkrai
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _023F
	compare VAR_TEMP_x4002, 4
	call_if_eq _024C
	compare VAR_TEMP_x4002, 5
	goto_if_eq _023F
	scrcmd_606
	releaseall
	end

_0239:
	white_out
	releaseall
	end

_023F:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_024C:
	setflag 16320
	scrcmd_606
	releaseall
	end

	.align 4
_0256:

	step 1, 1
	step_end
	.align 4
_025C:

	step 33, 3
	step_end
	.align 4


.close
