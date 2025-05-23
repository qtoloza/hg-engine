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

.include "armips/scr_seq/event_D18R0101.inc"


// text archive to grab from: 060.txt

.create "build/a012/2_023", 0


scrdef scr_seq_D18R0101_000
scrdef scr_seq_D18R0101_001
scrdef scr_seq_D18R0101_002
scrdef scr_seq_D18R0101_003
scrdef_end

scr_seq_D18R0101_003:
	scrcmd_609
	lockall
	callstd std_play_rival_intro_music
	apply_movement obj_D18R0101_gsrivel, _00D0
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _004B
	trainer_battle TRAINER_RIVAL_SILVER_8, 0, 0, 0
	goto _006E

_004B:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _0066
	trainer_battle TRAINER_RIVAL_SILVER_11, 0, 0, 0
	goto _006E

_0066:
	trainer_battle TRAINER_RIVAL_SILVER_4, 0, 0, 0
_006E:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C7
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _00E8
	apply_movement obj_D18R0101_gsrivel, _00F8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D18R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	setflag FLAG_HIDE_BURNED_TOWER_1F_RIVAL
	setvar VAR_UNK_40A6, 1
	releaseall
	end

_00C7:
	white_out
	releaseall
	end


_00D0:

	step 1, 1
	step 75, 1
	step 13, 4
	step 14, 1
	step 1, 1
	step_end

_00E8:

	step 13, 2
	step 15, 1
	step 2, 1
	step_end

_00F8:

	step 13, 3
	step 14, 1
	step 13, 1
	step 14, 3
	step 13, 1
	step 14, 4
	step 13, 3
	step_end
scr_seq_D18R0101_000:
	scrcmd_609
	lockall
	callstd std_play_eusine_music
	apply_movement obj_D18R0101_minaki, _0158
	wait_movement
	buffer_players_name 0
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_eusine_music
	setvar VAR_UNK_40A2, 1
	releaseall
	end

scr_seq_D18R0101_001:
	simple_npc_msg 3
	end


_0158:

	step 2, 1
	step 75, 1
	step 14, 3
	step_end
scr_seq_D18R0101_002:
	simple_npc_msg 4
	end
	.align 4


.close
