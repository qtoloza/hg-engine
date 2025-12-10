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

.include "armips/scr_seq/event_T25PC0101.inc"


// text archive to grab from: 583.txt

.create "build/a012/2_887", 0


scrdef scr_seq_T25PC0101_000
scrdef scr_seq_T25PC0101_001
scrdef scr_seq_T25PC0101_002
scrdef scr_seq_T25PC0101_003
scrdef scr_seq_T25PC0101_004
scrdef scr_seq_T25PC0101_005
scrdef_end

scr_seq_T25PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T25PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _00E2
	npc_msg 3
	goto _010F

scr_seq_T25PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0117
	npc_msg 5
	goto _0122

scr_seq_T25PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _012A
	npc_msg 1
	goto _0135

scr_seq_T25PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _013D
	npc_msg 3
	goto _010F

scr_seq_T25PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16371, _0180
	goto_if_set 16370, _018D
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0196
	touchscreen_menu_show
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E2:
	goto_if_set 16251, _016A
	npc_msg 26
	giveitem_no_check ITEM_TM004, 1
	setflag 16251
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_010F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0117:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0122:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_012A:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0135:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013D:
	goto_if_set 16250, _0175
	npc_msg 28
	giveitem_no_check ITEM_TM008, 1
	setflag 16250
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016A:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0175:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0180:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_018D:
	npc_msg 25
	goto _0217

_0196:
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _028F
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 11
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _028F
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _028F
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 13
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _028F
	closemsg
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	touchscreen_menu_show
	setflag 16370
	npc_msg 14
	goto _0217

_0217:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 16, 255, 0
	menu_item_add 17, 255, 1
	menu_item_add 18, 255, 2
	menu_item_add 19, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 387
	goto_if_eq _02A6
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 390
	goto_if_eq _02A6
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 393
	goto_if_eq _02A6
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_028F:
	play_se SEQ_SE_DP_BOX03
	wait_se SEQ_SE_DP_BOX03
	touchscreen_menu_show
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_02A6:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _0333
	npc_msg 22
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag 16371
	npc_msg 23
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _033E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0371
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0333:
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_033E:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0371:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end
	.align 4


.close
