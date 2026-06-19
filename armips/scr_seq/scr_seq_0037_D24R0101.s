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

.include "armips/scr_seq/event_D24R0101.inc"


// text archive to grab from: 072.txt

.create "build/a012/2_037", 0


scrdef scr_seq_D24R0101_000
scrdef scr_seq_D24R0101_001
scrdef scr_seq_D24R0101_002
scrdef scr_seq_D24R0101_003
scrdef scr_seq_D24R0101_004
scrdef scr_seq_D24R0101_005
scrdef scr_seq_D24R0101_006
scrdef scr_seq_D24R0101_007
scrdef scr_seq_D24R0101_008
scrdef scr_seq_D24R0101_009
scrdef scr_seq_D24R0101_010
scrdef_end

scr_seq_D24R0101_006:
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _0167
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _0189
	move_warp 11, 418, 284
	move_warp 12, 419, 284
	move_warp 13, 418, 284
	move_warp 14, 419, 284
	end

scr_seq_D24R0101_005:
	// === Hoopa Visibility Control (Tier 4) ===
	goto_if_set FLAG_HIDE_HOOPA, _hoopa_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_hoopa_entry
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _hide_hoopa_entry
	clearflag FLAG_HIDE_HOOPA
	goto _hoopa_vis_done
_hide_hoopa_entry:
	setflag FLAG_HIDE_HOOPA
_hoopa_vis_done:
	// === Original Entry Script ===
	goto_if_unset FLAG_UNK_189, _01AB
	clearflag FLAG_UNK_189
	end

scr_seq_D24R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0206
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021A
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _022E
	apply_movement obj_player, _0796
	apply_movement obj_D24R0101_gsmiddleman1, _07AC
	goto _0249

scr_seq_D24R0101_007:
	scrcmd_609
	lockall
	get_party_lead_alive VAR_TEMP_x4005
	follower_poke_is_event_trigger 2, VAR_TEMP_x4005, VAR_TEMP_x4006
	compare VAR_TEMP_x4006, 0
	goto_if_eq _02AA
	goto _0320

scr_seq_D24R0101_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 10, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D24R0101_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 9, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D24R0101_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 7, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D24R0101_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 8, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D24R0101_008:
	buffer_players_name 0
	end

_0167:
	move_warp 8, 418, 284
	move_warp 9, 419, 284
	move_warp 11, 418, 284
	move_warp 12, 419, 284
	end

_0189:
	move_warp 8, 418, 284
	move_warp 9, 419, 284
	move_warp 13, 418, 284
	move_warp 14, 419, 284
	end

_01AB:
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 9
	goto_if_ge _0382
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 1
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03CA
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _03D4
	compare VAR_TEMP_x4000, 6
	goto_if_eq _03D4
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03D4
	setflag FLAG_HIDE_CAMERON
	goto _03F8

_0206:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021A:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_022E:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0418
	apply_movement obj_player, _07B6
	goto _0249

_0249:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0489
	apply_movement obj_partner_poke, _07C0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 3
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

_02AA:
	follower_poke_is_event_trigger 1, VAR_TEMP_x4005, VAR_TEMP_x4007
	compare VAR_TEMP_x4007, 0
	goto_if_eq _04C3
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04C3
	scrcmd_307 13, 8, 25, 29, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_HIDE_ALPH_OUTSIDE_ARCEUS_EVENT_SUIT
	show_person obj_D24R0101_suit
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement obj_D24R0101_suit, _07CE
	apply_movement obj_player, _07E4
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _04C7
	apply_movement obj_partner_poke, _07FA
	goto _04E2

_0320:
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04C3
	scrcmd_307 13, 8, 25, 29, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_HIDE_ALPH_OUTSIDE_ARCEUS_EVENT_SUIT
	show_person obj_D24R0101_suit
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement obj_D24R0101_suit, _07CE
	apply_movement obj_player, _07E4
	get_player_facing VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _04C7
	apply_movement obj_partner_poke, _07FA
	goto _04E2

_0382:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03CA
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _03D4
	compare VAR_TEMP_x4000, 6
	goto_if_eq _03D4
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03D4
	setflag FLAG_HIDE_CAMERON
	goto _03F8

_03CA:
	setflag FLAG_HIDE_CAMERON
	goto _03F8

_03D4:
	clearflag FLAG_HIDE_CAMERON
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _0167
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _0189
	goto _050C

_03F8:
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _0167
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _0189
	goto _050C

_0418:
	apply_movement obj_player, _0810
	apply_movement obj_D24R0101_gsmiddleman1, _07AC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0489
	apply_movement obj_partner_poke, _07C0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 3
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

_0489:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 3
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

_04C3:
	releaseall
	end

_04C7:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _052E
	apply_movement obj_partner_poke, _0822
	goto _04E2

_04E2:
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_D24R0101_suit, _0830
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0560
	apply_movement obj_partner_poke, _0836
	goto _057B

_050C:
	move_warp 11, 418, 284
	move_warp 12, 419, 284
	move_warp 13, 418, 284
	move_warp 14, 419, 284
	end

_052E:
	apply_movement obj_partner_poke, _0844
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_D24R0101_suit, _0830
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0560
	apply_movement obj_partner_poke, _0836
	goto _057B

_0560:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _059D
	apply_movement obj_partner_poke, _0852
	goto _057B

_057B:
	wait_movement
	npc_msg 2
	closemsg
	compare VAR_TEMP_x4001, 3
	goto_if_ne _05C7
	apply_movement obj_D24R0101_suit, _085C
	goto _064C

_059D:
	apply_movement obj_partner_poke, _0876
	wait_movement
	npc_msg 2
	closemsg
	compare VAR_TEMP_x4001, 3
	goto_if_ne _05C7
	apply_movement obj_D24R0101_suit, _085C
	goto _064C

_05C7:
	apply_movement obj_D24R0101_suit, _0888
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D24R0101_suit, _089A
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D24R0101_suit, _08B8
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D24R0101_suit, _08C6
	wait_movement
	npc_msg 6
	closemsg
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 2
	setflag FLAG_HIDE_ALPH_OUTSIDE_ARCEUS_EVENT_SUIT
	clearflag FLAG_HIDE_ALPH_MAIN_CHAMBER_ARCEUS_EVENT_PEOPLE
	play_se SEQ_SE_DP_KAIDAN2
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_ne _06C9
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0216, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _04C3

_064C:
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D24R0101_suit, _089A
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D24R0101_suit, _08B8
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D24R0101_suit, _08C6
	wait_movement
	npc_msg 6
	closemsg
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 2
	setflag FLAG_HIDE_ALPH_OUTSIDE_ARCEUS_EVENT_SUIT
	clearflag FLAG_HIDE_ALPH_MAIN_CHAMBER_ARCEUS_EVENT_PEOPLE
	play_se SEQ_SE_DP_KAIDAN2
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_ne _06C9
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0216, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _04C3

_06C9:
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ne _0700
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0218, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _04C3

_0700:
	compare VAR_UNOWN_REPORT_LEVEL, 8
	goto_if_ne _0737
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0218, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _04C3

_0737:
	compare VAR_UNOWN_REPORT_LEVEL, 9
	goto_if_ne _076E
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0218, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _04C3

_076E:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0205, 0, 15, 24, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0796:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_07AC:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_07B6:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_07C0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_07CE:

	step 62, 1
	step 17, 3
	step 71, 1
	step 20, 1
	step 72, 1
	step_end
	.align 4
_07E4:

	step 71, 1
	step 57, 1
	step 17, 2
	step 72, 1
	step 32, 1
	step_end
	.align 4
_07FA:

	step 71, 1
	step 18, 1
	step 72, 1
	step 63, 2
	step 33, 1
	step_end
	.align 4
_0810:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0822:

	step 50, 1
	step 63, 3
	step 33, 1
	step_end
	.align 4
_0830:

	step 17, 1
	step_end
	.align 4
_0836:

	step 13, 3
	step 15, 1
	step 32, 1
	step_end
	.align 4
_0844:

	step 71, 1
	step 17, 5
	step 72, 1
	step_end
	.align 4
_0852:

	step 13, 4
	step 32, 1
	step_end
	.align 4
_085C:

	step 38, 1
	step 75, 1
	step 63, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4
_0876:

	step 63, 2
	step 12, 1
	step 15, 1
	step 12, 1
	step_end
	.align 4
_0888:

	step 75, 1
	step 63, 1
	step 15, 1
	step 37, 1
	step_end
	.align 4
_089A:

	step 15, 1
	step 14, 2
	step 63, 1
	step 15, 2
	step 39, 1
	step 14, 1
	step 37, 1
	step_end
	.align 4
_08B8:

	step 75, 1
	step 63, 1
	step 37, 1
	step_end
	.align 4
_08C6:

	step 14, 1
	step 13, 1
	step 37, 1
	step_end
	.align 4

// Hoopa encounter (Lv45 Psychic/Ghost)
scr_seq_D24R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _hoopa_not_postgame
	play_cry SPECIES_HOOPA, 0
	npc_msg 13
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_HOOPA, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _hoopa_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _hoopa_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _hoopa_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _hoopa_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _hoopa_defeated
	setflag FLAG_HIDE_HOOPA
	hide_person obj_D24R0101_hoopa
	releaseall
	end

_hoopa_not_postgame:
	releaseall
	end

_hoopa_lost:
	white_out
	releaseall
	end

_hoopa_fled:
	releaseall
	end

_hoopa_defeated:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_hoopa_caught:
	setflag FLAG_CAUGHT_HOOPA
	return

	.align 4

// Researcher NPC - Hoopa hint
scr_seq_D24R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	// Hoopa hint dialogue
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _researcher_normal
	goto_if_set FLAG_CAUGHT_HOOPA, _researcher_post_hoopa
	// Pre-Hoopa hint
	npc_msg 12
	goto _researcher_end
_researcher_post_hoopa:
	npc_msg 13
	goto _researcher_end
_researcher_normal:
	npc_msg 12
_researcher_end:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4


.close
