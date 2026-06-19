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

.include "armips/scr_seq/event_R03.inc"


// text archive to grab from: 326.txt

.create "build/a012/2_175", 0


scrdef scr_seq_R03_000
scrdef scr_seq_R03_001
scrdef scr_seq_R03_002
scrdef scr_seq_R03_003
scrdef scr_seq_R03_004
scrdef scr_seq_R03_005
scrdef scr_seq_R03_006
scrdef scr_seq_R03_007
scrdef_end

scr_seq_R03_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021A
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0225
	scrcmd_518 3
	goto _0273

scr_seq_R03_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021A
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0282
	scrcmd_518 2
	goto _02D0

scr_seq_R03_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021A
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _02DF
	scrcmd_518 1
	goto _0345

scr_seq_R03_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021A
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0354
	scrcmd_518 0
	goto _03BE

scr_seq_R03_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R03_005:
	simple_npc_msg 6
	end

scr_seq_R03_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	show_person obj_R03_follower_mon_deoxys
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03D1
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03FC
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0433
	apply_movement obj_partner_poke, _06C6
	wait_movement
	npc_msg 7
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _045E
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_lt _045E
	goto _0469

scr_seq_R03_007:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0497
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0497
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0497
	play_se SEQ_SE_DP_SELECT
	lockall
	show_person obj_R03_follower_mon_deoxys
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	apply_movement obj_partner_poke, _06C6
	wait_movement
	npc_msg 7
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _045E
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_lt _045E
	goto _0499

_021A:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0225:
	scrcmd_518 3
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04F9
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0514
	scrcmd_605 0, 1
	goto _0543

_0273:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 2
	goto _056E

_0282:
	scrcmd_518 2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0578
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0593
	scrcmd_605 0, 1
	goto _05AA

_02D0:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 3
	goto _056E

_02DF:
	scrcmd_518 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05D5
	scrcmd_605 2, 3
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 4
	goto _056E

_0345:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 4
	goto _056E

_0354:
	scrcmd_518 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05F0
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 5
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

_03BE:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 5
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

_03D1:
	apply_movement obj_partner_poke, _06F0
	wait_movement
	npc_msg 7
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _045E
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03FC:
	apply_movement obj_partner_poke, _071A
	wait_movement
	npc_msg 7
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _045E
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _045E
	goto _0499

_0433:
	apply_movement obj_partner_poke, _0744
	wait_movement
	npc_msg 7
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _045E
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_045E:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0469:
	closemsg
	play_cry SPECIES_DEOXYS, 0
	move_person_facing obj_R03_follower_mon_deoxys, 1097, 0, 107, DIR_NORTH
	wait_cry
	apply_movement obj_R03_follower_mon_deoxys, _076E
	wait_movement
	play_cry SPECIES_DEOXYS, 0
	wait_cry
	goto _060F

_0497:
	end

_0499:
	closemsg
	play_cry SPECIES_DEOXYS, 0
	move_person_facing obj_R03_follower_mon_deoxys, 1097, 0, 107, DIR_NORTH
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0774
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_partner_poke, _077A
	wait_movement
	apply_movement obj_R03_follower_mon_deoxys, _0780
	wait_movement
	play_cry SPECIES_DEOXYS, 0
	wait_cry
	apply_movement obj_R03_follower_mon_deoxys, _0786
	wait_movement
	goto _060F

_04F9:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 2
	goto _056E

_0514:
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 2
	goto _056E

_0543:
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry 1410, 0
	npc_msg 2
	goto _056E

_056E:
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

_0578:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 3
	goto _056E

_0593:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0674
	scrcmd_605 0, 1
	goto _05AA

_05AA:
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 3
	goto _056E

_05D5:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 4
	goto _056E

_05F0:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 5
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

_060F:
	wild_battle SPECIES_DEOXYS, 60, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06A3
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R03_follower_mon_deoxys
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _06A9
	compare VAR_TEMP_x4002, 4
	goto_if_eq _06B8
	compare VAR_TEMP_x4002, 5
	goto_if_eq _06A9
	releaseall
	end

_0674:
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	play_cry SPECIES_DEOXYS, 0
	npc_msg 3
	goto _056E

_06A3:
	white_out
	releaseall
	end

_06A9:
	npc_msg 9
	clearflag 16308
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06B8:
	setflag 16268
	setvar 24882, 2
	releaseall
	end

	.align 4
_06C6:

	step 75, 1
	step 51, 2
	step 1, 2
	step 33, 1
	step 2, 2
	step 34, 1
	step 0, 2
	step 32, 1
	step 3, 2
	step 35, 1
	step_end
	.align 4
_06F0:

	step 75, 1
	step 48, 2
	step 2, 2
	step 34, 1
	step 1, 2
	step 33, 1
	step 3, 2
	step 35, 1
	step 0, 2
	step 32, 1
	step_end
	.align 4
_071A:

	step 75, 1
	step 49, 2
	step 2, 2
	step 34, 1
	step 0, 2
	step 32, 1
	step 3, 2
	step 35, 1
	step 1, 2
	step 33, 1
	step_end
	.align 4
_0744:

	step 75, 1
	step 50, 2
	step 0, 2
	step 32, 1
	step 3, 2
	step 35, 1
	step 1, 2
	step 33, 1
	step 2, 2
	step 34, 1
	step_end
	.align 4
_076E:

	step 17, 9
	step_end
	.align 4
_0774:

	step 12, 1
	step_end
	.align 4
_077A:

	step 0, 1
	step_end
	.align 4
_0780:

	step 17, 5
	step_end
	.align 4
_0786:

	step 17, 3
	step_end
	.align 4


.close
