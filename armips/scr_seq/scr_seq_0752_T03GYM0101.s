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

.include "armips/scr_seq/event_T03GYM0101.inc"


// text archive to grab from: 462.txt

.create "build/a012/2_752", 0


scrdef scr_seq_T03GYM0101_000
scrdef scr_seq_T03GYM0101_001
scrdef scr_seq_T03GYM0101_002
scrdef scr_seq_T03GYM0101_003
scrdef_end

scr_seq_T03GYM0101_003:
	get_phone_book_rematch PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0109
	check_registered_phone_number PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _010F
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _012A
	goto _0145

scr_seq_T03GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _014B
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_BROCK_BROCK, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0164
	give_badge BADGE_BOULDER
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	settrainerflag TRAINER_CAMPER_JERRY
	settrainerflag TRAINER_HIKER_EDWIN
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	buffer_players_name 0
	gender_msgbox 3, 4
	goto _016A

scr_seq_T03GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01BF
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01CA
	npc_msg 8
	goto _01D5

_0109:
	setflag FLAG_UNK_2F4
	end

_010F:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 17
	goto_if_ne _01DD
	setflag FLAG_UNK_2F4
	goto _01F4

_012A:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _01F6
	setflag FLAG_UNK_2F4
	goto _020D

_0145:
	clearflag FLAG_UNK_2F4
	end

_014B:
	goto_if_unset FLAG_GOT_TM80_FROM_BROCK, _016A
	buffer_players_name 0
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0164:
	white_out
	releaseall
	end

_016A:
	goto_if_no_item_space ITEM_TM080, 1, _020F
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM80_FROM_BROCK
	goto_if_unset FLAG_GOT_TM80_FROM_BROCK, _016A
	buffer_players_name 0
	npc_msg 5
	npc_msg 10
	buffer_players_name 0
	npc_msg 11
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BROCK
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01BF:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01CA:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01D5:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01DD:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _0219
	setflag FLAG_UNK_2F4
	goto _01F4

_01F4:
	end

_01F6:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0230
	setflag FLAG_UNK_2F4
	goto _020D

_020D:
	end

_020F:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0219:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _0247
	setflag FLAG_UNK_2F4
	goto _01F4

_0230:
	compare VAR_TEMP_x4000, 14
	goto_if_ne _024D
	setflag FLAG_UNK_2F4
	goto _020D

_0247:
	goto _0145

_024D:
	goto _0145
	.align 4


.close
