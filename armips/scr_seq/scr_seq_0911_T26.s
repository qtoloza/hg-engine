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

.include "armips/scr_seq/event_T26.inc"


// text archive to grab from: 604.txt

.create "build/a012/2_911", 0


scrdef scr_seq_T26_000
scrdef scr_seq_T26_001
scrdef scr_seq_T26_002
scrdef scr_seq_T26_003
scrdef scr_seq_T26_004
scrdef scr_seq_T26_005
scrdef scr_seq_T26_006
scrdef scr_seq_T26_007
scrdef scr_seq_T26_008
scrdef scr_seq_T26_009
scrdef scr_seq_T26_010
scrdef scr_seq_T26_011
scrdef scr_seq_T26_012
scrdef scr_seq_T26_013
scrdef scr_seq_T26_014
scrdef scr_seq_T26_015
scrdef_end

scr_seq_T26_002:
	setvar VAR_SCENE_ROCKET_TAKEOVER, 2
	setflag FLAG_UNK_0C5
	setflag FLAG_ROCKET_TAKEOVER_ACTIVE
	compare VAR_UNK_40F8, 0
	goto_if_ne _0248
	setvar VAR_UNK_40F8, 2
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	end

scr_seq_T26_003:
	setflag FLAG_UNK_0F5
	setvar VAR_UNK_4057, 1
	setvar VAR_SPECIAL_x8004, 24
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 0
	callstd std_phone_call
	setflag FLAG_UNK_249
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 3
	end

scr_seq_T26_012:
	goto_if_unset FLAG_UNK_189, _0266
	clearflag FLAG_UNK_189
	end

scr_seq_T26_000:
	end

scr_seq_T26_001:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	scrcmd_307 8, 7, 13, 14, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_HIDE_OLIVINE_RIVAL
	show_person obj_T26_gsrivel
	apply_movement obj_T26_gsrivel, _05B8
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement obj_player, _05C2
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 239
	goto_if_ne _0281
	apply_movement obj_T26_gsrivel, _05CC
	goto _029C

scr_seq_T26_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02D1
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02E5
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02F9
	apply_movement obj_player, _05DA
	apply_movement obj_T26_gsmiddleman1, _05F0
	goto _0314

scr_seq_T26_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 7, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_005:
	direction_signpost 5, 0, 17, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 8, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_008:
	simple_npc_msg 1
	end

scr_seq_T26_009:
	simple_npc_msg 2
	end

scr_seq_T26_010:
	simple_npc_msg 4
	end

scr_seq_T26_013:
	buffer_players_name 0
	end

scr_seq_T26_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T26_015:
	buffer_players_name 0
	end

_0248:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	end

_0266:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0375
	clearflag FLAG_HIDE_CAMERON
	goto _038C

_0281:
	compare VAR_TEMP_x4001, 240
	goto_if_ne _038E
	apply_movement obj_T26_gsrivel, _05FA
	goto _029C

_029C:
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 239
	goto_if_ne _03A9
	apply_movement obj_T26_gsrivel, _060C
	apply_movement obj_player, _061A
	apply_movement obj_partner_poke, _063C
	goto _03D4

_02D1:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02E5:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02F9:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03EC
	apply_movement obj_player, _0656
	goto _0314

_0314:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _040F
	apply_movement obj_partner_poke, _0660
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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

_0375:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0449
	clearflag FLAG_HIDE_CAMERON
	goto _038C

_038C:
	end

_038E:
	compare VAR_TEMP_x4001, 241
	goto_if_ne _044F
	apply_movement obj_T26_gsrivel, _066E
	goto _029C

_03A9:
	compare VAR_TEMP_x4001, 240
	goto_if_ne _046A
	apply_movement obj_T26_gsrivel, _0680
	apply_movement obj_player, _061A
	apply_movement obj_partner_poke, _063C
	goto _03D4

_03D4:
	wait_movement
	setvar VAR_UNK_4078, 1
	hide_person obj_T26_gsrivel
	setflag FLAG_HIDE_OLIVINE_RIVAL
	callstd std_fade_end_rival_intro_music
	releaseall
	end

_03EC:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0495
	apply_movement obj_player, _068E
	apply_movement obj_T26_gsmiddleman1, _05F0
	goto _0314

_040F:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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

_0449:
	setflag FLAG_HIDE_CAMERON
	end

_044F:
	compare VAR_TEMP_x4001, 242
	goto_if_ne _0506
	apply_movement obj_T26_gsrivel, _06A0
	goto _029C

_046A:
	compare VAR_TEMP_x4001, 241
	goto_if_ne _0550
	apply_movement obj_T26_gsrivel, _06B2
	apply_movement obj_player, _061A
	apply_movement obj_partner_poke, _063C
	goto _03D4

_0495:
	apply_movement obj_player, _06C0
	apply_movement obj_T26_gsmiddleman1, _05F0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _040F
	apply_movement obj_partner_poke, _0660
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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

_0506:
	compare VAR_TEMP_x4001, 243
	goto_if_ne _029C
	apply_movement obj_T26_gsrivel, _06D2
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 239
	goto_if_ne _03A9
	apply_movement obj_T26_gsrivel, _060C
	apply_movement obj_player, _061A
	apply_movement obj_partner_poke, _063C
	goto _03D4

_0550:
	compare VAR_TEMP_x4001, 242
	goto_if_ne _057B
	apply_movement obj_T26_gsrivel, _06E4
	apply_movement obj_player, _061A
	apply_movement obj_partner_poke, _063C
	goto _03D4

_057B:
	compare VAR_TEMP_x4001, 243
	goto_if_ne _03D4
	apply_movement obj_T26_gsrivel, _06F2
	apply_movement obj_player, _0700
	apply_movement obj_partner_poke, _0722
	wait_movement
	setvar VAR_UNK_4078, 1
	hide_person obj_T26_gsrivel
	setflag FLAG_HIDE_OLIVINE_RIVAL
	callstd std_fade_end_rival_intro_music
	releaseall
	end

	.align 4
_05B8:

	step 13, 1
	step 64, 1
	step_end
	.align 4
_05C2:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_05CC:

	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.align 4
_05DA:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_05F0:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_05FA:

	step 13, 1
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.align 4
_060C:

	step 15, 6
	step 0, 2
	step 12, 10
	step_end
	.align 4
_061A:

	step 0, 2
	step 71, 1
	step 77, 1
	step 72, 1
	step 64, 1
	step 35, 1
	step 64, 1
	step 32, 1
	step_end
	.align 4
_063C:

	step 0, 2
	step 71, 1
	step 77, 1
	step 72, 1
	step 66, 2
	step 34, 1
	step_end
	.align 4
_0656:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0660:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_066E:

	step 13, 2
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.align 4
_0680:

	step 15, 6
	step 0, 2
	step 12, 11
	step_end
	.align 4
_068E:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_06A0:

	step 13, 3
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.align 4
_06B2:

	step 15, 6
	step 0, 2
	step 12, 12
	step_end
	.align 4
_06C0:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_06D2:

	step 13, 4
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.align 4
_06E4:

	step 15, 6
	step 0, 2
	step 12, 13
	step_end
	.align 4
_06F2:

	step 15, 6
	step 0, 2
	step 12, 14
	step_end
	.align 4
_0700:

	step 1, 2
	step 71, 1
	step 76, 1
	step 72, 1
	step 64, 1
	step 35, 1
	step 64, 1
	step 32, 1
	step_end
	.align 4
_0722:

	step 1, 2
	step 71, 1
	step 76, 1
	step 72, 1
	step_end
	.align 4


.close
