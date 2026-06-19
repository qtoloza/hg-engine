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

.include "armips/scr_seq/event_T22PC0101.inc"


// text archive to grab from: 559.txt

.create "build/a012/2_860", 0


scrdef scr_seq_T22PC0101_000
scrdef scr_seq_T22PC0101_001
scrdef scr_seq_T22PC0101_002
scrdef scr_seq_T22PC0101_003
scrdef scr_seq_T22PC0101_004
scrdef scr_seq_T22PC0101_005
scrdef scr_seq_T22PC0101_006
scrdef scr_seq_T22PC0101_007
scrdef scr_seq_T22PC0101_008
scrdef_end

scr_seq_T22PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_T22PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01BC
	scrcmd_815 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	prompt_easy_chat VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01C9
	npc_msg 13
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	scrcmd_815 0
	prompt_easy_chat VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01C9
	primo_password_check_1 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _01D4
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _024E
	goto _0259

scr_seq_T22PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_2C5, _0264
	npc_msg 21
	goto _0270

scr_seq_T22PC0101_001:
	simple_npc_msg 9
	end

scr_seq_T22PC0101_002:
	simple_npc_msg 10
	end

scr_seq_T22PC0101_003:
	simple_npc_msg 11
	end

scr_seq_T22PC0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16376, _02F7
	goto_if_set 16375, _0304
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _030D
	touchscreen_menu_show
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T22PC0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16236, _038E
	npc_msg 46
	giveitem_no_check ITEM_EXP_SHARE, 1
	npc_msg 47
	setflag 16236
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T22PC0101_008:
	buffer_players_name 0
	end

_01BC:
	touchscreen_menu_show
	npc_msg 15
	wait_button_or_walk_away
	goto _0399

_01C9:
	npc_msg 15
	wait_button_or_walk_away
	goto _0399

_01D4:
	primo_password_check_2 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _024E
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _039F
	compare VAR_SPECIAL_RESULT, 9
	goto_if_eq _03D9
	compare VAR_SPECIAL_RESULT, 10
	goto_if_eq _0413
	goto_if_set FLAG_GOT_MAREEP_EGG_FROM_PRIMO, _024E
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _044D
	setflag FLAG_GOT_MAREEP_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MAREEP, 0, 0
	give_egg SPECIES_MAREEP, 14
	goto _0458

_024E:
	npc_msg 14
	wait_button_or_walk_away
	goto _0399

_0259:
	npc_msg 16
	wait_button_or_walk_away
	goto _0399

_0264:
	capitalize 0
	npc_msg 26
	goto _0270

_0270:
	npc_msg 22
	touchscreen_menu_hide
	buffer_union_room_avatar_choices
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 53, 255, 0
	menu_item_add 54, 255, 1
	menu_item_add 55, 255, 2
	menu_item_add 56, 255, 3
	menu_item_add 44, 255, 4
	menu_exec
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 4, _0479
	case -2, _0479
	union_room_avatar_idx_to_trainer_class VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	capitalize 0
	npc_msg 23
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0486
	goto _0270

_02F7:
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0304:
	npc_msg 45
	goto _04A4

_030D:
	npc_msg 28
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051C
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 31
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051C
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 32
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _051C
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 33
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _051C
	closemsg
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	touchscreen_menu_show
	setflag 16375
	npc_msg 34
	goto _04A4

_038E:
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0399:
	closemsg
	releaseall
	end

_039F:
	goto_if_set FLAG_GOT_MAREEP_EGG_FROM_PRIMO, _024E
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _044D
	setflag FLAG_GOT_MAREEP_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MAREEP, 0, 0
	give_egg SPECIES_MAREEP, 14
	goto _0458

_03D9:
	goto_if_set FLAG_GOT_WOOPER_EGG_FROM_PRIMO, _024E
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _044D
	setflag FLAG_GOT_WOOPER_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_WOOPER, 0, 0
	give_egg SPECIES_WOOPER, 14
	goto _0458

_0413:
	goto_if_set FLAG_GOT_SLUGMA_EGG_FROM_PRIMO, _024E
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _044D
	setflag FLAG_GOT_SLUGMA_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SLUGMA, 0, 0
	give_egg SPECIES_SLUGMA, 14
	goto _0458

_044D:
	npc_msg 20
	wait_button_or_walk_away
	goto _0399

_0458:
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0533
	apply_movement obj_T22PC0101_instructor, _0644
	goto _054E

_0479:
	touchscreen_menu_show
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0486:
	touchscreen_menu_show
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	npc_msg 24
	setflag FLAG_UNK_2C5
	scrcmd_558 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_289 VAR_SPECIAL_x8005
	goto _0561

_04A4:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 36, 255, 0
	menu_item_add 37, 255, 1
	menu_item_add 38, 255, 2
	menu_item_add 39, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 1
	goto_if_eq _056C
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 4
	goto_if_eq _056C
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 7
	goto_if_eq _056C
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_051C:
	play_se SEQ_SE_DP_BOX03
	wait_se SEQ_SE_DP_BOX03
	touchscreen_menu_show
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0533:
	apply_movement obj_T22PC0101_instructor, _0656
	wait_movement
	play_fanfare SEQ_ME_TAMAGO_GET
	npc_msg 19
	wait_fanfare
	wait_button_or_walk_away
	goto _0399

_054E:
	wait_movement
	play_fanfare SEQ_ME_TAMAGO_GET
	npc_msg 19
	wait_fanfare
	wait_button_or_walk_away
	goto _0399

_0561:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_056C:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _05F9
	npc_msg 42
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag 16376
	npc_msg 43
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 44
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0604
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0637
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_05F9:
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0604:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0637:
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

	.align 4
_0644:

	step 63, 1
	step 32, 1
	step 63, 2
	step 33, 1
	step_end
	.align 4
_0656:

	step 63, 1
	step 32, 1
	step 63, 2
	step 35, 1
	step_end
	.align 4


.close
