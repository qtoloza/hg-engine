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

.include "armips/scr_seq/event_P01R0102.inc"


// text archive to grab from: 256.txt

.create "build/a012/2_153", 0


scrdef scr_seq_P01R0102_000
scrdef scr_seq_P01R0102_001
scrdef scr_seq_P01R0102_002
scrdef scr_seq_P01R0102_003
scrdef scr_seq_P01R0102_004
scrdef scr_seq_P01R0102_005
scrdef scr_seq_P01R0102_006
scrdef_end

scr_seq_P01R0102_001:
	compare VAR_BOAT_DIRECTION, 2
	goto_if_eq _002D
	end

_002D:
	move_person_facing obj_P01R0102_seaman_2, 28, 0, 22, DIR_WEST
	end

scr_seq_P01R0102_005:
	scrcmd_582 MAP_T26, 279, 276
	goto_if_unset FLAG_UNK_189, _0054
	clearflag FLAG_UNK_189
	end

_0054:
	check_registered_phone_number PHONE_CONTACT_SABRINA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0097
	check_badge BADGE_MARSH, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0080
	goto _00C1

_0080:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _00C1
	clearflag FLAG_UNK_2C9
	end

_0097:
	get_phone_book_rematch PHONE_CONTACT_SABRINA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00C1
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _00C1
	clearflag FLAG_UNK_2C9
	end

_00C1:
	setflag FLAG_UNK_2C9
	end

scr_seq_P01R0102_002:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0104
	wait_movement
	apply_movement obj_P01R0102_seaman_2, _010C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_BOAT_DIRECTION, 0
	clearflag FLAG_UNK_092
	releaseall
	end


_0104:

	step 13, 3
	step_end

_010C:

	step 14, 1
	step 33, 1
	step_end
scr_seq_P01R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_P01R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	closemsg
	apply_movement obj_P01R0102_gswoman2, _0144
	wait_movement
	releaseall
	end


_0144:

	step 32, 1
	step_end
scr_seq_P01R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BOAT_ARRIVED, _0211
	npc_msg 0
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0197
	apply_movement obj_P01R0102_seaman_2, _021C
	wait_movement
	apply_movement obj_player, _024C
	goto _01F3

_0197:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _01BC
	apply_movement obj_P01R0102_seaman_2, _022C
	wait_movement
	apply_movement obj_player, _025C
	goto _01F3

_01BC:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _01E1
	apply_movement obj_P01R0102_seaman_2, _023C
	wait_movement
	apply_movement obj_player, _026C
	goto _01F3

_01E1:
	apply_movement obj_P01R0102_seaman_2, _023C
	wait_movement
	apply_movement obj_player, _026C
_01F3:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_723 0, 0, 307, 24, 19
	releaseall
	end

_0211:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_021C:

	step 2, 1
	step 14, 1
	step 35, 1
	step_end

_022C:

	step 3, 1
	step 15, 1
	step 34, 1
	step_end

_023C:

	step 3, 1
	step 15, 1
	step 34, 1
	step_end

_024C:

	step 14, 1
	step 0, 1
	step 12, 2
	step_end

_025C:

	step 15, 1
	step 0, 1
	step 12, 2
	step_end

_026C:

	step 12, 2
	step_end
scr_seq_P01R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_SABRINA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0322
	compare VAR_TEMP_x4004, 1
	goto_if_ge _0317
	npc_msg 4
_029F:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02C3
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0306
	end

_02C3:
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_SABRINA
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_2C9
	hide_person obj_P01R0102_gsleader10
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0306:
	setvar VAR_TEMP_x4004, 1
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0317:
	npc_msg 8
	goto _029F

_0322:
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0383
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _038E
	npc_msg 10
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 88
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0383:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_038E:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
