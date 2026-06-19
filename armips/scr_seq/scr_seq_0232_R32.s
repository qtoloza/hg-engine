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

.include "armips/scr_seq/event_R32.inc"


// text archive to grab from: 380.txt

.create "build/a012/2_232", 0


scrdef scr_seq_R32_000
scrdef scr_seq_R32_001
scrdef scr_seq_R32_002
scrdef scr_seq_R32_003
scrdef scr_seq_R32_004
scrdef scr_seq_R32_005
scrdef scr_seq_R32_006
scrdef scr_seq_R32_007
scrdef scr_seq_R32_008
scrdef scr_seq_R32_009
scrdef scr_seq_R32_010
scrdef_end

scr_seq_R32_004:
	goto_if_unset FLAG_UNK_189, _02C7
	clearflag FLAG_UNK_189
	end

scr_seq_R32_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_RELAX
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _030F
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _0323
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0337
	goto_if_set FLAG_GOT_POISON_BARB_FROM_FRIEDA, _035A
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _036E
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 19
	goto _03BD

scr_seq_R32_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM05_FROM_ROUTE_32_MAN, _03C5
	npc_msg 10
	goto_if_no_item_space ITEM_TM005, 1, _03D0
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM05_FROM_ROUTE_32_MAN
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R32_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03DA
	goto_if_unset FLAG_UNK_070, _03E3
	goto_if_unset FLAG_UNK_074, _03EF
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R32_002:
	scrcmd_609
	lockall
	apply_movement obj_R32_gsmiddleman1, _0832
	wait_movement
	npc_msg 0
	closemsg
	goto_if_set FLAG_UNK_070, _03FF
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0438
	apply_movement obj_R32_gsmiddleman1, _083C
	apply_movement obj_player, _0846
	goto _0470

scr_seq_R32_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0498
	npc_msg 15
	goto _04A3

scr_seq_R32_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04AB
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BF
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04D3
	apply_movement obj_player, _0854
	apply_movement obj_R32_gsmiddleman1_2, _086A
	goto _04EE

scr_seq_R32_006:
	direction_signpost 18, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_007:
	direction_signpost 17, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_008:
	direction_signpost 19, 1, 13, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SKIPLOOM, 0
	wait_cry
	wild_battle SPECIES_SKIPLOOM, 18, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _054F
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 19
	setflag 16373
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	lockall
	npc_msg 20
	giveitem_no_check ITEM_TM086, 1
	closemsg
	releaseall
	end

_02C7:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0555
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _055F
	compare VAR_TEMP_x4000, 4
	goto_if_eq _055F
	compare VAR_TEMP_x4000, 6
	goto_if_eq _055F
	setflag FLAG_HIDE_CAMERON
	goto _0569

_030F:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 45
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0323:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 47
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0337:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0584
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 19
	goto _03BD

_035A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_036E:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 16
	goto_if_no_item_space ITEM_POISON_BARB, 1, _05AD
	callstd std_give_item_verbose
	setflag FLAG_GOT_POISON_BARB_FROM_FRIEDA
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03BD:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03C5:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D0:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_03DA:
	npc_msg 3
	goto _05B7

_03E3:
	buffer_players_name 0
	npc_msg 1
	goto _05B7

_03EF:
	setvar VAR_TEMP_x4002, 0
	call _05BF
	releaseall
	end

_03FF:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _060E
	apply_movement obj_R32_gsmiddleman1, _0874
	apply_movement obj_player, _087A
	setvar VAR_TEMP_x4002, 1
	goto _0651

_0438:
	apply_movement obj_R32_gsmiddleman1, _0884
	apply_movement obj_player, _0892
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _067E
	npc_msg 4
	goto _06A7

_0470:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _067E
	npc_msg 4
	goto _06A7

_0498:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A3:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04AB:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04BF:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04D3:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06CA
	apply_movement obj_player, _08A0
	goto _04EE

_04EE:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06ED
	apply_movement obj_partner_poke, _08AA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_054F:
	white_out
	releaseall
	end

_0555:
	setflag FLAG_HIDE_CAMERON
	goto _0569

_055F:
	clearflag FLAG_HIDE_CAMERON
	goto _0569

_0569:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0727
	clearflag FLAG_UNK_208
	goto _072D

_0584:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 44
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 46
	give_ribbon VAR_SPECIAL_x8002, RIBBON_RELAX
	play_fanfare 20
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05AD:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_05B7:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05BF:
	compare VAR_UNK_408D, 0
	goto_if_ne _072F
	setvar VAR_UNK_408D, 1
	npc_msg 5
	setvar VAR_SPECIAL_x8004, 239
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _076B
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0782
	npc_msg 8
	wait_button_or_walk_away
	goto _078B

_060E:
	apply_movement obj_R32_gsmiddleman1, _08B8
	apply_movement obj_player, _08BE
	setvar VAR_TEMP_x4002, 0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _05BF
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0791
	apply_movement obj_R32_gsmiddleman1, _08C4
	wait_movement
	releaseall
	end

_0651:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _05BF
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0791
	apply_movement obj_R32_gsmiddleman1, _08C4
	wait_movement
	releaseall
	end

_067E:
	buffer_players_name 0
	npc_msg 2
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0795
	apply_movement obj_R32_gsmiddleman1, _08CE
	goto _07A3

_06A7:
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0795
	apply_movement obj_R32_gsmiddleman1, _08CE
	goto _07A3

_06CA:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07A9
	apply_movement obj_player, _08DC
	apply_movement obj_R32_gsmiddleman1_2, _086A
	goto _04EE

_06ED:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_0727:
	setflag FLAG_UNK_208
	end

_072D:
	end

_072F:
	npc_msg 5
	setvar VAR_SPECIAL_x8004, 239
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _076B
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0782
	npc_msg 8
	wait_button_or_walk_away
	goto _078B

_076B:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _081A
	callstd std_obtain_item_verbose
	goto _0826

_0782:
	npc_msg 9
	goto _082E

_078B:
	goto _082E

_0791:
	releaseall
	end

_0795:
	apply_movement obj_R32_gsmiddleman1, _08EE
	wait_movement
	releaseall
	end

_07A3:
	wait_movement
	releaseall
	end

_07A9:
	apply_movement obj_player, _08FC
	apply_movement obj_R32_gsmiddleman1_2, _086A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06ED
	apply_movement obj_partner_poke, _08AA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_081A:
	callstd std_give_item_verbose
	setflag FLAG_UNK_074
	closemsg
	return

_0826:
	setflag FLAG_UNK_074
	closemsg
	return

_082E:
	closemsg
	return

	.align 4
_0832:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_083C:

	step 14, 2
	step 12, 1
	step_end
	.align 4
_0846:

	step 63, 1
	step 12, 2
	step 1, 1
	step_end
	.align 4
_0854:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_086A:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0874:

	step 14, 1
	step_end
	.align 4
_087A:

	step 63, 1
	step 3, 1
	step_end
	.align 4
_0884:

	step 62, 1
	step 14, 1
	step 12, 1
	step_end
	.align 4
_0892:

	step 62, 1
	step 12, 2
	step 1, 1
	step_end
	.align 4
_08A0:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_08AA:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_08B8:

	step 62, 1
	step_end
	.align 4
_08BE:

	step 3, 1
	step_end
	.align 4
_08C4:

	step 15, 1
	step 2, 1
	step_end
	.align 4
_08CE:

	step 13, 1
	step 15, 2
	step 2, 1
	step_end
	.align 4
_08DC:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_08EE:

	step 13, 1
	step 15, 1
	step 2, 1
	step_end
	.align 4
_08FC:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
