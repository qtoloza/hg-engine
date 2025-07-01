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

.include "armips/scr_seq/event_D24R0217.inc"


// text archive to grab from: 085.txt

.create "build/a012/2_054", 0


scrdef scr_seq_D24R0217_000
scrdef scr_seq_D24R0217_001
scrdef scr_seq_D24R0217_002
scrdef scr_seq_D24R0217_003
scrdef_end

scr_seq_D24R0217_002:
	goto_if_unset FLAG_UNK_189, _0023
	clearflag FLAG_UNK_189
	end

_0023:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0061
	get_weekday VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0067
	compare VAR_TEMP_x4001, 2
	goto_if_eq _0067
	compare VAR_TEMP_x4001, 4
	goto_if_eq _0067
_0061:
	setflag FLAG_HIDE_CAMERON
	end

_0067:
	clearflag FLAG_HIDE_CAMERON
	end

scr_seq_D24R0217_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D24R0217_001:
	end

scr_seq_D24R0217_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0197
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01AB
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _00F9
	apply_movement obj_player, _01C0
	apply_movement obj_D24R0217_gsmiddleman1, _020C
	goto _0147

_00F9:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0114
	apply_movement obj_player, _01D8
	goto _0147

_0114:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0137
	apply_movement obj_player, _01F8
	apply_movement obj_D24R0217_gsmiddleman1, _020C
	goto _0147

_0137:
	apply_movement obj_player, _01E4
	apply_movement obj_D24R0217_gsmiddleman1, _020C
_0147:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_partner_poke, _0218
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 4
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0197:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AB:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_01C0:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_01D8:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_01E4:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_01F8:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_020C:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0218:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4


.close
