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
	goto_if_ne _021D
	scrcmd_815 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	prompt_easy_chat VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021F
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
	goto_if_eq _021F
	primo_password_check_1 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _00DD
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0212
	goto _022A

_00DD:
	primo_password_check_2 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0212
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _011D
	compare VAR_SPECIAL_RESULT, 9
	goto_if_eq _0157
	compare VAR_SPECIAL_RESULT, 10
	goto_if_eq _0191
_011D:
	goto_if_set FLAG_GOT_MAREEP_EGG_FROM_PRIMO, _0212
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0207
	setflag FLAG_GOT_MAREEP_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MAREEP, 0, 0
	give_egg SPECIES_MAREEP, 14
	goto _01CB

_0157:
	goto_if_set FLAG_GOT_WOOPER_EGG_FROM_PRIMO, _0212
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0207
	setflag FLAG_GOT_WOOPER_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_WOOPER, 0, 0
	give_egg SPECIES_WOOPER, 14
	goto _01CB

_0191:
	goto_if_set FLAG_GOT_SLUGMA_EGG_FROM_PRIMO, _0212
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0207
	setflag FLAG_GOT_SLUGMA_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SLUGMA, 0, 0
	give_egg SPECIES_SLUGMA, 14
	goto _01CB

_01CB:
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01EC
	apply_movement obj_T22PC0101_instructor, _023C
	goto _01F4

_01EC:
	apply_movement obj_T22PC0101_instructor, _0250
_01F4:
	wait_movement
	play_fanfare SEQ_ME_TAMAGO_GET
	npc_msg 19
	wait_fanfare
	wait_button_or_walk_away
	goto _0235

_0207:
	npc_msg 20
	wait_button_or_walk_away
	goto _0235

_0212:
	npc_msg 14
	wait_button_or_walk_away
	goto _0235

_021D:
	touchscreen_menu_show
_021F:
	npc_msg 15
	wait_button_or_walk_away
	goto _0235

_022A:
	npc_msg 16
	wait_button_or_walk_away
	goto _0235

_0235:
	closemsg
	releaseall
	end

	.align 4
_023C:

	step 63, 1
	step 32, 1
	step 63, 2
	step 33, 1
	step_end
	.align 4
_0250:

	step 63, 1
	step 32, 1
	step 63, 2
	step 35, 1
	step_end
scr_seq_T22PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_2C5, _0280
	npc_msg 21
	goto _028C

_0280:
	buffer_player_union_avatar_class_name 0
	npc_msg 26
	goto _028C

_028C:
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
	case 4, _0331
	case -2, _0331
	union_room_avatar_idx_to_trainer_class VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	capitalize 0
	npc_msg 23
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0313
	goto _028C

_0313:
	touchscreen_menu_show
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	npc_msg 24
	setflag FLAG_UNK_2C5
	scrcmd_558 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_289 VAR_SPECIAL_x8005
	goto _0333

_0331:
	touchscreen_menu_show
_0333:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T22PC0101_001:
	simple_npc_msg 9
	end

scr_seq_T22PC0101_002:
	simple_npc_msg 10
	end

scr_seq_T22PC0101_003:
	simple_npc_msg 11
	end
	.align 4


.close
