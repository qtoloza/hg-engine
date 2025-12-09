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
	apply_movement obj_player, _05B6
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
	goto_if_ne _0081
	apply_movement obj_player, _05BC
	goto _009C

_0081:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00D6
	apply_movement obj_player, _05CA
	goto _009C

_009C:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T10R0601_wataru, _05D0
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _0118
	trainer_battle TRAINER_CHAMPION_LANCE_2, 0, 0, 0
	goto _01AC

_00D6:
	apply_movement obj_player, _05D6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T10R0601_wataru, _05D0
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	compare VAR_UNK_4135, 8
	goto_if_lt _0118
	trainer_battle TRAINER_CHAMPION_LANCE_2, 0, 0, 0
	goto _01AC

_0118:
	trainer_battle TRAINER_CHAMPION_LANCE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0238
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
	apply_movement obj_T10R0601_wataru, _05E4
	apply_movement obj_player, _05FA
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _023E
	compare VAR_TEMP_x4000, 5
	goto_if_ne _032D
	apply_movement obj_partner_poke, _0610
	goto _0348

_01AC:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0238
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
	apply_movement obj_T10R0601_wataru, _05E4
	apply_movement obj_player, _05FA
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _023E
	compare VAR_TEMP_x4000, 5
	goto_if_ne _032D
	apply_movement obj_partner_poke, _0610
	goto _0348

_0238:
	white_out
	releaseall
	end

_023E:
	apply_movement obj_T10R0601_kurumi, _061E
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_T10R0601_ookido, _062C
	apply_movement obj_T10R0601_kurumi, _0632
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_T10R0601_kurumi, _0640
	wait_movement
	npc_msg 8
	apply_movement obj_T10R0601_wataru, _0646
	apply_movement obj_player, _0654
	wait_movement
	buffer_players_name 0
	gender_msgbox 9, 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0601_wataru, _065E
	apply_movement obj_player, _066C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0439
	apply_movement obj_partner_poke, _067A
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T10R0601_kurumi, _0680
	wait_movement
	npc_msg 11
	apply_movement obj_T10R0601_kurumi, _068E
	wait_movement
	wait_button
	closemsg
	goto_if_set FLAG_GAME_CLEAR, _0495
	clearflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_032D:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _04BD
	apply_movement obj_partner_poke, _06A4
	goto _0348

_0348:
	wait_movement
	apply_movement obj_T10R0601_kurumi, _061E
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_T10R0601_ookido, _062C
	apply_movement obj_T10R0601_kurumi, _0632
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_T10R0601_kurumi, _0640
	wait_movement
	npc_msg 8
	apply_movement obj_T10R0601_wataru, _0646
	apply_movement obj_player, _0654
	wait_movement
	buffer_players_name 0
	gender_msgbox 9, 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0601_wataru, _065E
	apply_movement obj_player, _066C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0439
	apply_movement obj_partner_poke, _067A
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T10R0601_kurumi, _0680
	wait_movement
	npc_msg 11
	apply_movement obj_T10R0601_kurumi, _068E
	wait_movement
	wait_button
	closemsg
	goto_if_set FLAG_GAME_CLEAR, _0495
	clearflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0439:
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T10R0601_kurumi, _0680
	wait_movement
	npc_msg 11
	apply_movement obj_T10R0601_kurumi, _068E
	wait_movement
	wait_button
	closemsg
	goto_if_set FLAG_GAME_CLEAR, _0495
	clearflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0495:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_04BD:
	apply_movement obj_partner_poke, _06BA
	wait_movement
	apply_movement obj_T10R0601_kurumi, _061E
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_T10R0601_ookido, _062C
	apply_movement obj_T10R0601_kurumi, _0632
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_T10R0601_kurumi, _0640
	wait_movement
	npc_msg 8
	apply_movement obj_T10R0601_wataru, _0646
	apply_movement obj_player, _0654
	wait_movement
	buffer_players_name 0
	gender_msgbox 9, 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T10R0601_wataru, _065E
	apply_movement obj_player, _066C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0439
	apply_movement obj_partner_poke, _067A
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T10R0601_kurumi, _0680
	wait_movement
	npc_msg 11
	apply_movement obj_T10R0601_kurumi, _068E
	wait_movement
	wait_button
	closemsg
	goto_if_set FLAG_GAME_CLEAR, _0495
	clearflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T10R0701, 0, 6, 22, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_05B6:

	step 12, 6
	step_end
	.align 4
_05BC:

	step 12, 2
	step 15, 1
	step 32, 1
	step_end
	.align 4
_05CA:

	step 12, 2
	step_end
	.align 4
_05D0:

	step 33, 1
	step_end
	.align 4
_05D6:

	step 12, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_05E4:

	step 1, 1
	step 75, 0
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_05FA:

	step 1, 1
	step 63, 4
	step 71, 1
	step 12, 2
	step 72, 1
	step_end
	.align 4
_0610:

	step 16, 3
	step 19, 1
	step 33, 1
	step_end
	.align 4
_061E:

	step 16, 12
	step 1, 1
	step 37, 3
	step_end
	.align 4
_062C:

	step 12, 8
	step_end
	.align 4
_0632:

	step 63, 6
	step 14, 1
	step 0, 1
	step_end
	.align 4
_0640:

	step 36, 4
	step_end
	.align 4
_0646:

	step 12, 2
	step 14, 1
	step 1, 1
	step_end
	.align 4
_0654:

	step 63, 3
	step 0, 1
	step_end
	.align 4
_065E:

	step 62, 1
	step 12, 2
	step 69, 1
	step_end
	.align 4
_066C:

	step 12, 2
	step 12, 2
	step 69, 1
	step_end
	.align 4
_067A:

	step 69, 1
	step_end
	.align 4
_0680:

	step 16, 4
	step 75, 0
	step 63, 2
	step_end
	.align 4
_068E:

	step 19, 1
	step 18, 2
	step 19, 2
	step 18, 1
	step 0, 1
	step_end
	.align 4
_06A4:

	step 16, 2
	step 18, 1
	step 16, 2
	step 19, 1
	step 33, 1
	step_end
	.align 4
_06BA:

	step 16, 1
	step 19, 1
	step 16, 2
	step 18, 2
	step 33, 1
	step_end
	.align 4


.close
