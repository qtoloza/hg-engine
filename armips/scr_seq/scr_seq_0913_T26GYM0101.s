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

.include "armips/scr_seq/event_T26GYM0101.inc"


// text archive to grab from: 606.txt

.create "build/a012/2_913", 0


scrdef scr_seq_T26GYM0101_000
scrdef scr_seq_T26GYM0101_001
scrdef scr_seq_T26GYM0101_002
scrdef scr_seq_T26GYM0101_003
scrdef scr_seq_T26GYM0101_004
scrdef scr_seq_T26GYM0101_005
scrdef scr_seq_T26GYM0101_006
scrdef scr_seq_T26GYM0101_007
scrdef_end

scr_seq_T26GYM0101_007:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _015C
	goto_if_unset FLAG_GAME_CLEAR, _015A
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _007A
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0072
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _0078

_0072:
	goto _009D

_0078:
	end

_007A:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0095
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _009B

_0095:
	goto _009D

_009B:
	end

_009D:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _015A
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _00CB
	goto _015A

_00CB:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00E8
	goto _0109

_00E8:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0101
	goto _0109

_0101:
	goto _015A

_0109:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _0124
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _0158

_0124:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _013B
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _0158

_013B:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0152
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _0158

_0152:
	goto _015A

_0158:
	end

_015A:
	end

_015C:
	setflag FLAG_HIDE_JASMINE_IN_GYM
	end

scr_seq_T26GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _020C
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0235
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_MINERAL
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _01CB
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
_01CB:
	npc_msg 3
_01CE:
	goto_if_no_item_space ITEM_TM23, 1, _0202
	callstd std_give_item_verbose
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_0202:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_020C:
	goto_if_unset FLAG_GOT_TM23_FROM_JASMINE, _01CE
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _023B
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0235:
	white_out
	releaseall
	end

_023B:
	goto_if_set FLAG_TRADE_JASMINE_STEELIX, _036F
	compare VAR_TEMP_x4000, 77
	goto_if_eq _0264
	setvar VAR_TEMP_x4000, 77
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0264:
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _034B
	npc_msg 9
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _034B
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_TEMP_x4003
	get_partymon_forme VAR_SPECIAL_x8004, VAR_TEMP_x4004
	compare VAR_TEMP_x4003, 0
	goto_if_eq _0356
	compare VAR_TEMP_x4004, 0
	goto_if_eq _030E
	compare VAR_TEMP_x4003, 487
	goto_if_eq _0364
	compare VAR_TEMP_x4003, 492
	goto_if_eq _0364
	compare VAR_TEMP_x4003, 172
	goto_if_eq _0364
	compare VAR_TEMP_x4003, 479
	goto_if_eq _0364
_030E:
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _034B
	closemsg
	load_npc_trade 5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_JASMINE_STEELIX
	setvar VAR_TEMP_x4000, 55
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_034B:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0356:
	buffer_players_name 0
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0364:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_036F:
	compare VAR_TEMP_x4000, 55
	goto_if_ne _0385
	npc_msg 11
	goto _0388

_0385:
	npc_msg 12
_0388:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T26GYM0101_001:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_gsgentleman, _040C
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _03BF
	apply_movement obj_T26GYM0101_gsgentleman, _0414
	goto _03E2

_03BF:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _03DA
	apply_movement obj_T26GYM0101_gsgentleman, _041C
	goto _03E2

_03DA:
	apply_movement obj_T26GYM0101_gsgentleman, _0424
_03E2:
	apply_movement obj_player, _042C
	wait_movement
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _0408
	setvar VAR_UNK_410E, 2
_0408:
	end


_040C:

	step 75, 1
	step_end

_0414:

	step 15, 1
	step_end

_041C:

	step 15, 2
	step_end

_0424:

	step 15, 3
	step_end

_042C:

	step 34, 1
	step_end

_0434:

	step 35, 1
	step_end
scr_seq_T26GYM0101_002:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_gsgirl1, _040C
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _046B
	apply_movement obj_T26GYM0101_gsgirl1, _04B8
	goto _048E

_046B:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0486
	apply_movement obj_T26GYM0101_gsgirl1, _04C0
	goto _048E

_0486:
	apply_movement obj_T26GYM0101_gsgirl1, _04C8
_048E:
	apply_movement obj_player, _0434
	wait_movement
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04B4
	setvar VAR_UNK_410E, 3
_04B4:
	end


_04B8:

	step 14, 3
	step_end

_04C0:

	step 14, 2
	step_end

_04C8:

	step 14, 1
	step_end
scr_seq_T26GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04F4
	npc_msg 20
	goto _04F7

_04F4:
	npc_msg 19
_04F7:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _0510
	setvar VAR_UNK_410E, 2
_0510:
	end

scr_seq_T26GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0536
	npc_msg 22
	goto _0539

_0536:
	npc_msg 21
_0539:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _0552
	setvar VAR_UNK_410E, 3
_0552:
	end

scr_seq_T26GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0590
	compare VAR_UNK_410E, 0
	goto_if_ne _0585
	npc_msg 16
	goto _0588

_0585:
	npc_msg 17
_0588:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0590:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T26GYM0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05C2
	npc_msg 23
	goto _05C5

_05C2:
	npc_msg 24
_05C5:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
