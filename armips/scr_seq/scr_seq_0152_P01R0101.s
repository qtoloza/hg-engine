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

.include "armips/scr_seq/event_P01R0101.inc"


// text archive to grab from: 255.txt

.create "build/a012/2_152", 0


scrdef scr_seq_P01R0101_000
scrdef scr_seq_P01R0101_001
scrdef scr_seq_P01R0101_002
scrdef scr_seq_P01R0101_003
scrdef scr_seq_P01R0101_004
scrdef_end

scr_seq_P01R0101_001:
	scrcmd_445 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 330
	goto_if_eq _01C9
	end

scr_seq_P01R0101_002:
	scrcmd_609
	lockall
	apply_movement obj_P01R0101_ookido, _0324
	wait_movement
	stop_bgm 0
	play_bgm SEQ_GS_OHKIDO
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_P01R0101_ookido, _032A
	apply_movement obj_player, _033C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 9, 10
	closemsg
	apply_movement obj_P01R0101_ookido, _034A
	wait_movement
	nat_dex_flag_action 1, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 11
	enable_mass_outbreaks
	giveitem_no_check ITEM_LOCK_CAPSULE, 1
	npc_msg 12
	closemsg
	apply_movement obj_P01R0101_ookido, _0358
	wait_movement
	npc_msg 13
	closemsg
	apply_movement obj_P01R0101_ookido, _035E
	wait_movement
	hide_person obj_P01R0101_ookido
	setflag FLAG_HIDE_OLIVINE_PORT_OAK
	setvar VAR_UNK_411A, 0
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	releaseall
	compare VAR_UNK_40D3, 1
	call_if_eq _01D1
	enable_mass_outbreaks
	end

scr_seq_P01R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _01D7
	compare VAR_TEMP_x4002, 1
	goto_if_ge _01E2
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_eq _01ED
	compare VAR_UNK_40CB, 7
	goto_if_ge _0223
	npc_msg 1
	closemsg
	hasitem ITEM_SS_TICKET, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _023A
	apply_movement obj_player, _036C
	wait_movement
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_P01R0101_seaman_2, _0376
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_P01R0101_seaman_2, _037C
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _039A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_TEMP_x4002, 1
	setvar VAR_BOAT_DIRECTION, 1
	setvar VAR_UNK_40DC, 0
	clearflag FLAG_BOAT_ARRIVED
	setflag FLAG_UNK_22C
	setflag FLAG_UNK_22B
	releaseall
	end

scr_seq_P01R0101_003:
	simple_npc_msg 14
	end

scr_seq_P01R0101_004:
	simple_npc_msg 15
	end

_01C9:
	set_object_facing obj_P01R0101_seaman_2, DIR_SOUTH
	end

_01D1:
	clearflag FLAG_HIDE_POKEATHLON_SUPREME_CUP_RECEPTIONIST
	return

_01D7:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E2:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01ED:
	apply_movement obj_P01R0101_seaman_2, _03A0
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03BE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_P01R0101_seaman_2, _03C8
	wait_movement
	releaseall
	end

_0223:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0261
	goto _0274

_023A:
	apply_movement obj_player, _03DA
	wait_movement
	buffer_players_name 0
	npc_msg 2
	closemsg
	apply_movement obj_P01R0101_seaman_2, _0376
	wait_movement
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0261:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _027F
	goto _0292

_0274:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_027F:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _02E5
	goto _0274

_0292:
	npc_msg 7
	closemsg
	apply_movement obj_P01R0101_seaman_2, _037C
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _039A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_TEMP_x4002, 1
	setvar VAR_BOAT_DIRECTION, 1
	setvar VAR_UNK_40DC, 0
	clearflag FLAG_BOAT_ARRIVED
	setflag FLAG_UNK_22A
	clearflag FLAG_UNK_22B
	setflag FLAG_UNK_22C
	releaseall
	end

_02E5:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _02F8
	goto _0274

_02F8:
	compare VAR_SPECIAL_RESULT, 4
	goto_if_ne _030B
	goto _0274

_030B:
	compare VAR_SPECIAL_RESULT, 5
	goto_if_ne _031E
	goto _0292

_031E:
	goto _0274

	.align 4
_0324:

	step 75, 1
	step_end
	.align 4
_032A:

	step 63, 1
	step 14, 3
	step 12, 1
	step 34, 1
	step_end
	.align 4
_033C:

	step 63, 3
	step 13, 3
	step 35, 1
	step_end
	.align 4
_034A:

	step 34, 1
	step 63, 2
	step 34, 1
	step_end
	.align 4
_0358:

	step 75, 1
	step_end
	.align 4
_035E:

	step 12, 2
	step 14, 1
	step 12, 1
	step_end
	.align 4
_036C:

	step 35, 1
	step 1, 2
	step_end
	.align 4
_0376:

	step 32, 1
	step_end
	.align 4
_037C:

	step 71, 1
	step 13, 1
	step 72, 1
	step 2, 2
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_039A:

	step 13, 2
	step_end
	.align 4
_03A0:

	step 71, 1
	step 12, 1
	step 72, 1
	step 2, 2
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_03BE:

	step 63, 1
	step 12, 4
	step_end
	.align 4
_03C8:

	step 14, 1
	step 1, 2
	step 13, 1
	step 32, 1
	step_end
	.align 4
_03DA:

	step 50, 1
	step 51, 1
	step 1, 2
	step 75, 1
	step_end
	.align 4


.close
