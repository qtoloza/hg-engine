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

.include "armips/scr_seq/event_T05R0601.inc"


// text archive to grab from: 481.txt

.create "build/a012/2_774", 0


scrdef scr_seq_T05R0601_000
scrdef scr_seq_T05R0601_001
scrdef scr_seq_T05R0601_002
scrdef scr_seq_T05R0601_003
scrdef_end

scr_seq_T05R0601_000:
	simple_npc_msg 0
	end

scr_seq_T05R0601_001:
	simple_npc_msg 1
	end

scr_seq_T05R0601_002:
	simple_npc_msg 2
	end

scr_seq_T05R0601_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset 16277, _0069
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0069:
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _008C
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_008C:
	buffer_players_name 0
	gender_msgbox 6, 7
	closemsg
	fade_screen 6, 3, 0, RGB_BLACK
	fade_out_bgm 0, 10
	stop_bgm 0
	wait_fade
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	apply_movement obj_T05R0601_gsoldman1_2, _0112
	wait_movement
	reset_bgm
	fade_screen 6, 3, 1, RGB_BLACK
	wait_fade
	npc_msg 8
	giveitem_no_check ITEM_SPOOKY_PLATE, 1
	closemsg
	releaseall
	setflag 16277
	end

	.align 4
_0112:

	step 32, 1
	step 33, 1
	step_end
	.align 4


.close
