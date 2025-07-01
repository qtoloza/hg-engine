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


// text archive to grab from: 433.txt

.create "build/a012/2_263", 0


scrdef scr_seq_0263_000
scrdef_end

scr_seq_0263_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	scrcmd_116 1, 21, 1
	goto_if_set FLAG_GOT_SCRATCH_CARD_INFO, _0038
	setflag FLAG_GOT_SCRATCH_CARD_INFO
	buffer_int 0, 1
	npc_msg 15
	goto _0048

_0038:
	buffer_int 0, 1
	npc_msg 0
	goto _0048

_0048:
	npc_msg 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 2, 255, 0
	menu_item_add 3, 255, 1
	menu_item_add 4, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0097
	case 1, _0178
	goto _016B

_0097:
	buffer_int 2, 1
	npc_msg 7
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _016B
	check_battle_points 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _015E
	scrcmd_556 1
	scrcmd_118 1
	npc_msg 10
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_815 0
	scrcmd_117
	closemsg
	scratch_off_card
	get_scratch_off_prize 0, VAR_TEMP_x4000, VAR_TEMP_x4001
	get_scratch_off_prize 1, VAR_TEMP_x4002, VAR_TEMP_x4003
	get_scratch_off_prize 2, VAR_TEMP_x4004, VAR_TEMP_x4005
	scratch_off_card_end
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_SPECIAL_x8000, 0
	call _019D
	compare VAR_SPECIAL_x8000, 0
	goto_if_eq _01CE
	buffer_int 0, VAR_SPECIAL_x8000
	npc_msg 11
	compare VAR_TEMP_x4001, 0
	call_if_ne _01D9
	compare VAR_TEMP_x4003, 0
	call_if_ne _0225
	compare VAR_TEMP_x4005, 0
	call_if_ne _0271
	npc_msg 5
	goto _0191

_015E:
	touchscreen_menu_show
	npc_msg 14
	goto _0183

_016B:
	touchscreen_menu_show
	npc_msg 5
	goto _0183

_0178:
	npc_msg 6
	goto _0048

_0183:
	wait_button_or_walk_away
	closemsg
	scrcmd_117
	script_overlay_cmd 3, 1
	releaseall
	end

_0191:
	wait_button_or_walk_away
	closemsg
	script_overlay_cmd 3, 1
	releaseall
	end

_019D:
	compare VAR_TEMP_x4001, 0
	call_if_ne _01C6
	compare VAR_TEMP_x4003, 0
	call_if_ne _01C6
	compare VAR_TEMP_x4005, 0
	call_if_ne _01C6
	return

_01C6:
	addvar VAR_SPECIAL_x8000, 1
	return

_01CE:
	npc_msg 5
	goto _0191

_01D9:
	compare VAR_TEMP_x4001, 1
	goto_if_gt _01F1
	buffer_item_name 0, VAR_TEMP_x4000
	goto _01F6

_01F1:
	buffer_item_name_plural 0, VAR_TEMP_x4000
_01F6:
	buffer_int 1, VAR_TEMP_x4001
	hasspaceforitem VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BD
	play_fanfare SEQ_ME_ITEM
	npc_msg 13
	giveitem VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	wait_fanfare
	wait_button
	return

_0225:
	compare VAR_TEMP_x4003, 1
	goto_if_gt _023D
	buffer_item_name 0, VAR_TEMP_x4002
	goto _0242

_023D:
	buffer_item_name_plural 0, VAR_TEMP_x4002
_0242:
	buffer_int 1, VAR_TEMP_x4003
	hasspaceforitem VAR_TEMP_x4002, VAR_TEMP_x4003, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BD
	play_fanfare SEQ_ME_ITEM
	npc_msg 13
	giveitem VAR_TEMP_x4002, VAR_TEMP_x4003, VAR_SPECIAL_RESULT
	wait_fanfare
	wait_button
	return

_0271:
	compare VAR_TEMP_x4005, 1
	goto_if_gt _0289
	buffer_item_name 0, VAR_TEMP_x4004
	goto _028E

_0289:
	buffer_item_name_plural 0, VAR_TEMP_x4004
_028E:
	buffer_int 1, VAR_TEMP_x4005
	hasspaceforitem VAR_TEMP_x4004, VAR_TEMP_x4005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BD
	play_fanfare SEQ_ME_ITEM
	npc_msg 13
	giveitem VAR_TEMP_x4004, VAR_TEMP_x4005, VAR_SPECIAL_RESULT
	wait_fanfare
	wait_button
	return

_02BD:
	npc_msg 12
	return
	.align 4


.close
