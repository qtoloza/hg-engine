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

.include "armips/scr_seq/event_R39.inc"


// text archive to grab from: 396.txt

.create "build/a012/2_249", 0


scrdef scr_seq_R39_000
scrdef scr_seq_R39_001
scrdef scr_seq_R39_002
scrdef scr_seq_R39_003
scrdef scr_seq_R39_004
scrdef scr_seq_R39_005
scrdef scr_seq_R39_006
scrdef scr_seq_R39_007
scrdef scr_seq_R39_008
scrdef_end

scr_seq_R39_001:
	goto_if_unset FLAG_UNK_189, _01D8
	clearflag FLAG_UNK_189
	end

scr_seq_R39_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MILTANK, 0
	npc_msg 3
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R39_002:
	scrcmd_609
	lockall
	apply_movement obj_R39_gsgentleman, _0778
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 171
	goto_if_ne _0200
	apply_movement obj_R39_gsgentleman, _0782
	goto _021B

scr_seq_R39_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0271
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0285
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0299
	apply_movement obj_player, _078C
	apply_movement obj_R39_gsmiddleman1_2, _07A2
	goto _02B4

scr_seq_R39_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0315
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0320
	npc_msg 11
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 80
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R39_003:
	direction_signpost 0, 1, 21, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R39_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R39_005:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 2, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R39_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 16291, _032B
	npc_msg 15
	closemsg
	apply_movement obj_R39_idol, _07AC
	wait_movement
	faceplayer
	npc_msg 16
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	setflag 16291
	releaseall
	end

_01D8:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_eq _034F
	compare VAR_TEMP_x4000, 0
	goto_if_eq _034F
	setflag FLAG_HIDE_CAMERON
	goto _037B

_0200:
	compare VAR_TEMP_x4001, 172
	goto_if_ne _03A3
	apply_movement obj_R39_gsgentleman, _07B2
	goto _021B

_021B:
	wait_movement
	npc_msg 4
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0401
	npc_msg 6
	register_gear_number PHONE_CONTACT_BAOBA
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 9
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 171
	goto_if_ne _0422
	apply_movement obj_R39_gsgentleman, _07B8
	goto _043D

_0271:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0285:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0299:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0451
	apply_movement obj_player, _07C6
	goto _02B4

_02B4:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0474
	apply_movement obj_partner_poke, _07D0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 28
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

_0315:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0320:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_032B:
	faceplayer
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 182
	goto_if_eq _04AE
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_034F:
	clearflag FLAG_HIDE_CAMERON
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _04D1
	compare VAR_TEMP_x4000, 4
	goto_if_eq _04D1
	clearflag FLAG_UNK_226
	goto _050E

_037B:
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _04D1
	compare VAR_TEMP_x4000, 4
	goto_if_eq _04D1
	clearflag FLAG_UNK_226
	goto _050E

_03A3:
	apply_movement obj_R39_gsgentleman, _07DE
	wait_movement
	npc_msg 4
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0401
	npc_msg 6
	register_gear_number PHONE_CONTACT_BAOBA
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 9
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 171
	goto_if_ne _0422
	apply_movement obj_R39_gsgentleman, _07B8
	goto _043D

_0401:
	npc_msg 7
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0401
	goto _0547

_0422:
	compare VAR_TEMP_x4001, 172
	goto_if_ne _0580
	apply_movement obj_R39_gsgentleman, _07E8
	goto _043D

_043D:
	wait_movement
	hide_person obj_R39_gsgentleman
	setflag FLAG_UNK_228
	releaseall
	setvar VAR_UNK_408F, 1
	end

_0451:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _059C
	apply_movement obj_player, _07F6
	apply_movement obj_R39_gsmiddleman1_2, _07A2
	goto _02B4

_0474:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 28
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

_04AE:
	npc_msg 18
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _060D
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04D1:
	setflag FLAG_UNK_226
	goto_if_unset FLAG_TRADE_LT_SURGE_PIKACHU, _0661
	get_phone_book_rematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0661
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0667
	clearflag FLAG_UNK_314
	goto _067E

_050E:
	goto_if_unset FLAG_TRADE_LT_SURGE_PIKACHU, _0661
	get_phone_book_rematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0661
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0667
	clearflag FLAG_UNK_314
	goto _067E

_0547:
	npc_msg 6
	register_gear_number PHONE_CONTACT_BAOBA
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 9
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 171
	goto_if_ne _0422
	apply_movement obj_R39_gsgentleman, _07B8
	goto _043D

_0580:
	apply_movement obj_R39_gsgentleman, _0808
	wait_movement
	hide_person obj_R39_gsgentleman
	setflag FLAG_UNK_228
	releaseall
	setvar VAR_UNK_408F, 1
	end

_059C:
	apply_movement obj_player, _0816
	apply_movement obj_R39_gsmiddleman1_2, _07A2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0474
	apply_movement obj_partner_poke, _07D0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 28
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

_060D:
	npc_msg 20
	closemsg
	play_cry SPECIES_BELLOSSOM, 6
	wait_cry
	buffer_players_name 0
	apply_movement obj_R39_idol, _0828
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0680
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _069A
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _082E
	wait_movement
	goto _06B4

_0661:
	setflag FLAG_UNK_314
	end

_0667:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0772
	clearflag FLAG_UNK_314
	goto _067E

_067E:
	end

_0680:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _083C
	wait_movement
	goto _06B4

_069A:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0846
	wait_movement
	goto _06B4

_06B4:
	lockall
	release obj_partner_poke
	apply_movement obj_partner_poke, _0854
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _0862
	fade_out_bgm 0, 50
	play_bgm SEQ_GS_OTSUKIMI_EVENT
	apply_movement obj_partner_poke, _0868
	wait_movement
	play_cry SPECIES_BELLOSSOM, 0
	wait_cry
	fade_out_bgm 0, 50
	apply_movement obj_partner_poke, _0922
	apply_movement obj_R39_idol, _092C
	apply_movement obj_player, _0936
	wait_movement
	play_bgm SEQ_GS_R_6_38
	apply_movement 241, _093C
	wait_movement
	scrcmd_103
	lockall
	npc_msg 21
	giveitem_no_check ITEM_TM053, 1
	apply_movement obj_R39_idol, _07AC
	npc_msg 22
	wait_movement
	npc_msg 23
	giveitem_no_check ITEM_MEADOW_PLATE, 1
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	apply_movement obj_R39_idol, _0942
	wait_movement
	hide_person obj_R39_idol
	releaseall
	end

_0772:
	goto _0661

	.align 4
_0778:

	step 75, 1
	step 35, 1
	step_end
	.align 4
_0782:

	step 12, 1
	step 15, 2
	step_end
	.align 4
_078C:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_07A2:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_07AC:

	step 75, 1
	step_end
	.align 4
_07B2:

	step 15, 2
	step_end
	.align 4
_07B8:

	step 13, 1
	step 14, 2
	step 13, 9
	step_end
	.align 4
_07C6:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_07D0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_07DE:

	step 13, 1
	step 15, 2
	step_end
	.align 4
_07E8:

	step 13, 1
	step 14, 2
	step 13, 8
	step_end
	.align 4
_07F6:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0808:

	step 13, 1
	step 14, 2
	step 13, 7
	step_end
	.align 4
_0816:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0828:

	step 1, 1
	step_end
	.align 4
_082E:

	step 13, 1
	step 14, 2
	step 1, 1
	step_end
	.align 4
_083C:

	step 14, 3
	step 1, 1
	step_end
	.align 4
_0846:

	step 13, 1
	step 14, 4
	step 1, 1
	step_end
	.align 4
_0854:

	step 13, 1
	step 14, 1
	step 13, 2
	step_end
	.align 4
_0862:

	step 77, 3
	step_end
	.align 4
_0868:

	step 14, 1
	step 1, 1
	step 49, 1
	step 15, 2
	step 1, 1
	step 49, 1
	step 14, 1
	step 1, 1
	step 49, 2
	step 2, 1
	step 60, 1
	step 34, 1
	step 0, 1
	step 60, 1
	step 32, 1
	step 3, 1
	step 60, 1
	step 35, 1
	step 1, 1
	step 60, 1
	step 33, 1
	step 2, 1
	step 60, 1
	step 34, 1
	step 0, 1
	step 60, 1
	step 32, 1
	step 3, 1
	step 60, 1
	step 35, 1
	step 1, 1
	step 60, 1
	step 33, 1
	step 2, 1
	step 60, 1
	step 34, 1
	step 0, 1
	step 60, 1
	step 32, 1
	step 3, 1
	step 60, 1
	step 35, 1
	step 1, 1
	step 60, 1
	step 33, 1
	step 49, 2
	step_end
	.align 4
_0922:

	step 12, 2
	step 3, 1
	step_end
	.align 4
_092C:

	step 13, 1
	step 14, 2
	step_end
	.align 4
_0936:

	step 3, 1
	step_end
	.align 4
_093C:

	step 76, 3
	step_end
	.align 4
_0942:

	step 12, 1
	step 14, 2
	step 12, 10
	step_end
	.align 4


.close
