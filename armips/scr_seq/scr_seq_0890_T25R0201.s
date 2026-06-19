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

.include "armips/scr_seq/event_T25R0201.inc"


// text archive to grab from: 584.txt

.create "build/a012/2_890", 0


scrdef scr_seq_T25R0201_000
scrdef scr_seq_T25R0201_001
scrdef scr_seq_T25R0201_002
scrdef scr_seq_T25R0201_003
scrdef scr_seq_T25R0201_004
scrdef scr_seq_T25R0201_005
scrdef scr_seq_T25R0201_006
scrdef scr_seq_T25R0201_007
scrdef_end

scr_seq_T25R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_089, _01CC
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01EB
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _020E
	end

scr_seq_T25R0201_001:
	simple_npc_msg 5
	end

scr_seq_T25R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	goto_if_set 16346, _021B
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	setflag 16346
	releaseall
	end

scr_seq_T25R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16344, _0272
	npc_msg 11
	setflag 16344
	goto _027B

scr_seq_T25R0201_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16340, _02A8
	npc_msg 42
	giveitem_no_check ITEM_ROOT_FOSSIL, 1
	giveitem_no_check ITEM_CLAW_FOSSIL, 1
	giveitem_no_check ITEM_HELIX_FOSSIL, 1
	giveitem_no_check ITEM_DOME_FOSSIL, 1
	giveitem_no_check ITEM_ARMOR_FOSSIL, 1
	giveitem_no_check ITEM_SKULL_FOSSIL, 1
	setflag 16340
	npc_msg 43
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0201_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 54
	giveitem_no_check ITEM_SOUL_DEW, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0201_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16301, _02C8
	scrcmd_452 SPECIES_PHIONE, 0
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 489
	goto_if_eq _02F2
	releaseall
	end

scr_seq_T25R0201_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_BOULDER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _031E
	gender_msgbox 83, 84
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01CC:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	takeitem_no_check ITEM_LOCK_CAPSULE, 1
	releaseall
	end

_01EB:
	npc_msg 1
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040C
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _020E
	end

_020E:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_021B:
	goto_if_unset 16283, _0428
	goto_if_unset 16343, _04BD
	goto_if_unset 16342, _04BD
	goto_if_unset 16341, _04BD
	goto_if_unset 16218, _04BD
	hasitem ITEM_RED_CHAIN, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04E8
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0272:
	npc_msg 15
	goto _027B

_027B:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0502
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _053B
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A8:
	hasitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0597
	npc_msg 44
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C8:
	scrcmd_452 SPECIES_MANAPHY, 0
	npc_msg 71
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 490
	goto_if_eq _0631
	releaseall
	end

_02F2:
	play_cry SPECIES_PHIONE, 6
	wait_cry
	apply_movement obj_T25R0201_suit, _1106
	wait_movement
	npc_msg 70
	scrcmd_452 SPECIES_MANAPHY, 0
	setflag 16301
	npc_msg 71
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	releaseall
	end

_031E:
	gender_msgbox 85, 86
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 87, 255, 0
	menu_item_add 88, 255, 1
	menu_item_add 89, 255, 2
	menu_item_add 90, 255, 3
	menu_item_add 91, 255, 4
	menu_item_add 92, 255, 5
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 80
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 72
	goto_if_eq _067E
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 81
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 73
	goto_if_eq _067E
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 107
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 74
	goto_if_eq _067E
	compare VAR_SPECIAL_x8008, 3
	setvar VAR_SPECIAL_x8004, 108
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 75
	goto_if_eq _067E
	compare VAR_SPECIAL_x8008, 4
	setvar VAR_SPECIAL_x8004, 109
	setvar VAR_SPECIAL_x8005, 1
	setvar VAR_SPECIAL_x8006, 90
	goto_if_eq _067E
	npc_msg 95
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_040C:
	giveitem_no_check ITEM_BIKE, 1
	setflag FLAG_UNK_089
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0428:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 75
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 387
	goto_if_eq _06A8
	compare VAR_TEMP_x4001, 388
	goto_if_eq _06A8
	compare VAR_TEMP_x4001, 389
	goto_if_eq _06A8
	compare VAR_TEMP_x4001, 390
	goto_if_eq _0700
	compare VAR_TEMP_x4001, 391
	goto_if_eq _0700
	compare VAR_TEMP_x4001, 392
	goto_if_eq _0700
	compare VAR_TEMP_x4001, 393
	goto_if_eq _0758
	compare VAR_TEMP_x4001, 394
	goto_if_eq _0758
	compare VAR_TEMP_x4001, 395
	goto_if_eq _0758
	npc_msg 76
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04BD:
	goto_if_set 16345, _07B0
	hasitem ITEM_LOCK_CAPSULE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07BB
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04E8:
	goto_if_set 16331, _082A
	npc_msg 45
	setflag 16331
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0502:
	script_overlay_cmd 2, 0
	goto_if_set FLAG_MAPTEMP_001, _0874
	compare VAR_UNK_407F, 0
	goto_if_ne _0881
	npc_msg 33
	countfossils VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8000, 0
	goto_if_ne _08A6
	npc_msg 38
	goto _0A4B

_053B:
	npc_msg 17
	show_money_box 20, 2
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 28, 255, 0
	menu_item_add 29, 255, 1
	menu_item_add 27, 255, 2
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	case 0, _0A57
	case 1, _0B6C
	hide_money_box
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0597:
	apply_movement obj_T25R0201_explore_2, _110C
	buffer_players_name 0
	buffer_players_name 0
	wait_movement
	npc_msg 48
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BFD
	npc_msg 50
	takeitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	npc_msg 51
	play_fanfare SEQ_ME_HYOUKA2
	wait_fanfare
	npc_msg 52
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_HYOUKAI_SUBERU
	wait_se SEQ_SE_GS_HYOUKAI_SUBERU
	play_se SEQ_SE_GS_HIKIDO_CLOSE
	wait_se SEQ_SE_GS_HIKIDO_CLOSE
	play_se SEQ_SE_GS_HIKIDO_CLOSE
	wait_se SEQ_SE_GS_HIKIDO_CLOSE
	play_se SEQ_SE_GS_HIKIDO_CLOSE
	wait_se SEQ_SE_GS_HIKIDO_CLOSE
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 53
	giveitem_no_check ITEM_SOUL_DEW, 1
	closemsg
	releaseall
	end

_0631:
	play_cry SPECIES_MANAPHY, 6
	wait_cry
	apply_movement obj_T25R0201_suit, _1106
	wait_movement
	npc_msg 72
	giveitem_no_check ITEM_SPLASH_PLATE, 1
	gender_msgbox 73, 74
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T25R0201_suit
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_067E:
	hasitem VAR_SPECIAL_x8006, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C08
	npc_msg 94
	takeitem VAR_SPECIAL_x8006, 1, VAR_SPECIAL_RESULT
	callstd std_give_item_verbose
	closemsg
	releaseall
	end

_06A8:
	npc_msg 77
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0C13
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0C13
	give_mon SPECIES_CHIMCHAR, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_PIPLUP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 78
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 81
	wait_button_or_walk_away
	closemsg
	setflag 16283
	releaseall
	end

_0700:
	npc_msg 77
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0C13
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0C13
	give_mon SPECIES_TURTWIG, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_PIPLUP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 79
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 81
	wait_button_or_walk_away
	closemsg
	setflag 16283
	releaseall
	end

_0758:
	npc_msg 77
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0C13
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0C13
	give_mon SPECIES_TURTWIG, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_CHIMCHAR, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 80
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 81
	wait_button_or_walk_away
	closemsg
	setflag 16283
	releaseall
	end

_07B0:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07BB:
	buffer_players_name 0
	stop_bgm 0
	play_bgm SEQ_GS_D_SHINTO
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_GONDORA_IDOU
	screen_shake 0, 20, 10, 10
	play_se SEQ_SE_DP_KI_GASYAN
	wait_se SEQ_SE_DP_KI_GASYAN
	npc_msg 9
	takeitem ITEM_LOCK_CAPSULE, 1, VAR_SPECIAL_RESULT
	wait_button_or_walk_away
	closemsg
	setflag 16345
	clearflag 16343
	clearflag 16342
	clearflag 16341
	setflag 16218
	releaseall
	end

_082A:
	npc_msg 47
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C1E
	closemsg
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D51R0301, 0, 5, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_0874:
	setflag FLAG_MAPTEMP_001
	npc_msg 35
	goto _0A4B

_0881:
	buffer_species_name 0, VAR_UNK_407F, 0, 0
	npc_msg 36
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_ne _0C3C
	npc_msg 37
	goto _0A4B

_08A6:
	compare VAR_SPECIAL_x8000, 1
	goto_if_eq _0CC3
	setvar VAR_SPECIAL_x8001, 0
	hasitem ITEM_OLD_AMBER, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_HELIX_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_DOME_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_ROOT_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_CLAW_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_ARMOR_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_SKULL_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8001, 1
	goto_if_eq _0CC3
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 0
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 0
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	setvar VAR_TEMP_x4005, 0
	setvar VAR_TEMP_x4006, 0
	setvar VAR_TEMP_x4007, 0
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8005, 0
	call_if_eq _0CFC
	compare VAR_SPECIAL_x8005, 1
	call_if_eq _0D0C
	compare VAR_SPECIAL_x8005, 2
	call_if_eq _0D1C
	compare VAR_SPECIAL_x8005, 3
	call_if_eq _0D2C
	compare VAR_SPECIAL_x8005, 4
	call_if_eq _0D3C
	compare VAR_SPECIAL_x8005, 5
	call_if_eq _0D4C
	compare VAR_SPECIAL_x8005, 6
	call_if_eq _0D5C
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6C
	compare VAR_SPECIAL_x8004, 0
	call_if_eq _0D78
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0D80
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _0D88
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0D90
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0D98
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0DA0
	compare VAR_SPECIAL_x8004, 6
	call_if_eq _0DA8
	copyvar VAR_SPECIAL_x8006, VAR_SPECIAL_x8005
	addvar VAR_SPECIAL_x8006, 159
	menu_item_add VAR_SPECIAL_x8006, 255, VAR_SPECIAL_x8004
	goto _0DB0

_0A4B:
	wait_button_or_walk_away
	closemsg
	script_overlay_cmd 2, 1
	releaseall
	end

_0A57:
	npc_msg 17
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 18, 255, 0
	menu_item_add 19, 255, 1
	menu_item_add 20, 255, 2
	menu_item_add 21, 255, 3
	menu_item_add 22, 255, 4
	menu_item_add 23, 255, 5
	menu_item_add 30, 255, 6
	menu_item_add 27, 255, 7
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 82
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 83
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 84
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 3
	setvar VAR_SPECIAL_x8004, 85
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 4
	setvar VAR_SPECIAL_x8004, 80
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 5
	setvar VAR_SPECIAL_x8004, 81
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 6
	setvar VAR_SPECIAL_x8004, 229
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	case 7, _0EFF
	end

_0B6C:
	npc_msg 17
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 25, 255, 0
	menu_item_add 26, 255, 1
	menu_item_add 24, 255, 2
	menu_item_add 27, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 107
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 108
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 109
	setvar VAR_SPECIAL_x8005, 1
	goto_if_eq _0E7B
	case 3, _0EFF
	end

_0BFD:
	npc_msg 49
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C08:
	npc_msg 93
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C13:
	npc_msg 82
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C1E:
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F0C
	npc_msg 46
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C3C:
	buffer_species_name 1, VAR_UNK_407F, 0, 0
	buffer_players_name 0
	play_fanfare SEQ_ME_POKEGET
	npc_msg 40
	wait_fanfare
	give_mon VAR_UNK_407F, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_420 116
	setvar VAR_UNK_407F, 0
	npc_msg 41
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F4D
	get_party_count VAR_TEMP_x4000
	subvar VAR_TEMP_x4000, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F55
	scrcmd_420 50
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	script_overlay_cmd 2, 1
	releaseall
	end

_0CC3:
	getfossilminimumamount VAR_SPECIAL_x8002, VAR_SPECIAL_x8004, 1
	buffer_item_name 0, VAR_SPECIAL_x8002
	npc_msg 39
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F69
	getfossilpokemon VAR_UNK_407F, VAR_SPECIAL_x8002
	takeitem VAR_SPECIAL_x8002, 1, VAR_SPECIAL_RESULT
	goto _0874

_0CFC:
	setvar VAR_TEMP_x4000, 103
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D0C:
	setvar VAR_TEMP_x4000, 101
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D1C:
	setvar VAR_TEMP_x4000, 102
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D2C:
	setvar VAR_TEMP_x4000, 99
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D3C:
	setvar VAR_TEMP_x4000, 100
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D4C:
	setvar VAR_TEMP_x4000, 104
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D5C:
	setvar VAR_TEMP_x4000, 105
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0D6C:
	addvar VAR_SPECIAL_x8005, 1
	goto _0F78

_0D78:
	copyvar VAR_TEMP_x4001, VAR_TEMP_x4000
	return

_0D80:
	copyvar VAR_TEMP_x4002, VAR_TEMP_x4000
	return

_0D88:
	copyvar VAR_TEMP_x4003, VAR_TEMP_x4000
	return

_0D90:
	copyvar VAR_TEMP_x4004, VAR_TEMP_x4000
	return

_0D98:
	copyvar VAR_TEMP_x4005, VAR_TEMP_x4000
	return

_0DA0:
	copyvar VAR_TEMP_x4006, VAR_TEMP_x4000
	return

_0DA8:
	copyvar VAR_TEMP_x4007, VAR_TEMP_x4000
	return

_0DB0:
	addvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8005, 1
	compare VAR_SPECIAL_x8004, VAR_SPECIAL_x8001
	goto_if_ne _0F78
	menu_item_add 45, 255, VAR_SPECIAL_x8004
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _0F69
	compare VAR_SPECIAL_x8000, 0
	call_if_eq _1055
	compare VAR_SPECIAL_x8000, 1
	call_if_eq _105D
	compare VAR_SPECIAL_x8000, 2
	call_if_eq _1065
	compare VAR_SPECIAL_x8000, 3
	call_if_eq _106D
	compare VAR_SPECIAL_x8000, 4
	call_if_eq _1075
	compare VAR_SPECIAL_x8000, 5
	call_if_eq _107D
	compare VAR_SPECIAL_x8000, 6
	call_if_eq _1085
	getfossilpokemon VAR_UNK_407F, VAR_SPECIAL_x8002
	compare VAR_UNK_407F, 0
	goto_if_eq _0F69
	buffer_item_name 0, VAR_SPECIAL_x8002
	npc_msg 39
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0F69
	takeitem VAR_SPECIAL_x8002, 1, VAR_SPECIAL_RESULT
	goto _0874

_0E7B:
	compare VAR_SPECIAL_x8004, 82
	goto_if_eq _108D
	compare VAR_SPECIAL_x8004, 83
	goto_if_eq _108D
	compare VAR_SPECIAL_x8004, 84
	goto_if_eq _108D
	compare VAR_SPECIAL_x8004, 85
	goto_if_eq _108D
	compare VAR_SPECIAL_x8004, 81
	goto_if_eq _10A7
	compare VAR_SPECIAL_x8004, 80
	goto_if_eq _10A7
	compare VAR_SPECIAL_x8004, 229
	goto_if_eq _10C1
	compare VAR_SPECIAL_x8004, 107
	goto_if_eq _10DB
	compare VAR_SPECIAL_x8004, 108
	goto_if_eq _10DB
	compare VAR_SPECIAL_x8004, 109
	goto_if_eq _10DB
	end

_0EFF:
	hide_money_box
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0F0C:
	npc_msg 64
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10F5
	npc_msg 65
	closemsg
	trainer_battle TRAINER_CAMPER_MICKEY_7, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1100
	npc_msg 67
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0F4D:
	script_overlay_cmd 2, 1
	releaseall
	end

_0F55:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	script_overlay_cmd 2, 1
	releaseall
	end

_0F69:
	setvar VAR_UNK_407F, 0
	npc_msg 34
	goto _0A4B

_0F78:
	compare VAR_SPECIAL_x8005, 0
	call_if_eq _0CFC
	compare VAR_SPECIAL_x8005, 1
	call_if_eq _0D0C
	compare VAR_SPECIAL_x8005, 2
	call_if_eq _0D1C
	compare VAR_SPECIAL_x8005, 3
	call_if_eq _0D2C
	compare VAR_SPECIAL_x8005, 4
	call_if_eq _0D3C
	compare VAR_SPECIAL_x8005, 5
	call_if_eq _0D4C
	compare VAR_SPECIAL_x8005, 6
	call_if_eq _0D5C
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6C
	compare VAR_SPECIAL_x8004, 0
	call_if_eq _0D78
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0D80
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _0D88
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0D90
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0D98
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0DA0
	compare VAR_SPECIAL_x8004, 6
	call_if_eq _0DA8
	copyvar VAR_SPECIAL_x8006, VAR_SPECIAL_x8005
	addvar VAR_SPECIAL_x8006, 159
	menu_item_add VAR_SPECIAL_x8006, 255, VAR_SPECIAL_x8004
	goto _0DB0

_1055:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4001
	return

_105D:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4002
	return

_1065:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4003
	return

_106D:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4004
	return

_1075:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4005
	return

_107D:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4006
	return

_1085:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4007
	return

_108D:
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	submoneyimmediate 3000
	update_money_box
	callstd std_give_item_verbose
	goto _0A57

_10A7:
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	submoneyimmediate 5000
	update_money_box
	callstd std_give_item_verbose
	goto _0A57

_10C1:
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	submoneyimmediate 1000
	update_money_box
	callstd std_give_item_verbose
	goto _0A57

_10DB:
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	submoneyimmediate 10000
	update_money_box
	callstd std_give_item_verbose
	goto _0B6C

_10F5:
	npc_msg 66
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1100:
	white_out
	releaseall
	end

	.align 4
_1106:

	step 75, 1
	step_end
	.align 4
_110C:

	step 75, 1
	step 49, 2
	step_end
	.align 4


.close
