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

.include "armips/scr_seq/event_D41R0101.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_105", 0


scrdef scr_seq_D41R0101_000
scrdef scr_seq_D41R0101_001
scrdef scr_seq_D41R0101_002
scrdef scr_seq_D41R0101_003
scrdef_end

scr_seq_D41R0101_001:
	goto_if_unset FLAG_UNK_189, _012B
	clearflag FLAG_UNK_189
	end

scr_seq_D41R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0146
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _015A
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _016E
	apply_movement obj_player, _02C4
	apply_movement obj_D41R0101_gsmiddleman1, _02DA
	goto _0189

scr_seq_D41R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	player_has_species VAR_SPECIAL_RESULT, SPECIES_REGIROCK
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01EA
	player_has_species VAR_SPECIAL_RESULT, SPECIES_REGICE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01EA
	player_has_species VAR_SPECIAL_RESULT, SPECIES_REGISTEEL
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01EA
	apply_movement obj_player, _02E4
	wait_movement
	play_se SEQ_SE_GS_STOPPERKAIJO
	fade_screen 20, 1, 0, RGB_WHITE
	wait_fade
	wait_se SEQ_SE_GS_STOPPERKAIJO
	play_se SEQ_SE_GS_ZUTUKI
	wait_se SEQ_SE_GS_ZUTUKI
	hide_person obj_D41R0101_babyboy1_12
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D41R0101_003:
	buffer_players_name 0
	end

_012B:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _01EE
	clearflag FLAG_HIDE_CAMERON
	goto _01F4

_0146:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_015A:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016E:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01F6
	apply_movement obj_player, _02EA
	goto _0189

_0189:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0219
	apply_movement obj_partner_poke, _02F4
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 78
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

_01EA:
	releaseall
	end

_01EE:
	setflag FLAG_HIDE_CAMERON
	end

_01F4:
	end

_01F6:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0253
	apply_movement obj_player, _0302
	apply_movement obj_D41R0101_gsmiddleman1, _02DA
	goto _0189

_0219:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 78
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

_0253:
	apply_movement obj_player, _0314
	apply_movement obj_D41R0101_gsmiddleman1, _02DA
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0219
	apply_movement obj_partner_poke, _02F4
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 78
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

	.align 4
_02C4:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_02DA:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_02E4:

	step 75, 1
	step_end
	.align 4
_02EA:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_02F4:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_0302:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0314:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
