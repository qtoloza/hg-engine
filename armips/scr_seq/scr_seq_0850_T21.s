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

.include "armips/scr_seq/event_T21.inc"


// text archive to grab from: 550.txt

.create "build/a012/2_850", 0


scrdef scr_seq_T21_000
scrdef scr_seq_T21_001
scrdef scr_seq_T21_002
scrdef scr_seq_T21_003
scrdef scr_seq_T21_004
scrdef scr_seq_T21_005
scrdef scr_seq_T21_006
scrdef scr_seq_T21_007
scrdef scr_seq_T21_008
scrdef scr_seq_T21_009
scrdef scr_seq_T21_010
scrdef_end

scr_seq_T21_010:
	goto_if_unset FLAG_UNK_189, _022C
	clearflag FLAG_UNK_189
	end

scr_seq_T21_000:
	end

scr_seq_T21_001:
	lock obj_T21_gsoldman1
	apply_movement obj_T21_gsoldman1, _0AE4
	wait_movement
	callstd std_play_follow_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0270
	apply_movement obj_T21_gsoldman1, _0AEA
	goto _028B

scr_seq_T21_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _0AF0
	wait_movement
	callstd std_play_follow_music
	clearflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	show_person obj_T21_gsoldman1
	lock obj_T21_gsoldman1
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	move_person_facing obj_T21_gsoldman1, VAR_TEMP_x4000, 1, 394, DIR_NORTH
	compare VAR_TEMP_x4000, 549
	goto_if_ne _02C4
	apply_movement obj_T21_gsoldman1, _0AFA
	goto _02DF

scr_seq_T21_003:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _0AE4
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	move_person_facing obj_T21_gsrivel, 583, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_T21_gsrivel, _0B08
	wait_movement
	npc_msg 13
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _02FC
	trainer_battle TRAINER_PASSERBY_BOY_2, 0, 1, 0
	goto _0317

scr_seq_T21_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN, _0353
	npc_msg 20
	goto_if_no_item_space ITEM_MYSTIC_WATER, 1, _035E
	callstd std_give_item_verbose
	setflag FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T21_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0369
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _037D
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0391
	apply_movement obj_player, _0B0E
	apply_movement obj_T21_gsmiddleman1, _0B24
	goto _03AC

scr_seq_T21_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 24, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T21_006:
	direction_signpost 23, 0, 12, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T21_007:
	simple_npc_msg 19
	end

scr_seq_T21_008:
	simple_npc_msg 17
	end

_022C:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _040D
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0413
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0413
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0413
	setflag FLAG_HIDE_CAMERON
	end

_0270:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0419
	apply_movement obj_T21_gsoldman1, _0B2E
	goto _028B

_028B:
	apply_movement obj_player, _0B34
	wait_movement
	npc_msg 0
	closemsg
	buffer_players_name 0
	setvar 24880, 2
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0434
	apply_movement obj_T21_gsoldman1, _0B3A
	goto _044F

_02C4:
	compare VAR_TEMP_x4000, 550
	goto_if_ne _048D
	apply_movement obj_T21_gsoldman1, _0AFA
	goto _02DF

_02DF:
	wait_movement
	compare VAR_TEMP_x4000, 549
	goto_if_ne _04B2
	apply_movement obj_player, _0B54
	goto _04CD

_02FC:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _050D
	trainer_battle TRAINER_PASSERBY_BOY_3, 0, 1, 0
	goto _0317

_0317:
	check_battle_won VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	npc_msg 14
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0551
	apply_movement obj_player, _0B5A
	goto _0580

_0353:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_035E:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0369:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_037D:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0391:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05A7
	apply_movement obj_player, _0B6C
	goto _03AC

_03AC:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05CA
	apply_movement obj_partner_poke, _0B76
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_040D:
	setflag FLAG_HIDE_CAMERON
	end

_0413:
	clearflag FLAG_HIDE_CAMERON
	end

_0419:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0604
	apply_movement obj_T21_gsoldman1, _0B84
	goto _028B

_0434:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _064C
	apply_movement obj_T21_gsoldman1, _0B8A
	goto _044F

_044F:
	wait_movement
	apply_movement obj_player, _0B54
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0667
	apply_movement obj_T21_gsoldman1, _0BAC
	apply_movement obj_player, _0BC2
	goto _068A

_048D:
	apply_movement obj_T21_gsoldman1, _0BD0
	wait_movement
	compare VAR_TEMP_x4000, 549
	goto_if_ne _04B2
	apply_movement obj_player, _0B54
	goto _04CD

_04B2:
	compare VAR_TEMP_x4000, 550
	goto_if_ne _07B7
	apply_movement obj_player, _0B54
	goto _04CD

_04CD:
	wait_movement
	npc_msg 9
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	npc_msg 11
	npc_msg 12
	closemsg
	apply_movement obj_T21_gsoldman1, _0BDE
	wait_movement
	callstd std_fade_end_mom_music
	release obj_T21_gsoldman1
	hide_person obj_T21_gsoldman1
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	register_pokegear_card 1
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	end

_050D:
	trainer_battle TRAINER_PASSERBY_BOY, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	npc_msg 14
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0551
	apply_movement obj_player, _0B5A
	goto _0580

_0551:
	apply_movement obj_player, _0BE4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _07FF
	apply_movement obj_T21_gsrivel, _0BF6
	goto _0839

_0580:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _07FF
	apply_movement obj_T21_gsrivel, _0BF6
	goto _0839

_05A7:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _086B
	apply_movement obj_player, _0C28
	apply_movement obj_T21_gsmiddleman1, _0B24
	goto _03AC

_05CA:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0604:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _028B
	apply_movement obj_T21_gsoldman1, _0C42
	apply_movement obj_player, _0B34
	wait_movement
	npc_msg 0
	closemsg
	buffer_players_name 0
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0434
	apply_movement obj_T21_gsoldman1, _0B3A
	goto _044F

_064C:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _08DC
	apply_movement obj_T21_gsoldman1, _0C48
	goto _044F

_0667:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _092F
	apply_movement obj_T21_gsoldman1, _0C6A
	apply_movement obj_player, _0C80
	goto _068A

_068A:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0C8E
	apply_movement obj_player, _0CA0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0CB2
	apply_movement obj_player, _0CCC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0CDA
	apply_movement obj_player, _0CF8
	wait_movement
	play_se SEQ_SE_GS_N_UMIBE
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	stop_se SEQ_SE_GS_N_UMIBE
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D16
	apply_movement obj_player, _0D30
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 6
	buffer_players_name 0
	giveitem_no_check ITEM_OLD_ROD, 1
	npc_msg 8
	closemsg
	apply_movement obj_T21_gsoldman1, _0D46
	wait_movement
	scrcmd_307 17, 12, 14, 17, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T21_gsoldman1, _0D46
	wait_movement
	release obj_T21_gsoldman1
	release obj_partner_poke
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T21_gsoldman1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 1
	end

_07B7:
	apply_movement obj_player, _0D4C
	wait_movement
	npc_msg 9
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	npc_msg 11
	npc_msg 12
	closemsg
	apply_movement obj_T21_gsoldman1, _0BDE
	wait_movement
	callstd std_fade_end_mom_music
	release obj_T21_gsoldman1
	hide_person obj_T21_gsoldman1
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	register_pokegear_card 1
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	end

_07FF:
	apply_movement obj_T21_gsrivel, _0D52
	wait_movement
	npc_msg 15
	closemsg
	get_person_coords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _0952
	apply_movement obj_T21_gsrivel, _0D84
	apply_movement obj_player, _0D92
	goto _097E

_0839:
	wait_movement
	npc_msg 15
	closemsg
	get_person_coords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _0952
	apply_movement obj_T21_gsrivel, _0D84
	apply_movement obj_player, _0D92
	goto _097E

_086B:
	apply_movement obj_player, _0D9C
	apply_movement obj_T21_gsmiddleman1, _0B24
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05CA
	apply_movement obj_partner_poke, _0B76
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_08DC:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _044F
	apply_movement obj_T21_gsoldman1, _0DAE
	wait_movement
	apply_movement obj_player, _0B54
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0667
	apply_movement obj_T21_gsoldman1, _0BAC
	apply_movement obj_player, _0BC2
	goto _068A

_092F:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _099A
	apply_movement obj_T21_gsoldman1, _0DD0
	apply_movement obj_player, _0DE6
	goto _068A

_0952:
	apply_movement obj_T21_gsrivel, _0DF4
	apply_movement obj_player, _0D92
	wait_movement
	hide_person obj_T21_gsrivel
	setflag FLAG_HIDE_CHERRYGROVE_RIVAL
	callstd std_fade_end_rival_outro_music
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	setflag FLAG_MET_PASSERBY_BOY
	end

_097E:
	wait_movement
	hide_person obj_T21_gsrivel
	setflag FLAG_HIDE_CHERRYGROVE_RIVAL
	callstd std_fade_end_rival_outro_music
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	setflag FLAG_MET_PASSERBY_BOY
	end

_099A:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _068A
	apply_movement obj_T21_gsoldman1, _0DFA
	apply_movement obj_player, _0E10
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0C8E
	apply_movement obj_player, _0CA0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0CB2
	apply_movement obj_player, _0CCC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0CDA
	apply_movement obj_player, _0CF8
	wait_movement
	play_se SEQ_SE_GS_N_UMIBE
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	stop_se SEQ_SE_GS_N_UMIBE
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D16
	apply_movement obj_player, _0D30
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 6
	buffer_players_name 0
	giveitem_no_check ITEM_OLD_ROD, 1
	npc_msg 8
	closemsg
	apply_movement obj_T21_gsoldman1, _0D46
	wait_movement
	scrcmd_307 17, 12, 14, 17, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T21_gsoldman1, _0D46
	wait_movement
	release obj_T21_gsoldman1
	release obj_partner_poke
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T21_gsoldman1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 1
	end

	.align 4
_0AE4:

	step 75, 1
	step_end
	.align 4
_0AEA:

	step 62, 1
	step_end
	.align 4
_0AF0:

	step 75, 1
	step 37, 1
	step_end
	.align 4
_0AFA:

	step 18, 1
	step 16, 9
	step 35, 1
	step_end
	.align 4
_0B08:

	step 14, 7
	step_end
	.align 4
_0B0E:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0B24:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0B2E:

	step 13, 1
	step_end
	.align 4
_0B34:

	step 32, 1
	step_end
	.align 4
_0B3A:

	step 18, 2
	step 16, 2
	step 75, 1
	step 37, 1
	step 17, 3
	step 19, 1
	step_end
	.align 4
_0B54:

	step 34, 1
	step_end
	.align 4
_0B5A:

	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	step_end
	.align 4
_0B6C:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0B76:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0B84:

	step 13, 2
	step_end
	.align 4
_0B8A:

	step 18, 2
	step 16, 3
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 4
	step 19, 1
	step_end
	.align 4
_0BAC:

	step 18, 1
	step 16, 3
	step 37, 1
	step 62, 4
	step 36, 1
	step_end
	.align 4
_0BC2:

	step 14, 2
	step 12, 2
	step 63, 1
	step_end
	.align 4
_0BD0:

	step 19, 1
	step 16, 9
	step 34, 1
	step_end
	.align 4
_0BDE:

	step 17, 9
	step_end
	.align 4
_0BE4:

	step 1, 1
	step 71, 1
	step 16, 1
	step 72, 1
	step_end
	.align 4
_0BF6:

	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 33, 1
	step_end
	.align 4
_0C28:

	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0C42:

	step 13, 3
	step_end
	.align 4
_0C48:

	step 18, 2
	step 16, 4
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 5
	step 19, 1
	step_end
	.align 4
_0C6A:

	step 18, 1
	step 16, 4
	step 37, 1
	step 62, 5
	step 36, 1
	step_end
	.align 4
_0C80:

	step 14, 2
	step 12, 3
	step 63, 1
	step_end
	.align 4
_0C8E:

	step 18, 9
	step 39, 1
	step 62, 7
	step 36, 1
	step_end
	.align 4
_0CA0:

	step 12, 1
	step 14, 8
	step 63, 2
	step 32, 1
	step_end
	.align 4
_0CB2:

	step 18, 6
	step 16, 2
	step 18, 1
	step 39, 1
	step 62, 7
	step 36, 1
	step_end
	.align 4
_0CCC:

	step 14, 7
	step 12, 2
	step 63, 1
	step_end
	.align 4
_0CDA:

	step 17, 2
	step 18, 6
	step 17, 8
	step 14, 6
	step 36, 1
	step 62, 17
	step 38, 1
	step_end
	.align 4
_0CF8:

	step 14, 1
	step 13, 2
	step 14, 6
	step 13, 7
	step 14, 6
	step 63, 2
	step 34, 1
	step_end
	.align 4
_0D16:

	step 19, 16
	step 38, 1
	step 62, 6
	step 17, 2
	step 19, 6
	step 38, 1
	step_end
	.align 4
_0D30:

	step 62, 1
	step 13, 1
	step 15, 16
	step 13, 2
	step 15, 5
	step_end
	.align 4
_0D46:

	step 12, 2
	step_end
	.align 4
_0D4C:

	step 35, 1
	step_end
	.align 4
_0D52:

	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 32, 1
	step_end
	.align 4
_0D84:

	step 14, 5
	step 12, 1
	step 14, 6
	step_end
	.align 4
_0D92:

	step 63, 2
	step 34, 1
	step_end
	.align 4
_0D9C:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0DAE:

	step 18, 2
	step 16, 4
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 5
	step 19, 1
	step_end
	.align 4
_0DD0:

	step 18, 1
	step 16, 5
	step 37, 1
	step 62, 6
	step 36, 1
	step_end
	.align 4
_0DE6:

	step 14, 2
	step 12, 4
	step 63, 1
	step_end
	.align 4
_0DF4:

	step 14, 11
	step_end
	.align 4
_0DFA:

	step 18, 1
	step 16, 6
	step 37, 1
	step 62, 9
	step 36, 1
	step_end
	.align 4
_0E10:

	step 14, 2
	step 12, 5
	step 63, 1
	step_end
	.align 4


.close
