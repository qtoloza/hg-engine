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

.include "armips/scr_seq/event_T10R0101.inc"


// text archive to grab from: 522.txt

.create "build/a012/2_819", 0


scrdef scr_seq_T10R0101_000
scrdef scr_seq_T10R0101_001
scrdef scr_seq_T10R0101_002
scrdef scr_seq_T10R0101_003
scrdef scr_seq_T10R0101_004
scrdef scr_seq_T10R0101_005
scrdef scr_seq_T10R0101_006
scrdef scr_seq_T10R0101_007
scrdef scr_seq_T10R0101_008
scrdef scr_seq_T10R0101_009
scrdef scr_seq_T10R0101_010
scrdef_end

scr_seq_T10R0101_005:
	setflag FLAG_HIDE_WILLS_ROOM_RETREAT
	setflag FLAG_HIDE_KOGAS_ROOM_RETREAT
	setflag FLAG_HIDE_BRUNOS_ROOM_RETREAT
	setflag FLAG_HIDE_KARENS_ROOM_RETREAT
	clearflag FLAG_HIDE_WILLS_ROOM_EXIT
	clearflag FLAG_HIDE_KOGAS_ROOM_EXIT
	clearflag FLAG_HIDE_BRUNOS_ROOM_EXIT
	clearflag FLAG_HIDE_KARENS_ROOM_EXIT
	clearflag FLAG_DEFEATED_WILL
	clearflag FLAG_DEFEATED_KOGA
	clearflag FLAG_DEFEATED_BRUNO
	clearflag FLAG_DEFEATED_KAREN
	clearflag 16347
	compare VAR_UNK_40FC, 1
	goto_if_le _025D
	goto_if_set FLAG_UNK_AA9, _025D
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _025F
	setvar VAR_UNK_4119, 1
	goto _0278

scr_seq_T10R0101_001:
	simple_npc_msg 0
	end

scr_seq_T10R0101_002:
	simple_npc_msg 1
	end

scr_seq_T10R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ABRA, 0
	npc_msg 2
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T10R0101_006:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _061A
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	clearflag FLAG_HIDE_INDIGO_PLATEAU_RIVAL
	show_person obj_T10R0101_gsrivel
	move_person_facing obj_T10R0101_gsrivel, VAR_SPECIAL_x8000, 0, 23, DIR_NORTH
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0101_gsrivel, _0624
	apply_movement obj_player, _062A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 3
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _027A
	trainer_battle TRAINER_RIVAL_SILVER_20, 0, 0, 0
	goto _0295

scr_seq_T10R0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T10R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 13
	callstd std_special_mart
	releaseall
	end

scr_seq_T10R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4005, 1
	goto_if_ge _02D2
	npc_msg 5
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _02DD
	apply_movement obj_T10R0101_counterm, _0634
	goto _02F3

scr_seq_T10R0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 7
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 8, 255, 0
	menu_item_add 9, 255, 1
	menu_item_add 10, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _02FF
	case 1, _0357
	goto _03AF

scr_seq_T10R0101_009:
	play_cry SPECIES_TYRANITAR, 0
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 27
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T10R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16241, _03B7
	npc_msg 28
	giveitem_no_check ITEM_TM071, 1
	setflag 16241
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_025D:
	end

_025F:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _03C2
	setvar VAR_UNK_4119, 1
	goto _0278

_0278:
	end

_027A:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _03CA
	trainer_battle TRAINER_RIVAL_SILVER_21, 0, 0, 0
	goto _0295

_0295:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040F
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 4
	closemsg
	apply_movement obj_T10R0101_gsrivel, _0642
	wait_movement
	setvar VAR_UNK_4119, 0
	setflag FLAG_UNK_AA9
	hide_person obj_T10R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_02D2:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02DD:
	apply_movement obj_T10R0101_counterm, _064C
	wait_movement
	wait_movement
	setvar VAR_TEMP_x4005, 1
	releaseall
	end

_02F3:
	wait_movement
	setvar VAR_TEMP_x4005, 1
	releaseall
	end

_02FF:
	compare VAR_UNK_40E6, 0
	goto_if_eq _041D
	npc_msg 11
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 14, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _041D
	case 1, _0472
	goto _04D7

_0357:
	compare VAR_UNK_40E6, 0
	goto_if_eq _04E0
	npc_msg 11
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 14, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _04E0
	case 1, _0535
	goto _059A

_03AF:
	touchscreen_menu_show
	closemsg
	releaseall
	end

_03B7:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03C2:
	setvar VAR_UNK_4119, 0
	end

_03CA:
	trainer_battle TRAINER_RIVAL_SILVER_19, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040F
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 4
	closemsg
	apply_movement obj_T10R0101_gsrivel, _0642
	wait_movement
	setvar VAR_UNK_4119, 0
	setflag FLAG_UNK_AA9
	hide_person obj_T10R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_040F:
	hide_person obj_T10R0101_gsrivel
	setflag FLAG_HIDE_INDIGO_PLATEAU_RIVAL
	white_out
	releaseall
	end

_041D:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	menu_item_add 18, 255, 2
	menu_item_add 19, 255, 3
	menu_item_add 26, 255, 4
	menu_exec
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _05E2
	closemsg
	view_rankings 4, 0, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _059A

_0472:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 20, 255, 0
	menu_item_add 21, 255, 1
	menu_item_add 22, 255, 2
	menu_item_add 23, 255, 3
	menu_item_add 24, 255, 4
	menu_item_add 25, 255, 5
	menu_item_add 26, 255, 6
	menu_exec
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05E2
	closemsg
	view_rankings 3, 0, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _059A

_04D7:
	npc_msg 7
	goto _059A

_04E0:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	menu_item_add 18, 255, 2
	menu_item_add 19, 255, 3
	menu_item_add 26, 255, 4
	menu_exec
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _05F8
	closemsg
	view_rankings 1, 0, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _059A

_0535:
	npc_msg 15
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 20, 255, 0
	menu_item_add 21, 255, 1
	menu_item_add 22, 255, 2
	menu_item_add 23, 255, 3
	menu_item_add 24, 255, 4
	menu_item_add 25, 255, 5
	menu_item_add 26, 255, 6
	menu_exec
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05F8
	closemsg
	view_rankings 0, 0, VAR_SPECIAL_RESULT
	npc_msg 7
	touchscreen_menu_hide
	goto _059A

_059A:
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 8, 255, 0
	menu_item_add 9, 255, 1
	menu_item_add 10, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _02FF
	case 1, _0357
	goto _03AF

_05E2:
	compare VAR_UNK_40E6, 0
	goto_if_ne _060E
	npc_msg 7
	goto _059A

_05F8:
	compare VAR_UNK_40E6, 0
	goto_if_ne _0614
	npc_msg 7
	goto _059A

_060E:
	goto _02FF

_0614:
	goto _0357

	.align 4
_061A:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0624:

	step 12, 7
	step_end
	.align 4
_062A:

	step 63, 2
	step 13, 1
	step_end
	.align 4
_0634:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.align 4
_0642:

	step 33, 1
	step 13, 7
	step_end
	.align 4
_064C:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4


.close
