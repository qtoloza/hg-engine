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

.include "armips/scr_seq/event_T10R0201.inc"


// text archive to grab from: 523.txt

.create "build/a012/2_820", 0


scrdef scr_seq_T10R0201_000
scrdef scr_seq_T10R0201_001
scrdef scr_seq_T10R0201_002
scrdef scr_seq_T10R0201_003
scrdef_end

scr_seq_T10R0201_002:
	goto_if_set FLAG_DEFEATED_WILL, _0123
	make_object_visible obj_T10R0201_leag_door2_2
	make_object_visible obj_T10R0201_leag_door2_3
	end

scr_seq_T10R0201_000:
	scrcmd_609
	lockall
	goto_if_set 16347, _0125
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0232
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_WILLS_ROOM_RETREAT
	show_person obj_T10R0201_babyboy1_11
	setvar VAR_TEMP_x4001, 1
	setflag 16347
	releaseall
	end

scr_seq_T10R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_DEFEATED_WILL, _012F
	npc_msg 0
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _013A
	trainer_battle TRAINER_ELITE_FOUR_WILL_WILL_2, 0, 0, 0
	goto _0160

scr_seq_T10R0201_003:
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
	case 0, _017E
	case 1, _01B8
	case 2, _01F2
	releaseall
	end

_0123:
	end

_0125:
	setvar VAR_TEMP_x4001, 1
	releaseall
	end

_012F:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013A:
	trainer_battle TRAINER_ELITE_FOUR_WILL_WILL, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022C
	setflag FLAG_DEFEATED_WILL
	npc_msg 1
	closemsg
	releaseall
	end

_0160:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022C
	setflag FLAG_DEFEATED_WILL
	npc_msg 1
	closemsg
	releaseall
	end

_017E:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _0238
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0301, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_01B8:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _0238
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0401, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_01F2:
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	apply_movement obj_player, _0238
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0501, 0, 6, 15, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_022C:
	white_out
	releaseall
	end

	.align 4
_0232:

	step 12, 6
	step_end
	.align 4
_0238:

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
