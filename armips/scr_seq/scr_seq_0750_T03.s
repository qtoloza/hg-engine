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

.include "armips/scr_seq/event_T03.inc"


// text archive to grab from: 460.txt

.create "build/a012/2_750", 0


scrdef scr_seq_T03_000
scrdef scr_seq_T03_001
scrdef scr_seq_T03_002
scrdef scr_seq_T03_003
scrdef scr_seq_T03_004
scrdef scr_seq_T03_005
scrdef scr_seq_T03_006
scrdef scr_seq_T03_007
scrdef scr_seq_T03_008
scrdef scr_seq_T03_009
scrdef scr_seq_T03_010
scrdef scr_seq_T03_011
scrdef scr_seq_T03_012
scrdef scr_seq_T03_013
scrdef scr_seq_T03_014
scrdef scr_seq_T03_015
scrdef_end

scr_seq_T03_008:
	goto_if_unset FLAG_UNK_189, _02AD
	clearflag FLAG_UNK_189
	end

scr_seq_T03_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _02B3
	goto_if_set FLAG_UNK_094, _02F4
	goto _02FF

scr_seq_T03_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0335
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0349
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _035D
	apply_movement obj_player, _086A
	goto _0380

scr_seq_T03_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	give_egg SPECIES_PHIONE, 12
	give_egg SPECIES_PHIONE, 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03_002:
	simple_npc_msg 1
	end

scr_seq_T03_003:
	direction_signpost 20, 0, 3, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T03_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 21, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T03_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 22, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T03_006:
	direction_signpost 23, 2, 0, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T03_011:
	compare VAR_UNK_4083, 2
	goto_if_eq _03E1
	end

scr_seq_T03_013:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _03EF
	end

scr_seq_T03_012:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0874
	wait_movement
	apply_movement obj_T03_daigo, _087E
	wait_movement
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0419
	npc_msg 6
	goto _0454

scr_seq_T03_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_546 0, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _048C
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0490
	setvar VAR_TEMP_x400A, 381
	play_cry VAR_TEMP_x400A, 0
	npc_msg 10
	goto _0508

scr_seq_T03_009:
	simple_npc_msg 19
	end

scr_seq_T03_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_LATIAS, 0
	npc_msg 6
	closemsg
	wait_cry
	wild_battle SPECIES_LATIAS, 50, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F4
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_T03_gswoman3
	setflag 16349
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T03_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 25
	closemsg
	buffer_players_name 0
	apply_movement obj_player, _08EA
	wait_movement
	hide_person obj_T03_champion
	giveitem_no_check ITEM_STONE_PLATE, 1
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AD:
	goto _0571

_02B3:
	goto_if_set FLAG_UNK_093, _02F4
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _059E
	setvar VAR_SPECIAL_x8004, 482
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	setflag FLAG_UNK_094
	clearflag FLAG_HIDE_WHIRL_ISLAND_LUGIA
	setflag FLAG_HIDE_WHIRL_ISLANDS_BOTTOM_KIMONO_GIRLS
	goto _05C0

_02F4:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02FF:
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _059E
	setvar VAR_SPECIAL_x8004, 482
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	setflag FLAG_UNK_094
	clearflag FLAG_HIDE_WHIRL_ISLAND_LUGIA
	setflag FLAG_HIDE_WHIRL_ISLANDS_BOTTOM_KIMONO_GIRLS
	goto _05C0

_0335:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0349:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_035D:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _05C6
	apply_movement obj_player, _0884
	apply_movement obj_T03_gsmiddleman1, _0896
	goto _0380

_0380:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0637
	apply_movement obj_partner_poke, _08A0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 66
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

_03E1:
	move_person_facing obj_T03_daigo, 1047, 6, 81, DIR_WEST
	end

_03EF:
	goto_if_set 16383, _0490
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0671
	setflag FLAG_HIDE_PEWTER_CITY_LATIOS
	hide_person obj_T03_follower_mon_static_latios
	goto _067B

_0419:
	npc_msg 7
	closemsg
	apply_movement obj_T03_daigo, _08AE
	apply_movement obj_player, _08AE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0681
	npc_msg 8
	goto _0692

_0454:
	closemsg
	apply_movement obj_T03_daigo, _08AE
	apply_movement obj_player, _08AE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0681
	npc_msg 8
	goto _0692

_048C:
	releaseall
	end

_0490:
	setvar VAR_TEMP_x400A, 380
	play_cry VAR_TEMP_x400A, 0
	npc_msg 11
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle VAR_TEMP_x400A, 40, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	get_static_encounter_outcome VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _06A0
	compare VAR_TEMP_x4000, 3
	goto_if_eq _06A0
	lati_caught_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A8
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06C2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _06E1
	npc_msg 12
	goto _06F9

_0508:
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle VAR_TEMP_x400A, 40, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	get_static_encounter_outcome VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _06A0
	compare VAR_TEMP_x4000, 3
	goto_if_eq _06A0
	lati_caught_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06A8
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06C2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _06E1
	npc_msg 12
	goto _06F9

_0571:
	compare VAR_UNK_4083, 4
	goto_if_eq _070E
	compare VAR_UNK_4083, 2
	goto_if_eq _0729
	compare VAR_UNK_4083, 3
	goto_if_eq _0729
	goto _0748

_059E:
	setvar VAR_SPECIAL_x8004, 483
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	setflag FLAG_UNK_093
	clearflag FLAG_HIDE_BELL_TOWER_HO_OH
	setflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	closemsg
	releaseall
	end

_05C0:
	closemsg
	releaseall
	end

_05C6:
	apply_movement obj_player, _08B4
	apply_movement obj_T03_gsmiddleman1, _0896
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0637
	apply_movement obj_partner_poke, _08A0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 66
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

_0637:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 66
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

_0671:
	setflag FLAG_HIDE_PEWTER_CITY_LATIAS
	hide_person obj_T03_follower_mon_static_latias
	end

_067B:
	goto _0508

_0681:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4083, 3
	releaseall
	end

_0692:
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4083, 3
	releaseall
	end

_06A0:
	white_out
	goto _048C

_06A8:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _06E1
	npc_msg 12
	goto _06F9

_06C2:
	copyvar VAR_TEMP_x4009, VAR_UNK_4083
	setvar VAR_UNK_4083, 5
	compare VAR_TEMP_x4009, 4
	goto_if_eq _048C
	goto _076C

_06E1:
	npc_msg 13
	closemsg
	compare VAR_UNK_4083, 4
	goto_if_eq _048C
	goto _076C

_06F9:
	closemsg
	compare VAR_UNK_4083, 4
	goto_if_eq _048C
	goto _076C

_070E:
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _07D3
	clearflag FLAG_HIDE_PEWTER_CITY_LATIOS
	goto _07D9

_0729:
	clearflag FLAG_HIDE_PEWTER_CITY_STEVEN
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _07D3
	clearflag FLAG_HIDE_PEWTER_CITY_LATIOS
	goto _07D9

_0748:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _07DB
	compare VAR_TEMP_x4000, 6
	goto_if_eq _07DB
	setflag FLAG_HIDE_CAMERON
	end

_076C:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T03_daigo, _08C6
	apply_movement obj_player, _08D0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4000, 5
	goto_if_eq _07E1
	compare VAR_TEMP_x4000, 1
	goto_if_eq _07F2
	compare VAR_TEMP_x4000, 4
	goto_if_eq _080C
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0817
	npc_msg 16
	goto _0828

_07D3:
	clearflag FLAG_HIDE_PEWTER_CITY_LATIAS
	end

_07D9:
	end

_07DB:
	clearflag FLAG_HIDE_CAMERON
	end

_07E1:
	npc_msg 18
	closemsg
	setvar VAR_UNK_4083, 4
	goto _0836

_07F2:
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0817
	npc_msg 16
	goto _0828

_080C:
	npc_msg 14
	closemsg
	goto _0836

_0817:
	npc_msg 17
	closemsg
	setvar VAR_UNK_4083, 4
	goto _0836

_0828:
	closemsg
	setvar VAR_UNK_4083, 4
	goto _0836

_0836:
	apply_movement obj_T03_daigo, _08DE
	wait_movement
	npc_msg 15
	closemsg
	apply_movement obj_T03_daigo, _08E4
	wait_movement
	hide_person obj_T03_daigo
	compare VAR_UNK_4130, 4
	call_if_eq _0864
	releaseall
	end

_0864:
	clearflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	return

	.align 4
_086A:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0874:

	step 13, 4
	step 2, 1
	step_end
	.align 4
_087E:

	step 33, 1
	step_end
	.align 4
_0884:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0896:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_08A0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_08AE:

	step 14, 3
	step_end
	.align 4
_08B4:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_08C6:

	step 13, 2
	step 14, 1
	step_end
	.align 4
_08D0:

	step 63, 1
	step 15, 2
	step 63, 1
	step_end
	.align 4
_08DE:

	step 34, 1
	step_end
	.align 4
_08E4:

	step 15, 8
	step_end
	.align 4
_08EA:

	step 75, 1
	step_end
	.align 4


.close
