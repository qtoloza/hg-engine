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

.include "armips/scr_seq/event_R36.inc"


// text archive to grab from: 390.txt

.create "build/a012/2_243", 0


scrdef scr_seq_R36_000
scrdef scr_seq_R36_001
scrdef scr_seq_R36_002
scrdef scr_seq_R36_003
scrdef scr_seq_R36_004
scrdef scr_seq_R36_005
scrdef scr_seq_R36_006
scrdef scr_seq_R36_007
scrdef scr_seq_R36_008
scrdef scr_seq_R36_009
scrdef scr_seq_R36_010
scrdef scr_seq_R36_011
scrdef scr_seq_R36_012
scrdef_end

scr_seq_R36_002:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0237
	clearflag FLAG_UNK_1C4
	goto _023D

scr_seq_R36_010:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _023F
	end

scr_seq_R36_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL, _024D
	hasitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0282
	apply_movement obj_R36_gsgirl1_2, _0782
	wait_movement
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0788
	wait_movement
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A1
	releaseall
	end

scr_seq_R36_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_CARELESS
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C8
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _02DC
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _02F0
	goto_if_set FLAG_GOT_HARD_STONE_FROM_ARTHUR, _0313
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0327
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 15
	goto _0376

scr_seq_R36_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _037E
	npc_msg 13
	goto _0389

scr_seq_R36_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_HM06, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0391
	npc_msg 3
	giveitem_no_check ITEM_HM06, 1
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R36_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_HIDE_ROUTE_36_SUDOWOODO, _039C
	npc_msg 7
	goto _03A7

scr_seq_R36_003:
	direction_signpost 9, 1, 15, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 10, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_005:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_006:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_set 16247, _03AF
	npc_msg 22
	closemsg
	play_se SEQ_SE_GS_GONDORA_IDOU
	screen_shake 3, 3, 15, 5
	play_se SEQ_SE_GS_ZUTUKI
	wait_se SEQ_SE_GS_ZUTUKI
	faceplayer
	npc_msg 20
	giveitem_no_check ITEM_TM031, 1
	npc_msg 21
	setflag 16247
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R36_012:
	end

_0237:
	setflag FLAG_UNK_1C4
	end

_023D:
	end

_023F:
	setflag FLAG_HIDE_ROUTE_36_SUDOWOODO
	hide_person obj_R36_usokky
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_024D:
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0788
	wait_movement
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03BA
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03E3
	end

_0282:
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0788
	wait_movement
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A1
	releaseall
	end

_02A1:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03E9
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03E3
	end

_02C8:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 41
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02DC:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 43
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02F0:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0412
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 15
	goto _0376

_0313:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0327:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 12
	goto_if_no_item_space ITEM_HARD_STONE, 1, _043B
	callstd std_give_item_verbose
	setflag FLAG_GOT_HARD_STONE_FROM_ARTHUR
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0376:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_037E:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0389:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0391:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_039C:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03A7:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03AF:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03BA:
	buffer_players_name 0
	npc_msg 1
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0445
	apply_movement obj_player, _078E
	goto _0460

_03E3:
	closemsg
	releaseall
	end

_03E9:
	buffer_players_name 0
	npc_msg 1
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _04BC
	apply_movement obj_player, _078E
	goto _04D7

_0412:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 40
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 42
	give_ribbon VAR_SPECIAL_x8002, RIBBON_CARELESS
	play_fanfare 20
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_043B:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0445:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0567
	apply_movement obj_player, _0794
	goto _0460

_0460:
	wait_movement
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _079A
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 25, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05CB
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	call_if_eq _05D1
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _05D7
	releaseall
	end

_04BC:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05DB
	apply_movement obj_player, _0794
	goto _04D7

_04D7:
	wait_movement
	setflag FLAG_UNK_0B4
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _079A
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 25, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05CB
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _05D7
	compare VAR_TEMP_x4001, 4
	call_if_eq _05D1
	setflag FLAG_UNK_0B5
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0673
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _07A0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _06DC

_0567:
	apply_movement obj_player, _07A6
	wait_movement
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _079A
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 25, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05CB
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	call_if_eq _05D1
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _05D7
	releaseall
	end

_05CB:
	white_out
	releaseall
	end

_05D1:
	setflag FLAG_CAUGHT_SUDOWOODO
	return

_05D7:
	releaseall
	end

_05DB:
	apply_movement obj_player, _07A6
	wait_movement
	setflag FLAG_UNK_0B4
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _079A
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 25, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05CB
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _05D7
	compare VAR_TEMP_x4001, 4
	call_if_eq _05D1
	setflag FLAG_UNK_0B5
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0673
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _07A0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _06DC

_0673:
	apply_movement obj_R36_gsgirl1_2, _07AC
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_BERRY_POTS, 1
	npc_msg 16
	npc_msg 17
	giveitem_no_check ITEM_ORAN_BERRY, 3
	giveitem_no_check ITEM_PECHA_BERRY, 3
	npc_msg 18
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _073B
	apply_movement obj_R36_gsgirl1_2, _07B6
	wait_movement
	goto _0772

_06DC:
	npc_msg 15
	giveitem_no_check ITEM_BERRY_POTS, 1
	npc_msg 16
	npc_msg 17
	giveitem_no_check ITEM_ORAN_BERRY, 3
	giveitem_no_check ITEM_PECHA_BERRY, 3
	npc_msg 18
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _073B
	apply_movement obj_R36_gsgirl1_2, _07B6
	wait_movement
	goto _0772

_073B:
	apply_movement obj_R36_gsgirl1_2, _07BC
	wait_movement
	hide_person obj_R36_gsgirl1_2
	setflag FLAG_HIDE_ROUTE_36_FLOWERSHOP_GIRL
	clearflag FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL
	lockall
	npc_msg 19
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	closemsg
	clearflag 16368
	clearflag 16367
	clearflag 16366
	clearflag 16365
	releaseall
	end

_0772:
	hide_person obj_R36_gsgirl1_2
	setflag FLAG_HIDE_ROUTE_36_FLOWERSHOP_GIRL
	clearflag FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL
	releaseall
	end

	.align 4
_0782:

	step 0, 1
	step_end
	.align 4
_0788:

	step 32, 3
	step_end
	.align 4
_078E:

	step 30, 4
	step_end
	.align 4
_0794:

	step 29, 4
	step_end
	.align 4
_079A:

	step 36, 6
	step_end
	.align 4
_07A0:

	step 13, 1
	step_end
	.align 4
_07A6:

	step 28, 4
	step_end
	.align 4
_07AC:

	step 12, 3
	step 3, 1
	step_end
	.align 4
_07B6:

	step 14, 10
	step_end
	.align 4
_07BC:

	step 13, 2
	step 14, 10
	step_end
	.align 4


.close
