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

.include "armips/scr_seq/event_T08.inc"


// text archive to grab from: 512.txt

.create "build/a012/2_807", 0


scrdef scr_seq_T08_000
scrdef scr_seq_T08_001
scrdef scr_seq_T08_002
scrdef scr_seq_T08_003
scrdef scr_seq_T08_004
scrdef scr_seq_T08_005
scrdef scr_seq_T08_006
scrdef scr_seq_T08_007
scrdef scr_seq_T08_008
scrdef scr_seq_T08_009
scrdef scr_seq_T08_010
scrdef scr_seq_T08_011
scrdef scr_seq_T08_012
scrdef scr_seq_T08_013
scrdef scr_seq_T08_014
scrdef scr_seq_T08_015
scrdef scr_seq_T08_016
scrdef scr_seq_T08_017
scrdef scr_seq_T08_018
scrdef scr_seq_T08_019
scrdef_end

scr_seq_T08_007:
	goto_if_unset FLAG_UNK_189, _039A
	clearflag FLAG_UNK_189
	end

scr_seq_T08_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C2
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D6
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03EA
	apply_movement obj_player, _0EDE
	goto _045B

scr_seq_T08_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call _04BC
	call _04DD
	compare VAR_SPECIAL_x8006, 1
	goto_if_eq _0563
	npc_msg 7
	closemsg
	call _04BC
	releaseall
	end

scr_seq_T08_000:
	simple_npc_msg 0
	end

scr_seq_T08_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16227, _0610
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16227, _061B
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_009:
	direction_signpost 3, 0, 8, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T08_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 4, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T08_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 5, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T08_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T08_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16225, _0626
	play_cry SPECIES_SHELLDER, 0
	npc_msg 16
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16225, _0668
	play_cry SPECIES_CLOYSTER, 0
	npc_msg 17
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_012:
	simple_npc_msg 18
	end

scr_seq_T08_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_CLOYSTER, 0
	npc_msg 22
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_CHANSEY, 6
	npc_msg 21
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	goto_if_set 16225, _06DB
	fade_out_bgm 0, 10
	play_bgm SEQ_GS_VS_GYMREADER_KANTO
	npc_msg 23
	closemsg
	release obj_T08_follower_mon_venomoth
	release obj_T08_follower_mon_cloyster_3
	reset_bgm
	play_cry SPECIES_VENOMOTH, 5
	wait_cry
	play_cry SPECIES_VENOMOTH, 6
	wait_cry
	play_cry SPECIES_VENOMOTH, 0
	wait_cry
	reset_bgm
	stop_bgm SEQ_GS_VS_GYMREADER_KANTO
	lock obj_T08_follower_mon_venomoth
	lock obj_T08_follower_mon_cloyster_3
	npc_msg 30
	closemsg
	apply_movement obj_T08_gsleader13, _0EE8
	wait_movement
	play_bgm SEQ_GS_IBUKI
	faceplayer
	npc_msg 24
	npc_msg 25
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	fade_out_bgm 0, 10
	stop_bgm 0
	reset_bgm
	apply_movement obj_T08_gsleader13, _0EEE
	wait_movement
	setflag 16225
	releaseall
	end

scr_seq_T08_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	fade_out_bgm 0, 10
	play_bgm SEQ_GS_VS_TRAINER_KANTO
	npc_msg 27
	closemsg
	release obj_T08_follower_mon_static_chansey
	release obj_T08_follower_mon_cloyster_4
	play_cry SPECIES_CHANSEY, 5
	wait_cry
	play_cry SPECIES_CLOYSTER, 6
	wait_cry
	play_cry SPECIES_CHANSEY, 0
	wait_cry
	lock obj_T08_follower_mon_static_chansey
	lock obj_T08_follower_mon_cloyster_4
	fade_out_bgm 0, 10
	reset_bgm
	fade_out_bgm 0, 10
	reset_bgm
	lockall
	faceplayer
	npc_msg 28
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
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	buffer_players_name 0
	apply_movement obj_T08_pcwoman1, _0EEE
	wait_movement
	releaseall
	end

scr_seq_T08_017:
	end

scr_seq_T08_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16225, _07CA
	play_cry SPECIES_CLOYSTER, 0
	npc_msg 17
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T08_019:
	simple_npc_msg 36
	end

_039A:
	clearflag FLAG_UNK_149
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _083D
	compare VAR_TEMP_x4000, 6
	goto_if_eq _083D
	setflag FLAG_HIDE_CAMERON
	end

_03C2:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D6:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03EA:
	apply_movement obj_player, _0EF4
	apply_movement obj_T08_gsmiddleman1_2, _0F06
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0843
	apply_movement obj_partner_poke, _0F10
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 62
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

_045B:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0843
	apply_movement obj_partner_poke, _0F10
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 62
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

_04BC:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _087D
	apply_movement obj_T08_juggrer, _0F1E
	wait_movement
	goto _089A

_04DD:
	hasitem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _089C
	setvar VAR_SPECIAL_x8000, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0901
	setvar VAR_SPECIAL_x8001, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0945
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0968
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_0563:
	npc_msg 8
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8000, 1
	goto_if_ne _096A
	menu_item_add 205, 255, 0
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _09F5
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0A6B
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0ACC
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

_0610:
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_061B:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0626:
	play_cry SPECIES_SHELLDER, 0
	wait_cry
	fade_out_bgm 5, 0
	play_bgm SEQ_GS_EYE_K_SHOUJO
	npc_msg 33
	closemsg
	play_cry SPECIES_SHELLDER, 0
	wait_cry
	wild_battle SPECIES_SHELLDER, 50, 0
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	call_if_eq _0DB7
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0668:
	play_cry SPECIES_CLOYSTER, 0
	release obj_T08_follower_mon_cloyster
	scrcmd_523 obj_T08_follower_mon_cloyster, 4, 90, 4, 0
	lock obj_T08_follower_mon_cloyster
	fade_out_bgm 5, 0
	play_bgm SEQ_GS_EYE_K_SHOUNEN
	npc_msg 31
	closemsg
	play_cry SPECIES_CLOYSTER, 0
	wait_cry
	wild_battle SPECIES_CLOYSTER, 54, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_SHELLDER, 6
	wait_cry
	hide_person obj_T08_follower_mon_shellder_7
	hide_person obj_T08_follower_mon_cloyster
	hide_person obj_T08_follower_mon_shellder_8
	hide_person obj_T08_follower_mon_shellder_9
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06DB:
	goto_if_unset 16224, _0DC2
	goto_if_unset 16223, _0DC2
	goto_if_unset 16222, _0DC2
	fade_out_bgm 0, 10
	stop_bgm 0
	play_bgm SEQ_GS_VS_GYMREADER_KANTO
	npc_msg 37
	closemsg
	play_cry SPECIES_VENOMOTH, 0
	wait_cry
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_CLOYSTER, 6
	wait_cry
	play_cry SPECIES_CLOYSTER, 5
	wait_cry
	hide_person obj_T08_follower_mon_cloyster_3
	hide_person obj_T08_follower_mon_cloyster_4
	clearflag 16226
	hide_person obj_T08_follower_mon_shellder
	hide_person obj_T08_follower_mon_shellder_2
	hide_person obj_T08_follower_mon_shellder_3
	hide_person obj_T08_follower_mon_shellder_4
	hide_person obj_T08_follower_mon_shellder_5
	hide_person obj_T08_follower_mon_shellder_6
	fade_out_bgm 0, 10
	stop_bgm 0
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	faceplayer
	lockall
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag 16227
	show_person obj_T08_gsboy2
	show_person obj_T08_juggrer
	hide_person obj_T08_follower_mon_venomoth
	hide_person obj_T08_follower_mon_static_chansey
	hide_person obj_T08_gsleader13
	hide_person obj_T08_pcwoman1
	hide_person obj_T08_woman1
	hide_person obj_T08_follower_mon_shellder_10
	hide_person obj_T08_follower_mon_shellder_11
	hide_person obj_T08_gsgirl1
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_DOOR
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_07CA:
	play_cry SPECIES_CLOYSTER, 0
	release obj_T08_follower_mon_cloyster_2
	scrcmd_523 obj_T08_follower_mon_cloyster_2, 4, 90, 4, 0
	lock obj_T08_follower_mon_cloyster_2
	fade_out_bgm 5, 0
	play_bgm SEQ_GS_EYE_K_SHOUNEN
	npc_msg 31
	closemsg
	play_cry SPECIES_CLOYSTER, 0
	wait_cry
	wild_battle SPECIES_CLOYSTER, 55, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_SHELLDER, 6
	wait_cry
	hide_person obj_T08_follower_mon_cloyster_2
	hide_person obj_T08_follower_mon_shellder_12
	hide_person obj_T08_follower_mon_shellder_13
	hide_person obj_T08_follower_mon_shellder_14
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_083D:
	clearflag FLAG_HIDE_CAMERON
	end

_0843:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 62
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

_087D:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0DD9
	apply_movement obj_T08_juggrer, _0F60
	wait_movement
	goto _089A

_089A:
	return

_089C:
	hasitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0901
	setvar VAR_SPECIAL_x8001, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0945
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0968
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_0901:
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0945
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0968
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_0945:
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0968
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_0968:
	return

_096A:
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _09F5
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0A6B
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0ACC
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

_09F5:
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0A6B
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0ACC
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

_0A6B:
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0ACC
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

_0ACC:
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

_0B18:
	npc_msg 11
	goto_if_no_item_space ITEM_PERSIM_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_RAZZ_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_POMEG_BERRY, 1, _0DE5
	giveitem_no_check ITEM_PERSIM_BERRY, 1
	giveitem_no_check ITEM_RAZZ_BERRY, 1
	giveitem_no_check ITEM_POMEG_BERRY, 1
	takeitem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	goto _0DF4

_0BBC:
	npc_msg 12
	goto_if_no_item_space ITEM_BLUK_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_KELPSY_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_CORNN_BERRY, 1, _0DE5
	giveitem_no_check ITEM_BLUK_BERRY, 1
	giveitem_no_check ITEM_KELPSY_BERRY, 1
	giveitem_no_check ITEM_CORNN_BERRY, 1
	takeitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	goto _0DF4

_0C60:
	npc_msg 13
	goto_if_no_item_space ITEM_PINAP_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_GREPA_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_NOMEL_BERRY, 1, _0DE5
	giveitem_no_check ITEM_PINAP_BERRY, 1
	giveitem_no_check ITEM_GREPA_BERRY, 1
	giveitem_no_check ITEM_NOMEL_BERRY, 1
	takeitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	goto _0DF4

_0D04:
	npc_msg 14
	goto_if_no_item_space ITEM_WEPEAR_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_HONDEW_BERRY, 1, _0DE5
	goto_if_no_item_space ITEM_DURIN_BERRY, 1, _0DE5
	giveitem_no_check ITEM_WEPEAR_BERRY, 1
	giveitem_no_check ITEM_HONDEW_BERRY, 1
	giveitem_no_check ITEM_DURIN_BERRY, 1
	takeitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	goto _0DF4

_0DA8:
	npc_msg 10
	closemsg
	call _04BC
	releaseall
	end

_0DB7:
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DC2:
	faceplayer
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T08_gsleader13, _0EEE
	wait_movement
	releaseall
	end

_0DD9:
	apply_movement obj_T08_juggrer, _0FA2
	wait_movement
	return

_0DE5:
	npc_msg 15
	closemsg
	call _04BC
	releaseall
	end

_0DF4:
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 0
	setvar VAR_SPECIAL_x8002, 0
	setvar VAR_SPECIAL_x8003, 0
	setvar VAR_SPECIAL_x8006, 0
	call _04DD
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _0E2E
	npc_msg 9
	goto _0E34

_0E2E:
	goto _0DA8

_0E34:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8000, 1
	goto_if_ne _096A
	menu_item_add 205, 255, 0
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _09F5
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0A6B
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0ACC
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0B18
	case 1, _0BBC
	case 2, _0C60
	case 3, _0D04
	goto _0DA8

	.align 4
_0EDE:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0EE8:

	step 75, 1
	step_end
	.align 4
_0EEE:

	step 0, 1
	step_end
	.align 4
_0EF4:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0F06:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0F10:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0F1E:

	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step_end
	.align 4
_0F60:

	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step_end
	.align 4
_0FA2:

	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step_end
	.align 4


.close
