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

.include "armips/scr_seq/event_D37R0101.inc"


// text archive to grab from: 116.txt

.create "build/a012/2_093", 0


scrdef scr_seq_D37R0101_000
scrdef scr_seq_D37R0101_001
scrdef scr_seq_D37R0101_002
scrdef scr_seq_D37R0101_003
scrdef_end

scr_seq_D37R0101_003:
	get_friend_sprite VAR_OBJ_0
	end

scr_seq_D37R0101_002:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _012A
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_follower_mon_static_marill
	compare VAR_TEMP_x4001, 30
	goto_if_ne _0215
	move_person_facing obj_D37R0101_follower_mon_static_marill, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D37R0101_follower_mon_static_marill, _05FA
	wait_movement
	wait 8, VAR_SPECIAL_RESULT
	play_cry SPECIES_MARILL, 0
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0640
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	compare VAR_TEMP_x4001, 30
	goto_if_ne _02B3
	move_person_facing obj_D37R0101_var_1, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0646
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F6
	apply_movement obj_D37R0101_follower_mon_static_marill, _0650
	apply_movement obj_player, _0650
	apply_movement obj_partner_poke, _0650
	wait_movement
	goto _03AB

scr_seq_D37R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _0450
	npc_msg 2
	goto _0466

scr_seq_D37R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _046E
	npc_msg 5
	goto _0484

_012A:
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_follower_mon_static_marill
	lock obj_D37R0101_follower_mon_static_marill
	callstd std_play_friend_music
	move_person_facing obj_D37R0101_var_1, 25, 0, 9, DIR_NORTH
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_player, _0656
	apply_movement obj_D37R0101_var_1, _065C
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0662
	apply_movement obj_D37R0101_var_1, _0668
	wait 8, VAR_SPECIAL_RESULT
	move_person_facing obj_D37R0101_follower_mon_static_marill, 25, 0, 9, DIR_NORTH
	apply_movement obj_D37R0101_follower_mon_static_marill, _066E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 6, 9
	gender_msgbox 12, 13
	closemsg
	trainer_battle TRAINER_RIVAL_SILVER_2, 0, 0, 0
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _048C
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _0674
	apply_movement obj_D37R0101_follower_mon_static_marill, _0686
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_follower_mon_static_marill
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_0215:
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D37R0101_follower_mon_static_marill, _05FA
	wait_movement
	wait 8, VAR_SPECIAL_RESULT
	play_cry SPECIES_MARILL, 0
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0640
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	compare VAR_TEMP_x4001, 30
	goto_if_ne _02B3
	move_person_facing obj_D37R0101_var_1, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0646
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F6
	apply_movement obj_D37R0101_follower_mon_static_marill, _0650
	apply_movement obj_player, _0650
	apply_movement obj_partner_poke, _0650
	wait_movement
	goto _03AB

_02B3:
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0646
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F6
	apply_movement obj_D37R0101_follower_mon_static_marill, _0650
	apply_movement obj_player, _0650
	apply_movement obj_partner_poke, _0650
	wait_movement
	goto _03AB

_02F6:
	apply_movement obj_D37R0101_follower_mon_static_marill, _0650
	apply_movement obj_player, _0650
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 9
	apply_movement obj_D37R0101_var_1, _069C
	apply_movement obj_D37R0101_follower_mon_static_marill, _06AA
	wait_movement
	gender_msgbox 12, 13
	closemsg
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04E0
	trainer_battle TRAINER_KIMONO_GIRL_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0553
	lockall
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _048C
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _06B8
	apply_movement obj_D37R0101_follower_mon_static_marill, _06CA
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_follower_mon_static_marill
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_03AB:
	buffer_players_name 0
	gender_msgbox 6, 9
	closemsg
	apply_movement obj_D37R0101_var_1, _069C
	apply_movement obj_D37R0101_follower_mon_static_marill, _06AA
	wait_movement
	gender_msgbox 12, 13
	closemsg
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04E0
	trainer_battle TRAINER_KIMONO_GIRL_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0553
	lockall
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _048C
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _06B8
	apply_movement obj_D37R0101_follower_mon_static_marill, _06CA
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_follower_mon_static_marill
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_0450:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0559
	npc_msg 2
	goto _0466

_0466:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_046E:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _056F
	npc_msg 5
	goto _0484

_0484:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_048C:
	call _0585
	call _0585
	call _0585
	call _0585
	call _0585
	call _059F
	call _059F
	call _059F
	call _059F
	call _059F
	scrcmd_406 0
	setvar VAR_TEMP_x4001, 9999
	call _05B9
	call _05B9
	return

_04E0:
	trainer_battle TRAINER_BIKER_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0553
	lockall
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _048C
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _06B8
	apply_movement obj_D37R0101_follower_mon_static_marill, _06CA
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_follower_mon_static_marill
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_0553:
	white_out
	releaseall
	end

_0559:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _05E4
	npc_msg 1
	goto _0466

_056F:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _05EF
	npc_msg 4
	goto _0484

_0585:
	random VAR_SPECIAL_RESULT, 6
	setvar VAR_SPECIAL_x8004, 0
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_403 VAR_SPECIAL_x8004, 1
	return

_059F:
	random VAR_SPECIAL_RESULT, 6
	setvar VAR_SPECIAL_x8004, 18
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_403 VAR_SPECIAL_x8004, 1
	return

_05B9:
	random VAR_SPECIAL_RESULT, 8
	compare VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	goto_if_eq _05B9
	copyvar VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_406 VAR_SPECIAL_x8004
	return

_05E4:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05EF:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_05FA:

	step 78, 1
	step 39, 1
	step 50, 2
	step 18, 3
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step_end
	.align 4
_0640:

	step 12, 3
	step_end
	.align 4
_0646:

	step 14, 1
	step 75, 1
	step_end
	.align 4
_0650:

	step 35, 1
	step_end
	.align 4
_0656:

	step 33, 1
	step_end
	.align 4
_065C:

	step 75, 1
	step_end
	.align 4
_0662:

	step 13, 2
	step_end
	.align 4
_0668:

	step 12, 2
	step_end
	.align 4
_066E:

	step 12, 1
	step_end
	.align 4
_0674:

	step 15, 1
	step 12, 4
	step 14, 2
	step 69, 1
	step_end
	.align 4
_0686:

	step 12, 1
	step 15, 1
	step 12, 4
	step 14, 2
	step 69, 1
	step_end
	.align 4
_069C:

	step 14, 1
	step 13, 2
	step 14, 1
	step_end
	.align 4
_06AA:

	step 63, 3
	step 15, 1
	step 13, 1
	step_end
	.align 4
_06B8:

	step 13, 2
	step 14, 1
	step 13, 1
	step 69, 1
	step_end
	.align 4
_06CA:

	step 13, 3
	step 14, 1
	step 13, 1
	step 69, 1
	step_end
	.align 4


.close
