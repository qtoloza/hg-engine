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

.include "armips/scr_seq/event_D31R0207.inc"


// text archive to grab from: 099.txt

.create "build/a012/2_075", 0


scrdef scr_seq_D31R0207_000
scrdef scr_seq_D31R0207_001
scrdef scr_seq_D31R0207_002
scrdef scr_seq_D31R0207_003
scrdef scr_seq_D31R0207_004
scrdef scr_seq_D31R0207_005
scrdef scr_seq_D31R0207_006
scrdef scr_seq_D31R0207_007
scrdef scr_seq_D31R0207_008
scrdef scr_seq_D31R0207_009
scrdef_end

scr_seq_D31R0207_006:
	compare VAR_UNK_4151, 2
	goto_if_ne _004C
	scrcmd_412 55, 2, VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 0
	goto_if_eq _00EA
_004C:
	clearflag FLAG_UNK_2AD
_0050:
	compare VAR_UNK_4151, 2
	goto_if_ne _0072
	scrcmd_412 55, 2, VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 1
	goto_if_eq _00F6
_0072:
	clearflag FLAG_UNK_2AE
_0076:
	compare VAR_UNK_4151, 2
	goto_if_ne _0098
	scrcmd_412 55, 2, VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 2
	goto_if_eq _0102
_0098:
	clearflag FLAG_UNK_2AF
_009C:
	compare VAR_UNK_4151, 2
	goto_if_ne _00BE
	scrcmd_412 55, 2, VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 3
	goto_if_eq _010E
_00BE:
	clearflag FLAG_UNK_2B0
_00C2:
	compare VAR_UNK_4151, 2
	goto_if_ne _00E4
	scrcmd_412 55, 2, VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 4
	goto_if_eq _011A
_00E4:
	clearflag FLAG_UNK_2B1
_00E8:
	end

_00EA:
	setflag FLAG_UNK_2AD
	goto _0050

_00F6:
	setflag FLAG_UNK_2AE
	goto _0076

_0102:
	setflag FLAG_UNK_2AF
	goto _009C

_010E:
	setflag FLAG_UNK_2B0
	goto _00C2

_011A:
	setflag FLAG_UNK_2B1
	goto _00E8

scr_seq_D31R0207_007:
	compare VAR_UNK_4151, 1
	call_if_eq _0142
	compare VAR_UNK_4151, 2
	goto_if_eq _0148
	end

_0142:
	make_object_visible obj_player
	return

_0148:
	move_person_facing obj_D31R0207_bfsw1, 8, 0, 3, DIR_SOUTH
	end

scr_seq_D31R0207_008:
	scrcmd_609
	lockall
	setvar VAR_UNK_4151, 0
	call _048B
	npc_msg 0
	closemsg
	scrcmd_412 56, 0, 0
	releaseall
	end

scr_seq_D31R0207_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A3
	npc_msg 0
	closemsg
	releaseall
	end

_01A3:
	closemsg
	releaseall
	setvar VAR_UNK_414B, 3
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D31R0201, 0, 11, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	end

scr_seq_D31R0207_009:
	scrcmd_609
	lockall
	setvar VAR_UNK_4151, 0
	npc_msg 2
	closemsg
	call _04C5
	setvar VAR_UNK_414D, 2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D31R0202, 0, 3, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0216:
	scrcmd_413 VAR_TEMP_x4009, 0, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_species_name 0, VAR_SPECIAL_x8004, 0, 0
	buffer_move_name 1, VAR_SPECIAL_x8005
	scrcmd_413 VAR_TEMP_x4009, 1, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_species_name 2, VAR_SPECIAL_x8004, 0, 0
	buffer_move_name 3, VAR_SPECIAL_x8005
	return

scr_seq_D31R0207_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4151, 2
	goto_if_eq _02A7
	setvar VAR_TEMP_x4009, 0
	scrcmd_413 VAR_TEMP_x4009, 0, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_species_name_indef 0, VAR_SPECIAL_x8004, 0, 0
	buffer_move_name 1, VAR_SPECIAL_x8005
	scrcmd_413 VAR_TEMP_x4009, 1, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_species_name_indef 2, VAR_SPECIAL_x8004, 0, 0
	buffer_move_name 3, VAR_SPECIAL_x8005
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02B2
_02A7:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02B2:
	scrcmd_412 50, VAR_TEMP_x4009, 0
	setvar VAR_UNK_4151, 2
	npc_msg 8
	closemsg
	releaseall
	lock obj_D31R0207_seven1
	goto _0541

scr_seq_D31R0207_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4151, 2
	goto_if_eq _030F
	setvar VAR_TEMP_x4009, 1
	call _0216
	buffer_players_name 4
	npc_msg 15
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _031A
_030F:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031A:
	scrcmd_412 50, VAR_TEMP_x4009, 0
	setvar VAR_UNK_4151, 2
	buffer_players_name 0
	npc_msg 17
	closemsg
	releaseall
	lock obj_D31R0207_seven5
	goto _0586

scr_seq_D31R0207_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4151, 2
	goto_if_eq _0377
	setvar VAR_TEMP_x4009, 2
	call _0216
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0382
_0377:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0382:
	scrcmd_412 50, VAR_TEMP_x4009, 0
	setvar VAR_UNK_4151, 2
	npc_msg 5
	closemsg
	releaseall
	lock obj_D31R0207_seven2
	goto _05CB

scr_seq_D31R0207_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4151, 2
	goto_if_eq _03DC
	setvar VAR_TEMP_x4009, 3
	call _0216
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03E7
_03DC:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E7:
	scrcmd_412 50, VAR_TEMP_x4009, 0
	setvar VAR_UNK_4151, 2
	npc_msg 14
	closemsg
	releaseall
	lock obj_D31R0207_seven3
	goto _0610

scr_seq_D31R0207_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4151, 2
	goto_if_eq _0441
	setvar VAR_TEMP_x4009, 4
	call _0216
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _044C
_0441:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_044C:
	scrcmd_412 50, VAR_TEMP_x4009, 0
	setvar VAR_UNK_4151, 2
	npc_msg 11
	closemsg
	releaseall
	lock obj_D31R0207_seven4
	goto _0655

_046D:
	scrcmd_307 0, 0, 8, 2, 77
	scrcmd_310 77
	scrcmd_308 77
	return

_0480:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

_048B:
	call _046D
	apply_movement obj_D31R0207_bfsw1, _06AC
	wait_movement
	scrcmd_374 obj_player
	apply_movement obj_player, _069C
	wait_movement
	call _0480
	apply_movement obj_D31R0207_bfsw1, _06BC
	wait_movement
	apply_movement obj_player, _06A4
	wait_movement
	return

_04C5:
	call _046D
	apply_movement obj_D31R0207_bfsw1, _06F0
	apply_movement obj_player, _06E4
	wait_movement
	call _0480
	return

_04E5:
	apply_movement VAR_TEMP_x4000, _06FC
	wait_movement
	apply_movement obj_D31R0207_bfsw1, _06C8
	wait_movement
	call _046D
	apply_movement VAR_TEMP_x4000, _0704
	wait_movement
	call _0480
	apply_movement obj_D31R0207_bfsw1, _06D8
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D31R0207, 0, 8, 4, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0541:
	setvar VAR_TEMP_x4000, 1
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 12
	goto_if_eq _0562
	goto _0574

_0562:
	apply_movement obj_D31R0207_seven1, _0710
	wait_movement
	goto _04E5

_0574:
	apply_movement obj_D31R0207_seven1, _0724
	wait_movement
	goto _04E5

_0586:
	setvar VAR_TEMP_x4000, 2
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 4
	goto_if_eq _05A7
	goto _05B9

_05A7:
	apply_movement obj_D31R0207_seven5, _073C
	wait_movement
	goto _04E5

_05B9:
	apply_movement obj_D31R0207_seven5, _074C
	wait_movement
	goto _04E5

_05CB:
	setvar VAR_TEMP_x4000, 3
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 7
	goto_if_eq _05EC
	goto _05FE

_05EC:
	apply_movement obj_D31R0207_seven2, _0758
	wait_movement
	goto _04E5

_05FE:
	apply_movement obj_D31R0207_seven2, _0768
	wait_movement
	goto _04E5

_0610:
	setvar VAR_TEMP_x4000, 4
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 9
	goto_if_eq _0631
	goto _0643

_0631:
	apply_movement obj_D31R0207_seven3, _0774
	wait_movement
	goto _04E5

_0643:
	apply_movement obj_D31R0207_seven3, _0788
	wait_movement
	goto _04E5

_0655:
	setvar VAR_TEMP_x4000, 5
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 8
	goto_if_eq _0676
	goto _0688

_0676:
	apply_movement obj_D31R0207_seven4, _079C
	wait_movement
	goto _04E5

_0688:
	apply_movement obj_D31R0207_seven4, _07AC
	wait_movement
	goto _04E5


_069C:

	step 13, 2
	step_end

_06A4:

	step 0, 1
	step_end

_06AC:

	step 13, 2
	step 14, 1
	step 3, 1
	step_end

_06BC:

	step 15, 1
	step 1, 1
	step_end

_06C8:

	step 1, 1
	step 18, 1
	step 3, 1
	step_end

_06D8:

	step 19, 1
	step 1, 1
	step_end

_06E4:

	step 12, 2
	step 69, 1
	step_end

_06F0:

	step 12, 1
	step 69, 1
	step_end

_06FC:

	step 0, 1
	step_end

_0704:

	step 16, 2
	step 69, 1
	step_end

_0710:

	step 17, 1
	step 18, 3
	step 16, 7
	step 18, 2
	step_end

_0724:

	step 18, 1
	step 16, 1
	step 18, 2
	step 16, 5
	step 18, 2
	step_end

_073C:

	step 19, 1
	step 16, 2
	step 19, 3
	step_end

_074C:

	step 16, 2
	step 19, 4
	step_end

_0758:

	step 18, 1
	step 16, 4
	step 18, 2
	step_end

_0768:

	step 16, 4
	step 18, 3
	step_end

_0774:

	step 17, 1
	step 19, 4
	step 16, 7
	step 19, 2
	step_end

_0788:

	step 16, 1
	step 19, 4
	step 16, 5
	step 19, 2
	step_end

_079C:

	step 18, 1
	step 16, 5
	step 19, 2
	step_end

_07AC:

	step 19, 3
	step 16, 5
	step 18, 2
	step_end
	.align 4


.close
