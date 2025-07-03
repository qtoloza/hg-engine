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

.include "armips/scr_seq/event_T23GYM0102.inc"


// text archive to grab from: 567.txt

.create "build/a012/2_869", 0


scrdef scr_seq_T23GYM0102_000
scrdef scr_seq_T23GYM0102_001
scrdef scr_seq_T23GYM0102_002
scrdef scr_seq_T23GYM0102_003
scrdef scr_seq_T23GYM0102_004
scrdef scr_seq_T23GYM0102_005
scrdef scr_seq_T23GYM0102_006
scrdef scr_seq_T23GYM0102_007
scrdef scr_seq_T23GYM0102_008
scrdef scr_seq_T23GYM0102_009
scrdef scr_seq_T23GYM0102_010
scrdef scr_seq_T23GYM0102_011
scrdef scr_seq_T23GYM0102_012
scrdef scr_seq_T23GYM0102_013
scrdef scr_seq_T23GYM0102_014
scrdef scr_seq_T23GYM0102_015
scrdef scr_seq_T23GYM0102_016
scrdef_end

scr_seq_T23GYM0102_016:
	azalea_gym_init
	get_phone_book_rematch PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _015E
	goto_if_set FLAG_GAME_CLEAR, _0164
	clearflag FLAG_UNK_2EA
	end

scr_seq_T23GYM0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_HIVE, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _018E
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_BUGSY_BUGSY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A4
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_HIVE
	settrainerflag TRAINER_BUG_CATCHER_AL
	settrainerflag TRAINER_BUG_CATCHER_BENNY
	settrainerflag TRAINER_BUG_CATCHER_JOSH
	settrainerflag TRAINER_TWINS_AMY_AND_MIMI
	add_special_game_stat 22
	npc_msg 3
	goto_if_no_item_space ITEM_TM89, 1, _01AA
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM89_FROM_BUGSY
	npc_msg 5
	npc_msg 8
	buffer_players_name 0
	npc_msg 9
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BUGSY
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T23GYM0102_000:
	end

scr_seq_T23GYM0102_002:
	azalea_gym_spinarak 0
	end

scr_seq_T23GYM0102_003:
	azalea_gym_spinarak 1
	end

scr_seq_T23GYM0102_004:
	azalea_gym_spinarak 2
	end

scr_seq_T23GYM0102_005:
	azalea_gym_spinarak 3
	end

scr_seq_T23GYM0102_006:
	azalea_gym_spinarak 4
	end

scr_seq_T23GYM0102_007:
	azalea_gym_spinarak 5
	end

scr_seq_T23GYM0102_008:
	azalea_gym_spinarak 6
	end

scr_seq_T23GYM0102_009:
	azalea_gym_spinarak 7
	end

scr_seq_T23GYM0102_010:
	azalea_gym_spinarak 8
	end

scr_seq_T23GYM0102_011:
	azalea_gym_spinarak 9
	end

scr_seq_T23GYM0102_012:
	azalea_gym_spinarak 10
	end

scr_seq_T23GYM0102_013:
	azalea_gym_spinarak 11
	end

scr_seq_T23GYM0102_014:
	azalea_gym_switch 0
	end

scr_seq_T23GYM0102_015:
	azalea_gym_switch 1
	end

_015E:
	setflag FLAG_UNK_2EA
	end

_0164:
	check_registered_phone_number PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01B4
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	goto_if_ne _01B4
	setflag FLAG_UNK_2EA
	end

_018E:
	goto_if_unset FLAG_GOT_TM89_FROM_BUGSY, _01E5
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A4:
	white_out
	releaseall
	end

_01AA:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01B4:
	get_weekday VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0211
	compare VAR_TEMP_x4001, 3
	goto_if_eq _0211
	compare VAR_TEMP_x4001, 5
	goto_if_eq _0211
	clearflag FLAG_UNK_2EA
	end

_01E5:
	goto_if_no_item_space ITEM_TM89, 1, _01AA
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM89_FROM_BUGSY
	npc_msg 5
_0211:
	setflag FLAG_UNK_2EA
	end
	.align 4


.close
