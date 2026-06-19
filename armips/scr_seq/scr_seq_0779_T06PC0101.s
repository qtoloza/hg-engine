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

.include "armips/scr_seq/event_T06PC0101.inc"


// text archive to grab from: 486.txt

.create "build/a012/2_779", 0


scrdef scr_seq_T06PC0101_000
scrdef scr_seq_T06PC0101_001
scrdef scr_seq_T06PC0101_002
scrdef scr_seq_T06PC0101_003
scrdef scr_seq_T06PC0101_004
scrdef_end

scr_seq_T06PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T06PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_CAUGHT_SNORLAX, _003C
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_003C:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T06PC0101_002:
	simple_npc_msg 2
	end

scr_seq_T06PC0101_003:
	simple_npc_msg 3
	end

// Gen VI (Kalos) Starter Quiz Event
scr_seq_T06PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Check if not post-game
	goto_if_unset FLAG_GAME_CLEAR, _kalos_not_postgame
	// Check if already got starter
	goto_if_set FLAG_GOT_KALOS_STARTER_FIRST, _kalos_already_got
	// Offer quiz
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _kalos_declined
	// Question 1: Kalos based on France (Yes = correct)
	npc_msg 6
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _kalos_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 2: Kalos introduced Dark type (No = correct, Fairy was introduced)
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _kalos_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 3: Mega Evolution first in Kalos (Yes = correct)
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _kalos_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	// Question 4: Pokemon League on Victory Road (No = correct)
	npc_msg 10
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _kalos_wrong
	play_se SEQ_SE_DP_PINPON
	wait_se SEQ_SE_DP_PINPON
	closemsg
	touchscreen_menu_show
	// All correct - show menu
	goto _kalos_show_menu

_kalos_not_postgame:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_already_got:
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_declined:
	touchscreen_menu_show
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_wrong:
	play_se SEQ_SE_DP_BOX03
	wait_se SEQ_SE_DP_BOX03
	touchscreen_menu_show
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_show_menu:
	npc_msg 11
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 13, 255, 0
	menu_item_add 14, 255, 1
	menu_item_add 15, 255, 2
	menu_item_add 16, 255, 3
	menu_exec
	touchscreen_menu_show
	switch VAR_TEMP_x4000
	compare VAR_SPECIAL_x8008, 0
	setvar VAR_SPECIAL_x8004, SPECIES_CHESPIN
	goto_if_eq _kalos_give_starter
	compare VAR_SPECIAL_x8008, 1
	setvar VAR_SPECIAL_x8004, SPECIES_FENNEKIN
	goto_if_eq _kalos_give_starter
	compare VAR_SPECIAL_x8008, 2
	setvar VAR_SPECIAL_x8004, SPECIES_FROAKIE
	goto_if_eq _kalos_give_starter
	// Cancelled
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_give_starter:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_eq _kalos_party_full
	npc_msg 19
	buffer_species_name 1, VAR_SPECIAL_x8004, 0, 0
	give_mon VAR_SPECIAL_x8004, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	setflag FLAG_GOT_KALOS_STARTER_FIRST
	npc_msg 20
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 21
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _kalos_nickname
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _kalos_finish
	closemsg
	releaseall
	end

_kalos_party_full:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_nickname:
	closemsg
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _kalos_finish

_kalos_finish:
	touchscreen_menu_show
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4


.close
