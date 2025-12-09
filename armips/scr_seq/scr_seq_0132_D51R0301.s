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

.include "armips/scr_seq/event_D51R0301.inc"


// text archive to grab from: 147.txt

.create "build/a012/2_132", 0


scrdef scr_seq_D51R0301_000
scrdef scr_seq_D51R0301_001
scrdef scr_seq_D51R0301_002
scrdef scr_seq_D51R0301_003
scrdef scr_seq_D51R0301_004
scrdef_end

scr_seq_D51R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_09E, _0146
	npc_msg 0
	closemsg
	setflag FLAG_UNK_09E
	player_has_species VAR_SPECIAL_RESULT, SPECIES_ARCEUS
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0164
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D51R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ge _018A
	goto_if_set FLAG_UNK_09D, _0195
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_09D
	releaseall
	end

scr_seq_D51R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A0
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01CC
	npc_msg 11
	closemsg
	play_se SEQ_SE_DP_TELE
	apply_movement obj_player, _03A7
	wait_movement
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ne _01D7
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 10
	goto _0211

scr_seq_D51R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ABRA, 0
	npc_msg 13
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D51R0301_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16334, _0239
	goto_if_unset 16333, _0239
	goto_if_unset 16332, _0239
	goto_if_unset 16326, _0242
	goto_if_unset 16325, _0242
	goto_if_unset 16324, _0242
	npc_msg 17
	goto _024B

_0146:
	player_has_species VAR_SPECIAL_RESULT, SPECIES_ARCEUS
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0164
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0164:
	apply_movement obj_D51R0301_champion, _0419
	wait_movement
	npc_msg 1
	closemsg
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0295
	goto _02A8

_018A:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0195:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A0:
	npc_msg 11
	closemsg
	play_se SEQ_SE_DP_TELE
	apply_movement obj_player, _03A7
	wait_movement
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ne _01D7
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 10
	goto _0211

_01CC:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01D7:
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 1
	setflag FLAG_HIDE_SINJOH_MYSTRI_SHRINE_CYNTHIA
	clearflag FLAG_UNK_2DD
	clearflag FLAG_UNK_2DB
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20, 0, 695, 397, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0211:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20, 0, 695, 397, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0239:
	npc_msg 16
	goto _024B

_0242:
	npc_msg 18
	goto _024B

_024B:
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0308
	closemsg
	scrcmd_600
	play_se SEQ_SE_PL_BOWABOWA
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T25R0201, 0, 7, 4, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_0295:
	compare VAR_TEMP_x4002, 1
	goto_if_ne _0313
	goto _0319

_02A8:
	apply_movement obj_D51R0301_champion, _0423
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _042D
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D51R0301_champion, _0433
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _0439
	wait_movement
	apply_movement obj_player, _0447
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _044D
	wait_movement
	goto _0351

_0308:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0313:
	goto _036F

_0319:
	apply_movement obj_D51R0301_champion, _045B
	wait_movement
	apply_movement obj_D51R0301_champion, _0465
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _046B
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _0471
	wait_movement
	goto _0351

_0351:
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_UNK_2DD
	hide_person obj_D51R0301_champion
	clearflag FLAG_HIDE_SINJOH_MYSTRI_SHRINE_CYNTHIA
	wait_se SEQ_SE_DP_KAIDAN2
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 7
	releaseall
	end

_036F:
	apply_movement obj_D51R0301_champion, _047F
	wait_movement
	apply_movement obj_D51R0301_champion, _0489
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _048F
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _0499
	wait_movement
	goto _0351

	.align 4
_03A7:

	step 256, 15872
	step 256, 256
	step 256, 15872
	step 256, 512
	step 256, 15872
	step 256, 0
	step 256, 15872
	step 256, 768
	step 256, 15616
	step 256, 256
	step 256, 15616
	step 256, 512
	step 256, 15616
	step 256, 0
	step 256, 15616
	step 256, 768
	step 256, 256
	step 256, 512
	step 256, 0
	step 256, 768
	step 256, 256
	step 256, 512
	step 256, 0
	step 256, 768
	step 256, 256
	step 256, 512
	step 256, 0
	step 256, 65024
	step 19200, 256
	.align 4
_0419:

	step 256, 16128
	step 256, 65024
	step 8192, 256
	.align 4
_0423:

	step 256, 2048
	step 512, 65024
	step 2048, 256
	.align 4
_042D:

	step 256, 65024
	step 8448, 256
	.align 4
_0433:

	step 256, 65024
	step 3840, 256
	.align 4
_0439:

	step 256, 3328
	step 512, 8704
	step 256, 65024
	step 8960, 256
	.align 4
_0447:

	step 256, 65024
	step 3328, 512
	.align 4
_044D:

	step 512, 3584
	step 1280, 8448
	step 256, 65024
	step 8448, 256
	.align 4
_045B:

	step 256, 2304
	step 256, 65024
	step 8192, 256
	.align 4
_0465:

	step 256, 65024
	step 3072, 256
	.align 4
_046B:

	step 256, 65024
	step 3328, 512
	.align 4
_0471:

	step 512, 3584
	step 1024, 8448
	step 256, 65024
	step 8192, 256
	.align 4
_047F:

	step 256, 2048
	step 512, 65024
	step 8448, 256
	.align 4
_0489:

	step 256, 65024
	step 3328, 512
	.align 4
_048F:

	step 512, 8960
	step 256, 65024
	step 3328, 512
	.align 4
_0499:

	step 512, 3584
	step 1024, 8448
	step 256, 65024
	step 0, 0
	.align 4


.close
