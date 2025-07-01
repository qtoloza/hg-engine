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
	goto_if_ne _00FB
	check_registered_phone_number PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00A4
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0053
	goto _00F5

_0053:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _006E
	setflag FLAG_UNK_2F4
	goto _00A2

_006E:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0085
	setflag FLAG_UNK_2F4
	goto _00A2

_0085:
	compare VAR_TEMP_x4000, 14
	goto_if_ne _009C
	setflag FLAG_UNK_2F4
	goto _00A2

_009C:
	goto _00F5

_00A2:
	end

_00A4:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 17
	goto_if_ne _00BF
	setflag FLAG_UNK_2F4
	goto _00F3

_00BF:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _00D6
	setflag FLAG_UNK_2F4
	goto _00F3

_00D6:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _00ED
	setflag FLAG_UNK_2F4
	goto _00F3

_00ED:
	goto _00F5

_00F3:
	end

_00F5:
	clearflag FLAG_UNK_2F4
	end

_00FB:
	setflag FLAG_UNK_2F4
	end

scr_seq_T03GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0195
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_BROCK_BROCK, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01B8
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
	goto _016C

_016C:
	goto_if_no_item_space ITEM_TM80, 1, _01AE
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM80_FROM_BROCK
_0195:
	goto_if_unset FLAG_GOT_TM80_FROM_BROCK, _016C
	buffer_players_name 0
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AE:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01B8:
	white_out
	releaseall
	end

scr_seq_T03GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E4
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E4:
	npc_msg 7
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
	goto_if_ne _0216
	npc_msg 8
	goto _0219

_0216:
	npc_msg 9
_0219:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
