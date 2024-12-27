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

.include "armips/scr_seq/event_R10.inc"


// text archive to grab from: 341.txt

.create "build/a012/2_191", 0


scrdef scr_seq_R10_000
scrdef scr_seq_R10_001
scrdef scr_seq_R10_002
scrdef scr_seq_R10_003
scrdef scr_seq_R10_004
scrdef scr_seq_R10_005
scrdef scr_seq_R10_006
scrdef scr_seq_R10_007
scrdef_end

scr_seq_R10_004:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _01B5
	end

scr_seq_R10_001:
	check_badge BADGE_EARTH, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_eq _01C3
	goto _01FC

scr_seq_R10_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01FE
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0231
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 25
	goto_if_ne _0231
	compare VAR_TEMP_x4002, 1
	goto_if_ge _023C
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0245
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0288
	end

scr_seq_R10_000:
	scrcmd_609
	lockall
	goto_if_set FLAG_RESTORED_POWER, _0299
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F1
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02F1
	scrcmd_600
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0202, 0, 7, 20, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_582 MAP_R10, 1423, 185
	releaseall
	end

scr_seq_R10_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ZAPDOS, 0
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ZAPDOS, 60, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0325
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _032B
	compare VAR_TEMP_x4002, 4
	call_if_eq _032F
	releaseall
	end

scr_seq_R10_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 8, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R10_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 9, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R10_007:
	simple_npc_msg 10
	end

_01B5:
	setflag FLAG_HIDE_ROUTE_10_ZAPDOS
	hide_person obj_R10_follower_mon_static_zapdos
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_01C3:
	goto_if_unset FLAG_CAUGHT_ZAPDOS, _01FC
	check_registered_phone_number PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01FC
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 9
	goto_if_ne _0335
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _034C

_01FC:
	end

_01FE:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_ROUTE_10_LT_SURGE
	hide_person obj_R10_gsleader9
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0231:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_023C:
	npc_msg 4
	goto _034E

_0245:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_LT__SURGE
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_ROUTE_10_LT_SURGE
	hide_person obj_R10_gsleader9
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0288:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0299:
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0372
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0372
	scrcmd_600
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0201, 0, 7, 20, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_582 MAP_R10, 1423, 185
	releaseall
	end

_02F1:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0202, 0, 7, 20, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_582 MAP_R10, 1423, 185
	releaseall
	end

_0325:
	white_out
	releaseall
	end

_032B:
	releaseall
	end

_032F:
	setflag FLAG_CAUGHT_ZAPDOS
	return

_0335:
	compare VAR_TEMP_x4000, 10
	goto_if_ne _03A6
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _034C

_034C:
	end

_034E:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0245
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0288
	end

_0372:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0201, 0, 7, 20, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_582 MAP_R10, 1423, 185
	releaseall
	end

_03A6:
	compare VAR_TEMP_x4000, 11
	goto_if_ne _03BD
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _034C

_03BD:
	setflag FLAG_HIDE_ROUTE_10_LT_SURGE
	end
	.align 4


.close
