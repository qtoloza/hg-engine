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
scrdef scr_seq_T26GYM0101_008
scrdef_end

scr_seq_T26GYM0101_007:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0232
	goto_if_unset FLAG_GAME_CLEAR, _0238
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _023A
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0255
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _025B

scr_seq_T26GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _025D
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0286
	setvar 24998, 2
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_MINERAL
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _028C
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02C3
	callstd std_give_item_verbose
	npc_msg 5
	npc_msg 26
	buffer_players_name 0
	npc_msg 27
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_JASMINE
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

scr_seq_T26GYM0101_001:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_gsgentleman, _071E
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _02CD
	apply_movement obj_T26GYM0101_gsgentleman, _0724
	goto _02E8

scr_seq_T26GYM0101_002:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_gsgirl1, _071E
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0310
	apply_movement obj_T26GYM0101_gsgirl1, _072A
	goto _032B

scr_seq_T26GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0353
	npc_msg 20
	goto _0371

scr_seq_T26GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _038C
	npc_msg 22
	goto _03AA

scr_seq_T26GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C5
	compare VAR_UNK_410E, 0
	goto_if_ne _03D0
	npc_msg 16
	goto _03DB

scr_seq_T26GYM0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03E3
	npc_msg 23
	goto _03EE

scr_seq_T26GYM0101_008:
	buffer_players_name 0
	end

_0232:
	setflag FLAG_HIDE_JASMINE_IN_GYM
	end

_0238:
	end

_023A:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _03F6
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _03FC

_0255:
	goto _03FE

_025B:
	end

_025D:
	goto_if_unset FLAG_GOT_TM23_FROM_JASMINE, _042A
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _045E
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0286:
	white_out
	releaseall
	end

_028C:
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02C3
	callstd std_give_item_verbose
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_02C3:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02CD:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0487
	apply_movement obj_T26GYM0101_gsgentleman, _0730
	goto _02E8

_02E8:
	apply_movement obj_player, _0736
	wait_movement
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04B7
	setvar VAR_UNK_410E, 2
	end

_0310:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _04B9
	apply_movement obj_T26GYM0101_gsgirl1, _073C
	goto _032B

_032B:
	apply_movement obj_player, _0742
	wait_movement
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E9
	setvar VAR_UNK_410E, 3
	end

_0353:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04EB
	setvar VAR_UNK_410E, 2
	end

_0371:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04EB
	setvar VAR_UNK_410E, 2
	end

_038C:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04ED
	setvar VAR_UNK_410E, 3
	end

_03AA:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04ED
	setvar VAR_UNK_410E, 3
	end

_03C5:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D0:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03DB:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E3:
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03EE:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03F6:
	goto _03FE

_03FC:
	end

_03FE:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0238
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _04EF
	goto _0238

_042A:
	goto_if_no_item_space ITEM_TM023, 1, _02C3
	callstd std_give_item_verbose
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_045E:
	goto_if_set FLAG_TRADE_JASMINE_STEELIX, _0506
	compare VAR_TEMP_x4000, 77
	goto_if_eq _051C
	setvar VAR_TEMP_x4000, 77
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0487:
	apply_movement obj_T26GYM0101_gsgentleman, _0748
	apply_movement obj_player, _0736
	wait_movement
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04B7
	setvar VAR_UNK_410E, 2
	end

_04B7:
	end

_04B9:
	apply_movement obj_T26GYM0101_gsgirl1, _074E
	apply_movement obj_player, _0742
	wait_movement
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E9
	setvar VAR_UNK_410E, 3
	end

_04E9:
	end

_04EB:
	end

_04ED:
	end

_04EF:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _060B
	goto _061E

_0506:
	compare VAR_TEMP_x4000, 55
	goto_if_ne _0639
	npc_msg 11
	goto _0644

_051C:
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _064C
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
	goto_if_eq _064C
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_TEMP_x4003
	get_partymon_forme VAR_SPECIAL_x8004, VAR_TEMP_x4004
	compare VAR_TEMP_x4003, 0
	goto_if_eq _0657
	compare VAR_TEMP_x4004, 0
	goto_if_eq _0665
	compare VAR_TEMP_x4003, 487
	goto_if_eq _06D7
	compare VAR_TEMP_x4003, 492
	goto_if_eq _06D7
	compare VAR_TEMP_x4003, 172
	goto_if_eq _06D7
	compare VAR_TEMP_x4003, 479
	goto_if_eq _06D7
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _064C
	closemsg
	load_npc_trade 5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_METAL_BURST
	setflag FLAG_TRADE_JASMINE_STEELIX
	setvar VAR_TEMP_x4000, 55
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_060B:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06E2
	goto _061E

_061E:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _06E8
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06FF

_0639:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0644:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_064C:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0657:
	buffer_players_name 0
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0665:
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _064C
	closemsg
	load_npc_trade 5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_JASMINE_STEELIX
	setvar VAR_TEMP_x4000, 55
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 25
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_06D7:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06E2:
	goto _0238

_06E8:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _0701
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06FF

_06FF:
	end

_0701:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0718
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06FF

_0718:
	goto _0238

	.align 4
_071E:

	step 75, 1
	step_end
	.align 4
_0724:

	step 15, 1
	step_end
	.align 4
_072A:

	step 14, 3
	step_end
	.align 4
_0730:

	step 15, 2
	step_end
	.align 4
_0736:

	step 34, 1
	step_end
	.align 4
_073C:

	step 14, 2
	step_end
	.align 4
_0742:

	step 35, 1
	step_end
	.align 4
_0748:

	step 15, 3
	step_end
	.align 4
_074E:

	step 14, 1
	step_end
	.align 4


.close
