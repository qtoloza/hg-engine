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

.include "armips/scr_seq/event_T28PC0101.inc"


// text archive to grab from: 624.txt

.create "build/a012/2_935", 0


scrdef scr_seq_T28PC0101_000
scrdef scr_seq_T28PC0101_001
scrdef scr_seq_T28PC0101_002
scrdef scr_seq_T28PC0101_003
scrdef scr_seq_T28PC0101_004
scrdef scr_seq_T28PC0101_005
scrdef scr_seq_T28PC0101_006
scrdef_end

scr_seq_T28PC0101_000:
	setvar VAR_SPECIAL_x8007, 2
	callstd std_nurse_joy
	end

scr_seq_T28PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T28PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T28PC0101_003:
	simple_npc_msg 2
	end

scr_seq_T28PC0101_004:
	play_cry SPECIES_POLIWHIRL, 0
	simple_npc_msg 3
	end

scr_seq_T28PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16253, _00AE
	gender_msgbox 4, 5
	giveitem_no_check ITEM_KINGS_ROCK, 1
	npc_msg 6
	setflag 16253
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00AE:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

// Gen V (Unova) Starter Quiz Event
scr_seq_T28PC0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Check if not post-game
	goto_if_unset FLAG_GAME_CLEAR, _unova_not_postgame
	// Check if already got starter
	goto_if_set FLAG_GOT_UNOVA_STARTER_FIRST, _unova_already_got
	// Offer quiz
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _unova_declined
	// Question 1: Unova based on NYC (Yes = correct)
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _unova_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 2: First gym leader Fire type (No = correct)
	npc_msg 11
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _unova_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 3: Juniper first female professor (Yes = correct)
	npc_msg 12
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _unova_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 4: Unova connected to Kanto (No = correct)
	npc_msg 13
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _unova_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	closemsg
	touchscreen_menu_show
	// All correct - show menu
	goto _unova_show_menu

_unova_not_postgame:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_already_got:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_declined:
	touchscreen_menu_show
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_wrong:
	play_se SEQ_SE_DP_BOX03
	wait_se SEQ_SE_DP_BOX03
	touchscreen_menu_show
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_show_menu:
	npc_msg 14
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
	setvar VAR_SPECIAL_x8004, SPECIES_SNIVY
	goto_if_eq _unova_give_starter
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, SPECIES_TEPIG
	goto_if_eq _unova_give_starter
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, SPECIES_OSHAWOTT
	goto_if_eq _unova_give_starter
	// Cancelled
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_give_starter:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _unova_party_full
	npc_msg 22
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag FLAG_GOT_UNOVA_STARTER_FIRST
	npc_msg 23
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _unova_nickname
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _unova_finish
	closemsg
	releaseall
	end

_unova_party_full:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_unova_nickname:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _unova_finish

_unova_finish:
	touchscreen_menu_show
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4


.close
