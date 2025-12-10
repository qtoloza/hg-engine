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

.include "armips/scr_seq/event_D50R0101.inc"


// text archive to grab from: 144.txt

.create "build/a012/2_129", 0


scrdef scr_seq_D50R0101_000
scrdef scr_seq_D50R0101_001
scrdef scr_seq_D50R0101_002
scrdef scr_seq_D50R0101_003
scrdef_end

scr_seq_D50R0101_001:
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _010D
	move_person_facing obj_D50R0101_breakrock, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_2, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_3, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_4, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_5, 30, 1, 30, DIR_NORTH
	move_person_facing obj_D50R0101_breakrock_6, 30, 1, 30, DIR_NORTH
	end

scr_seq_D50R0101_000:
	simple_npc_msg 0
	end

scr_seq_D50R0101_002:
	stop_bgm SEQ_GS_GYM
	play_bgm SEQ_GS_EYE_ROCKET
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	closemsg
	trainer_battle TRAINER_SWIMMER_M_MICKEY_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _010F
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D50R0101_rkanbum2
	fade_screen 8, 1, 1, RGB_BLACK
	setflag 16354
	npc_msg 3
	giveitem_no_check ITEM_TM006, 1
	closemsg
	releaseall
	end

scr_seq_D50R0101_003:
	lockall
	hide_person 8
	setflag 16336
	giveitem_no_check ITEM_TM029, 1
	closemsg
	releaseall
	end

_010D:
	end

_010F:
	white_out
	releaseall
	end
	.align 4


.close
