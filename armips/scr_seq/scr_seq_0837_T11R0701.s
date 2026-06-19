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

.include "armips/scr_seq/event_T11R0701.inc"


// text archive to grab from: 537.txt

.create "build/a012/2_837", 0


scrdef scr_seq_T11R0701_000
scrdef scr_seq_T11R0701_001
scrdef scr_seq_T11R0701_002
scrdef scr_seq_T11R0701_003
scrdef scr_seq_T11R0701_004
scrdef scr_seq_T11R0701_005
scrdef scr_seq_T11R0701_006
scrdef scr_seq_T11R0701_007
scrdef_end

scr_seq_T11R0701_002:
	setvar VAR_TEMP_x4008, 0
	setvar VAR_TEMP_x4009, 0
	compare VAR_UNK_4130, 3
	goto_if_eq _01F4
	player_has_species VAR_TEMP_x4000, SPECIES_ROTOM
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0247
	setvar VAR_TEMP_x4009, 1
	clearflag FLAG_UNK_281
	clearflag FLAG_UNK_282
	goto_if_set FLAG_TRADE_STEVEN_FORRETRESS_BELDUM, _025F
	compare VAR_UNK_4130, 4
	goto_if_eq _025F
	compare VAR_UNK_4130, 1
	goto_if_le _025F
	compare VAR_UNK_40FD, 0
	goto_if_eq _025F
	clearflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	compare VAR_UNK_4130, 5
	call_if_eq _026B
	end

scr_seq_T11R0701_005:
	compare VAR_TEMP_x4009, 1
	goto_if_ne _0271
	move_warp 1, 23, 2
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0299
	compare VAR_UNK_4130, 3
	goto_if_gt _0299
	move_person_facing obj_T11R0701_daigo, 6666, 0, 6666, DIR_NORTH
	end

scr_seq_T11R0701_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _silph_receptionist_normal
	goto_if_set FLAG_CAUGHT_GENESECT, _silph_receptionist_post_genesect
	npc_msg 40
	goto _silph_receptionist_end
_silph_receptionist_post_genesect:
	npc_msg 41
	goto _silph_receptionist_end
_silph_receptionist_normal:
	npc_msg 0
_silph_receptionist_end:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11R0701_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_UPGRADE_FROM_SAFFRON_CITY_GUARD, _029B
	npc_msg 1
	goto_if_no_item_space ITEM_UP_GRADE, 1, _02A6
	callstd std_give_item_verbose
	setflag FLAG_GOT_UPGRADE_FROM_SAFFRON_CITY_GUARD
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11R0701_004:
	goto_if_set FLAG_GOT_HOENN_STARTER_FROM_STEVEN, _02B0
	compare VAR_UNK_4130, 3
	goto_if_eq _02D4
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_UNK_4130, 3
	npc_msg 14
	closemsg
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _02E5
	apply_movement obj_T11R0701_daigo, _094F
	goto _0300

scr_seq_T11R0701_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11R0701_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	fade_out_bgm 0, 5
	play_bgm SEQ_GS_UTSUGI_RABO
	npc_msg 31
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _093C
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _093C
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_eq _0837
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 155
	goto_if_eq _088E
	goto _08E5

scr_seq_T11R0701_007:
	end

_01F4:
	setvar VAR_TEMP_x4009, 1
	clearflag FLAG_UNK_281
	clearflag FLAG_UNK_282
	goto_if_set FLAG_TRADE_STEVEN_FORRETRESS_BELDUM, _025F
	compare VAR_UNK_4130, 4
	goto_if_eq _025F
	compare VAR_UNK_4130, 1
	goto_if_le _025F
	compare VAR_UNK_40FD, 0
	goto_if_eq _025F
	clearflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	compare VAR_UNK_4130, 5
	call_if_eq _026B
	end

_0247:
	setflag FLAG_UNK_0A0
	setflag FLAG_UNK_281
	setflag FLAG_UNK_282
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	call _032A
	end

_025F:
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	call _032A
	end

_026B:
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	return

_0271:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0299
	compare VAR_UNK_4130, 3
	goto_if_gt _0299
	move_person_facing obj_T11R0701_daigo, 22, 0, 8, DIR_NORTH
	end

_0299:
	end

_029B:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A6:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02B0:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_UNK_4130, 6
	compare VAR_TEMP_x400A, 77
	goto_if_ne _0332
	npc_msg 8
	goto _03C8

_02D4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	goto _0455

_02E5:
	compare VAR_TEMP_x4002, 2
	goto_if_ne _04C0
	apply_movement obj_T11R0701_daigo, _0955
	goto _0300

_0300:
	wait_movement
	apply_movement obj_T11R0701_daigo, _095B
	wait_movement
	npc_msg 15
	compare VAR_TEMP_x4002, 0
	goto_if_ne _04F2
	apply_movement obj_T11R0701_daigo, _094F
	goto _050D

_032A:
	setvar VAR_TEMP_x4008, 1
	return

_0332:
	npc_msg 7
	setvar VAR_TEMP_x400A, 77
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _057D
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
	goto_if_eq _057D
	load_npc_trade 12
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	mon_get_friendship VAR_TEMP_x4002, VAR_SPECIAL_x8004
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0588
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_STEVEN_FORRETRESS_BELDUM
	compare VAR_TEMP_x4002, 200
	goto_if_lt _0595
	npc_msg 13
	goto _05B9

_03C8:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _057D
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
	goto_if_eq _057D
	load_npc_trade 12
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	mon_get_friendship VAR_TEMP_x4002, VAR_SPECIAL_x8004
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0588
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_STEVEN_FORRETRESS_BELDUM
	compare VAR_TEMP_x4002, 200
	goto_if_lt _0595
	npc_msg 13
	goto _05B9

_0455:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_x8004
	menu_item_add 17, 255, 0
	menu_item_add 18, 255, 1
	menu_item_add 19, 255, 2
	menu_item_add 27, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_x8004
	case 3, _05DA
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05E5
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _05F0
	setvar VAR_SPECIAL_x8004, 252
	goto _0609

_04C0:
	apply_movement obj_T11R0701_daigo, _0961
	wait_movement
	apply_movement obj_T11R0701_daigo, _095B
	wait_movement
	npc_msg 15
	compare VAR_TEMP_x4002, 0
	goto_if_ne _04F2
	apply_movement obj_T11R0701_daigo, _094F
	goto _050D

_04F2:
	compare VAR_TEMP_x4002, 2
	goto_if_ne _066A
	apply_movement obj_T11R0701_daigo, _0955
	goto _050D

_050D:
	wait_movement
	npc_msg 16
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_x8004
	menu_item_add 17, 255, 0
	menu_item_add 18, 255, 1
	menu_item_add 19, 255, 2
	menu_item_add 27, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_x8004
	case 3, _05DA
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05E5
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _05F0
	setvar VAR_SPECIAL_x8004, 252
	goto _0609

_057D:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0588:
	npc_trade_end
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0595:
	npc_msg 12
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06E2
	apply_movement obj_T11R0701_daigo, _0967
	goto _0706

_05B9:
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06E2
	apply_movement obj_T11R0701_daigo, _0967
	goto _0706

_05DA:
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05E5:
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05F0:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0722
	setvar VAR_SPECIAL_x8004, 255
	goto _0609

_0609:
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	buffer_players_name 0
	npc_msg 20
	play_fanfare SEQ_ME_POKEGET
	npc_msg 21
	wait_fanfare
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_hide
	npc_msg 25
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0789
	touchscreen_menu_show
	npc_msg 22
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07D3
	apply_movement obj_T11R0701_daigo, _097D
	goto _07F7

_066A:
	apply_movement obj_T11R0701_daigo, _0961
	wait_movement
	npc_msg 16
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_x8004
	menu_item_add 17, 255, 0
	menu_item_add 18, 255, 1
	menu_item_add 19, 255, 2
	menu_item_add 27, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_x8004
	case 3, _05DA
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05E5
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _05F0
	setvar VAR_SPECIAL_x8004, 252
	goto _0609

_06E2:
	apply_movement obj_T11R0701_daigo, _0987
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T11R0701_daigo
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	setvar VAR_UNK_4130, 7
	releaseall
	end

_0706:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T11R0701_daigo
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	setvar VAR_UNK_4130, 7
	releaseall
	end

_0722:
	setvar VAR_SPECIAL_x8004, 258
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	buffer_players_name 0
	npc_msg 20
	play_fanfare SEQ_ME_POKEGET
	npc_msg 21
	wait_fanfare
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	touchscreen_menu_hide
	npc_msg 25
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0789
	touchscreen_menu_show
	npc_msg 22
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07D3
	apply_movement obj_T11R0701_daigo, _097D
	goto _07F7

_0789:
	closemsg
	get_party_count VAR_SPECIAL_RESULT
	subvar VAR_SPECIAL_RESULT, 1
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_815 0
	nickname_input VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0813
	npc_msg 26
	goto _0813

_07D3:
	apply_movement obj_T11R0701_daigo, _0999
	wait_movement
	hide_person obj_T11R0701_daigo
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	setflag FLAG_GOT_HOENN_STARTER_FROM_STEVEN
	setvar VAR_UNK_4130, 4
	clearflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	releaseall
	end

_07F7:
	wait_movement
	hide_person obj_T11R0701_daigo
	setflag FLAG_HIDE_SAFFRON_CITY_STEVEN
	setflag FLAG_GOT_HOENN_STARTER_FROM_STEVEN
	setvar VAR_UNK_4130, 4
	clearflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	releaseall
	end

_0813:
	npc_msg 22
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07D3
	apply_movement obj_T11R0701_daigo, _097D
	goto _07F7

_0837:
	give_mon SPECIES_CYNDAQUIL, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_TOTODILE, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 34
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T11R0701_doctor
	fade_out_bgm 0, 20
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_088E:
	give_mon SPECIES_CHIKORITA, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_TOTODILE, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 35
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T11R0701_doctor
	fade_out_bgm 0, 20
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_08E5:
	give_mon SPECIES_CHIKORITA, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_CYNDAQUIL, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 36
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T11R0701_doctor
	fade_out_bgm 0, 20
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_093C:
	fade_out_bgm 0, 20
	reset_bgm
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_094F:

	step 256, 65024
	step 8960, 256
	.align 4
_0955:

	step 256, 65024
	step 19200, 256
	.align 4
_095B:

	step 256, 65024
	step 8704, 256
	.align 4
_0961:

	step 256, 65024
	step 3584, 512
	.align 4
_0967:

	step 512, 3328
	step 1280, 3584
	step 256, 3328
	step 256, 17664
	step 256, 65024
	step 3328, 768
	.align 4
_097D:

	step 768, 3584
	step 2560, 65024
	step 3328, 1280
	.align 4
_0987:

	step 1280, 3584
	step 768, 3328
	step 256, 17664
	step 256, 65024
	step 3584, 512
	.align 4
_0999:

	step 512, 3328
	step 768, 3584
	step 2048, 65024
	step 0, 0
	.align 4


.close
