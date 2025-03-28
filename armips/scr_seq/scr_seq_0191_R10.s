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
scrdef_end

scr_seq_R10_004:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _002B
	end

_002B:
	setflag FLAG_HIDE_ROUTE_10_ZAPDOS
	hide_person obj_R10_follower_mon_static_zapdos
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

scr_seq_R10_001:
	check_badge BADGE_EARTH, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_eq _0052
	goto _00BF

_0052:
	goto_if_unset FLAG_CAUGHT_ZAPDOS, _00BF
	check_registered_phone_number PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00BF
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 9
	goto_if_ne _008B
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _00BD

_008B:
	compare VAR_TEMP_x4000, 10
	goto_if_ne _00A2
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _00BD

_00A2:
	compare VAR_TEMP_x4000, 11
	goto_if_ne _00B9
	clearflag FLAG_HIDE_ROUTE_10_LT_SURGE
	goto _00BD

_00B9:
	setflag FLAG_HIDE_ROUTE_10_LT_SURGE
_00BD:
	end

_00BF:
	end

scr_seq_R10_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0148
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0197
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 25
	goto_if_ne _0197
	compare VAR_TEMP_x4002, 1
	goto_if_ge _018C
	npc_msg 0
_0114:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0138
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _017B
	end

_0138:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_LT__SURGE
_0148:
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

_017B:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_018C:
	npc_msg 4
	goto _0114

_0197:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R10_000:
	scrcmd_609
	lockall
	goto_if_set FLAG_RESTORED_POWER, _0209
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D5
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01D5
	scrcmd_600
_01D5:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0202, 0, 7, 20, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_582 MAP_R10, 1423, 185
	releaseall
	end

_0209:
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022D
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _022D
	scrcmd_600
_022D:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_R10R0201, 0, 7, 20, DIR_NORTH
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
	wild_battle SPECIES_ZAPDOS, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02B3
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _02AF
	compare VAR_TEMP_x4002, 4
	call_if_eq _02B9
_02AF:
	releaseall
	end

_02B3:
	white_out
	releaseall
	end

_02B9:
	setflag FLAG_CAUGHT_ZAPDOS
	return

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
	.align 4


.close
