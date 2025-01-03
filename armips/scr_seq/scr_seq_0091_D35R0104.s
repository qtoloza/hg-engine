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

.include "armips/scr_seq/event_D35R0104.inc"


// text archive to grab from: 114.txt

.create "build/a012/2_091", 0


scrdef scr_seq_D35R0104_000
scrdef scr_seq_D35R0104_001
scrdef scr_seq_D35R0104_002
scrdef scr_seq_D35R0104_003
scrdef scr_seq_D35R0104_004
scrdef scr_seq_D35R0104_005
scrdef scr_seq_D35R0104_006
scrdef scr_seq_D35R0104_007
scrdef scr_seq_D35R0104_008
scrdef_end

scr_seq_D35R0104_006:
	goto_if_not_defeated TRAINER_TEAM_ROCKET_F_GRUNT_5, _004F
	goto_if_not_defeated TRAINER_TEAM_ROCKET_GRUNT_19, _004F
	compare VAR_UNK_40AC, 3
	goto_if_ge _004F
	setvar VAR_UNK_40AC, 2
_004F:
	end

scr_seq_D35R0104_008:
	compare VAR_UNK_40AC, 4
	goto_if_ge _0060
	end

_0060:
	move_person_facing obj_D35R0104_babyboy1_9, 22, 0, 15, DIR_NORTH
	move_person_facing obj_D35R0104_babyboy1_9_2, 22, 0, 15, DIR_NORTH
	end

scr_seq_D35R0104_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _00EC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0104_wataru, _00F4
	wait_movement
	apply_movement obj_D35R0104_wataru, _00FC
	apply_movement obj_D35R0104_follower_mon_static_dragonite, _010C
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_D35R0104_wataru, _0124
	apply_movement obj_D35R0104_follower_mon_static_dragonite, _012C
	wait_movement
	hide_person obj_D35R0104_wataru
	hide_person obj_D35R0104_follower_mon_static_dragonite
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_LANCE
	releaseall
	setvar VAR_UNK_40AC, 1
	end


_00EC:

	step 14, 1
	step_end

_00F4:

	step 75, 1
	step_end

_00FC:

	step 33, 1
	step 13, 3
	step 15, 3
	step_end

_010C:

	step 63, 1
	step 61, 1
	step 14, 1
	step 13, 3
	step 15, 2
	step_end

_0124:

	step 14, 9
	step_end

_012C:

	step 61, 1
	step 15, 1
	step 14, 9
	step_end
scr_seq_D35R0104_007:
	scrcmd_609
	lockall
	apply_movement obj_D35R0104_follower_mon_static_murkrow_2, _018C
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0104_follower_mon_static_murkrow_2, _0194
	apply_movement obj_player, _01A4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 6
	hide_person obj_D35R0104_follower_mon_static_murkrow_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	releaseall
	end


_018C:

	step 51, 2
	step_end

_0194:

	step 1, 1
	step 49, 1
	step 17, 10
	step_end

_01A4:

	step 63, 1
	step 33, 1
	step_end
scr_seq_D35R0104_000:
	simple_npc_msg 2
	end

scr_seq_D35R0104_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _00F4
	wait_movement
	callstd std_play_rival_intro_music
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_RIVAL
	show_person obj_D35R0104_gsrivel
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 17
	goto_if_ne _01FE
	apply_movement obj_D35R0104_gsrivel, _0290
	goto _0221

_01FE:
	compare VAR_TEMP_x4001, 18
	goto_if_ne _0219
	apply_movement obj_D35R0104_gsrivel, _029C
	goto _0221

_0219:
	apply_movement obj_D35R0104_gsrivel, _02A8
_0221:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _02B4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_D35R0104_gsrivel, _02BC
	apply_movement obj_player, _02C4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0104_gsrivel, _02D8
	wait_movement
	callstd std_fade_end_rival_intro_music
	hide_person obj_D35R0104_gsrivel
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_RIVAL
	releaseall
	setvar VAR_UNK_40AC, 3
	end


_0290:

	step 13, 9
	step 15, 2
	step_end

_029C:

	step 13, 10
	step 15, 2
	step_end

_02A8:

	step 13, 11
	step 15, 2
	step_end

_02B4:

	step 14, 2
	step_end

_02BC:

	step 19, 1
	step_end

_02C4:

	step 71, 1
	step 19, 1
	step 55, 1
	step 72, 1
	step_end

_02D8:

	step 40, 1
	step 42, 1
	step 63, 1
	step 14, 2
	step 12, 9
	step_end
scr_seq_D35R0104_003:
	scrcmd_609
	lockall
	apply_movement obj_player, _00F4
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 23
	goto_if_ne _0329
	apply_movement obj_player, _040C
	goto _0331

_0329:
	apply_movement obj_player, _041C
_0331:
	apply_movement obj_D35R0104_sakaki, _0440
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_D35R0104_sakaki, _044C
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0104_sakaki, _0458
	wait_movement
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	show_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_GIOVANNI
	hide_person obj_D35R0104_sakaki
	apply_movement obj_D35R0104_rkanbum2, _047C
	wait_movement
	npc_msg 6
	closemsg
	trainer_battle TRAINER_EXECUTIVE_PETREL_PETREL_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0405
	npc_msg 7
	closemsg
	apply_movement obj_D35R0104_rkanbum2, _04A8
	wait_movement
	hide_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _04E4
	wait_movement
	npc_msg 8
	closemsg
	npc_msg 9
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _04F4
	apply_movement obj_player, _042C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 4
	hide_person obj_D35R0104_follower_mon_static_murkrow
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_1
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	releaseall
	end

_0405:
	white_out
	releaseall
	end


_040C:

	step 12, 5
	step 14, 1
	step 34, 1
	step_end

_041C:

	step 12, 5
	step 14, 2
	step 34, 1
	step_end

_042C:

	step 63, 3
	step 1, 1
	step 63, 3
	step 13, 3
	step_end

_0440:

	step 63, 4
	step 35, 1
	step_end

_044C:

	step 75, 1
	step 63, 2
	step_end

_0458:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end

_047C:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end

_04A8:

	step 71, 1
	step 10, 1
	step 72, 1
	step 63, 1
	step 17, 5
	step 71, 1
	step 52, 1
	step 72, 1
	step 17, 1
	step 19, 3
	step 17, 5
	step 18, 7
	step 16, 12
	step 18, 4
	step_end

_04E4:

	step 13, 3
	step 15, 2
	step 51, 2
	step_end

_04F4:

	step 1, 1
	step 17, 1
	step 19, 2
	step 17, 9
	step 18, 7
	step 16, 13
	step 18, 5
	step_end
scr_seq_D35R0104_004:
	compare VAR_UNK_40AC, 4
	goto_if_ge _055F
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_not_defeated TRAINER_TEAM_ROCKET_F_GRUNT_5, _0561
	goto_if_not_defeated TRAINER_TEAM_ROCKET_GRUNT_19, _0561
	buffer_players_name 0
	npc_msg 12
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0104_babyboy1_9, _056C
	apply_movement obj_D35R0104_babyboy1_9_2, _056C
	wait_movement
	releaseall
_055F:
	end

_0561:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_056C:

	step 14, 3
	step_end
scr_seq_D35R0104_005:
	simple_npc_msg 8
	setflag FLAG_UNK_0D3
	end
	.align 4


.close
