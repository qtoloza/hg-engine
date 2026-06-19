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

.include "armips/scr_seq/event_D39R0103.inc"


// text archive to grab from: 123.txt

.create "build/a012/2_101", 0


scrdef scr_seq_D39R0103_000
scrdef scr_seq_D39R0103_001
scrdef scr_seq_D39R0103_002
scrdef scr_seq_D39R0103_003
scrdef_end

scr_seq_D39R0103_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _00FE
	wait 1, VAR_SPECIAL_RESULT
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40AB, 0
	end

scr_seq_D39R0103_001:
	compare VAR_UNK_40AB, 1
	goto_if_ne _00E7
	make_object_visible obj_player
	end

scr_seq_D39R0103_002:
	simple_npc_msg 0
	end

scr_seq_D39R0103_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_REGICE, 6
	release obj_D39R0103_follower_mon_regice
	scrcmd_523 obj_D39R0103_follower_mon_regice, 2, 90, 2, 0
	lock obj_D39R0103_follower_mon_regice
	npc_msg 1
	closemsg
	wait_cry
	wild_battle SPECIES_REGICE, 40, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00E9
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D39R0103_follower_mon_regice
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _00EF
	compare VAR_TEMP_x4002, 5
	goto_if_eq _00EF
	releaseall
	end

_00E7:
	end

_00E9:
	white_out
	releaseall
	end

_00EF:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	clearflag 16342
	releaseall
	end

	.align 4
_00FE:

	step 68, 1
	step_end
	.align 4


.close
