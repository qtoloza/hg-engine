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
scrdef_end

scr_seq_R03_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02DF
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0050
	scrcmd_518 3
	goto _00BE

_0050:
	scrcmd_518 3
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00B2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _009E
	scrcmd_605 0, 1
	goto _00A2

_009E:
	scrcmd_605 3, 2
_00A2:
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
_00B2:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_00BE:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 2
	goto _02D5

scr_seq_R03_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02DF
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0107
	scrcmd_518 2
	goto _018C

_0107:
	scrcmd_518 2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0180
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0155
	scrcmd_605 0, 1
	goto _0170

_0155:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _016C
	scrcmd_605 0, 1
	goto _0170

_016C:
	scrcmd_605 3, 2
_0170:
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
_0180:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_018C:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 3
	goto _02D5

scr_seq_R03_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02DF
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _01D5
	scrcmd_518 1
	goto _022C

_01D5:
	scrcmd_518 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0220
	scrcmd_605 2, 3
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
_0220:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_022C:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 4
	goto _02D5

scr_seq_R03_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	scrcmd_517 SPECIES_DEOXYS, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02DF
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 386
	goto_if_eq _0275
	scrcmd_518 0
	goto _02CC

_0275:
	scrcmd_518 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_R03, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C0
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
_02C0:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_02CC:
	play_cry SPECIES_DEOXYS, 0
	npc_msg 5
_02D5:
	wait_button_or_walk_away
	wait_cry
	closemsg
	releaseall
	end

_02DF:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R03_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
