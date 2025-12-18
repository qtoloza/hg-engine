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

.include "armips/scr_seq/event_D39R0101.inc"


// text archive to grab from: 122.txt

.create "build/a012/2_099", 0


scrdef scr_seq_D39R0101_000
scrdef scr_seq_D39R0101_001
scrdef scr_seq_D39R0101_002
scrdef scr_seq_D39R0101_003
scrdef scr_seq_D39R0101_004
scrdef scr_seq_D39R0101_005
scrdef_end

scr_seq_D39R0101_001:
	// === Zygarde Visibility Control (Tier 3) ===
	goto_if_set FLAG_HIDE_ZYGARDE, _zygarde_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_zygarde_entry
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _hide_zygarde_entry
	goto_if_unset FLAG_CAUGHT_YVELTAL, _hide_zygarde_entry
	clearflag FLAG_HIDE_ZYGARDE
	goto _zygarde_vis_done
_hide_zygarde_entry:
	setflag FLAG_HIDE_ZYGARDE
_zygarde_vis_done:
	// === Original Entry Script ===
	goto_if_unset FLAG_UNK_189, _0144
	clearflag FLAG_UNK_189
	end

scr_seq_D39R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4100, 1
	goto_if_eq _0168
	goto_if_set FLAG_HIDE_ITEMBALL_D39R0101_HM07, _0173
	npc_msg 1
	closemsg
	apply_movement obj_D39R0101_gsmiddleman1, _03E2
	wait_movement
	releaseall
	end

scr_seq_D39R0101_004:
	scrcmd_609
	lockall
	goto_if_set FLAG_HIDE_ITEMBALL_D39R0101_HM07, _0184
	apply_movement obj_D39R0101_gsmiddleman1, _03E8
	apply_movement obj_player, _03F2
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D39R0101_gsmiddleman1, _03E2
	apply_movement obj_player, _03FC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D39R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	callstd std_play_kimono_girl_music
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _01A7
	goto _01B9

scr_seq_D39R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E3
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01F7
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _020B
	apply_movement obj_player, _0402
	apply_movement obj_D39R0101_gsmiddleman1_2, _0418
	goto _0226

_0144:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0287
	compare VAR_TEMP_x4000, 6
	goto_if_eq _0287
	setflag FLAG_HIDE_CAMERON
	end

_0168:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0173:
	setvar VAR_UNK_4100, 1
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0184:
	apply_movement obj_D39R0101_gsmiddleman1, _03E8
	apply_movement obj_player, _03F2
	wait_movement
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_UNK_4100, 1
	end

_01A7:
	buffer_players_name 0
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	callstd std_fade_end_kimono_girl_music
	end

_01B9:
	buffer_players_name 0
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _028D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02ED
	end

_01E3:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F7:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_020B:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0314
	apply_movement obj_player, _0422
	goto _0226

_0226:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0337
	apply_movement obj_partner_poke, _042C
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 43
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

_0287:
	clearflag FLAG_HIDE_CAMERON
	end

_028D:
	play_se SEQ_SE_DP_WALL_HIT
	npc_msg 5
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement obj_D39R0101_dancer, _043A
	apply_movement 241, _0458
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_D39R0101_dancer, _045E
	wait_movement
	hide_person obj_D39R0101_dancer
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_kimono_girl_music
	setflag FLAG_UNK_239
	setvar VAR_UNK_40E8, 1
	apply_movement 241, _0464
	wait_movement
	scrcmd_103
	releaseall
	end

_02ED:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _028D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02ED
	end

_0314:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0371
	apply_movement obj_player, _046A
	apply_movement obj_D39R0101_gsmiddleman1_2, _0418
	goto _0226

_0337:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 43
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

_0371:
	apply_movement obj_player, _047C
	apply_movement obj_D39R0101_gsmiddleman1_2, _0418
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0337
	apply_movement obj_partner_poke, _042C
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 43
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
_03E2:

	step 1, 1
	step_end
	.align 4
_03E8:

	step 0, 1
	step 75, 1
	step_end
	.align 4
_03F2:

	step 63, 2
	step 1, 1
	step_end
	.align 4
_03FC:

	step 14, 1
	step_end
	.align 4
_0402:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0418:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0422:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_042C:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_043A:

	step 73, 0
	step 17, 5
	step 74, 0
	step 13, 2
	step 33, 1
	step 63, 1
	step 32, 2
	step_end
	.align 4
_0458:

	step 17, 4
	step_end
	.align 4
_045E:

	step 13, 4
	step_end
	.align 4
_0464:

	step 16, 4
	step_end
	.align 4
_046A:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_047C:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4

// Zygarde encounter (Lv50 Dragon/Ground)
scr_seq_D39R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _zygarde_not_postgame
	play_cry SPECIES_ZYGARDE, 0
	npc_msg 8
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ZYGARDE, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _zygarde_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _zygarde_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _zygarde_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _zygarde_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _zygarde_defeated
	setflag FLAG_HIDE_ZYGARDE
	hide_person obj_D39R0101_zygarde
	releaseall
	end

_zygarde_not_postgame:
	releaseall
	end

_zygarde_lost:
	white_out
	releaseall
	end

_zygarde_fled:
	releaseall
	end

_zygarde_defeated:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_zygarde_caught:
	setflag FLAG_CAUGHT_ZYGARDE
	return

	.align 4


.close
