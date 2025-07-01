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

.include "armips/scr_seq/event_T27GYM0101.inc"


// text archive to grab from: 614.txt

.create "build/a012/2_922", 0


scrdef scr_seq_T27GYM0101_000
scrdef scr_seq_T27GYM0101_001
scrdef scr_seq_T27GYM0101_002
scrdef scr_seq_T27GYM0101_003
scrdef scr_seq_T27GYM0101_004
scrdef scr_seq_T27GYM0101_005
scrdef_end

scr_seq_T27GYM0101_000:
	ecruteak_gym_init
	get_phone_book_rematch PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00AC
	goto_if_unset FLAG_GAME_CLEAR, _00A6
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0085
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0068
	setflag FLAG_UNK_2ED
	goto _0083

_0068:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _007F
	setflag FLAG_UNK_2ED
	goto _0083

_007F:
	clearflag FLAG_UNK_2ED
_0083:
	end

_0085:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _00A0
	setflag FLAG_UNK_2ED
	goto _00A4

_00A0:
	clearflag FLAG_UNK_2ED
_00A4:
	end

_00A6:
	clearflag FLAG_UNK_2ED
	end

_00AC:
	setflag FLAG_UNK_2ED
	end

scr_seq_T27GYM0101_004:
	scrcmd_609
	lockall
	apply_movement obj_T27GYM0101_gsoldman1, _0108
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_T27GYM0101_gsoldman1, _0118
	apply_movement obj_player, _0128
	wait_movement
	setvar VAR_UNK_4079, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T27, 7, 376, 182, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0108:

	step 75, 1
	step 13, 3
	step 63, 1
	step_end
	.align 4
_0118:

	step 9, 1
	step 71, 1
	step 12, 1
	step_end
	.align 4
_0128:

	step 63, 1
	step 13, 1
	step 63, 1
	step_end
scr_seq_T27GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01D9
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_MORTY_MORTY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01EF
	npc_msg 1
	give_badge BADGE_FOG
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	setflag FLAG_UNK_998
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _019B

_019B:
	goto_if_no_item_space ITEM_TM30, 1, _01CF
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM30_FROM_MORTY
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01CF:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01D9:
	goto_if_unset FLAG_GOT_TM30_FROM_MORTY, _019B
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01EF:
	white_out
	releaseall
	end

scr_seq_T27GYM0101_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_GYURU
	apply_movement obj_player, _0230
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T27GYM0101, 0, 16, 49, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0230:

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
scr_seq_T27GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _029E
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_029E:
	buffer_players_name 0
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02D3
	npc_msg 10
	goto _02D6

_02D3:
	npc_msg 11
_02D6:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
