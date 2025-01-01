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

.include "armips/scr_seq/event_D35R0103.inc"


// text archive to grab from: 113.txt

.create "build/a012/2_090", 0


scrdef scr_seq_D35R0103_000
scrdef scr_seq_D35R0103_001
scrdef scr_seq_D35R0103_002
scrdef scr_seq_D35R0103_003
scrdef scr_seq_D35R0103_004
scrdef scr_seq_D35R0103_005
scrdef scr_seq_D35R0103_006
scrdef scr_seq_D35R0103_007
scrdef scr_seq_D35R0103_008
scrdef scr_seq_D35R0103_009
scrdef scr_seq_D35R0103_010
scrdef scr_seq_D35R0103_011
scrdef scr_seq_D35R0103_012
scrdef scr_seq_D35R0103_013
scrdef scr_seq_D35R0103_014
scrdef scr_seq_D35R0103_015
scrdef_end

scr_seq_D35R0103_002:
	scrcmd_710
	compare VAR_UNK_40A9, 3
	goto_if_ge _040C
	end

scr_seq_D35R0103_007:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0440
	end

scr_seq_D35R0103_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0BC6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
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
	buffer_players_name 0
	gender_msgbox 1, 2
	closemsg
	apply_movement obj_D35R0103_wataru, _0BD0
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0BD6
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	setvar VAR_UNK_40A9, 1
	end

scr_seq_D35R0103_013:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_chatot, _0BE0
	wait_movement
	npc_msg 24
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0103_follower_mon_chatot, _0BE6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 5
	hide_person obj_D35R0103_follower_mon_chatot
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	releaseall
	end

scr_seq_D35R0103_014:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_chatot_2, _0BF4
	wait_movement
	npc_msg 25
	closemsg
	apply_movement obj_D35R0103_follower_mon_chatot_2, _0BFA
	wait_movement
	setvar VAR_UNK_40AC, 7
	hide_person obj_D35R0103_follower_mon_chatot_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	show_person obj_D35R0103_follower_mon_chatot_3
	releaseall
	end

scr_seq_D35R0103_011:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_chatot_3, _0C08
	wait_movement
	npc_msg 26
	closemsg
	npc_msg 27
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0C0E
	apply_movement obj_D35R0103_babyboy1_9_2, _0C14
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 24
	goto_if_ne _0475
	apply_movement obj_D35R0103_follower_mon_chatot_3, _0C1E
	goto _04A3

scr_seq_D35R0103_012:
	goto _04C9

scr_seq_D35R0103_001:
	compare VAR_UNK_40AC, 8
	goto_if_ge _0518
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_0D3, _051A
	buffer_players_name 0
	npc_msg 21
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0C0E
	apply_movement obj_D35R0103_babyboy1_9_2, _0C14
	wait_movement
	releaseall
	end

scr_seq_D35R0103_003:
	scrcmd_609
	lockall
	npc_msg 3
	apply_movement obj_player, _0C3C
	wait_movement
	closemsg
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	show_person obj_D35R0103_rkanbuw
	show_person obj_D35R0103_rocketm_4
	move_person_facing obj_D35R0103_rkanbuw, 32, 1, 30, DIR_EAST
	move_person_facing obj_D35R0103_rocketm_4, 30, 1, 30, DIR_NORTH
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 30
	goto_if_ne _0525
	apply_movement obj_player, _0C42
	goto _0717

scr_seq_D35R0103_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 1
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ELECTRODE, 37, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0901
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0907
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0907
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0907
	goto _090B

scr_seq_D35R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 2
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ELECTRODE, 37, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0901
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0936
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0936
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0936
	goto _090B

scr_seq_D35R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 3
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ELECTRODE, 37, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0901
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _093A
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _093A
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _093A
	goto _090B

scr_seq_D35R0103_008:
	scrcmd_609
	lockall
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0C4C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_009:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_wataru, _0C52
	wait_movement
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0C4C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_010:
	releaseall
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _093E
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _093E
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _093E
	npc_msg 23
	closemsg
	releaseall
	end

scr_seq_D35R0103_015:
	buffer_players_name 0
	end

_040C:
	move_person_facing obj_D35R0103_babyboy1_9, 29, 0, 22, DIR_NORTH
	move_person_facing obj_D35R0103_babyboy1_9_2, 29, 0, 22, DIR_NORTH
	compare VAR_UNK_40AC, 10
	goto_if_ge _0947
	compare VAR_UNK_40A9, 4
	goto_if_ge _0949
	end

_0440:
	static_wild_won_or_caught VAR_TEMP_x4000, 1
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0976
	compare VAR_TEMP_x400A, 1
	goto_if_ne _097C
	setflag FLAG_UNK_96B
	hide_person obj_D35R0103_follower_mon_static_electrode
	hide_person obj_D35R0103_follower_mon_static_electrode_4
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_1_AND_4
	goto _0976

_0475:
	apply_movement obj_D35R0103_follower_mon_chatot_3, _0C5C
	wait_movement
	setvar VAR_UNK_40AC, 8
	hide_person obj_D35R0103_follower_mon_chatot_3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	setvar VAR_UNK_40A9, 3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_UNK_0D3
	releaseall
	end

_04A3:
	wait_movement
	setvar VAR_UNK_40AC, 8
	hide_person obj_D35R0103_follower_mon_chatot_3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	setvar VAR_UNK_40A9, 3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_UNK_0D3
	releaseall
	end

_04C9:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_chatot_3, _0C08
	wait_movement
	npc_msg 26
	closemsg
	npc_msg 27
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0C0E
	apply_movement obj_D35R0103_babyboy1_9_2, _0C14
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 24
	goto_if_ne _0475
	apply_movement obj_D35R0103_follower_mon_chatot_3, _0C1E
	goto _04A3

_0518:
	end

_051A:
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0525:
	apply_movement obj_player, _0C6E
	apply_movement obj_D35R0103_rkanbuw, _0C80
	apply_movement obj_D35R0103_rocketm_4, _0C8E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_rkanbuw, _0C98
	wait_movement
	npc_msg 4
	closemsg
	clearflag FLAG_UNK_1E5
	show_person obj_D35R0103_wataru
	show_person obj_D35R0103_follower_mon_static_dragonite
	move_person_facing obj_D35R0103_wataru, 20, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 19, 1, 25, DIR_NORTH
	apply_movement obj_D35R0103_wataru, _0C9E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CA4
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CAE
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_rkanbuw, _0C98
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0CB4
	apply_movement obj_D35R0103_rocketm_4, _0CBA
	wait_movement
	multi_battle TRAINER_PKMN_TRAINER_LANCE_LANCE, TRAINER_EXECUTIVE_ARIANA_ARIANA_2, TRAINER_TEAM_ROCKET_GRUNT_25, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _099F
	npc_msg 8
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_person_facing obj_D35R0103_wataru, 28, 1, 24, DIR_SOUTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 27, 1, 24, DIR_EAST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CC0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D35R0103_rkanbuw
	hide_person obj_D35R0103_rocketm_4
	hide_person obj_D35R0103_rocketm_2
	hide_person obj_D35R0103_rocketm_3
	hide_person obj_D35R0103_rocketm
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_HIDE_MAHOGANY_SHOP_SHADY_SALESMAN
	setflag FLAG_UNK_1E8
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement obj_D35R0103_wataru, _0CD2
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CD8
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CE2
	apply_movement obj_D35R0103_wataru, _0CEC
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D16
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0D34
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D42
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0D4C
	apply_movement obj_D35R0103_wataru, _0D5E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D64
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	releaseall
	setvar VAR_UNK_40AC, 9
	setvar VAR_UNK_40A9, 4
	setflag FLAG_UNK_998
	end

_0717:
	apply_movement obj_D35R0103_rkanbuw, _0C80
	apply_movement obj_D35R0103_rocketm_4, _0C8E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_rkanbuw, _0C98
	wait_movement
	npc_msg 4
	closemsg
	clearflag FLAG_UNK_1E5
	show_person obj_D35R0103_wataru
	show_person obj_D35R0103_follower_mon_static_dragonite
	move_person_facing obj_D35R0103_wataru, 20, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 19, 1, 25, DIR_NORTH
	apply_movement obj_D35R0103_wataru, _0C9E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CA4
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CAE
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_rkanbuw, _0C98
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0CB4
	apply_movement obj_D35R0103_rocketm_4, _0CBA
	wait_movement
	multi_battle TRAINER_PKMN_TRAINER_LANCE_LANCE, TRAINER_EXECUTIVE_ARIANA_ARIANA_2, TRAINER_TEAM_ROCKET_GRUNT_25, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _099F
	npc_msg 8
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_person_facing obj_D35R0103_wataru, 28, 1, 24, DIR_SOUTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 27, 1, 24, DIR_EAST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CC0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D35R0103_rkanbuw
	hide_person obj_D35R0103_rocketm_4
	hide_person obj_D35R0103_rocketm_2
	hide_person obj_D35R0103_rocketm_3
	hide_person obj_D35R0103_rocketm
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_HIDE_MAHOGANY_SHOP_SHADY_SALESMAN
	setflag FLAG_UNK_1E8
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement obj_D35R0103_wataru, _0CD2
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CD8
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CE2
	apply_movement obj_D35R0103_wataru, _0CEC
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D16
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0D34
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D42
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0D4C
	apply_movement obj_D35R0103_wataru, _0D5E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D64
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	releaseall
	setvar VAR_UNK_40AC, 9
	setvar VAR_UNK_40A9, 4
	setflag FLAG_UNK_998
	end

_0901:
	white_out
	releaseall
	end

_0907:
	releaseall
	end

_090B:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 16
	goto_if_ne _09AD
	apply_movement obj_player, _0D72
	goto _09C8

_0936:
	releaseall
	end

_093A:
	releaseall
	end

_093E:
	npc_msg 22
	closemsg
	releaseall
	end

_0947:
	end

_0949:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0947
	setvar VAR_TEMP_x4007, 77
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	end

_0976:
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_097C:
	compare VAR_TEMP_x400A, 2
	goto_if_ne _0AB8
	setflag FLAG_UNK_96C
	hide_person obj_D35R0103_follower_mon_static_electrode_2
	hide_person obj_D35R0103_follower_mon_static_electrode_5
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_2_AND_5
	goto _0976

_099F:
	white_out
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_UNK_1E5
	releaseall
	end

_09AD:
	compare VAR_TEMP_x4001, 14
	goto_if_ne _0ACE
	apply_movement obj_player, _0D7C
	goto _09C8

_09C8:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _0D86
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D8C
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _0D96
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _0D9C
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DA6
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	stop_se SEQ_SE_GS_N_MOTER
	setflag FLAG_RED_GYARADOS_MEET
	clearflag FLAG_HIDE_ROUTE_43_GATE_GUARD
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	setflag FLAG_UNK_1F9
	setvar VAR_UNK_40AC, 10
	setvar VAR_UNK_410F, 1
	scrcmd_530 0, 1
	setvar VAR_ROCKET_TRAP_KOFFING_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_1, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_2, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_2, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_3, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_2, 1
	setvar VAR_ROCKET_TRAP_KOFFING_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_4, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_5, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_6, 1
	setvar VAR_ROCKET_TRAP_KOFFING_5, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_5, 1
	end

_0AB8:
	setflag FLAG_UNK_96D
	hide_person obj_D35R0103_follower_mon_static_electrode_3
	hide_person obj_D35R0103_follower_mon_static_electrode_6
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_3_AND_6
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0ACE:
	apply_movement obj_player, _0DB8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _0D86
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D8C
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _0D96
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _0D9C
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DA6
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	stop_se SEQ_SE_GS_N_MOTER
	setflag FLAG_RED_GYARADOS_MEET
	clearflag FLAG_HIDE_ROUTE_43_GATE_GUARD
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	setflag FLAG_UNK_1F9
	setvar VAR_UNK_40AC, 10
	setvar VAR_UNK_410F, 1
	scrcmd_530 0, 1
	setvar VAR_ROCKET_TRAP_KOFFING_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_1, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_2, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_2, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_3, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_2, 1
	setvar VAR_ROCKET_TRAP_KOFFING_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_4, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_5, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_6, 1
	setvar VAR_ROCKET_TRAP_KOFFING_5, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_5, 1
	end

	.align 4
_0BC6:

	step 15, 5
	step 12, 4
	step_end
	.align 4
_0BD0:

	step 15, 11
	step_end
	.align 4
_0BD6:

	step 61, 1
	step 15, 11
	step_end
	.align 4
_0BE0:

	step 50, 2
	step_end
	.align 4
_0BE6:

	step 3, 1
	step 51, 1
	step 19, 5
	step_end
	.align 4
_0BF4:

	step 51, 2
	step_end
	.align 4
_0BFA:

	step 2, 1
	step 50, 1
	step 18, 10
	step_end
	.align 4
_0C08:

	step 48, 2
	step_end
	.align 4
_0C0E:

	step 14, 2
	step_end
	.align 4
_0C14:

	step 63, 1
	step 14, 1
	step_end
	.align 4
_0C1E:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 2
	step 50, 2
	step 17, 1
	step 18, 10
	step_end
	.align 4
_0C3C:

	step 75, 1
	step_end
	.align 4
_0C42:

	step 13, 5
	step 35, 1
	step_end
	.align 4
_0C4C:

	step 14, 1
	step_end
	.align 4
_0C52:

	step 75, 1
	step 34, 1
	step_end
	.align 4
_0C5C:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 12
	step_end
	.align 4
_0C6E:

	step 13, 2
	step 14, 1
	step 13, 3
	step 35, 1
	step_end
	.align 4
_0C80:

	step 63, 1
	step 16, 6
	step 34, 1
	step_end
	.align 4
_0C8E:

	step 63, 2
	step 16, 3
	step_end
	.align 4
_0C98:

	step 34, 1
	step_end
	.align 4
_0C9E:

	step 19, 10
	step_end
	.align 4
_0CA4:

	step 62, 1
	step 19, 10
	step_end
	.align 4
_0CAE:

	step 51, 1
	step_end
	.align 4
_0CB4:

	step 18, 1
	step_end
	.align 4
_0CBA:

	step 16, 1
	step_end
	.align 4
_0CC0:

	step 16, 2
	step 19, 1
	step 17, 2
	step 2, 1
	step_end
	.align 4
_0CD2:

	step 15, 2
	step_end
	.align 4
_0CD8:

	step 61, 1
	step 15, 2
	step_end
	.align 4
_0CE2:

	step 63, 4
	step 12, 5
	step_end
	.align 4
_0CEC:

	step 12, 6
	step 63, 2
	step 14, 2
	step 32, 1
	step 63, 2
	step 35, 1
	step 15, 5
	step 32, 1
	step 63, 2
	step 35, 1
	step_end
	.align 4
_0D16:

	step 61, 1
	step 15, 1
	step 12, 5
	step 15, 8
	step 12, 1
	step 63, 4
	step 14, 4
	step_end
	.align 4
_0D34:

	step 14, 2
	step 33, 1
	step 33, 1
	step_end
	.align 4
_0D42:

	step 62, 1
	step 14, 2
	step_end
	.align 4
_0D4C:

	step 61, 1
	step 63, 1
	step 12, 1
	step 14, 5
	step_end
	.align 4
_0D5E:

	step 15, 6
	step_end
	.align 4
_0D64:

	step 61, 1
	step 14, 1
	step 15, 5
	step_end
	.align 4
_0D72:

	step 13, 2
	step 15, 10
	step_end
	.align 4
_0D7C:

	step 13, 4
	step 15, 10
	step_end
	.align 4
_0D86:

	step 14, 8
	step_end
	.align 4
_0D8C:

	step 61, 1
	step 14, 8
	step_end
	.align 4
_0D96:

	step 33, 1
	step_end
	.align 4
_0D9C:

	step 17, 6
	step 18, 12
	step_end
	.align 4
_0DA6:

	step 62, 1
	step 18, 1
	step 17, 6
	step 18, 12
	step_end
	.align 4
_0DB8:

	step 13, 6
	step 15, 10
	step_end
	.align 4


.close
