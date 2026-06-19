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

.include "armips/scr_seq/event_T24GYM0101.inc"


// text archive to grab from: 574.txt

.create "build/a012/2_877", 0


scrdef scr_seq_T24GYM0101_000
scrdef scr_seq_T24GYM0101_001
scrdef scr_seq_T24GYM0101_002
scrdef scr_seq_T24GYM0101_003
scrdef_end

scr_seq_T24GYM0101_001:
	cianwood_gym_init
	clearflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	end

scr_seq_T24GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4000, 0
	goto_if_eq _00F6
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0101
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_CHUCK_CHUCK, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0117
	npc_msg 3
	settrainerflag TRAINER_BLACK_BELT_YOSHI
	settrainerflag TRAINER_BLACK_BELT_LAO
	settrainerflag TRAINER_BLACK_BELT_NOB
	settrainerflag TRAINER_BLACK_BELT_LUNG
	buffer_players_name 0
	npc_msg 4
	give_badge BADGE_STORM
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	setvar VAR_UNK_4116, 1
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _011D
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	npc_msg 5
	goto _0126

scr_seq_T24GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4000, 0
	goto_if_eq _016D
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T24GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _018B
	npc_msg 13
	goto _0196

_00F6:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0101:
	goto_if_unset FLAG_GOT_TM01_FROM_CHUCK, _0126
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0117:
	white_out
	releaseall
	end

_011D:
	npc_msg 5
	goto _0126

_0126:
	goto_if_no_item_space ITEM_TM001, 1, _019E
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM01_FROM_CHUCK
	npc_msg 6
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CHUCK
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016D:
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A9
	closemsg
	releaseall
	end

_018B:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0196:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019E:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A9:
	buffer_players_name 0
	npc_msg 11
	closemsg
	setflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	stop_se SEQ_SE_GS_N_TAKI
	play_se SEQ_SE_DP_SHIP03
	play_se SEQ_SE_GS_TAKI2
	cianwood_gym_turn_winch VAR_TEMP_x4000
	releaseall
	end
	.align 4


.close
