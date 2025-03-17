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

.include "armips/scr_seq/event_D51R0201.inc"


// text archive to grab from: 146.txt

.create "build/a012/2_131", 0


scrdef scr_seq_D51R0201_000
scrdef scr_seq_D51R0201_001
scrdef scr_seq_D51R0201_002
scrdef scr_seq_D51R0201_003
scrdef scr_seq_D51R0201_004
scrdef scr_seq_D51R0201_005
scrdef scr_seq_D51R0201_006
scrdef scr_seq_D51R0201_007
scrdef scr_seq_D51R0201_008
scrdef scr_seq_D51R0201_009
scrdef scr_seq_D51R0201_010
scrdef scr_seq_D51R0201_011
scrdef scr_seq_D51R0201_012
scrdef scr_seq_D51R0201_013
scrdef scr_seq_D51R0201_014
scrdef scr_seq_D51R0201_015
scrdef_end

scr_seq_D51R0201_002:
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 7
	goto_if_eq _05E0
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 8
	goto_if_eq _05E0
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 9
	goto_if_eq _05E0
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 12
	goto_if_eq _05E0
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_eq _05E0
	end

scr_seq_D51R0201_007:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _130E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	releaseall
	end

scr_seq_D51R0201_006:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _130E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 4
	releaseall
	end

scr_seq_D51R0201_000:
	end

scr_seq_D51R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 8
	goto_if_eq _05E4
	get_party_lead_alive VAR_TEMP_x4005
	follower_poke_is_event_trigger 2, VAR_TEMP_x4005, VAR_TEMP_x4006
	compare VAR_TEMP_x4006, 1
	goto_if_eq _05EF
	follower_poke_is_event_trigger 1, VAR_TEMP_x4005, VAR_TEMP_x4007
	compare VAR_TEMP_x4007, 1
	goto_if_eq _05EF
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D51R0201_004:
	scrcmd_609
	lockall
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_lt _0627
	compare VAR_UNK_4103, 1
	goto_if_eq _0639
	call _0644
	compare VAR_TEMP_x400A, 0
	goto_if_eq _0661
	compare VAR_TEMP_x400A, 2
	goto_if_eq _066C
	compare VAR_TEMP_x400A, 3
	goto_if_eq _0677
	npc_msg 27
	goto _0682

scr_seq_D51R0201_003:
	scrcmd_609
	lockall
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_lt _0691
	compare VAR_UNK_4103, 2
	goto_if_eq _0639
	call _0644
	compare VAR_TEMP_x400A, 0
	goto_if_eq _0661
	compare VAR_TEMP_x400A, 2
	goto_if_eq _066C
	compare VAR_TEMP_x400A, 3
	goto_if_eq _0677
	npc_msg 28
	goto _06A3

scr_seq_D51R0201_005:
	scrcmd_609
	lockall
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_lt _06B2
	compare VAR_UNK_4103, 3
	goto_if_eq _0639
	call _0644
	compare VAR_TEMP_x400A, 0
	goto_if_eq _0661
	compare VAR_TEMP_x400A, 2
	goto_if_eq _066C
	compare VAR_TEMP_x400A, 3
	goto_if_eq _0677
	npc_msg 29
	goto _06C4

scr_seq_D51R0201_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_UXIE, 6
	release obj_D51R0201_follower_mon_uxie
	scrcmd_523 obj_D51R0201_follower_mon_uxie, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_uxie
	npc_msg 34
	closemsg
	wait_cry
	wild_battle SPECIES_UXIE, 50, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_uxie
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _06D9
	compare VAR_TEMP_x4002, 5
	goto_if_eq _06D9
	releaseall
	end

scr_seq_D51R0201_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MESPRIT, 6
	release obj_D51R0201_follower_mon_mesprit
	scrcmd_523 obj_D51R0201_follower_mon_mesprit, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_mesprit
	npc_msg 35
	closemsg
	wait_cry
	wild_battle SPECIES_MESPRIT, 50, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_mesprit
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _06E8
	compare VAR_TEMP_x4002, 5
	goto_if_eq _06E8
	releaseall
	end

scr_seq_D51R0201_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AZELF, 6
	release obj_D51R0201_follower_mon_azelf
	scrcmd_523 obj_D51R0201_follower_mon_azelf, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_azelf
	npc_msg 36
	closemsg
	wait_cry
	wild_battle SPECIES_AZELF, 50, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_azelf
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _06F7
	compare VAR_TEMP_x4002, 5
	goto_if_eq _06F7
	releaseall
	end

scr_seq_D51R0201_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_DIALGA, 6
	release obj_D51R0201_follower_mon_dialga
	scrcmd_523 obj_D51R0201_follower_mon_dialga, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_dialga
	npc_msg 37
	closemsg
	wait_cry
	wild_battle SPECIES_DIALGA, 70, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_dialga
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0706
	compare VAR_TEMP_x4002, 4
	call_if_eq _0715
	compare VAR_TEMP_x4002, 5
	goto_if_eq _0706
	releaseall
	end

scr_seq_D51R0201_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PALKIA, 6
	release obj_D51R0201_follower_mon_palkia
	scrcmd_523 obj_D51R0201_follower_mon_palkia, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_palkia
	npc_msg 38
	closemsg
	wait_cry
	wild_battle SPECIES_PALKIA, 70, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_palkia
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _072C
	compare VAR_TEMP_x4002, 4
	call_if_eq _073B
	compare VAR_TEMP_x4002, 5
	goto_if_eq _072C
	releaseall
	end

scr_seq_D51R0201_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GIRATINA, 6
	release obj_D51R0201_follower_mon_giratina
	scrcmd_523 obj_D51R0201_follower_mon_giratina, 2, 90, 2, 0
	lock obj_D51R0201_follower_mon_giratina
	npc_msg 39
	closemsg
	wait_cry
	wild_battle SPECIES_GIRATINA, 70, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06D3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_giratina
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0752
	compare VAR_TEMP_x4002, 4
	call_if_eq _0761
	compare VAR_TEMP_x4002, 5
	goto_if_eq _0752
	releaseall
	end

scr_seq_D51R0201_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	apply_movement obj_player, _1314
	wait_movement
	scrcmd_600
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	goto_if_unset 16334, _0778
	goto_if_unset 16333, _0778
	goto_if_unset 16332, _0778
	goto_if_unset 16326, _0778
	goto_if_unset 16325, _0778
	goto_if_unset 16324, _0778
	goto_if_set 16323, _078F
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B3A
	scrcmd_606
	releaseall
	end

scr_seq_D51R0201_015:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0B9D
	end

_05E0:
	mystry_stage_gymmick_init
	end

_05E4:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05EF:
	compare VAR_TEMP_x4004, 1
	goto_if_eq _0BAB
	npc_msg 0
	closemsg
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 2
	goto_if_ge _0BAB
	apply_movement obj_D51R0201_champion, _131A
	wait_movement
	npc_msg 6
	closemsg
	goto _0BBC

_0627:
	npc_msg 13
	scrcmd_820 1
	setvar VAR_TEMP_x4009, 483
	goto _0BE7

_0639:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0644:
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0C0F
	nop_var_490 VAR_TEMP_x4008
	setvar VAR_TEMP_x400A, 2
	return

_0661:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_066C:
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0677:
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0682:
	scrcmd_820 1
	setvar VAR_TEMP_x4009, 483
	goto _0BE7

_0691:
	npc_msg 14
	scrcmd_820 2
	setvar VAR_TEMP_x4009, 484
	goto _0BE7

_06A3:
	scrcmd_820 2
	setvar VAR_TEMP_x4009, 484
	goto _0BE7

_06B2:
	npc_msg 15
	scrcmd_820 3
	setvar VAR_TEMP_x4009, 487
	goto _0BE7

_06C4:
	scrcmd_820 3
	setvar VAR_TEMP_x4009, 487
	goto _0BE7

_06D3:
	white_out
	releaseall
	end

_06D9:
	npc_msg 52
	wait_button_or_walk_away
	closemsg
	clearflag 16334
	releaseall
	end

_06E8:
	npc_msg 51
	wait_button_or_walk_away
	closemsg
	clearflag 16333
	releaseall
	end

_06F7:
	npc_msg 50
	wait_button_or_walk_away
	closemsg
	clearflag 16332
	releaseall
	end

_0706:
	npc_msg 45
	wait_button_or_walk_away
	closemsg
	clearflag 16326
	releaseall
	return

_0715:
	npc_msg 44
	giveitem_no_check ITEM_ADAMANT_ORB, 1
	closemsg
	return

_072C:
	npc_msg 46
	wait_button_or_walk_away
	closemsg
	clearflag 16325
	releaseall
	return

_073B:
	npc_msg 48
	giveitem_no_check ITEM_LUSTROUS_ORB, 1
	closemsg
	return

_0752:
	npc_msg 47
	wait_button_or_walk_away
	closemsg
	clearflag 16324
	releaseall
	return

_0761:
	npc_msg 49
	giveitem_no_check ITEM_GRISEOUS_ORB, 1
	closemsg
	return

_0778:
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	stop_se SEQ_SE_GS_AJITO_SIREN
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_078F:
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 53
	closemsg
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	stop_se SEQ_SE_GS_AJITO_SIREN
	hasitem ITEM_FLAME_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_SPLASH_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_ZAP_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_MEADOW_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_ICICLE_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_FIST_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_TOXIC_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_EARTH_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_SKY_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_MIND_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_INSECT_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_STONE_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_SPOOKY_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_DRACO_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_DREAD_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	hasitem ITEM_IRON_PLATE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C4E
	count_national_dex_owned VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 720
	goto_if_eq _0C5B
	goto_if_unset 16328, _0C68
	goto_if_unset 16304, _0C68
	goto_if_unset 16302, _0C68
	goto_if_unset 16268, _0C68
	goto_if_unset 16320, _0C68
	goto_if_unset 16318, _0C68
	npc_msg 56
	buffer_players_name 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C75
	play_se SEQ_SE_GS_GONDORA_IDOU
	screen_shake 3, 3, 25, 5
	setvar 24881, 2
	fade_out_bgm 0, 30
	play_se SEQ_SE_GS_TAMASYUTUGEN
	unown_circle
	stop_se SEQ_SE_GS_DOWSING_LOOP
	cinematic 2
	wait 150, VAR_SPECIAL_RESULT
	apply_movement obj_player, _1320
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 55
	closemsg
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	play_cry SPECIES_ARCEUS, 6
	move_person_facing obj_D51R0201_follower_mon_arceus_normal, 16, 1, 12, DIR_SOUTH
	apply_movement obj_D51R0201_follower_mon_arceus_normal, _132A
	lockall
	wait_cry
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _1330
	wait_movement
	release obj_D51R0201_follower_mon_arceus_normal
	scrcmd_523 obj_D51R0201_follower_mon_arceus_normal, 8, 90, 3, 0
	play_cry SPECIES_ARCEUS, 6
	wait_cry
	apply_movement obj_D51R0201_follower_mon_arceus_normal, _1336
	apply_movement 241, _133C
	wait_movement
	play_cry SPECIES_ARCEUS, 6
	scrcmd_523 obj_D51R0201_follower_mon_arceus_normal, 8, 90, 3, 0
	wait_cry
	apply_movement obj_D51R0201_follower_mon_arceus_normal, _1342
	apply_movement 241, _1348
	wait_movement
	play_cry SPECIES_ARCEUS, 6
	scrcmd_523 obj_D51R0201_follower_mon_arceus_normal, 8, 90, 3, 0
	wait_cry
	apply_movement obj_D51R0201_follower_mon_arceus_normal, _1342
	apply_movement 241, _133C
	wait_movement
	scrcmd_103
	lock obj_D51R0201_follower_mon_arceus_normal
	play_cry SPECIES_ARCEUS, 0
	npc_msg 57
	wait_cry
	wild_battle SPECIES_ARCEUS, 100, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0C7B
	closemsg
	stop_bgm 0
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 4
	call_if_eq _0C81
	play_cry SPECIES_ARCEUS, 6
	wait_cry
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_ARCEUS, 5
	wait_cry
	hide_person obj_D51R0201_follower_mon_arceus_normal
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 58
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _134E
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 63
	npc_msg 64
	wait_button_or_walk_away
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hof_credits 1
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0B3A:
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	stop_se SEQ_SE_GS_AJITO_SIREN
	npc_msg 42
	wait_button_or_walk_away
	closemsg
	fade_screen 11, 5, 0, RGB_BLACK
	wait_fade
	clearflag 16326
	clearflag 16325
	clearflag 16324
	show_person obj_D51R0201_follower_mon_dialga
	show_person obj_D51R0201_follower_mon_palkia
	show_person obj_D51R0201_follower_mon_giratina
	play_cry SPECIES_DIALGA, 0
	wait_cry
	play_cry SPECIES_PALKIA, 0
	wait_cry
	play_cry SPECIES_GIRATINA, 0
	wait_cry
	setflag 16323
	fade_screen 11, 5, 1, RGB_BLACK
	wait_fade
	scrcmd_606
	releaseall
	end

_0B9D:
	setflag 16326
	hide_person obj_D51R0201_follower_mon_dialga
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0BAB:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	setvar VAR_TEMP_x4004, 1
	releaseall
	end

_0BBC:
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 8
	setvar VAR_UNK_4104, 1
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0D3F
	apply_movement obj_D51R0201_champion, _1354
	goto _0D5A

_0BE7:
	nop_var_490 VAR_TEMP_x4009
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D86
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0DA1
	end

_0C0F:
	get_party_lead_alive VAR_TEMP_x4000
	compare VAR_UNK_4102, 1
	goto_if_ne _0DAA
	follower_poke_is_event_trigger 1, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0DE5
	follower_poke_is_event_trigger 2, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0DED
	goto _0DF5

_0C4E:
	npc_msg 54
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_0C5B:
	npc_msg 65
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_0C68:
	npc_msg 65
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

_0C75:
	scrcmd_606
	releaseall
	end

_0C7B:
	white_out
	releaseall
	end

_0C81:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D51R0201_follower_mon_arceus_normal
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 59
	closemsg
	setflag 16269
	play_se SEQ_SE_GS_GONDORA_IDOU
	screen_shake 3, 3, 15, 5
	apply_movement obj_player, _135A
	npc_msg 60
	wait_movement
	closemsg
	screen_shake 3, 3, 15, 5
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	play_se SEQ_SE_GS_GONDORA_IDOU
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _1360
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 61
	closemsg
	play_se SEQ_SE_PL_BOWABOWA
	wait_se SEQ_SE_PL_BOWABOWA
	npc_msg 62
	play_fanfare SEQ_ME_HYOUKA6
	wait_fanfare
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hof_credits 1
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0D3F:
	compare VAR_TEMP_x4002, 3
	goto_if_ne _0DFD
	apply_movement obj_D51R0201_champion, _1366
	goto _0D5A

_0D5A:
	wait_movement
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4002, 2
	goto_if_ne _0E31
	apply_movement obj_D51R0201_champion, _136C
	goto _0E5E

_0D86:
	closemsg
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ne _0E83
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 14
	goto _0EB5

_0DA1:
	closemsg
	scrcmd_820 0
	releaseall
	end

_0DAA:
	compare VAR_UNK_4102, 2
	goto_if_ne _0EE1
	follower_poke_is_event_trigger 2, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0DE5
	follower_poke_is_event_trigger 1, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0DED
	goto _0DF5

_0DE5:
	setvar VAR_TEMP_x400A, 1
	return

_0DED:
	setvar VAR_TEMP_x400A, 3
	return

_0DF5:
	setvar VAR_TEMP_x400A, 0
	return

_0DFD:
	apply_movement obj_D51R0201_champion, _1376
	wait_movement
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4002, 2
	goto_if_ne _0E31
	apply_movement obj_D51R0201_champion, _136C
	goto _0E5E

_0E31:
	apply_movement obj_D51R0201_champion, _137C
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0EE7
	apply_movement obj_player, _1386
	apply_movement obj_D51R0201_champion, _1394
	goto _0F0A

_0E5E:
	wait_movement
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0EE7
	apply_movement obj_player, _1386
	apply_movement obj_D51R0201_champion, _1394
	goto _0F0A

_0E83:
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 9
	scrcmd_820 0
	setvar VAR_UNK_4104, 0
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4009, 483
	goto_if_ne _0F74
	goto _0F87

_0EB5:
	scrcmd_820 0
	setvar VAR_UNK_4104, 0
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4009, 483
	goto_if_ne _0F74
	goto _0F87

_0EE1:
	goto _0DF5

_0EE7:
	compare VAR_TEMP_x4002, 3
	goto_if_ne _0FAA
	apply_movement obj_player, _13AE
	apply_movement obj_D51R0201_champion, _1394
	goto _0F0A

_0F0A:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_D51R0201_champion, _13C0
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_D51R0201_champion, _13CE
	wait_movement
	npc_msg 8
	closemsg
	apply_movement obj_D51R0201_champion, _13E0
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D51R0201_champion, _13FA
	wait_movement
	npc_msg 10
	closemsg
	apply_movement obj_D51R0201_champion, _1404
	apply_movement obj_player, _1416
	wait_movement
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0F74:
	compare VAR_TEMP_x4009, 484
	goto_if_ne _1024
	goto _102A

_0F87:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _104D
	apply_movement obj_partner_poke, _1428
	apply_movement 241, _1436
	goto _1070

_0FAA:
	apply_movement obj_player, _1440
	apply_movement obj_D51R0201_champion, _1452
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_D51R0201_champion, _13C0
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_D51R0201_champion, _13CE
	wait_movement
	npc_msg 8
	closemsg
	apply_movement obj_D51R0201_champion, _13E0
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D51R0201_champion, _13FA
	wait_movement
	npc_msg 10
	closemsg
	apply_movement obj_D51R0201_champion, _1404
	apply_movement obj_player, _1416
	wait_movement
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_1024:
	goto _1078

_102A:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _109B
	apply_movement obj_partner_poke, _146C
	apply_movement 241, _147A
	goto _10BE

_104D:
	compare VAR_TEMP_x4002, 3
	goto_if_ne _10C6
	apply_movement obj_partner_poke, _1484
	apply_movement 241, _1436
	goto _1070

_1070:
	wait_movement
	goto _10E9

_1078:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _113F
	apply_movement obj_partner_poke, _1496
	apply_movement 241, _14A0
	goto _1162

_109B:
	compare VAR_TEMP_x4002, 3
	goto_if_ne _116A
	apply_movement obj_partner_poke, _14A6
	apply_movement 241, _147A
	goto _10BE

_10BE:
	wait_movement
	goto _10E9

_10C6:
	compare VAR_TEMP_x4002, 2
	goto_if_ne _118D
	apply_movement obj_partner_poke, _14B4
	apply_movement 241, _1436
	goto _1070

_10E9:
	fade_out_bgm 0, 30
	play_se SEQ_SE_GS_TAMASYUTUGEN
	unown_circle
	stop_se SEQ_SE_GS_DOWSING_LOOP
	cinematic 2
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 14
	goto_if_eq _11A5
	release obj_D51R0201_champion
	move_person_facing obj_D51R0201_champion, 16, 1, 28, DIR_NORTH
	wait 5, VAR_SPECIAL_RESULT
	lock obj_D51R0201_champion
	compare VAR_TEMP_x4009, 483
	goto_if_ne _11C0
	apply_movement obj_player, _14C2
	goto _11DB

_113F:
	compare VAR_TEMP_x4002, 3
	goto_if_ne _1225
	apply_movement obj_partner_poke, _14CC
	apply_movement 241, _14A0
	goto _1162

_1162:
	wait_movement
	goto _10E9

_116A:
	compare VAR_TEMP_x4002, 2
	goto_if_ne _1248
	apply_movement obj_partner_poke, _14DA
	apply_movement 241, _147A
	goto _10BE

_118D:
	apply_movement obj_partner_poke, _14EC
	apply_movement 241, _1436
	wait_movement
	goto _10E9

_11A5:
	compare VAR_TEMP_x4009, 483
	goto_if_ne _11C0
	apply_movement obj_player, _14C2
	goto _11DB

_11C0:
	compare VAR_TEMP_x4009, 484
	goto_if_ne _1260
	apply_movement obj_player, _14FA
	goto _11DB

_11DB:
	wait 150, VAR_SPECIAL_RESULT
	fade_screen 6, 30, 1, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	nop_var_490 VAR_SPECIAL_x8004
	nop_var_490 VAR_SPECIAL_x8005
	apply_movement 241, _1504
	wait_movement
	play_se SEQ_SE_GS_TAMASYUTUGEN
	compare VAR_TEMP_x4009, 483
	goto_if_ne _12B5
	scrcmd_817 0
	goto _12CB

_1225:
	compare VAR_TEMP_x4002, 2
	goto_if_ne _12DF
	apply_movement obj_partner_poke, _150A
	apply_movement 241, _14A0
	goto _1162

_1248:
	apply_movement obj_partner_poke, _1518
	apply_movement 241, _147A
	wait_movement
	goto _10E9

_1260:
	buffer_players_name 0
	apply_movement obj_player, _1526
	wait 150, VAR_SPECIAL_RESULT
	fade_screen 6, 30, 1, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	nop_var_490 VAR_SPECIAL_x8004
	nop_var_490 VAR_SPECIAL_x8005
	apply_movement 241, _1504
	wait_movement
	play_se SEQ_SE_GS_TAMASYUTUGEN
	compare VAR_TEMP_x4009, 483
	goto_if_ne _12B5
	scrcmd_817 0
	goto _12CB

_12B5:
	compare VAR_TEMP_x4009, 484
	goto_if_ne _12F7
	scrcmd_817 1
	goto _12CB

_12CB:
	stop_se SEQ_SE_GS_TAMASYUTUGEN
	apply_movement obj_player, _1530
	wait_movement
	scrcmd_819
	wait 2, 94

_12DF:
	apply_movement obj_partner_poke, _153E
	get_save_file_state 599
	snop
	apply_movement 241, _14A0
	wait_movement
	goto _10E9

_12F7:
	scrcmd_817 2
	stop_se SEQ_SE_GS_TAMASYUTUGEN
	apply_movement obj_player, _1530
	wait_movement
	scrcmd_819
	wait 2, 13
	end


	.align 4
_130E:

	step 13, 2
	step_end
	.align 4
_1314:

	step 1, 1
	step_end
	.align 4
_131A:

	step 32, 1
	step_end
	.align 4
_1320:

	step 17, 5
	step 0, 1
	step_end
	.align 4
_132A:

	step 33, 1
	step_end
	.align 4
_1330:

	step 76, 6
	step_end
	.align 4
_1336:

	step 13, 2
	step_end
	.align 4
_133C:

	step 77, 2
	step_end
	.align 4
_1342:

	step 13, 1
	step_end
	.align 4
_1348:

	step 77, 2
	step_end
	.align 4
_134E:

	step 77, 12
	step_end
	.align 4
_1354:

	step 33, 1
	step_end
	.align 4
_135A:

	step 17, 13
	step_end
	.align 4
_1360:

	step 77, 15
	step_end
	.align 4
_1366:

	step 34, 1
	step_end
	.align 4
_136C:

	step 14, 1
	step 35, 1
	step_end
	.align 4
_1376:

	step 35, 1
	step_end
	.align 4
_137C:

	step 15, 1
	step 34, 1
	step_end
	.align 4
_1386:

	step 12, 6
	step 65, 1
	step 35, 1
	step_end
	.align 4
_1394:

	step 65, 1
	step 14, 1
	step 12, 3
	step 15, 1
	step 12, 2
	step 34, 1
	step_end
	.align 4
_13AE:

	step 15, 1
	step 12, 5
	step 65, 1
	step 35, 1
	step_end
	.align 4
_13C0:

	step 15, 3
	step 13, 1
	step 34, 1
	step_end
	.align 4
_13CE:

	step 13, 1
	step 14, 8
	step 12, 1
	step 35, 1
	step_end
	.align 4
_13E0:

	step 12, 3
	step 15, 2
	step 12, 3
	step 15, 2
	step 12, 1
	step 33, 1
	step_end
	.align 4
_13FA:

	step 13, 3
	step 33, 1
	step_end
	.align 4
_1404:

	step 15, 1
	step 13, 6
	step 14, 1
	step 32, 1
	step_end
	.align 4
_1416:

	step 63, 2
	step 35, 1
	step 63, 3
	step 35, 1
	step_end
	.align 4
_1428:

	step 11, 4
	step 8, 4
	step 33, 1
	step_end
	.align 4
_1436:

	step 11, 4
	step 8, 3
	step_end
	.align 4
_1440:

	step 14, 1
	step 12, 5
	step 65, 1
	step 35, 1
	step_end
	.align 4
_1452:

	step 65, 1
	step 15, 1
	step 12, 3
	step 15, 1
	step 12, 2
	step 34, 1
	step_end
	.align 4
_146C:

	step 10, 4
	step 8, 4
	step 33, 1
	step_end
	.align 4
_147A:

	step 10, 4
	step 8, 3
	step_end
	.align 4
_1484:

	step 8, 2
	step 11, 5
	step 8, 1
	step 33, 1
	step_end
	.align 4
_1496:

	step 9, 3
	step 33, 1
	step_end
	.align 4
_14A0:

	step 9, 4
	step_end
	.align 4
_14A6:

	step 10, 3
	step 8, 3
	step 33, 1
	step_end
	.align 4
_14B4:

	step 11, 3
	step 8, 3
	step 33, 1
	step_end
	.align 4
_14C2:

	step 23, 4
	step 0, 1
	step_end
	.align 4
_14CC:

	step 9, 4
	step 11, 1
	step 33, 1
	step_end
	.align 4
_14DA:

	step 8, 2
	step 10, 5
	step 8, 1
	step 33, 1
	step_end
	.align 4
_14EC:

	step 11, 4
	step 8, 2
	step 33, 1
	step_end
	.align 4
_14FA:

	step 22, 4
	step 0, 1
	step_end
	.align 4
_1504:

	step 12, 3
	step_end
	.align 4
_150A:

	step 9, 4
	step 10, 1
	step 33, 1
	step_end
	.align 4
_1518:

	step 10, 4
	step 8, 2
	step 33, 1
	step_end
	.align 4
_1526:

	step 13, 7
	step 0, 1
	step_end
	.align 4
_1530:

	step 63, 1
	step 75, 1
	step 63, 1
	step_end
	.align 4
_153E:

	step 11, 1
	step 9, 5
	step 10, 1
	step 33, 1
	step_end
	.align 4


.close
