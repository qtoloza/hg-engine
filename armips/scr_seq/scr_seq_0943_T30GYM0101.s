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

.include "armips/scr_seq/event_T30GYM0101.inc"


// text archive to grab from: 631.txt

.create "build/a012/2_943", 0


scrdef scr_seq_T30GYM0101_000
scrdef scr_seq_T30GYM0101_001
scrdef scr_seq_T30GYM0101_002
scrdef scr_seq_T30GYM0101_003
scrdef scr_seq_T30GYM0101_004
scrdef scr_seq_T30GYM0101_005
scrdef_end

scr_seq_T30GYM0101_001:
	blackthorn_gym_init
	setvar VAR_UNK_4120, 0
	get_phone_book_rematch PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0179
	compare VAR_UNK_40FC, 2
	goto_if_ge _017F
	end

scr_seq_T30GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0EA, _01AD
	goto_if_set FLAG_UNK_0D1, _0208
	npc_msg 3
	closemsg
	trainer_battle TRAINER_LEADER_CLAIR_CLAIR, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0213
	settrainerflag TRAINER_ACE_TRAINER_M_PAULO
	settrainerflag TRAINER_ACE_TRAINER_M_CODY
	settrainerflag TRAINER_ACE_TRAINER_M_MIKE
	settrainerflag TRAINER_ACE_TRAINER_F_FRAN
	settrainerflag TRAINER_ACE_TRAINER_F_LOLA
	add_special_game_stat 22
	setflag FLAG_UNK_0D1
	setflag FLAG_HIDE_BLACKTHORN_DEN_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHRON_DEN_GUARD_ASIDE
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30GYM0101_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_GYURU
	apply_movement obj_player, _03E8
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T30GYM0101, 0, 8, 83, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T30GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0D1, _0219
	npc_msg 0
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30GYM0101_004:
	scrcmd_609
	lockall
	goto_if_set FLAG_UNK_138, _0224
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0241
	apply_movement obj_T30GYM0101_sunglasses, _042E
	apply_movement obj_player, _043C
	goto _0264

scr_seq_T30GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_RISING, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _028A
	npc_msg 10
	goto _0295

_0179:
	setflag FLAG_UNK_2EF
	end

_017F:
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _029D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _02B8
	setflag FLAG_UNK_2EF
	goto _02CF

_01AD:
	goto_if_set FLAG_GOT_TM59_FROM_CLAIR, _02D1
	npc_msg 6
	goto_if_no_item_space ITEM_TM059, 1, _02DC
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM59_FROM_CLAIR
	npc_msg 7
	npc_msg 9
	npc_msg 12
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 13
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CLAIR
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0208:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0213:
	white_out
	releaseall
	end

_0219:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0224:
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_0241:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _02E7
	apply_movement obj_T30GYM0101_sunglasses, _0446
	apply_movement obj_player, _0454
	goto _0264

_0264:
	wait_movement
	npc_msg 2
	closemsg
	setflag FLAG_UNK_138
	compare VAR_TEMP_x4000, 12
	goto_if_ne _031D
	apply_movement obj_T30GYM0101_sunglasses, _045E
	goto _0338

_028A:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0295:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_029D:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0357
	setflag FLAG_UNK_2EF
	goto _036E

_02B8:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0370
	setflag FLAG_UNK_2EF
	goto _02CF

_02CF:
	end

_02D1:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02DC:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02E7:
	apply_movement obj_T30GYM0101_sunglasses, _0468
	apply_movement obj_player, _0472
	wait_movement
	npc_msg 2
	closemsg
	setflag FLAG_UNK_138
	compare VAR_TEMP_x4000, 12
	goto_if_ne _031D
	apply_movement obj_T30GYM0101_sunglasses, _045E
	goto _0338

_031D:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0387
	apply_movement obj_T30GYM0101_sunglasses, _047C
	goto _0338

_0338:
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_0357:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _03AE
	setflag FLAG_UNK_2EF
	goto _036E

_036E:
	end

_0370:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _03C5
	setflag FLAG_UNK_2EF
	goto _02CF

_0387:
	apply_movement obj_T30GYM0101_sunglasses, _0486
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_03AE:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _03DC
	setflag FLAG_UNK_2EF
	goto _036E

_03C5:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _03E2
	setflag FLAG_UNK_2EF
	goto _02CF

_03DC:
	clearflag FLAG_UNK_2EF
	end

_03E2:
	clearflag FLAG_UNK_2EF
	end

	.align 4
_03E8:

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
_042E:

	step 2, 1
	step 75, 1
	step 14, 2
	step_end
	.align 4
_043C:

	step 63, 5
	step 3, 1
	step_end
	.align 4
_0446:

	step 2, 1
	step 75, 1
	step 14, 1
	step_end
	.align 4
_0454:

	step 63, 4
	step 3, 1
	step_end
	.align 4
_045E:

	step 15, 2
	step 1, 1
	step_end
	.align 4
_0468:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_0472:

	step 63, 2
	step 3, 1
	step_end
	.align 4
_047C:

	step 15, 1
	step 1, 1
	step_end
	.align 4
_0486:

	step 1, 1
	step_end
	.align 4


.close
