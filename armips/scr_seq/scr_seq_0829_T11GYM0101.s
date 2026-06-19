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

.include "armips/scr_seq/event_T11GYM0101.inc"


// text archive to grab from: 531.txt

.create "build/a012/2_829", 0


scrdef scr_seq_T11GYM0101_000
scrdef scr_seq_T11GYM0101_001
scrdef scr_seq_T11GYM0101_002
scrdef scr_seq_T11GYM0101_003
scrdef scr_seq_T11GYM0101_004
scrdef scr_seq_T11GYM0101_005
scrdef_end

scr_seq_T11GYM0101_004:
	get_phone_book_rematch PHONE_CONTACT_SABRINA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0166
	check_registered_phone_number PHONE_CONTACT_SABRINA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _016C
	check_badge BADGE_MARSH, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0183
	goto _019A

scr_seq_T11GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MARSH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01A0
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_SABRINA_SABRINA, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01B6
	give_badge BADGE_MARSH
	setflag FLAG_UNK_265
	setflag FLAG_HIDE_ROUTE_19_WORKMEN_CLOSED
	clearflag FLAG_HIDE_ROUTE_19_WORKMEN_OPEN
	addvar VAR_UNK_4135, 1
	add_special_game_stat 22
	setflag FLAG_UNK_998
	settrainerflag TRAINER_PSYCHIC_M_FRANKLIN
	settrainerflag TRAINER_PSYCHIC_M_JARED
	settrainerflag TRAINER_MEDIUM_REBECCA
	settrainerflag TRAINER_MEDIUM_DARCY
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _01BC

scr_seq_T11GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MARSH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0206
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MARSH, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0211
	npc_msg 8
	goto _021C

scr_seq_T11GYM0101_003:
	scrcmd_609
	lockall
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _022E
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T11GYM0101, 0, 15, 23, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11GYM0101_005:
	buffer_players_name 0
	end

_0166:
	setflag FLAG_UNK_2F1
	end

_016C:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _019A
	setflag FLAG_UNK_2F1
	end

_0183:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _019A
	setflag FLAG_UNK_2F1
	end

_019A:
	clearflag FLAG_UNK_2F1
	end

_01A0:
	goto_if_unset FLAG_GOT_TM48_FROM_SABRINA, _01BC
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01B6:
	white_out
	releaseall
	end

_01BC:
	goto_if_no_item_space ITEM_TM048, 1, _0224
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM48_FROM_SABRINA
	npc_msg 4
	npc_msg 10
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 11
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_SABRINA
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0206:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0211:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0224:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_022E:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.align 4


.close
