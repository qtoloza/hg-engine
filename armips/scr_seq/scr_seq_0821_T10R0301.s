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

.include "armips/scr_seq/event_T10R0301.inc"


// text archive to grab from: 524.txt

.create "build/a012/2_821", 0


scrdef scr_seq_T10R0301_000
scrdef scr_seq_T10R0301_001
scrdef scr_seq_T10R0301_002
scrdef scr_seq_T10R0301_003
scrdef scr_seq_T10R0301_004
scrdef_end

scr_seq_T10R0301_002:
	goto_if_set FLAG_DEFEATED_KOGA, _00F3
	make_object_visible obj_T10R0301_leag_door2_2
	make_object_visible obj_T10R0301_leag_door2_3
	end

scr_seq_T10R0301_000:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4001, 1
	releaseall
	end

scr_seq_T10R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_DEFEATED_KOGA, _00F5
	npc_msg 0
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _0100
	trainer_battle TRAINER_ELITE_FOUR_KOGA_KOGA_2, 0, 0, 0
	goto _0126

scr_seq_T10R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_KADABRA, 0
	npc_msg 3
	wait_cry
	npc_msg 4
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 5, 255, 0
	menu_item_add 6, 255, 1
	menu_item_add 7, 255, 2
	menu_item_add 8, 255, 3
	menu_exec
	touchscreen_menu_show
	play_cry SPECIES_KADABRA, 0
	npc_msg 3
	wait_cry
	closemsg
	switch VAR_TEMP_x4000
	case 0, _0144
	case 1, _017E
	case 2, _01B8
	releaseall
	end

scr_seq_T10R0301_004:
	buffer_players_name 0
	end

_00F3:
	end

_00F5:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0100:
	trainer_battle TRAINER_ELITE_FOUR_KOGA_KOGA, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01F2
	setflag FLAG_DEFEATED_KOGA
	npc_msg 1
	closemsg
	releaseall
	end

_0126:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01F2
	setflag FLAG_DEFEATED_KOGA
	npc_msg 1
	closemsg
	releaseall
	end

_0144:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _01F8
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0201, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_017E:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _01F8
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0401, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_01B8:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _01F8
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0501, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_01F2:
	white_out
	releaseall
	end

	.align 4
_01F8:

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


.close
