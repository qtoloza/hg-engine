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

.include "armips/scr_seq/event_R34.inc"


// text archive to grab from: 384.txt

.create "build/a012/2_237", 0


scrdef scr_seq_R34_000
scrdef scr_seq_R34_001
scrdef scr_seq_R34_002
scrdef scr_seq_R34_003
scrdef scr_seq_R34_004
scrdef scr_seq_R34_005
scrdef scr_seq_R34_006
scrdef scr_seq_R34_007
scrdef scr_seq_R34_008
scrdef scr_seq_R34_009
scrdef scr_seq_R34_010
scrdef scr_seq_R34_011
scrdef scr_seq_R34_012
scrdef scr_seq_R34_013
scrdef scr_seq_R34_014
scrdef_end

scr_seq_R34_000:
	get_friend_sprite VAR_OBJ_0
	check_day_care_egg VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0351
	set_object_movement_type obj_R34_gsoldman1, 16
	goto _0368

scr_seq_R34_001:
	scrcmd_609
	lockall
	apply_movement obj_R34_gsoldman1, _0BC8
	apply_movement obj_player, _0BD6
	wait_movement
	npc_msg 46
	buffer_players_name 0
	register_gear_number PHONE_CONTACT_DAY_C_MAN
	npc_msg 47
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_DAY_C_LADY
	npc_msg 48
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 49
	closemsg
	apply_movement obj_R34_gsoldman1, _0BE0
	wait_movement
	setvar VAR_UNK_408E, 3
	releaseall
	end

scr_seq_R34_003:
	scrcmd_609
	lockall
	gender_msgbox 36, 41
	closemsg
	apply_movement obj_R34_gsoldman1, _0BEE
	wait_movement
	callstd std_play_friend_music
	apply_movement obj_R34_var_1, _0BF4
	apply_movement obj_R34_follower_mon_static_marill, _0C06
	wait_movement
	apply_movement obj_R34_gsoldman1, _0C14
	wait_movement
	gender_msgbox 37, 42
	closemsg
	apply_movement obj_R34_var_1, _0C1A
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_players_name 0
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0379
	apply_movement obj_R34_var_1, _0C20
	apply_movement obj_R34_follower_mon_static_marill, _0C2A
	apply_movement obj_R34_gsoldman1, _0C30
	goto _03A4

scr_seq_R34_002:
	simple_npc_msg 18
	end

scr_seq_R34_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D1
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03E5
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03F9
	apply_movement obj_player, _0C36
	apply_movement obj_R34_gsmiddleman1, _0C4C
	goto _0414

scr_seq_R34_004:
	scrcmd_609
	lockall
	count_alive_mons VAR_TEMP_x4003, 6
	compare VAR_TEMP_x4003, 1
	goto_if_ne _0475
	goto _047B

scr_seq_R34_005:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4004, 777
	apply_movement obj_R34_gswoman3_3, _0C56
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	npc_msg 28
	closemsg
	stop_bgm 0
	trainer_battle TRAINER_ACE_TRAINER_F_KATE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0515
	setvar VAR_UNK_4097, 2
	npc_msg 30
	goto_if_no_item_space ITEM_POWER_HERB, 1, _051B
	callstd std_give_item_verbose
	setvar VAR_UNK_4097, 3
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	compare VAR_TEMP_x4004, 777
	goto_if_ne _0527
	releaseall
	goto _052B

scr_seq_R34_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4097, 1
	goto_if_ne _052D
	npc_msg 22
	goto _0538

scr_seq_R34_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4097, 1
	goto_if_ne _0540
	npc_msg 26
	goto _054B

scr_seq_R34_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4004, 555
	compare VAR_UNK_4097, 2
	goto_if_eq _0553
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R34_009:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 34, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_011:
	direction_signpost 33, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_KIRLIA, 0
	wait_cry
	wild_battle SPECIES_KIRLIA, 22, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0515
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R34_follower_mon_kirlia
	setflag 16368
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R34_014:
	buffer_players_name 0
	end

_0351:
	set_object_movement_type obj_R34_gsoldman1, 15
	goto_if_unset FLAG_UNK_189, _059D
	clearflag FLAG_UNK_189
	end

_0368:
	goto_if_unset FLAG_UNK_189, _059D
	clearflag FLAG_UNK_189
	end

_0379:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _05D8
	apply_movement obj_R34_var_1, _0C20
	apply_movement obj_R34_follower_mon_static_marill, _0C2A
	apply_movement obj_R34_gsoldman1, _0C30
	goto _03A4

_03A4:
	wait_movement
	gender_msgbox 38, 43
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 363
	goto_if_ne _060D
	apply_movement obj_player, _0C60
	goto _0628

_03D1:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E5:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03F9:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _064F
	apply_movement obj_player, _0C6A
	goto _0414

_0414:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0672
	apply_movement obj_partner_poke, _0C74
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
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

_0475:
	goto _06AC

_047B:
	apply_movement obj_R34_gswoman3, _0C82
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0C8C
	wait_movement
	npc_msg 19
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_IRENE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0515
	apply_movement obj_R34_gswoman3, _0C92
	wait_movement
	npc_msg 21
	closemsg
	apply_movement obj_R34_gswoman3_2, _0C98
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0CA2
	wait_movement
	npc_msg 24
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_JENN, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0515
	apply_movement obj_R34_gswoman3_2, _0CA8
	wait_movement
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	goto _0741

_0515:
	white_out
	releaseall
	end

_051B:
	callstd std_bag_is_full
	closemsg
	goto _074B

_0527:
	releaseall
	end

_052B:
	end

_052D:
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0538:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0540:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_054B:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0553:
	npc_msg 30
	goto_if_no_item_space ITEM_POWER_HERB, 1, _051B
	callstd std_give_item_verbose
	setvar VAR_UNK_4097, 3
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	compare VAR_TEMP_x4004, 777
	goto_if_ne _0527
	releaseall
	goto _052B

_059D:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0760
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _076A
	compare VAR_TEMP_x4000, 4
	goto_if_eq _076A
	setflag FLAG_HIDE_CAMERON
	goto _0796

_05D8:
	apply_movement obj_R34_var_1, _0CAE
	wait_movement
	gender_msgbox 38, 43
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 363
	goto_if_ne _060D
	apply_movement obj_player, _0C60
	goto _0628

_060D:
	compare VAR_SPECIAL_x8004, 364
	goto_if_ne _07BE
	apply_movement obj_player, _0CB4
	goto _0628

_0628:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _07D9
	apply_movement obj_R34_var_1, _0BEE
	goto _07F4

_064F:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0822
	apply_movement obj_player, _0CBA
	apply_movement obj_R34_gsmiddleman1, _0C4C
	goto _0414

_0672:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
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

_06AC:
	apply_movement obj_R34_gswoman3, _0C82
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0C8C
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_R34_gswoman3_2, _0C98
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0CA2
	wait_movement
	npc_msg 24
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_JENN, 120, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0515
	apply_movement obj_R34_gswoman3, _0C92
	wait_movement
	apply_movement obj_player, _0C8C
	wait_movement
	npc_msg 21
	closemsg
	apply_movement obj_R34_gswoman3_2, _0CA8
	wait_movement
	apply_movement obj_player, _0CA2
	wait_movement
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4097, 1
	releaseall
	end

_0741:
	setvar VAR_UNK_4097, 1
	releaseall
	end

_074B:
	compare VAR_TEMP_x4004, 777
	goto_if_ne _0527
	releaseall
	goto _052B

_0760:
	setflag FLAG_HIDE_CAMERON
	goto _0796

_076A:
	clearflag FLAG_HIDE_CAMERON
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0893
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0893
	clearflag FLAG_UNK_1D1
	setflag FLAG_UNK_1D2
	end

_0796:
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0893
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0893
	clearflag FLAG_UNK_1D1
	setflag FLAG_UNK_1D2
	end

_07BE:
	compare VAR_SPECIAL_x8004, 365
	goto_if_ne _089D
	apply_movement obj_player, _0CCC
	goto _0628

_07D9:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _08B8
	apply_movement obj_R34_var_1, _0BEE
	goto _07F4

_07F4:
	wait_movement
	buffer_players_name 0
	gender_msgbox 39, 44
	closemsg
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _08EE
	apply_movement obj_R34_var_1, _0CD6
	apply_movement obj_R34_follower_mon_static_marill, _0CE0
	goto _0911

_0822:
	apply_movement obj_player, _0CE6
	apply_movement obj_R34_gsmiddleman1, _0C4C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0672
	apply_movement obj_partner_poke, _0C74
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
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

_0893:
	clearflag FLAG_UNK_1D2
	setflag FLAG_UNK_1D1
	end

_089D:
	compare VAR_SPECIAL_x8004, 366
	goto_if_ne _0951
	apply_movement obj_player, _0CF8
	goto _0628

_08B8:
	apply_movement obj_R34_var_1, _0D02
	wait_movement
	buffer_players_name 0
	gender_msgbox 39, 44
	closemsg
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _08EE
	apply_movement obj_R34_var_1, _0CD6
	apply_movement obj_R34_follower_mon_static_marill, _0CE0
	goto _0911

_08EE:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _096C
	apply_movement obj_R34_var_1, _0CD6
	apply_movement obj_R34_follower_mon_static_marill, _0CE0
	goto _0911

_0911:
	wait_movement
	buffer_players_name 0
	gender_msgbox 40, 45
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _09BC
	apply_movement obj_R34_var_1, _0D08
	apply_movement obj_R34_follower_mon_static_marill, _0D12
	apply_movement obj_player, _0D18
	goto _09E7

_0951:
	compare VAR_SPECIAL_x8004, 367
	goto_if_ne _0A88
	apply_movement obj_player, _0D26
	goto _0628

_096C:
	apply_movement obj_R34_var_1, _0D30
	apply_movement obj_R34_follower_mon_static_marill, _0D36
	wait_movement
	buffer_players_name 0
	gender_msgbox 40, 45
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _09BC
	apply_movement obj_R34_var_1, _0D08
	apply_movement obj_R34_follower_mon_static_marill, _0D12
	apply_movement obj_player, _0D18
	goto _09E7

_09BC:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _0AA3
	apply_movement obj_R34_var_1, _0D08
	apply_movement obj_R34_follower_mon_static_marill, _0D12
	apply_movement obj_player, _0D18
	goto _09E7

_09E7:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 11, 12, 16, 26, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_R34_var_1, _0D3C
	apply_movement obj_R34_follower_mon_static_marill, _0D46
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0D54
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B5C
	scrcmd_600
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0A88:
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0B99
	apply_movement obj_player, _0D5E
	goto _0628

_0AA3:
	apply_movement obj_R34_var_1, _0D68
	apply_movement obj_R34_follower_mon_static_marill, _0D72
	apply_movement obj_player, _0D7C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 11, 12, 16, 26, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_R34_var_1, _0D3C
	apply_movement obj_R34_follower_mon_static_marill, _0D46
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0D54
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B5C
	scrcmd_600
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0B5C:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0B99:
	apply_movement obj_player, _0D8A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _07D9
	apply_movement obj_R34_var_1, _0BEE
	goto _07F4

	.align 4
_0BC8:

	step 75, 1
	step 13, 1
	step 15, 2
	step_end
	.align 4
_0BD6:

	step 63, 3
	step 34, 1
	step_end
	.align 4
_0BE0:

	step 14, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_0BEE:

	step 32, 1
	step_end
	.align 4
_0BF4:

	step 13, 6
	step 15, 3
	step 13, 2
	step 35, 1
	step_end
	.align 4
_0C06:

	step 13, 7
	step 15, 3
	step 13, 1
	step_end
	.align 4
_0C14:

	step 34, 1
	step_end
	.align 4
_0C1A:

	step 75, 1
	step_end
	.align 4
_0C20:

	step 13, 1
	step 35, 1
	step_end
	.align 4
_0C2A:

	step 13, 1
	step_end
	.align 4
_0C30:

	step 33, 1
	step_end
	.align 4
_0C36:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0C4C:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0C56:

	step 75, 1
	step 12, 2
	step_end
	.align 4
_0C60:

	step 15, 1
	step 12, 1
	step_end
	.align 4
_0C6A:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0C74:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0C82:

	step 75, 1
	step 14, 4
	step_end
	.align 4
_0C8C:

	step 3, 1
	step_end
	.align 4
_0C92:

	step 50, 2
	step_end
	.align 4
_0C98:

	step 75, 1
	step 15, 4
	step_end
	.align 4
_0CA2:

	step 2, 1
	step_end
	.align 4
_0CA8:

	step 51, 2
	step_end
	.align 4
_0CAE:

	step 33, 1
	step_end
	.align 4
_0CB4:

	step 12, 1
	step_end
	.align 4
_0CBA:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0CCC:

	step 14, 1
	step 12, 1
	step_end
	.align 4
_0CD6:

	step 15, 1
	step 33, 1
	step_end
	.align 4
_0CE0:

	step 13, 1
	step_end
	.align 4
_0CE6:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0CF8:

	step 14, 2
	step 12, 1
	step_end
	.align 4
_0D02:

	step 35, 1
	step_end
	.align 4
_0D08:

	step 15, 3
	step 32, 1
	step_end
	.align 4
_0D12:

	step 15, 3
	step_end
	.align 4
_0D18:

	step 63, 1
	step 15, 3
	step 32, 1
	step_end
	.align 4
_0D26:

	step 14, 3
	step 12, 1
	step_end
	.align 4
_0D30:

	step 13, 1
	step_end
	.align 4
_0D36:

	step 13, 1
	step_end
	.align 4
_0D3C:

	step 12, 1
	step 69, 1
	step_end
	.align 4
_0D46:

	step 15, 1
	step 12, 1
	step 69, 1
	step_end
	.align 4
_0D54:

	step 12, 2
	step 69, 1
	step_end
	.align 4
_0D5E:

	step 14, 3
	step 12, 1
	step_end
	.align 4
_0D68:

	step 15, 4
	step 32, 1
	step_end
	.align 4
_0D72:

	step 13, 1
	step 15, 3
	step_end
	.align 4
_0D7C:

	step 63, 1
	step 15, 4
	step 32, 1
	step_end
	.align 4
_0D8A:

	step 14, 4
	step 12, 1
	step_end
	.align 4


.close
