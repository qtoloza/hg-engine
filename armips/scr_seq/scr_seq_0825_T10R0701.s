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

.include "armips/scr_seq/event_T10R0701.inc"


// text archive to grab from: 528.txt

.create "build/a012/2_825", 0


scrdef scr_seq_T10R0701_000
scrdef scr_seq_T10R0701_001
scrdef_end

scr_seq_T10R0701_001:
	stop_bgm 0
	end

scr_seq_T10R0701_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0188
	apply_movement obj_T10R0701_wataru, _0194
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _01A8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	party_count_not_egg VAR_SPECIAL_RESULT
	hall_of_fame_anim VAR_SPECIAL_RESULT
	add_special_game_stat 23
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	call _01B4
	hasitem ITEM_SS_TICKET, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _009A
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 3
_009A:
	setflag FLAG_UNK_97E
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	call_if_unset FLAG_CAUGHT_HO_OH, _01C9
	call_if_unset FLAG_CAUGHT_LUGIA, _01CF
	call_if_unset FLAG_CAUGHT_SUDOWOODO, _01D5
	call_if_unset FLAG_CAUGHT_RED_GYARADOS, _01DB
	call_if_unset FLAG_CAUGHT_MEWTWO, _01E1
	call_if_unset FLAG_CAUGHT_ARTICUNO, _01E7
	call_if_unset FLAG_CAUGHT_ZAPDOS, _01ED
	call_if_unset FLAG_CAUGHT_MOLTRES, _0206
	goto_if_unset FLAG_CAUGHT_SNORLAX, _020C
_0105:
	call_if_unset FLAG_CAUGHT_SUICUNE, _0227
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _012D
	goto _023A

_012D:
	goto _024F

_0133:
	call_if_unset FLAG_CAUGHT_RAYQUAZA, _0264
	compare VAR_ROAMER_ENTEI_STATUS, 2
	call_if_eq _026A
	compare VAR_ROAMER_RAIKOU_STATUS, 2
	call_if_eq _0275
	compare VAR_ROAMER_LATIAS_STATUS, 2
	call_if_eq _0280
	compare VAR_ROAMER_LATIOS_STATUS, 2
	call_if_eq _028B
	hof_credits 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end


_0188:

	step 12, 14
	step 3, 2
	step_end

_0194:

	step 12, 12
	step 3, 2
	step 15, 1
	step 2, 2
	step_end

_01A8:

	step 0, 2
	step 12, 4
	step_end
_01B4:
	goto_if_set FLAG_GAME_CLEAR, _01C3
	setflag FLAG_UNK_998
_01C3:
	clearflag FLAG_UNK_25F
	return

_01C9:
	clearflag FLAG_HIDE_BELL_TOWER_HO_OH
	return

_01CF:
	clearflag FLAG_HIDE_WHIRL_ISLAND_LUGIA
	return

_01D5:
	clearflag FLAG_HIDE_ROUTE_36_SUDOWOODO
	return

_01DB:
	clearflag FLAG_HIDE_LAKE_OF_RAGE_RED_GYARADOS
	return

_01E1:
	clearflag FLAG_HIDE_CERULEAN_CAVE_MEWTWO
	return

_01E7:
	clearflag FLAG_HIDE_SEAFOAM_ISLAND_ARTICUNO
	return

_01ED:
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0204
	clearflag FLAG_HIDE_ROUTE_10_ZAPDOS
_0204:
	return

_0206:
	clearflag FLAG_HIDE_MT_SILVER_CAVE_MOLTRES
	return

_020C:
	goto_if_set FLAG_SNORLAX_MEET, _021D
	goto _0105

_021D:
	clearflag FLAG_HIDE_ROUTE_12_SNORLAX
	goto _0105

_0227:
	compare VAR_SCENE_ROUTE_25, 3
	goto_if_ne _0238
	clearflag FLAG_HIDE_BURNED_TOWER_STATIC_SUICUNE
_0238:
	return

_023A:
	goto_if_set FLAG_CAUGHT_KYOGRE, _0133
	clearflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	goto _0133

_024F:
	goto_if_set FLAG_CAUGHT_KYOGRE, _0133
	clearflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	goto _0133

_0264:
	clearflag FLAG_HIDE_EMBEDDED_TOWER_RAYQUAZA
	return

_026A:
	setvar VAR_ROAMER_ENTEI_STATUS, 0
	create_roamer 1
	return

_0275:
	setvar VAR_ROAMER_RAIKOU_STATUS, 0
	create_roamer 0
	return

_0280:
	setvar VAR_ROAMER_LATIAS_STATUS, 0
	create_roamer 2
	return

_028B:
	setvar VAR_ROAMER_LATIOS_STATUS, 0
	create_roamer 3
	return
	.align 4


.close
