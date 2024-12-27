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

.include "armips/scr_seq/event_T07GYM0101.inc"


// text archive to grab from: 492.txt

.create "build/a012/2_786", 0


scrdef scr_seq_T07GYM0101_000
scrdef scr_seq_T07GYM0101_001
scrdef scr_seq_T07GYM0101_002
scrdef_end

scr_seq_T07GYM0101_002:
	get_phone_book_rematch PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00E9
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00EF
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _010A
	goto _0121

scr_seq_T07GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_RAINBOW, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0127
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_ERIKA_ERIKA, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _013D
	give_badge BADGE_RAINBOW
	setvar 24885, 2
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	settrainerflag TRAINER_TWINS_JO_AND_ZOE
	settrainerflag TRAINER_LASS_MICHELLE
	settrainerflag TRAINER_PICNICKER_TANYA
	settrainerflag TRAINER_BEAUTY_JULIA
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _0143

scr_seq_T07GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_RAINBOW, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0198
	npc_msg 5
	goto _01A3

_00E9:
	setflag FLAG_UNK_2F2
	end

_00EF:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _01AB
	setflag FLAG_UNK_2F2
	goto _01B1

_010A:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _01B3
	goto _01C6

_0121:
	clearflag FLAG_UNK_2F2
	end

_0127:
	goto_if_unset FLAG_GOT_TM19_FROM_ERIKA, _0143
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013D:
	white_out
	releaseall
	end

_0143:
	goto_if_no_item_space ITEM_TM19, 1, _01E1
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM19_FROM_ERIKA
	goto_if_unset FLAG_GOT_TM19_FROM_ERIKA, _0143
	npc_msg 4
	npc_msg 7
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_ERIKA
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0198:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A3:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AB:
	goto _0121

_01B1:
	end

_01B3:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _01EB
	goto _01C6

_01C6:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _01F1
	setflag FLAG_UNK_2F2
	goto _0208

_01E1:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01EB:
	goto _0121

_01F1:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _020A
	setflag FLAG_UNK_2F2
	goto _0208

_0208:
	end

_020A:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0221
	setflag FLAG_UNK_2F2
	goto _0208

_0221:
	goto _0121
	.align 4


.close
