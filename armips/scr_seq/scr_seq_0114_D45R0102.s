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

.include "armips/scr_seq/event_D45R0102.inc"


// text archive to grab from: 131.txt

.create "build/a012/2_114", 0


scrdef scr_seq_D45R0102_000
scrdef scr_seq_D45R0102_001
scrdef scr_seq_D45R0102_002
scrdef scr_seq_D45R0102_003
scrdef_end

scr_seq_D45R0102_002:
	end

scr_seq_D45R0102_000:
	compare VAR_UNK_40FE, 4
	goto_if_eq _0229
	compare VAR_UNK_40FE, 3
	goto_if_eq _022B
	compare VAR_UNK_40FE, 2
	goto_if_eq _024B
	end

scr_seq_D45R0102_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _048D
	apply_movement obj_D45R0102_var_1, _0497
	wait_movement
	apply_movement obj_partner_poke, _049D
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D45R0102_sakaki, _04A7
	wait_movement
	npc_msg 0
	closemsg
	apply_movement obj_D45R0102_var_1, _0497
	wait_movement
	gender_msgbox 8, 7
	closemsg
	apply_movement obj_D45R0102_sakaki, _04B5
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_D45R0102_var_1, _04BB
	wait_movement
	gender_msgbox 10, 9
	closemsg
	apply_movement obj_D45R0102_var_1, _04C5
	wait_movement
	gender_msgbox 12, 11
	closemsg
	apply_movement obj_D45R0102_var_1, _04CF
	wait_movement
	buffer_players_name 0
	gender_msgbox 14, 13
	closemsg
	stop_bgm 0
	play_se SEQ_SE_PL_FR03
	play_bgm SEQ_GS_SENKYO
	npc_msg 2
	stop_se SEQ_SE_PL_FR03
	closemsg
	apply_movement obj_D45R0102_sakaki, _04B5
	wait_movement
	npc_msg 3
	closemsg
	setvar VAR_UNK_40FE, 3
	trainer_battle TRAINER_ROCKET_BOSS_GIOVANNI, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0265
	setvar VAR_UNK_40FE, 4
	apply_movement obj_D45R0102_sakaki, _04D5
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D45R0102_sakaki, _04E7
	wait_movement
	hide_person obj_D45R0102_sakaki
	setflag FLAG_HIDE_TOHJO_FALLS_GIOVANNI
	apply_movement obj_player, _04F5
	apply_movement obj_D45R0102_var_1, _04F5
	wait_movement
	fade_out_bgm 0, 30
	stop_bgm 0
	play_se SEQ_SE_PL_FR03
	npc_msg 5
	stop_se SEQ_SE_PL_FR03
	closemsg
	apply_movement obj_D45R0102_var_1, _04FF
	wait_movement
	buffer_players_name 0
	gender_msgbox 16, 15
	closemsg
	get_party_lead_alive VAR_TEMP_x4002
	get_partymon_species VAR_TEMP_x4002, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 251
	call_if_ne _02D5
	apply_movement obj_partner_poke, _0505
	wait_movement
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 6, 6, 0, RGB_WHITE
	wait_fade
	wait 15, VAR_SPECIAL_RESULT
	fade_screen 6, 6, 1, RGB_WHITE
	wait_fade
	apply_movement obj_player, _04C5
	wait_movement
	apply_movement obj_D45R0102_var_1, _050B
	wait_movement
	compare VAR_TEMP_x4003, 1
	goto_if_ne _0317
	gender_msgbox 27, 26
	closemsg
	goto _0343

scr_seq_D45R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16228, _0475
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0374
	compare VAR_UNK_40FE, 4
	goto_if_ge _0369
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0229:
	end

_022B:
	move_person_facing obj_D45R0102_sakaki, 6, 1, 6, DIR_SOUTH
	move_person_facing obj_D45R0102_var_1, 5, 1, 7, DIR_NORTH
	make_object_visible obj_partner_poke
	scrcmd_606
	end

_024B:
	move_person_facing obj_D45R0102_sakaki, 6, 1, 4, DIR_NORTH
	move_person_facing obj_D45R0102_var_1, 5, 1, 8, DIR_SOUTH
	end

_0265:
	npc_msg 6
	closemsg
	apply_movement obj_D45R0102_sakaki, _051D
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 6, 6, 0, RGB_WHITE
	wait_fade
	wait 15, VAR_SPECIAL_RESULT
	fade_screen 6, 6, 1, RGB_WHITE
	wait_fade
	wait_movement
	hide_person obj_D45R0102_sakaki
	setflag FLAG_HIDE_TOHJO_FALLS_GIOVANNI
	npc_msg 19
	closemsg
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	setflag FLAG_UNK_178
	setvar VAR_UNK_40FE, 0
	setflag FLAG_HIDE_ILEX_FOREST_FRIEND
	warp MAP_D36R0101, 0, 16, 57, DIR_SOUTH
	fade_screen 6, 15, 1, RGB_WHITE
	wait_fade
	touchscreen_menu_show
	releaseall
	end

_02D5:
	setvar VAR_TEMP_x4003, 1
	apply_movement obj_D45R0102_var_1, _052F
	wait_movement
	gender_msgbox 23, 22
	closemsg
	gender_msgbox 25, 24
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

_0317:
	gender_msgbox 18, 17
	closemsg
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	clearflag FLAG_HIDE_ILEX_FOREST_FRIEND
	warp MAP_D36R0101, 0, 16, 57, DIR_SOUTH
	fade_screen 6, 15, 1, RGB_WHITE
	wait_fade
	releaseall
	end

_0343:
	play_se SEQ_SE_GS_TIMESLIP
	scrcmd_810
	clearflag FLAG_HIDE_ILEX_FOREST_FRIEND
	warp MAP_D36R0101, 0, 16, 57, DIR_SOUTH
	fade_screen 6, 15, 1, RGB_WHITE
	wait_fade
	releaseall
	end

_0369:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0374:
	npc_msg 28
	npc_msg 29
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 30, 255, 0
	menu_item_add 31, 255, 1
	menu_item_add 32, 255, 2
	menu_item_add 33, 255, 3
	menu_item_add 34, 255, 4
	menu_item_add 35, 255, 5
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 149
	goto_if_eq _0428
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 248
	goto_if_eq _0428
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 373
	goto_if_eq _0428
	compare VAR_SPECIAL_x8008, 3
	setvar VAR_SPECIAL_x8004, 376
	goto_if_eq _0428
	compare VAR_SPECIAL_x8008, 4
	setvar VAR_SPECIAL_x8004, 445
	goto_if_eq _0428
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0428:
	npc_msg 37
	closemsg
	play_se SEQ_SE_GS_GONDORA_IDOU
	screen_shake 3, 0, 15, 5
	npc_msg 38
	closemsg
	play_cry VAR_SPECIAL_x8004, 0
	wait_cry
	wild_battle VAR_SPECIAL_x8004, 60, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _046F
	setflag 16228
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_046F:
	white_out
	releaseall
	end

_0475:
	compare VAR_UNK_40FE, 4
	goto_if_ge _0369
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_048D:

	step 256, 3072
	step 256, 65024
	step 8192, 256
	.align 4
_0497:

	step 256, 65024
	step 3840, 256
	.align 4
_049D:

	step 256, 3072
	step 256, 65024
	step 19200, 256
	.align 4
_04A7:

	step 256, 16128
	step 256, 8448
	step 256, 65024
	step 3328, 256
	.align 4
_04B5:

	step 256, 65024
	step 3072, 256
	.align 4
_04BB:

	step 256, 8960
	step 256, 65024
	step 19200, 256
	.align 4
_04C5:

	step 256, 16128
	step 256, 65024
	step 9984, 1024
	.align 4
_04CF:

	step 1024, 65024
	step 18176, 256
	.align 4
_04D5:

	step 256, 2048
	step 256, 18432
	step 256, 2816
	step 512, 65024
	step 3328, 1024
	.align 4
_04E7:

	step 1024, 3584
	step 512, 3328
	step 512, 65024
	step 16128, 768
	.align 4
_04F5:

	step 768, 3328
	step 256, 65024
	step 3328, 256
	.align 4
_04FF:

	step 256, 65024
	step 12544, 256
	.align 4
_0505:

	step 256, 65024
	step 8704, 256
	.align 4
_050B:

	step 256, 16128
	step 256, 8960
	step 256, 16128
	step 256, 65024
	step 2816, 512
	.align 4
_051D:

	step 512, 2304
	step 768, 2560
	step 512, 2304
	step 512, 65024
	step 8960, 256
	.align 4
_052F:

	step 256, 19200
	step 256, 16128
	step 256, 4864
	step 256, 8192
	step 256, 65024
	step 0, 0
	.align 4


.close
