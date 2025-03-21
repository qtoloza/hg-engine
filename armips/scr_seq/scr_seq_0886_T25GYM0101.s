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

.include "armips/scr_seq/event_T25GYM0101.inc"


// text archive to grab from: 582.txt

.create "build/a012/2_886", 0


scrdef scr_seq_T25GYM0101_000
scrdef scr_seq_T25GYM0101_001
scrdef scr_seq_T25GYM0101_002
scrdef scr_seq_T25GYM0101_003
scrdef scr_seq_T25GYM0101_004
scrdef_end

scr_seq_T25GYM0101_004:
	get_phone_book_rematch PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0106
	goto_if_unset FLAG_GAME_CLEAR, _0100
	check_registered_phone_number PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00AF
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0062
	setflag FLAG_UNK_2EC
	goto _00AD

_0062:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0079
	setflag FLAG_UNK_2EC
	goto _00AD

_0079:
	compare VAR_TEMP_x4000, 14
	goto_if_ne _0090
	setflag FLAG_UNK_2EC
	goto _00AD

_0090:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _00A7
	setflag FLAG_UNK_2EC
	goto _00AD

_00A7:
	goto _0100

_00AD:
	end

_00AF:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 18
	goto_if_ne _00CA
	setflag FLAG_UNK_2EC
	goto _00FE

_00CA:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _00E1
	setflag FLAG_UNK_2EC
	goto _00FE

_00E1:
	compare VAR_TEMP_x4000, 20
	goto_if_ne _00F8
	setflag FLAG_UNK_2EC
	goto _00FE

_00F8:
	goto _0100

_00FE:
	end

_0100:
	clearflag FLAG_UNK_2EC
	end

_0106:
	setflag FLAG_UNK_2EC
	end

scr_seq_T25GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0202
	goto_if_set FLAG_UNK_0B7, _01A0
	compare VAR_UNK_410A, 1
	goto_if_eq _017D
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_WHITNEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0218
	settrainerflag TRAINER_LASS_CARRIE
	settrainerflag TRAINER_LASS_CATHY
	settrainerflag TRAINER_BEAUTY_VICTORIA
	settrainerflag TRAINER_BEAUTY_SAMANTHA
	add_special_game_stat 22
	move_person_facing obj_T25GYM0101_gsgirl1, 13, 0, 15, DIR_NORTH
_017D:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_UNK_410A, 1
	setflag FLAG_UNK_084
	setvar VAR_UNK_40DA, 1
	clearflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_UNLOCKED
	setflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_LOCKED
	end

_01A0:
	npc_msg 3
	buffer_players_name 0
	npc_msg 4
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_PLAIN
	setvar VAR_UNK_410A, 2
	clearflag FLAG_UNK_084
	setflag FLAG_UNK_998
	npc_msg 5
_01C4:
	goto_if_no_item_space ITEM_TM45, 1, _01F8
	callstd std_give_item_verbose
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_GOT_TM45_FROM_WHITNEY
	releaseall
	end

_01F8:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0202:
	goto_if_unset FLAG_GOT_TM45_FROM_WHITNEY, _01C4
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0218:
	white_out
	releaseall
	end

scr_seq_T25GYM0101_001:
	scrcmd_609
	lockall
	apply_movement obj_T25GYM0101_gsgirl1, _0260
	wait_movement
	npc_msg 9
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T25GYM0101_gsgirl1, _026C
	apply_movement obj_player, _0278
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setflag FLAG_UNK_0B7
	releaseall
	end


_0260:

	step 75, 1
	step 12, 3
	step_end

_026C:

	step 13, 3
	step 32, 1
	step_end

_0278:

	step 63, 1
	step 12, 1
	step_end
scr_seq_T25GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02AA
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AA:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02DC
	npc_msg 12
	goto _02DF

_02DC:
	npc_msg 13
_02DF:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
