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

.include "armips/scr_seq/event_D41R0108.inc"


// text archive to grab from: 126.txt

.create "build/a012/2_107", 0


scrdef scr_seq_D41R0108_000
scrdef scr_seq_D41R0108_001
scrdef_end

scr_seq_D41R0108_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_RED_RED, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00CD
	npc_msg 1
	wait 30, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	hide_person obj_D41R0108_red
	setflag FLAG_UNK_25F
	setvar VAR_UNK_40FD, 1
	compare VAR_UNK_4131, 0
	call_if_eq _00D3
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 60, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hof_credits 1
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_D41R0108_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	closemsg
	buffer_players_name 0
	apply_movement obj_player, _0140
	wait_movement
	hide_person obj_D41R0108_red_2
	buffer_players_name 0
	giveitem_no_check ITEM_SKY_PLATE, 1
	closemsg
	releaseall
	end

_00CD:
	white_out
	releaseall
	end

_00D3:
	setvar VAR_UNK_4131, 1
	clearflag FLAG_HIDE_OAKS_LAB_BULBASAUR_BALL
	clearflag FLAG_HIDE_OAKS_LAB_CHARMANDER_BALL
	clearflag FLAG_HIDE_OAKS_LAB_SQUIRTLE_BALL
	return

	.align 4
_0140:

	step 75, 1
	step_end
	.align 4


.close
