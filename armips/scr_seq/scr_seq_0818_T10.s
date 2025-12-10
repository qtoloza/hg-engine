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

.include "armips/scr_seq/event_T10.inc"


// text archive to grab from: 521.txt

.create "build/a012/2_818", 0


scrdef scr_seq_T10_000
scrdef scr_seq_T10_001
scrdef scr_seq_T10_002
scrdef scr_seq_T10_003
scrdef scr_seq_T10_004
scrdef_end

scr_seq_T10_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T10_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	npc_msg 1
	wait_button_or_walk_away
	clearflag 16350
	show_person 0
	move_person_facing 0, 912, 0, 211, DIR_NORTH
	closemsg
	apply_movement obj_player, _02AA
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _02B0
	apply_movement 0, _02B6
	wait_movement
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_LATIAS, 0
	wait_cry
	play_cry SPECIES_LATIOS, 0
	wait_cry
	clearflag 16349
	clearflag 16348
	show_person 2
	show_person 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement 0, _02AA
	wait_movement
	apply_movement 0, _02C0
	wait_movement
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	giveitem_no_check ITEM_ULTRA_BALL, 50
	closemsg
	apply_movement 0, _02D6
	wait_movement
	setvar 24886, 2
	releaseall
	end

scr_seq_T10_002:
	goto_if_set 16349, _01E6
	goto_if_set 16348, _0228
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
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
	releaseall
	end

scr_seq_T10_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LATIAS, 0
	npc_msg 6
	closemsg
	wait_cry
	wild_battle SPECIES_LATIAS, 50, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _026A
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 1
	setflag 16349
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T10_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LATIOS, 0
	npc_msg 5
	closemsg
	wait_cry
	wild_battle SPECIES_LATIOS, 50, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _026A
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 2
	setflag 16348
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_01E6:
	goto_if_set 16348, _0270
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
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
	releaseall
	end

_0228:
	goto_if_set 16349, _0270
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	wait_button_or_walk_away
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
	releaseall
	end

_026A:
	white_out
	releaseall
	end

_0270:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person 0
	hide_person 3
	setflag 16350
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_02AA:

	step 75, 1
	step_end
	.align 4
_02B0:

	step 13, 2
	step_end
	.align 4
_02B6:

	step 16, 7
	step 0, 1
	step_end
	.align 4
_02C0:

	step 34, 1
	step 62, 3
	step 35, 1
	step 62, 3
	step 32, 1
	step_end
	.align 4
_02D6:

	step 14, 1
	step 12, 3
	step 15, 1
	step 33, 1
	step_end
	.align 4


.close
