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

.include "armips/scr_seq/event_T09.inc"


// text archive to grab from: 519.txt

.create "build/a012/2_815", 0


scrdef scr_seq_T09_000
scrdef scr_seq_T09_001
scrdef scr_seq_T09_002
scrdef scr_seq_T09_003
scrdef scr_seq_T09_004
scrdef scr_seq_T09_005
scrdef scr_seq_T09_006
scrdef scr_seq_T09_007
scrdef scr_seq_T09_008
scrdef scr_seq_T09_009
scrdef scr_seq_T09_010
scrdef_end

scr_seq_T09_003:
	goto_if_unset FLAG_UNK_189, _0289
	clearflag FLAG_UNK_189
	end

scr_seq_T09_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	release obj_partner_poke
	apply_movement obj_partner_poke, _06F4
	wait_movement
	lock obj_partner_poke
	compare VAR_UNK_40FD, 0
	goto_if_ne _029A
	goto_if_set FLAG_UNK_128, _02FB
	setflag FLAG_UNK_128
	npc_msg 0
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0318
	apply_movement obj_T09_gsleader16, _06FA
	goto _0342

scr_seq_T09_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_BLAINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0364
	compare VAR_TEMP_x4004, 1
	goto_if_ge _03C5
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03CE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0411
	end

scr_seq_T09_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 20, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T09_002:
	direction_signpost 21, 0, 9, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T09_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	apply_movement obj_player, _0710
	wait_movement
	releaseall
	end

scr_seq_T09_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_HEATRAN, 6
	release obj_T09_follower_mon_heatran
	scrcmd_523 obj_T09_follower_mon_heatran, 2, 90, 5, 0
	lock obj_T09_follower_mon_heatran
	npc_msg 23
	closemsg
	wait_cry
	wild_battle SPECIES_HEATRAN, 70, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0422
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T09_follower_mon_heatran
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0428
	compare VAR_TEMP_x4002, 4
	goto_if_eq _0437
	compare VAR_TEMP_x4002, 5
	goto_if_eq _0428
	releaseall
	end

scr_seq_T09_007:
	lockall
	hide_person obj_T09_monstarball
	setflag FLAG_HIDE_ITEMBALL_T09_MAGMARIZER
	giveitem_no_check ITEM_MAGMA_STONE, 1
	closemsg
	play_cry SPECIES_HEATRAN, 0
	wait_cry
	fade_screen 11, 5, 0, RGB_BLACK
	wait_fade
	clearflag 16322
	show_person obj_T09_follower_mon_heatran
	apply_movement obj_T09_follower_mon_heatran, _06F4
	wait_cry
	fade_screen 11, 5, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T09_008:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0447
	end

scr_seq_T09_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MOLTRES, 0
	wait_cry
	wild_battle SPECIES_MOLTRES, 60, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person 4
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0422
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0455
	compare VAR_TEMP_x4002, 5
	call_if_eq _0455
	releaseall
	end

scr_seq_T09_010:
	buffer_players_name 0
	end

_0289:
	goto_if_set FLAG_UNK_129, _0464
	setflag FLAG_UNK_27D
	end

_029A:
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04A3
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04AE
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 92
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02FB:
	compare VAR_UNK_4135, 7
	goto_if_ge _04B9
	buffer_int 0, VAR_UNK_4135
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0318:
	apply_movement obj_T09_gsleader16, _0716
	wait_movement
	npc_msg 1
	compare VAR_UNK_4135, 7
	goto_if_ge _04B9
	buffer_int 0, VAR_UNK_4135
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0342:
	wait_movement
	npc_msg 1
	compare VAR_UNK_4135, 7
	goto_if_ge _04B9
	buffer_int 0, VAR_UNK_4135
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0364:
	npc_msg 15
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04F4
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04FF
	npc_msg 16
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 85
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03C5:
	npc_msg 14
	goto _050A

_03CE:
	buffer_players_name 0
	npc_msg 11
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BLAINE
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_27D
	hide_person obj_T09_gsleader15
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0411:
	setvar VAR_TEMP_x4004, 1
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0422:
	white_out
	releaseall
	end

_0428:
	npc_msg 24
	clearflag 16322
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0437:
	clearflag 16311
	setflag 16310
	setflag FLAG_UNK_2F5
	releaseall
	end

_0447:
	setflag FLAG_HIDE_MT_SILVER_CAVE_MOLTRES
	hide_person obj_T09_gsleader16
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0455:
	npc_msg 25
	clearflag 16311
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0464:
	setflag FLAG_UNK_25A
	get_phone_book_rematch PHONE_CONTACT_BLUE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _052E
	compare VAR_UNK_40FD, 0
	goto_if_eq _052E
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 5
	goto_if_ne _055A
	clearflag FLAG_UNK_25A
	goto _052E

_04A3:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04AE:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04B9:
	npc_msg 2
	closemsg
	get_player_facing VAR_TEMP_x4000
	get_person_coords 253, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_TEMP_x4000, 0
	goto_if_ne _058A
	compare VAR_SPECIAL_x8004, 1035
	goto_if_ne _05BC
	apply_movement obj_partner_poke, _072C
	wait_movement
	goto _05C2

_04F4:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04FF:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_050A:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03CE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0411
	end

_052E:
	check_registered_phone_number PHONE_CONTACT_BLAINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _05DD
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _060B
	goto _0626

_055A:
	setflag FLAG_UNK_25A
	check_registered_phone_number PHONE_CONTACT_BLAINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _05DD
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _060B
	goto _0626

_058A:
	compare VAR_SPECIAL_x8005, 495
	goto_if_ne _05C2
	apply_movement obj_partner_poke, _073A
	wait_movement
	compare VAR_TEMP_x4000, 0
	goto_if_ne _062C
	apply_movement obj_T09_gsleader16, _0748
	goto _0666

_05BC:
	goto _05C2

_05C2:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _062C
	apply_movement obj_T09_gsleader16, _0748
	goto _0666

_05DD:
	get_phone_book_rematch PHONE_CONTACT_BLAINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0626
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	goto_if_ne _0698
	clearflag FLAG_UNK_27D
	goto _069E

_060B:
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 2
	goto_if_ne _06A0
	clearflag FLAG_UNK_27D
	goto _06A6

_0626:
	setflag FLAG_UNK_27D
	end

_062C:
	apply_movement obj_T09_gsleader16, _0752
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06A8
	apply_movement obj_T09_gsleader16, _075C
	apply_movement obj_player, _076A
	apply_movement obj_partner_poke, _076A
	goto _06DA

_0666:
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06A8
	apply_movement obj_T09_gsleader16, _075C
	apply_movement obj_player, _076A
	apply_movement obj_partner_poke, _076A
	goto _06DA

_0698:
	goto _0626

_069E:
	end

_06A0:
	goto _0626

_06A6:
	end

_06A8:
	apply_movement obj_T09_gsleader16, _0770
	apply_movement obj_player, _076A
	apply_movement obj_partner_poke, _076A
	wait_movement
	hide_person obj_T09_gsleader16
	setflag FLAG_UNK_25A
	setflag FLAG_UNK_129
	setflag FLAG_HIDE_VIRIDIAN_CITY_OLD_MAN_OUTSIDE_GYM_LOCKED
	clearflag FLAG_HIDE_VIRIDIAN_CITY_OLD_MAN_OUTSIDE_GYM_UNLOCKED
	releaseall
	end

_06DA:
	wait_movement
	hide_person obj_T09_gsleader16
	setflag FLAG_UNK_25A
	setflag FLAG_UNK_129
	setflag FLAG_HIDE_VIRIDIAN_CITY_OLD_MAN_OUTSIDE_GYM_LOCKED
	clearflag FLAG_HIDE_VIRIDIAN_CITY_OLD_MAN_OUTSIDE_GYM_UNLOCKED
	releaseall
	end

	.align 4
_06F4:

	step 60, 1
	step_end
	.align 4
_06FA:

	step 35, 1
	step 63, 2
	step 32, 1
	step 63, 2
	step 33, 1
	step_end
	.align 4
_0710:

	step 14, 1
	step_end
	.align 4
_0716:

	step 32, 1
	step 63, 2
	step 35, 1
	step 63, 2
	step 34, 1
	step_end
	.align 4
_072C:

	step 13, 1
	step 15, 1
	step 34, 1
	step_end
	.align 4
_073A:

	step 14, 1
	step 12, 1
	step 35, 1
	step_end
	.align 4
_0748:

	step 14, 1
	step 13, 1
	step_end
	.align 4
_0752:

	step 13, 1
	step 14, 1
	step_end
	.align 4
_075C:

	step 13, 2
	step 14, 2
	step 13, 8
	step_end
	.align 4
_076A:

	step 33, 1
	step_end
	.align 4
_0770:

	step 13, 1
	step 13, 2
	step 14, 2
	step 13, 7
	step_end
	.align 4


.close
