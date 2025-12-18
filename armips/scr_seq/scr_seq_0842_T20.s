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

.include "armips/scr_seq/event_T20.inc"


// text archive to grab from: 542.txt

.create "build/a012/2_842", 0


scrdef scr_seq_T20_000
scrdef scr_seq_T20_001
scrdef scr_seq_T20_002
scrdef scr_seq_T20_003
scrdef scr_seq_T20_004
scrdef scr_seq_T20_005
scrdef scr_seq_T20_006
scrdef scr_seq_T20_007
scrdef scr_seq_T20_008
scrdef scr_seq_T20_009
scrdef scr_seq_T20_010
scrdef scr_seq_T20_011
scrdef scr_seq_T20_012
scrdef scr_seq_T20_013
scrdef scr_seq_T20_014
scrdef scr_seq_T20_015
scrdef scr_seq_T20_016
scrdef scr_seq_T20_017
scrdef_end

scr_seq_T20_006:
	get_friend_sprite VAR_OBJ_0
	goto_if_unset FLAG_UNK_189, _0A05
	clearflag FLAG_UNK_189
	end

scr_seq_T20_009:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 1
	goto_if_eq _0A41
	end

scr_seq_T20_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0A6B
	apply_movement obj_T20_gsrivel, _1810
	goto _0AC0

scr_seq_T20_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 0
	goto_if_ne _0BAE
	npc_msg 9
	goto _0BFF

scr_seq_T20_002:
	scrcmd_609
	lockall
	goto_if_set FLAG_GOT_POKEGEAR, _1034
	apply_movement obj_T20_gswoman1, _189C
	wait_movement
	buffer_players_name 0
	gender_msgbox 1, 2
	wait 20, VAR_SPECIAL_RESULT
	closemsg
	apply_movement obj_player, _18B8
	wait_movement
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 2
	goto_if_eq _0DDD
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0C07
	apply_movement obj_T20_gswoman1, _1900
	goto _0CCD

scr_seq_T20_003:
	scrcmd_609
	lockall
	release obj_T20_follower_mon_static_marill
	apply_movement obj_T20_follower_mon_static_marill, _1C58
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_HIDE_NEW_BARK_FRIEND
	show_person obj_T20_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_T20_var_1, _1CDC
	wait_movement
	apply_movement obj_T20_follower_mon_static_marill, _1C88
	wait_movement
	apply_movement obj_player, _1CD4
	apply_movement obj_T20_var_1, _1CF0
	wait_movement
	apply_movement obj_T20_follower_mon_static_marill, _1CB0
	wait_movement
	apply_movement obj_T20_var_1, _1CF8
	apply_movement obj_T20_follower_mon_static_marill, _1CB8
	wait_movement
	callstd std_fade_end_friend_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 2
	hide_person obj_T20_follower_mon_static_marill
	hide_person obj_T20_var_1
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	releaseall
	end

scr_seq_T20_007:
	buffer_players_name 0
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_008:
	scrcmd_609
	lockall
	callstd std_play_friend_music
	apply_movement obj_T20_var_1, _1D0C
	apply_movement obj_T20_follower_mon_static_marill, _1D44
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _1D70
	apply_movement obj_T20_var_1, _1D7C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 15, 16
	closemsg
	apply_movement obj_T20_var_1, _1D88
	apply_movement obj_T20_follower_mon_static_marill, _1D9C
	apply_movement obj_player, _1DC0
	wait_movement
	apply_movement obj_T20_var_1, _1DCC
	apply_movement obj_T20_follower_mon_static_marill, _1DD4
	wait_movement
	hide_person obj_T20_follower_mon_static_marill
	hide_person obj_T20_var_1
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	callstd std_fade_end_friend_music
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 2
	releaseall
	end

scr_seq_T20_010:
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1306
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1306
	scrcmd_600
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20R0102, 0, 12, 6, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_582 MAP_T20, 688, 393
	setvar VAR_UNK_407C, 1
	end

scr_seq_T20_016:
	buffer_friends_name 0
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _148C
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _14A0
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1342
	apply_movement obj_player, _1DDC
	apply_movement obj_T20_gsmiddleman1, _1E28
	goto _13F1

scr_seq_T20_011:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4007, 2
	goto_if_eq _1691
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_HIDE_NEW_BARK_MOM
	show_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20_gsmama, _1E44
	wait_movement
	compare VAR_TEMP_x4007, 0
	goto_if_ne _14B4
	buffer_players_name 0
	npc_msg 21
	closemsg
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _14F0
	apply_movement obj_T20_gsmama, _1E4C
	apply_movement obj_player, _1E70
	goto _158B

scr_seq_T20_012:
	scrcmd_609
	lockall
	apply_movement obj_T20_var_1_2, _1EDC
	wait_movement
	buffer_players_name 0
	gender_msgbox 27, 28
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _16B8
	apply_movement obj_T20_var_1_2, _1EE8
	goto _1749

scr_seq_T20_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	gender_msgbox 25, 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AZUMARILL, 0
	npc_msg 33
	wait_cry
	closemsg
	apply_movement obj_T20_follower_mon_azumarill, _1F40
	wait_movement
	apply_movement obj_T20_var_1_2, _1F4C
	wait_movement
	gender_msgbox 31, 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20_013:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 36, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_014:
	direction_signpost 34, 0, 11, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_015:
	buffer_players_name 0
	simple_npc_msg 12
	end

_0A05:
	setvar VAR_TEMP_x4007, 0
	check_badge BADGE_PLAIN, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0A35
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0A3B
	setflag FLAG_HIDE_CAMERON
	end

_0A35:
	setflag FLAG_HIDE_CAMERON
	end

_0A3B:
	clearflag FLAG_HIDE_CAMERON
	end

_0A41:
	clearflag FLAG_HIDE_NEW_BARK_FRIEND
	show_person obj_T20_var_1
	clearflag FLAG_HIDE_NEW_BARK_MARILL
	show_person obj_T20_follower_mon_static_marill
	move_person_facing obj_T20_var_1, 686, 0, 396, DIR_WEST
	move_person_facing obj_T20_follower_mon_static_marill, 685, 0, 396, DIR_SOUTH
	end

_0A6B:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0A86
	apply_movement obj_T20_gsrivel, _1808
	goto _0AC0

_0A86:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0AC0
	apply_movement obj_T20_gsrivel, _1818
	wait_movement
	npc_msg 14
	closemsg
	goto_if_unset FLAG_GOT_STARTER, _0AF8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AE5
	goto _0B46

_0AC0:
	wait_movement
	npc_msg 14
	closemsg
	goto_if_unset FLAG_GOT_STARTER, _0AF8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AE5
	goto _0B46

_0AE5:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0AF8
	goto _0B1E

_0AF8:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B0B
	goto _0B8E

_0B0B:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0B1E
	goto _0B6E

_0B1E:
	apply_movement obj_T20_gsrivel, _1820
	apply_movement obj_partner_poke, _17E8
	apply_movement obj_player, _1844
	wait_movement
	apply_movement obj_T20_gsrivel, _1830
	wait_movement
	releaseall
	end

_0B46:
	apply_movement obj_T20_gsrivel, _185C
	apply_movement obj_partner_poke, _17F8
	apply_movement obj_player, _1874
	wait_movement
	apply_movement obj_T20_gsrivel, _1830
	wait_movement
	releaseall
	end

_0B6E:
	apply_movement obj_T20_gsrivel, _1820
	apply_movement obj_player, _1844
	wait_movement
	apply_movement obj_T20_gsrivel, _1830
	wait_movement
	releaseall
	end

_0B8E:
	apply_movement obj_T20_gsrivel, _185C
	apply_movement obj_player, _1874
	wait_movement
	apply_movement obj_T20_gsrivel, _1830
	wait_movement
	releaseall
	end

_0BAE:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 1
	goto_if_ne _0BC4
	npc_msg 5
	goto _0BFF

_0BC4:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 2
	goto_if_ne _0BDA
	npc_msg 5
	goto _0BFF

_0BDA:
	compare VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	goto_if_ne _0BF0
	npc_msg 0
	goto _0BFF

_0BF0:
	buffer_players_name 0
	gender_msgbox 6, 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0BFF:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C07:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0C22
	apply_movement obj_T20_gswoman1, _1910
	goto _0CCD

_0C22:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0C3D
	apply_movement obj_T20_gswoman1, _1920
	goto _0CCD

_0C3D:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0C58
	apply_movement obj_T20_gswoman1, _1930
	goto _0CCD

_0C58:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0C73
	apply_movement obj_T20_gswoman1, _1938
	goto _0CCD

_0C73:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0C8E
	apply_movement obj_T20_gswoman1, _1948
	goto _0CCD

_0C8E:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0CCD
	apply_movement obj_T20_gswoman1, _1958
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0CF7
	apply_movement obj_T20_gswoman1, _19C4
	apply_movement obj_player, _1AAC
	goto _0DD0

_0CCD:
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0CF7
	apply_movement obj_T20_gswoman1, _19C4
	apply_movement obj_player, _1AAC
	goto _0DD0

_0CF7:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0D1A
	apply_movement obj_T20_gswoman1, _19D8
	apply_movement obj_player, _1ABC
	goto _0DD0

_0D1A:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0D3D
	apply_movement obj_T20_gswoman1, _19EC
	apply_movement obj_player, _1ACC
	goto _0DD0

_0D3D:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0D60
	apply_movement obj_T20_gswoman1, _1A00
	apply_movement obj_player, _1ADC
	goto _0DD0

_0D60:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0D83
	apply_movement obj_T20_gswoman1, _1A0C
	apply_movement obj_player, _1AE4
	goto _0DD0

_0D83:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0DA6
	apply_movement obj_T20_gswoman1, _1A20
	apply_movement obj_player, _1AF4
	goto _0DD0

_0DA6:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0DD0
	apply_movement obj_T20_gswoman1, _1A30
	apply_movement obj_player, _1B04
	wait_movement
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DD0:
	wait_movement
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DDD:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0E06
	apply_movement obj_player, _18CC
	apply_movement obj_T20_gswoman1, _1968
	goto _0F06

_0E06:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0E29
	apply_movement obj_player, _18CC
	apply_movement obj_T20_gswoman1, _1974
	goto _0F06

_0E29:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0E4C
	apply_movement obj_player, _18CC
	apply_movement obj_T20_gswoman1, _1980
	goto _0F06

_0E4C:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0E6F
	apply_movement obj_player, _18C0
	apply_movement obj_T20_gswoman1, _198C
	goto _0F06

_0E6F:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0E92
	apply_movement obj_player, _18C0
	apply_movement obj_T20_gswoman1, _19A0
	goto _0F06

_0E92:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0EB5
	apply_movement obj_player, _18C0
	apply_movement obj_T20_gswoman1, _19AC
	goto _0F06

_0EB5:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0F06
	apply_movement obj_player, _18C0
	apply_movement obj_T20_gswoman1, _19B8
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0F3A
	apply_movement obj_T20_gswoman1, _1A40
	apply_movement obj_player, _1B14
	goto _101D

_0F06:
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0F3A
	apply_movement obj_T20_gswoman1, _1A40
	apply_movement obj_player, _1B14
	goto _101D

_0F3A:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0F5D
	apply_movement obj_T20_gswoman1, _1A50
	apply_movement obj_player, _1B20
	goto _101D

_0F5D:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0F80
	apply_movement obj_T20_gswoman1, _1A60
	apply_movement obj_player, _1B2C
	goto _101D

_0F80:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0FA3
	apply_movement obj_T20_gswoman1, _1A6C
	apply_movement obj_player, _1B38
	goto _101D

_0FA3:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0FC6
	apply_movement obj_T20_gswoman1, _1A80
	apply_movement obj_player, _1B4C
	goto _101D

_0FC6:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0FE9
	apply_movement obj_T20_gswoman1, _1A8C
	apply_movement obj_player, _1B58
	goto _101D

_0FE9:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _101D
	apply_movement obj_T20_gswoman1, _1A9C
	apply_movement obj_player, _1B64
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_101D:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1034:
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	show_person obj_T20_doctor
	move_person_facing obj_T20_doctor, 684, 0, 393, DIR_SOUTH
	apply_movement obj_T20_doctor, _1BE0
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	npc_msg 17
	closemsg
	apply_movement obj_player, _18AC
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _10A0
	apply_movement obj_T20_doctor, _1B70
	apply_movement obj_player, _18E0
	goto _11AF

_10A0:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _10C3
	apply_movement obj_T20_doctor, _1B80
	apply_movement obj_player, _18F0
	goto _11AF

_10C3:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _10E6
	apply_movement obj_T20_doctor, _1B90
	apply_movement obj_player, _18F0
	goto _11AF

_10E6:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _1109
	apply_movement obj_T20_doctor, _1BA0
	apply_movement obj_player, _18F0
	goto _11AF

_1109:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _112C
	apply_movement obj_T20_doctor, _1BB0
	apply_movement obj_player, _18F0
	goto _11AF

_112C:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _114F
	apply_movement obj_T20_doctor, _1BC0
	apply_movement obj_player, _18D8
	goto _11AF

_114F:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _11AF
	apply_movement obj_T20_doctor, _1BD0
	apply_movement obj_player, _18D8
	wait_movement
	npc_msg 18
	register_gear_number PHONE_CONTACT_PROF__ELM
	buffer_players_name 0
	npc_msg 19
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 20
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _11F2
	apply_movement obj_player, _18B8
	apply_movement obj_T20_doctor, _1BF0
	goto _12D2

_11AF:
	wait_movement
	npc_msg 18
	register_gear_number PHONE_CONTACT_PROF__ELM
	buffer_players_name 0
	npc_msg 19
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 20
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _11F2
	apply_movement obj_player, _18B8
	apply_movement obj_T20_doctor, _1BF0
	goto _12D2

_11F2:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _1215
	apply_movement obj_player, _18B8
	apply_movement obj_T20_doctor, _1BFC
	goto _12D2

_1215:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _1238
	apply_movement obj_player, _18D8
	apply_movement obj_T20_doctor, _1C08
	goto _12D2

_1238:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _1253
	apply_movement obj_T20_doctor, _1C18
	goto _12D2

_1253:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _126E
	apply_movement obj_T20_doctor, _1C28
	goto _12D2

_126E:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _1289
	apply_movement obj_T20_doctor, _1C38
	goto _12D2

_1289:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _12D2
	apply_movement obj_T20_doctor, _1C48
	wait_movement
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_doctor, _1BE8
	wait_movement
	hide_person obj_T20_doctor
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	releaseall
	end

_12D2:
	wait_movement
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_doctor, _1BE8
	wait_movement
	hide_person obj_T20_doctor
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	releaseall
	end

_1306:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20R0102, 0, 12, 6, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_582 MAP_T20, 688, 393
	setvar VAR_UNK_407C, 1
	end

_1342:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _135D
	apply_movement obj_player, _1DF4
	goto _13F1

_135D:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _1380
	apply_movement obj_player, _1E14
	apply_movement obj_T20_gsmiddleman1, _1E28
	goto _13F1

_1380:
	apply_movement obj_player, _1E00
	apply_movement obj_T20_gsmiddleman1, _1E28
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1452
	apply_movement obj_partner_poke, _1E34
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_13F1:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _1452
	apply_movement obj_partner_poke, _1E34
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_1452:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_148C:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_14A0:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_14B4:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _14F0
	apply_movement obj_T20_gsmama, _1E4C
	apply_movement obj_player, _1E70
	goto _158B

_14F0:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _1513
	apply_movement obj_T20_gsmama, _1E58
	apply_movement obj_player, _1E7C
	goto _158B

_1513:
	compare VAR_SPECIAL_x8005, 400
	goto_if_ne _1536
	apply_movement obj_T20_gsmama, _1E64
	apply_movement obj_player, _1E88
	goto _158B

_1536:
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _1559
	apply_movement obj_T20_gsmama, _1E64
	apply_movement obj_player, _1E94
	goto _158B

_1559:
	apply_movement obj_T20_gsmama, _1E64
	apply_movement obj_player, _1EA4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4007, 0
	goto_if_ne _15AD
	npc_msg 22
	goto _15CF

_158B:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4007, 0
	goto_if_ne _15AD
	npc_msg 22
	goto _15CF

_15AD:
	npc_msg 23
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _15EE
	apply_movement obj_T20_gsmama, _1EB4
	wait_movement
	goto _1653

_15CF:
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _15EE
	apply_movement obj_T20_gsmama, _1EB4
	wait_movement
	goto _1653

_15EE:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _160B
	apply_movement obj_T20_gsmama, _1EBC
	wait_movement
	goto _1653

_160B:
	apply_movement obj_T20_gsmama, _1EC4
	wait_movement
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_gsmama, _1ECC
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_MOM
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	addvar VAR_TEMP_x4007, 1
	releaseall
	end

_1653:
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_gsmama, _1ECC
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_MOM
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	addvar VAR_TEMP_x4007, 1
	releaseall
	end

_1691:
	npc_msg 24
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _1ED4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_16B8:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _16D3
	apply_movement obj_T20_var_1_2, _1EF0
	goto _1749

_16D3:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _16EE
	apply_movement obj_T20_var_1_2, _1EF8
	goto _1749

_16EE:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _1709
	apply_movement obj_T20_var_1_2, _1F00
	goto _1749

_1709:
	apply_movement obj_T20_var_1_2, _1F08
	apply_movement obj_player, _1F10
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 29, 30
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _1781
	apply_movement obj_T20_var_1_2, _1F18
	goto _17E0

_1749:
	apply_movement obj_player, _1F10
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 29, 30
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _1781
	apply_movement obj_T20_var_1_2, _1F18
	goto _17E0

_1781:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _179C
	apply_movement obj_T20_var_1_2, _1F20
	goto _17E0

_179C:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _17B7
	apply_movement obj_T20_var_1_2, _1F28
	goto _17E0

_17B7:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _17D2
	apply_movement obj_T20_var_1_2, _1F30
	goto _17E0

_17D2:
	apply_movement obj_T20_var_1_2, _1F38
	wait_movement
	releaseall
	end

_17E0:
	wait_movement
	releaseall
	end

	.align 4
_17E8:

	step 71, 1
	step 77, 4
	step 72, 1
	step_end
	.align 4
_17F8:

	step 71, 1
	step 77, 6
	step 72, 1
	step_end
	.align 4
_1808:

	step 32, 1
	step_end
	.align 4
_1810:

	step 33, 1
	step_end
	.align 4
_1818:

	step 34, 1
	step_end
	.align 4
_1820:

	step 78, 1
	step 1, 1
	step 77, 2
	step_end
	.align 4
_1830:

	step 0, 1
	step 12, 2
	step 3, 1
	step 15, 1
	step_end
	.align 4
_1844:

	step 0, 1
	step 71, 1
	step 77, 2
	step 57, 1
	step 72, 1
	step_end
	.align 4
_185C:

	step 76, 1
	step 2, 1
	step 78, 1
	step 1, 1
	step 77, 3
	step_end
	.align 4
_1874:

	step 3, 1
	step 71, 1
	step 78, 1
	step 72, 1
	step 0, 1
	step 71, 1
	step 77, 3
	step 57, 1
	step 72, 1
	step_end
	.align 4
_189C:

	step 34, 1
	step 75, 1
	step 63, 1
	step_end
	.align 4
_18AC:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_18B8:

	step 3, 1
	step_end
	.align 4
_18C0:

	step 66, 2
	step 32, 1
	step_end
	.align 4
_18CC:

	step 66, 2
	step 33, 1
	step_end
	.align 4
_18D8:

	step 0, 1
	step_end
	.align 4
_18E0:

	step 3, 1
	step 66, 2
	step 1, 1
	step_end
	.align 4
_18F0:

	step 3, 1
	step 66, 2
	step 0, 1
	step_end
	.align 4
_1900:

	step 14, 3
	step 12, 3
	step 14, 3
	step_end
	.align 4
_1910:

	step 14, 3
	step 12, 2
	step 14, 3
	step_end
	.align 4
_1920:

	step 14, 3
	step 12, 1
	step 14, 3
	step_end
	.align 4
_1930:

	step 14, 6
	step_end
	.align 4
_1938:

	step 14, 3
	step 13, 1
	step 14, 3
	step_end
	.align 4
_1948:

	step 14, 6
	step 13, 2
	step 2, 1
	step_end
	.align 4
_1958:

	step 14, 6
	step 13, 3
	step 2, 1
	step_end
	.align 4
_1968:

	step 14, 7
	step 12, 2
	step_end
	.align 4
_1974:

	step 14, 7
	step 12, 1
	step_end
	.align 4
_1980:

	step 14, 7
	step 32, 1
	step_end
	.align 4
_198C:

	step 14, 3
	step 12, 1
	step 14, 4
	step 33, 1
	step_end
	.align 4
_19A0:

	step 14, 7
	step 33, 1
	step_end
	.align 4
_19AC:

	step 14, 7
	step 13, 1
	step_end
	.align 4
_19B8:

	step 14, 7
	step 13, 2
	step_end
	.align 4
_19C4:

	step 15, 3
	step 13, 3
	step 15, 3
	step 34, 1
	step_end
	.align 4
_19D8:

	step 15, 3
	step 13, 2
	step 15, 3
	step 34, 1
	step_end
	.align 4
_19EC:

	step 15, 3
	step 13, 1
	step 15, 3
	step 34, 1
	step_end
	.align 4
_1A00:

	step 15, 6
	step 34, 1
	step_end
	.align 4
_1A0C:

	step 15, 3
	step 12, 1
	step 15, 3
	step 34, 1
	step_end
	.align 4
_1A20:

	step 12, 2
	step 15, 6
	step 34, 1
	step_end
	.align 4
_1A30:

	step 12, 3
	step 15, 6
	step 34, 1
	step_end
	.align 4
_1A40:

	step 13, 2
	step 15, 7
	step 34, 1
	step_end
	.align 4
_1A50:

	step 13, 1
	step 15, 7
	step 34, 1
	step_end
	.align 4
_1A60:

	step 15, 7
	step 34, 1
	step_end
	.align 4
_1A6C:

	step 15, 3
	step 13, 1
	step 15, 4
	step 34, 1
	step_end
	.align 4
_1A80:

	step 15, 7
	step 34, 1
	step_end
	.align 4
_1A8C:

	step 12, 1
	step 15, 7
	step 34, 1
	step_end
	.align 4
_1A9C:

	step 12, 2
	step 15, 7
	step 34, 1
	step_end
	.align 4
_1AAC:

	step 15, 4
	step 13, 3
	step 15, 2
	step_end
	.align 4
_1ABC:

	step 15, 4
	step 13, 2
	step 15, 2
	step_end
	.align 4
_1ACC:

	step 15, 4
	step 13, 1
	step 15, 2
	step_end
	.align 4
_1ADC:

	step 15, 6
	step_end
	.align 4
_1AE4:

	step 15, 4
	step 12, 1
	step 15, 2
	step_end
	.align 4
_1AF4:

	step 15, 1
	step 12, 2
	step 15, 5
	step_end
	.align 4
_1B04:

	step 15, 1
	step 12, 3
	step 15, 5
	step_end
	.align 4
_1B14:

	step 13, 3
	step 15, 6
	step_end
	.align 4
_1B20:

	step 13, 2
	step 15, 6
	step_end
	.align 4
_1B2C:

	step 13, 1
	step 15, 6
	step_end
	.align 4
_1B38:

	step 12, 1
	step 15, 3
	step 13, 1
	step 15, 3
	step_end
	.align 4
_1B4C:

	step 12, 1
	step 15, 6
	step_end
	.align 4
_1B58:

	step 12, 2
	step 15, 6
	step_end
	.align 4
_1B64:

	step 12, 3
	step 15, 6
	step_end
	.align 4
_1B70:

	step 13, 3
	step 14, 8
	step 32, 1
	step_end
	.align 4
_1B80:

	step 13, 2
	step 14, 8
	step 33, 1
	step_end
	.align 4
_1B90:

	step 13, 2
	step 14, 8
	step 13, 1
	step_end
	.align 4
_1BA0:

	step 13, 2
	step 14, 8
	step 13, 2
	step_end
	.align 4
_1BB0:

	step 13, 2
	step 14, 8
	step 13, 3
	step_end
	.align 4
_1BC0:

	step 13, 2
	step 14, 8
	step 13, 4
	step_end
	.align 4
_1BD0:

	step 13, 2
	step 14, 8
	step 13, 5
	step_end
	.align 4
_1BE0:

	step 13, 1
	step_end
	.align 4
_1BE8:

	step 12, 1
	step_end
	.align 4
_1BF0:

	step 15, 8
	step 12, 3
	step_end
	.align 4
_1BFC:

	step 15, 8
	step 12, 2
	step_end
	.align 4
_1C08:

	step 12, 1
	step 15, 8
	step 12, 2
	step_end
	.align 4
_1C18:

	step 12, 2
	step 15, 8
	step 12, 2
	step_end
	.align 4
_1C28:

	step 12, 2
	step 15, 8
	step 12, 3
	step_end
	.align 4
_1C38:

	step 12, 2
	step 15, 8
	step 12, 4
	step_end
	.align 4
_1C48:

	step 12, 5
	step 15, 8
	step 12, 2
	step_end
	.align 4
_1C58:

	step 66, 1
	step 16, 8
	step 71, 1
	step 53, 1
	step 72, 1
	step 3, 5
	step 0, 5
	step 2, 5
	step 0, 5
	step 12, 1
	step 66, 1
	step_end
	.align 4
_1C88:

	step 2, 1
	step 75, 1
	step 36, 4
	step 1, 2
	step 3, 2
	step 0, 2
	step 2, 2
	step 38, 4
	step 18, 6
	step_end
	.align 4
_1CB0:

	step 50, 4
	step_end
	.align 4
_1CB8:

	step 2, 1
	step 14, 1
	step 1, 1
	step 13, 4
	step 2, 1
	step 14, 2
	step_end
	.align 4
_1CD4:

	step 2, 4
	step_end
	.align 4
_1CDC:

	step 65, 1
	step 13, 6
	step 3, 1
	step 75, 1
	step_end
	.align 4
_1CF0:

	step 39, 4
	step_end
	.align 4
_1CF8:

	step 1, 1
	step 13, 4
	step 2, 1
	step 14, 2
	step_end
	.align 4
_1D0C:

	step 62, 4
	step 62, 2
	step 37, 1
	step 62, 2
	step 39, 1
	step 62, 1
	step 36, 1
	step 62, 1
	step 37, 1
	step 62, 1
	step 36, 1
	step 62, 1
	step 75, 1
	step_end
	.align 4
_1D44:

	step 51, 3
	step 17, 1
	step 19, 2
	step 16, 2
	step 18, 2
	step 17, 2
	step 16, 2
	step 19, 2
	step 17, 1
	step 34, 1
	step_end
	.align 4
_1D70:

	step 13, 2
	step 15, 1
	step_end
	.align 4
_1D7C:

	step 63, 1
	step 34, 1
	step_end
	.align 4
_1D88:

	step 13, 1
	step 14, 2
	step 13, 5
	step 32, 1
	step_end
	.align 4
_1D9C:

	step 14, 1
	step 13, 1
	step 14, 2
	step 32, 1
	step 63, 3
	step 33, 1
	step 17, 4
	step 49, 2
	step_end
	.align 4
_1DC0:

	step 63, 2
	step 33, 1
	step_end
	.align 4
_1DCC:

	step 13, 3
	step_end
	.align 4
_1DD4:

	step 13, 4
	step_end
	.align 4
_1DDC:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_1DF4:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_1E00:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_1E14:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_1E28:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_1E34:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_1E44:

	step 13, 1
	step_end
	.align 4
_1E4C:

	step 13, 1
	step 35, 1
	step_end
	.align 4
_1E58:

	step 13, 2
	step 35, 1
	step_end
	.align 4
_1E64:

	step 13, 3
	step 35, 1
	step_end
	.align 4
_1E70:

	step 34, 1
	step 14, 4
	step_end
	.align 4
_1E7C:

	step 34, 1
	step 14, 4
	step_end
	.align 4
_1E88:

	step 34, 1
	step 14, 4
	step_end
	.align 4
_1E94:

	step 14, 2
	step 12, 1
	step 14, 2
	step_end
	.align 4
_1EA4:

	step 14, 2
	step 12, 2
	step 14, 2
	step_end
	.align 4
_1EB4:

	step 12, 1
	step_end
	.align 4
_1EBC:

	step 12, 2
	step_end
	.align 4
_1EC4:

	step 12, 3
	step_end
	.align 4
_1ECC:

	step 12, 1
	step_end
	.align 4
_1ED4:

	step 14, 1
	step_end
	.align 4
_1EDC:

	step 3, 1
	step 75, 1
	step_end
	.align 4
_1EE8:

	step 35, 1
	step_end
	.align 4
_1EF0:

	step 35, 1
	step_end
	.align 4
_1EF8:

	step 15, 1
	step_end
	.align 4
_1F00:

	step 35, 1
	step_end
	.align 4
_1F08:

	step 35, 1
	step_end
	.align 4
_1F10:

	step 14, 2
	step_end
	.align 4
_1F18:

	step 34, 1
	step_end
	.align 4
_1F20:

	step 34, 1
	step_end
	.align 4
_1F28:

	step 34, 1
	step_end
	.align 4
_1F30:

	step 34, 1
	step_end
	.align 4
_1F38:

	step 34, 1
	step_end
	.align 4
_1F40:

	step 47, 1
	step 47, 1
	step_end
	.align 4
_1F4C:

	step 34, 1
	step_end
	.align 4


.close
