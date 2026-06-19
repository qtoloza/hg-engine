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

.include "armips/scr_seq/event_T23PC0101.inc"


// text archive to grab from: 568.txt

.create "build/a012/2_870", 0


scrdef scr_seq_T23PC0101_000
scrdef scr_seq_T23PC0101_001
scrdef scr_seq_T23PC0101_002
scrdef scr_seq_T23PC0101_003
scrdef scr_seq_T23PC0101_004
scrdef scr_seq_T23PC0101_005
scrdef scr_seq_T23PC0101_006
scrdef scr_seq_T23PC0101_007
scrdef scr_seq_T23PC0101_008
scrdef_end

scr_seq_T23PC0101_000:
	setvar VAR_SPECIAL_x8007, 6
	callstd std_nurse_joy
	end

scr_seq_T23PC0101_001:
	simple_npc_msg 2
	end

scr_seq_T23PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_STEVEN_FORRETRESS_BELDUM, _0192
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _019D
	goto _023E

scr_seq_T23PC0101_003:
	simple_npc_msg 0
	end

scr_seq_T23PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16274, _0249
	goto_if_set 16273, _0256
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _025F
	touchscreen_menu_show
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T23PC0101_005:
	simple_npc_msg 2
	end

scr_seq_T23PC0101_006:
	play_se SEQ_SE_DP_SELECT
	buffer_players_name 0
	lockall
	faceplayer
	npc_msg 22
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _02E0
	npc_msg 24
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	give_egg SPECIES_RIOLU, 10
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 3, 0, RGB_BLACK
	wait_fade
	hide_person obj_T23PC0101_gsman2
	fade_screen 6, 3, 1, RGB_BLACK
	wait_fade
	setflag 16377
	releaseall
	end

scr_seq_T23PC0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16246, _02EB
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	npc_msg 28
	giveitem_no_check ITEM_TM034, 1
	npc_msg 29
	setflag 16246
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T23PC0101_008:
	play_cry SPECIES_VOLTORB, 6
	simple_npc_msg 30
	end

_0192:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019D:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _023E
	load_npc_trade 12
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _02F6
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 1, MOVE_ZEN_HEADBUTT
	setflag FLAG_TRADE_STEVEN_FORRETRESS_BELDUM
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 31
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_023E:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0249:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0256:
	npc_msg 21
	goto _0303

_025F:
	npc_msg 4
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _037B
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 7
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _037B
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _037B
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _037B
	closemsg
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	touchscreen_menu_show
	setflag 16273
	npc_msg 10
	goto _0303

_02E0:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02EB:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02F6:
	npc_trade_end
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0303:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 13, 255, 1
	menu_item_add 14, 255, 2
	menu_item_add 15, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, 252
	goto_if_eq _0392
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, 255
	goto_if_eq _0392
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, 258
	goto_if_eq _0392
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_037B:
	play_se SEQ_SE_DP_BOX03
	wait_se SEQ_SE_DP_BOX03
	touchscreen_menu_show
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0392:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _02E0
	npc_msg 18
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag 16274
	npc_msg 19
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 20
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0452
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_041F:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0452:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end
	.align 4


.close
