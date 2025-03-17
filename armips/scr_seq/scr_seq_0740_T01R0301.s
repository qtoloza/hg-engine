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

.include "armips/scr_seq/event_T01R0301.inc"


// text archive to grab from: 451.txt

.create "build/a012/2_740", 0


scrdef scr_seq_T01R0301_000
scrdef scr_seq_T01R0301_001
scrdef scr_seq_T01R0301_002
scrdef scr_seq_T01R0301_003
scrdef scr_seq_T01R0301_004
scrdef scr_seq_T01R0301_005
scrdef scr_seq_T01R0301_006
scrdef scr_seq_T01R0301_007
scrdef scr_seq_T01R0301_008
scrdef scr_seq_T01R0301_009
scrdef scr_seq_T01R0301_010
scrdef scr_seq_T01R0301_011
scrdef_end

scr_seq_T01R0301_010:
	compare VAR_UNK_4131, 3
	goto_if_eq _02F6
	compare VAR_UNK_4131, 4
	goto_if_eq _02F6
	compare VAR_UNK_4131, 5
	goto_if_eq _02F6
	end

scr_seq_T01R0301_006:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0AC6
	wait_movement
	buffer_players_name 0
	npc_msg 58
	npc_msg 59
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4131, 2
	setflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	setflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	setflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
	copyvar VAR_UNK_4131, VAR_SPECIAL_x8006
	setvar VAR_SCENE_EMBEDDED_TOWER, 1
	releaseall
	end

scr_seq_T01R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4096, 2
	goto_if_eq _030A
	compare VAR_UNK_4131, 3
	goto_if_eq _034C
	compare VAR_UNK_4131, 4
	goto_if_eq _034C
	compare VAR_UNK_4131, 5
	goto_if_eq _034C
	compare VAR_UNK_4131, 2
	goto_if_eq _0357
	compare VAR_SCENE_EMBEDDED_TOWER, 7
	goto_if_eq _0362
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_eq _0373
	compare VAR_SCENE_EMBEDDED_TOWER, 4
	goto_if_eq _037E
	goto_if_set FLAG_GOT_HM08, _03CD
	goto_if_set FLAG_UNK_12A, _040B
	buffer_players_name 0
	gender_msgbox 0, 1
	setflag FLAG_UNK_12A
	compare VAR_UNK_4135, 0
	goto_if_ne _0421
	npc_msg 8
	goto _03CD

scr_seq_T01R0301_001:
	simple_npc_msg 33
	end

scr_seq_T01R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	gender_msgbox 37, 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T01R0301_007:
	compare VAR_UNK_4131, 6
	goto_if_eq _0466
	compare VAR_UNK_4131, 0
	goto_if_eq _0468
	compare VAR_UNK_4131, 3
	goto_if_eq _0468
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 4
	goto_if_eq _046A
	compare VAR_UNK_4131, 5
	goto_if_eq _046A
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0478
	apply_movement obj_T01R0301_ookido, _0ACC
	goto _04BA

scr_seq_T01R0301_008:
	compare VAR_UNK_4131, 6
	goto_if_eq _0466
	compare VAR_UNK_4131, 0
	goto_if_eq _0468
	compare VAR_UNK_4131, 4
	goto_if_eq _0468
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 3
	goto_if_eq _046A
	compare VAR_UNK_4131, 5
	goto_if_eq _046A
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _04F4
	apply_movement obj_T01R0301_ookido, _0ACC
	goto _0536

scr_seq_T01R0301_009:
	compare VAR_UNK_4131, 6
	goto_if_eq _0466
	compare VAR_UNK_4131, 0
	goto_if_eq _0468
	compare VAR_UNK_4131, 5
	goto_if_eq _0468
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4131, 3
	goto_if_eq _046A
	compare VAR_UNK_4131, 4
	goto_if_eq _046A
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0570
	apply_movement obj_T01R0301_ookido, _0ACC
	goto _05B2

scr_seq_T01R0301_011:
	end

_02F6:
	setflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	setflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	setflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
	setvar VAR_UNK_4131, 6
	end

_030A:
	goto_if_set FLAG_GOT_HM08, _05EC
	npc_msg 55
	giveitem_no_check ITEM_HM08, 1
	npc_msg 56
	buffer_players_name 0
	gender_msgbox 6, 7
	setvar VAR_UNK_4110, 2
	setflag FLAG_UNLOCKED_MT_SILVER
	clearflag 16267
	wait_button_or_walk_away
	closemsg
	setflag FLAG_GOT_HM08
	releaseall
	end

_034C:
	npc_msg 53
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0357:
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0362:
	npc_msg 23
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 8
	goto _03CD

_0373:
	npc_msg 22
	closemsg
	goto _03CD

_037E:
	scrcmd_836 VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 1
	goto_if_eq _05F7
	goto_if_set FLAG_UNK_0BC, _062A
	buffer_players_name 0
	gender_msgbox 11, 12
	closemsg
	apply_movement obj_T01R0301_ookido, _0AD2
	wait_movement
	setflag FLAG_UNK_0BC
	npc_msg 13
	closemsg
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0644
	goto _0657

_03CD:
	goto_if_set FLAG_UNK_988, _0676
	callstd std_in_person_evaluate_dex
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06DA
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06DA
	count_national_dex_owned VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 720
	goto_if_eq _06DE
	releaseall
	end

_040B:
	compare VAR_UNK_4135, 0
	goto_if_ne _0421
	npc_msg 8
	goto _03CD

_0421:
	buffer_players_name 0
	gender_msgbox 9, 10
	goto_if_set FLAG_UNK_988, _0676
	callstd std_in_person_evaluate_dex
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06DA
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06DA
	count_national_dex_owned VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 720
	goto_if_eq _06DE
	releaseall
	end

_0466:
	end

_0468:
	end

_046A:
	buffer_rivals_name 1
	npc_msg 54
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0478:
	apply_movement obj_T01R0301_ookido, _0ADC
	wait_movement
	scrcmd_452 SPECIES_BULBASAUR, 0
	play_cry SPECIES_BULBASAUR, 0
	npc_msg 45
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8006, 3
	call _0753
	end

_04BA:
	wait_movement
	scrcmd_452 SPECIES_BULBASAUR, 0
	play_cry SPECIES_BULBASAUR, 0
	npc_msg 45
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8006, 3
	call _0753
	end

_04F4:
	apply_movement obj_T01R0301_ookido, _0ADC
	wait_movement
	scrcmd_452 SPECIES_SQUIRTLE, 0
	play_cry SPECIES_SQUIRTLE, 0
	npc_msg 44
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 7
	setvar VAR_SPECIAL_x8006, 4
	call _0753
	end

_0536:
	wait_movement
	scrcmd_452 SPECIES_SQUIRTLE, 0
	play_cry SPECIES_SQUIRTLE, 0
	npc_msg 44
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 7
	setvar VAR_SPECIAL_x8006, 4
	call _0753
	end

_0570:
	apply_movement obj_T01R0301_ookido, _0ADC
	wait_movement
	scrcmd_452 SPECIES_CHARMANDER, 0
	play_cry SPECIES_CHARMANDER, 0
	npc_msg 43
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 4
	setvar VAR_SPECIAL_x8006, 5
	call _0753
	end

_05B2:
	wait_movement
	scrcmd_452 SPECIES_CHARMANDER, 0
	play_cry SPECIES_CHARMANDER, 0
	npc_msg 43
	wait_cry
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0744
	setvar VAR_SPECIAL_x8004, 4
	setvar VAR_SPECIAL_x8006, 5
	call _0753
	end

_05EC:
	npc_msg 57
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05F7:
	goto_if_unset FLAG_UNK_0BC, _0781
	buffer_players_name 0
	gender_msgbox 19, 20
	closemsg
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0790
	apply_movement obj_T01R0301_ookido, _0AE2
	goto _07AB

_062A:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _07D3
	buffer_players_name 0
	goto _03CD

_0644:
	compare VAR_TEMP_x4001, 3
	goto_if_ne _07DC
	goto _07EF

_0657:
	apply_movement obj_T01R0301_ookido, _0AE2
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0AE2
	wait_movement
	goto _062A

_0676:
	setflag FLAG_UNK_988
	buffer_players_name 0
	gender_msgbox 4, 5
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _080E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0819
	npc_msg 29
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 90
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06DA:
	releaseall
	end

_06DE:
	wait_button
	setflag FLAG_UNK_988
	buffer_players_name 0
	gender_msgbox 4, 5
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _080E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0819
	npc_msg 29
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 90
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0744:
	scrcmd_453
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0753:
	scrcmd_453
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _0824
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0831
	hide_person 6
	setflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	goto _084C

_0781:
	buffer_players_name 0
	gender_msgbox 24, 25
	closemsg
	goto _08CD

_0790:
	compare VAR_TEMP_x4001, 3
	goto_if_ne _08EC
	apply_movement obj_T01R0301_ookido, _0AEC
	goto _07AB

_07AB:
	wait_movement
	buffer_players_name 0
	giveitem_no_check ITEM_JADE_ORB, 1
	closemsg
	npc_msg 21
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 5
	goto _03CD

_07D3:
	buffer_players_name 0
	goto _03CD

_07DC:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0907
	goto _090D

_07EF:
	apply_movement obj_T01R0301_ookido, _0AEC
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0AEC
	wait_movement
	goto _062A

_080E:
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0819:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0824:
	touchscreen_menu_show
	npc_msg 51
	wait_button_or_walk_away
	closemsg
	releaseall
	return

_0831:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _092C
	hide_person 5
	setflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	goto _084C

_084C:
	buffer_players_name 0
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 46
	npc_msg 48
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 49
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _09B5
	touchscreen_menu_show
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_eq _09F8
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0A19
	apply_movement obj_player, _0AF6
	goto _0A34

_08CD:
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0790
	apply_movement obj_T01R0301_ookido, _0AE2
	goto _07AB

_08EC:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0A46
	apply_movement obj_T01R0301_ookido, _0B00
	goto _07AB

_0907:
	goto _0A76

_090D:
	apply_movement obj_T01R0301_ookido, _0B00
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0B00
	wait_movement
	goto _062A

_092C:
	hide_person 4
	setflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
	buffer_players_name 0
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 46
	npc_msg 48
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	npc_msg 49
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _09B5
	touchscreen_menu_show
	get_person_coords 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 8
	goto_if_eq _09F8
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0A19
	apply_movement obj_player, _0AF6
	goto _0A34

_09B5:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	touchscreen_menu_hide
	bufferpartymonnick 1, VAR_SPECIAL_x8005
	npc_msg 50
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _09B5
	return

_09F8:
	apply_movement obj_player, _0B0A
	wait_movement
	npc_msg 52
	wait_button_or_walk_away
	closemsg
	releaseall
	copyvar VAR_UNK_4131, VAR_SPECIAL_x8006
	setvar VAR_SCENE_EMBEDDED_TOWER, 1
	return

_0A19:
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _0A95
	apply_movement obj_player, _0B10
	goto _0A34

_0A34:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0AAF

_0A46:
	apply_movement obj_T01R0301_ookido, _0B1A
	wait_movement
	buffer_players_name 0
	giveitem_no_check ITEM_JADE_ORB, 1
	closemsg
	npc_msg 21
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 5
	goto _03CD

_0A76:
	apply_movement obj_T01R0301_ookido, _0B1A
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T01R0301_ookido, _0B1A
	wait_movement
	goto _062A

_0A95:
	apply_movement obj_player, _0B24
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0AAF

_0AAF:
	npc_msg 52
	wait_button_or_walk_away
	closemsg
	releaseall
	copyvar VAR_UNK_4131, VAR_SPECIAL_x8006
	setvar VAR_SCENE_EMBEDDED_TOWER, 1
	return

	.align 4
_0AC6:

	step 12, 5
	step_end
	.align 4
_0ACC:

	step 0, 1
	step_end
	.align 4
_0AD2:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0ADC:

	step 3, 1
	step_end
	.align 4
_0AE2:

	step 33, 1
	step 63, 1
	step_end
	.align 4
_0AEC:

	step 34, 1
	step 63, 1
	step_end
	.align 4
_0AF6:

	step 13, 1
	step 14, 3
	step_end
	.align 4
_0B00:

	step 35, 1
	step 63, 1
	step_end
	.align 4
_0B0A:

	step 1, 1
	step_end
	.align 4
_0B10:

	step 13, 1
	step 14, 2
	step_end
	.align 4
_0B1A:

	step 32, 1
	step 63, 1
	step_end
	.align 4
_0B24:

	step 13, 1
	step 14, 1
	step_end
	.align 4


.close
