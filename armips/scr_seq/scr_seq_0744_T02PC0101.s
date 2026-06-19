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

.include "armips/scr_seq/event_T02PC0101.inc"


// text archive to grab from: 455.txt

.create "build/a012/2_744", 0


scrdef scr_seq_T02PC0101_000
scrdef scr_seq_T02PC0101_001
scrdef scr_seq_T02PC0101_002
scrdef scr_seq_T02PC0101_003
scrdef scr_seq_T02PC0101_004
scrdef_end

scr_seq_T02PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T02PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_129, _003C
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_003C:
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T02PC0101_002:
	simple_npc_msg 2
	end

scr_seq_T02PC0101_003:
	simple_npc_msg 3
	end

// Gen VI (Kalos) Show Starter - Give remaining two starters
scr_seq_T02PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Check if not post-game
	goto_if_unset FLAG_GAME_CLEAR, _kalos_giver_not_postgame
	// Check if already got the remaining starters
	goto_if_set FLAG_GOT_KALOS_STARTER_REST, _kalos_giver_already_got
	// Check if player has got the first starter
	goto_if_unset FLAG_GOT_KALOS_STARTER_FIRST, _kalos_giver_no_first
	// Check party lead species
	npc_msg 5
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	// Check Chespin line (700-702)
	compare VAR_TEMP_x4001, SPECIES_CHESPIN
	goto_if_eq _kalos_giver_has_chespin
	compare VAR_TEMP_x4001, SPECIES_QUILLADIN
	goto_if_eq _kalos_giver_has_chespin
	compare VAR_TEMP_x4001, SPECIES_CHESNAUGHT
	goto_if_eq _kalos_giver_has_chespin
	// Check Fennekin line (703-705)
	compare VAR_TEMP_x4001, SPECIES_FENNEKIN
	goto_if_eq _kalos_giver_has_fennekin
	compare VAR_TEMP_x4001, SPECIES_BRAIXEN
	goto_if_eq _kalos_giver_has_fennekin
	compare VAR_TEMP_x4001, SPECIES_DELPHOX
	goto_if_eq _kalos_giver_has_fennekin
	// Check Froakie line (706-708)
	compare VAR_TEMP_x4001, SPECIES_FROAKIE
	goto_if_eq _kalos_giver_has_froakie
	compare VAR_TEMP_x4001, SPECIES_FROGADIER
	goto_if_eq _kalos_giver_has_froakie
	compare VAR_TEMP_x4001, SPECIES_GRENINJA
	goto_if_eq _kalos_giver_has_froakie
	// Not a valid starter
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_giver_not_postgame:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_giver_already_got:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_giver_no_first:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_giver_has_chespin:
	// Give Fennekin and Froakie
	buffer_species_name 1, VAR_TEMP_x4001, 0, 0
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _kalos_giver_party_full
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _kalos_giver_party_full
	give_mon SPECIES_FENNEKIN, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_FROAKIE, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	setflag FLAG_GOT_KALOS_STARTER_REST
	goto _kalos_giver_finish

_kalos_giver_has_fennekin:
	// Give Chespin and Froakie
	buffer_species_name 1, VAR_TEMP_x4001, 0, 0
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _kalos_giver_party_full
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _kalos_giver_party_full
	give_mon SPECIES_CHESPIN, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_FROAKIE, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 9
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	setflag FLAG_GOT_KALOS_STARTER_REST
	goto _kalos_giver_finish

_kalos_giver_has_froakie:
	// Give Chespin and Fennekin
	buffer_species_name 1, VAR_TEMP_x4001, 0, 0
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _kalos_giver_party_full
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _kalos_giver_party_full
	give_mon SPECIES_CHESPIN, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_FENNEKIN, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	setflag FLAG_GOT_KALOS_STARTER_REST
	goto _kalos_giver_finish

_kalos_giver_party_full:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_kalos_giver_finish:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T02PC0101_kalos_giver
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4


.close
