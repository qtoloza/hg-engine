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

.include "armips/scr_seq/event_W40.inc"


// text archive to grab from: 744.txt

.create "build/a012/2_962", 0


scrdef scr_seq_W40_000
scrdef scr_seq_W40_001
scrdef scr_seq_W40_002
scrdef scr_seq_W40_003
scrdef scr_seq_W40_004
scrdef scr_seq_W40_005
scrdef scr_seq_W40_006
scrdef scr_seq_W40_007
scrdef scr_seq_W40_008
scrdef scr_seq_W40_009
scrdef scr_seq_W40_010
scrdef scr_seq_W40_011
scrdef scr_seq_W40_012
scrdef_end

scr_seq_W40_000:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0219
	clearflag FLAG_UNK_206
	goto _021F

scr_seq_W40_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_ALERT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0221
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _0235
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0249
	goto_if_set FLAG_GOT_SHARP_BEAK_FROM_MONICA, _026C
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0280
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	goto _02CF

scr_seq_W40_008:
	scrcmd_609
	lockall
	apply_movement obj_W40_gsmiddleman1, _057A
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 252
	goto_if_ne _02D7
	apply_movement obj_W40_gsmiddleman1, _0584
	goto _02F2

scr_seq_W40_007:
	simple_npc_msg 18
	end

scr_seq_W40_002:
	direction_signpost 19, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_W40_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 20, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_W40_003:
	simple_npc_msg 0
	end

scr_seq_W40_004:
	simple_npc_msg 6
	end

scr_seq_W40_005:
	simple_npc_msg 3
	end

scr_seq_W40_006:
	simple_npc_msg 9
	end

scr_seq_W40_010:
	lockall
	hide_person obj_W40_monstarball_2
	setflag 16337
	giveitem_no_check ITEM_TM013, 1
	closemsg
	releaseall
	end

scr_seq_W40_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	apply_movement obj_W40_dancer, _057A
	wait_movement
	buffer_players_name 0
	callstd std_play_kimono_girl_music
	goto_if_set 16315, _0360
	setflag 16315
	npc_msg 21
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0387
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_kimono_girl_music
	releaseall
	end

scr_seq_W40_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16305, _03D5
	npc_msg 28
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 489
	goto_if_eq _03E0
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0219:
	setflag FLAG_UNK_206
	end

_021F:
	end

_0221:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0235:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 31
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0249:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _040C
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	goto _02CF

_026C:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0280:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	goto_if_no_item_space ITEM_SHARP_BEAK, 1, _0435
	callstd std_give_item_verbose
	setflag FLAG_GOT_SHARP_BEAK_FROM_MONICA
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02CF:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D7:
	compare VAR_SPECIAL_x8000, 253
	goto_if_ne _043F
	apply_movement obj_W40_gsmiddleman1, _058E
	goto _02F2

_02F2:
	wait_movement
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _045A
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_W40_gsmiddleman1, _05A0
	apply_movement obj_player, _05A6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 15
	closemsg
	apply_movement obj_W40_gsmiddleman1, _057A
	wait_movement
	npc_msg 16
	closemsg
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 252
	goto_if_ne _04AB
	apply_movement obj_W40_gsmiddleman1, _05B4
	goto _04C6

_0360:
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0387
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_kimono_girl_music
	releaseall
	end

_0387:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _04CC
	npc_msg 23
	give_egg SPECIES_MANAPHY, 9
	npc_msg 24
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_W40_dancer
	callstd std_fade_end_kimono_girl_music
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_03D5:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E0:
	npc_msg 30
	closemsg
	apply_movement obj_W40_gsgirl1, _057A
	wait_movement
	npc_msg 31
	giveitem_no_check ITEM_HEART_SCALE, 5
	setflag 16305
	closemsg
	releaseall
	end

_040C:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 28
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 30
	give_ribbon VAR_SPECIAL_x8002, RIBBON_ALERT
	play_fanfare 20
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0435:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_043F:
	compare VAR_SPECIAL_x8000, 254
	goto_if_ne _04DB
	apply_movement obj_W40_gsmiddleman1, _05BE
	goto _02F2

_045A:
	apply_movement obj_W40_gsmiddleman1, _05A0
	apply_movement obj_player, _05A6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 15
	closemsg
	apply_movement obj_W40_gsmiddleman1, _057A
	wait_movement
	npc_msg 16
	closemsg
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 252
	goto_if_ne _04AB
	apply_movement obj_W40_gsmiddleman1, _05B4
	goto _04C6

_04AB:
	compare VAR_SPECIAL_x8000, 253
	goto_if_ne _0551
	apply_movement obj_W40_gsmiddleman1, _05D0
	goto _04C6

_04C6:
	wait_movement
	releaseall
	end

_04CC:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	callstd std_fade_end_kimono_girl_music
	releaseall
	end

_04DB:
	apply_movement obj_W40_gsmiddleman1, _05E2
	wait_movement
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _045A
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_W40_gsmiddleman1, _05A0
	apply_movement obj_player, _05A6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 15
	closemsg
	apply_movement obj_W40_gsmiddleman1, _057A
	wait_movement
	npc_msg 16
	closemsg
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8000, 252
	goto_if_ne _04AB
	apply_movement obj_W40_gsmiddleman1, _05B4
	goto _04C6

_0551:
	compare VAR_SPECIAL_x8000, 254
	goto_if_ne _056C
	apply_movement obj_W40_gsmiddleman1, _05F4
	goto _04C6

_056C:
	apply_movement obj_W40_gsmiddleman1, _0606
	wait_movement
	releaseall
	end

	.align 4
_057A:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0584:

	step 16, 5
	step 32, 2
	step_end
	.align 4
_058E:

	step 16, 2
	step 19, 1
	step 16, 3
	step 32, 2
	step_end
	.align 4
_05A0:

	step 12, 1
	step_end
	.align 4
_05A6:

	step 71, 1
	step 12, 1
	step 72, 1
	step_end
	.align 4
_05B4:

	step 17, 6
	step 32, 1
	step_end
	.align 4
_05BE:

	step 16, 2
	step 19, 2
	step 16, 3
	step 32, 2
	step_end
	.align 4
_05D0:

	step 17, 3
	step 18, 1
	step 17, 3
	step 32, 1
	step_end
	.align 4
_05E2:

	step 16, 2
	step 19, 3
	step 16, 3
	step 32, 2
	step_end
	.align 4
_05F4:

	step 17, 3
	step 18, 2
	step 17, 3
	step 32, 1
	step_end
	.align 4
_0606:

	step 17, 3
	step 18, 3
	step 17, 3
	step 32, 1
	step_end
	.align 4


.close
