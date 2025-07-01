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

.include "armips/scr_seq/event_T10R0601.inc"


// text archive to grab from: 527.txt

.create "build/a012/2_824", 0


scrdef scr_seq_T10R0601_000
scrdef scr_seq_T10R0601_001
scrdef scr_seq_T10R0601_002
scrdef_end

scr_seq_T10R0601_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0048
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_UNK_210
	show_person obj_T10R0601_babyboy1_11
	setvar VAR_UNK_40C8, 1
	releaseall
	end

	.align 4
_0048:

	step 12, 6
	step_end
scr_seq_T10R0601_002:
	setflag FLAG_UNK_210
	setvar VAR_UNK_40C8, 0
	end

scr_seq_T10R0601_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _008B
	apply_movement obj_player, _0298
	goto _00AE

_008B:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00A6
	apply_movement obj_player, _02A8
	goto _00AE

_00A6:
	apply_movement obj_player, _02B0
_00AE:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T10R0601_wataru, _02C0
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _00E8
	trainer_battle TRAINER_CHAMPION_LANCE_2, 0, 0, 0
	goto _00F0

_00E8:
	trainer_battle TRAINER_CHAMPION_LANCE, 0, 0, 0
_00F0:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0290
	buffer_players_name 0
	gender_msgbox 2, 3
	closemsg
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_KI_GASYAN
	hide_person obj_T10R0601_leag_door2
	move_person_facing obj_T10R0601_kurumi, 6, 0, 20, DIR_NORTH
	move_person_facing obj_T10R0601_ookido, 6, 0, 17, DIR_NORTH
	wait 30, VAR_SPECIAL_x8004
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	apply_movement obj_T10R0601_wataru, _02C8
	apply_movement obj_player, _02E0
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A1
	compare VAR_TEMP_x4000, 5
	goto_if_ne _017C
	apply_movement obj_partner_poke, _02F8
	goto _019F

_017C:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0197
	apply_movement obj_partner_poke, _0308
	goto _019F

_0197:
	apply_movement obj_partner_poke, _0320
_019F:
	wait_movement
_01A1:
	apply_movement obj_T10R0601_kurumi, _0338
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_T10R0601_ookido, _0348
	apply_movement obj_T10R0601_kurumi, _0350
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_T10R0601_kurumi, _0360
	wait_movement
	npc_msg 8
	apply_movement obj_T10R0601_wataru, _0368
	apply_movement obj_player, _0378
	wait_movement
	buffer_players_name 0
	gender_msgbox 9, 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0601_wataru, _0384
	apply_movement obj_player, _0394
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0234
	apply_movement obj_partner_poke, _03A4
	wait_movement
_0234:
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T10R0601_kurumi, _03AC
	wait_movement
	npc_msg 11
	apply_movement obj_T10R0601_kurumi, _03BC
	wait_movement
	wait_button
	closemsg
	goto_if_set FLAG_GAME_CLEAR, _0268
	clearflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 1
_0268:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0290:
	white_out
	releaseall
	end

	.align 4
_0298:

	step 12, 2
	step 15, 1
	step 32, 1
	step_end
	.align 4
_02A8:

	step 12, 2
	step_end
	.align 4
_02B0:

	step 12, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_02C0:

	step 33, 1
	step_end
	.align 4
_02C8:

	step 1, 1
	step 75, 0
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_02E0:

	step 1, 1
	step 63, 4
	step 71, 1
	step 12, 2
	step 72, 1
	step_end
	.align 4
_02F8:

	step 16, 3
	step 19, 1
	step 33, 1
	step_end
	.align 4
_0308:

	step 16, 2
	step 18, 1
	step 16, 2
	step 19, 1
	step 33, 1
	step_end
	.align 4
_0320:

	step 16, 1
	step 19, 1
	step 16, 2
	step 18, 2
	step 33, 1
	step_end
	.align 4
_0338:

	step 16, 12
	step 1, 1
	step 37, 3
	step_end
	.align 4
_0348:

	step 12, 8
	step_end
	.align 4
_0350:

	step 63, 6
	step 14, 1
	step 0, 1
	step_end
	.align 4
_0360:

	step 36, 4
	step_end
	.align 4
_0368:

	step 12, 2
	step 14, 1
	step 1, 1
	step_end
	.align 4
_0378:

	step 63, 3
	step 0, 1
	step_end
	.align 4
_0384:

	step 62, 1
	step 12, 2
	step 69, 1
	step_end
	.align 4
_0394:

	step 12, 2
	step 12, 2
	step 69, 1
	step_end
	.align 4
_03A4:

	step 69, 1
	step_end
	.align 4
_03AC:

	step 16, 4
	step 75, 0
	step 63, 2
	step_end
	.align 4
_03BC:

	step 19, 1
	step 18, 2
	step 19, 2
	step 18, 1
	step 0, 1
	step_end
	.align 4


.close
