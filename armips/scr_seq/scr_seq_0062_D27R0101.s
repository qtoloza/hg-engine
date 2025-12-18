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

.include "armips/scr_seq/event_D27R0101.inc"


// text archive to grab from: 093.txt

.create "build/a012/2_062", 0


scrdef scr_seq_D27R0101_000
scrdef scr_seq_D27R0101_001
scrdef scr_seq_D27R0101_002
scrdef scr_seq_D27R0101_003
scrdef scr_seq_D27R0101_004
scrdef_end

scr_seq_D27R0101_002:
	setvar VAR_UNK_4125, 0
	end

scr_seq_D27R0101_000:
	simple_npc_msg 0
	end

scr_seq_D27R0101_001:
	simple_npc_msg 1
	end

scr_seq_D27R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	gender_msgbox 7, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00CC
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D27R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	buffer_players_name 0
	closemsg
	apply_movement obj_D27R0101_leader8, _01D2
	wait_movement
	faceplayer
	npc_msg 10
	giveitem_no_check ITEM_TM073, 1
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D27R0101_leader8
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_DOOR
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_00CC:
	hasitem ITEM_POKE_BALL, 15, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _018C
	hasitem ITEM_DESTINY_KNOT, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _018C
	npc_msg 5
	takeitem ITEM_POKE_BALL, 15, VAR_SPECIAL_RESULT
	takeitem ITEM_DESTINY_KNOT, 1, VAR_SPECIAL_RESULT
	closemsg
	buffer_players_name 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	apply_movement obj_D27R0101_champion, _01D8
	wait_movement
	play_se SEQ_SE_GS_ZUTUKI
	wait_se SEQ_SE_GS_ZUTUKI
	apply_movement obj_D27R0101_champion, _01D8
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement obj_D27R0101_gswoman1, _01D2
	wait_movement
	play_fanfare SEQ_ME_HYOUKA1
	wait_fanfare
	npc_msg 6
	closemsg
	move_person_facing obj_D27R0101_monstarball, 15, 1, 3, DIR_NORTH
	apply_movement obj_D27R0101_monstarball, _01D8
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0197
	apply_movement obj_D27R0101_gswoman1, _01E2
	wait_movement
	goto _01A7

_018C:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0197:
	apply_movement obj_D27R0101_gswoman1, _01E8
	wait_movement
	goto _01A7

_01A7:
	hide_person obj_D27R0101_gswoman1
	apply_movement obj_player, _01D2
	wait_movement
	npc_msg 8
	hide_person obj_D27R0101_monstarball
	giveitem_no_check ITEM_DREAD_PLATE, 1
	closemsg
	releaseall
	end

	.align 4
_01D2:

	step 75, 1
	step_end
	.align 4
_01D8:

	step 32, 1
	step 33, 1
	step_end
	.align 4
_01E2:

	step 17, 10
	step_end
	.align 4
_01E8:

	step 18, 3
	step 17, 10
	step_end
	.align 4


.close
