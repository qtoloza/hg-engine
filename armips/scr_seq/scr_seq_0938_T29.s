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

.include "armips/scr_seq/event_T29.inc"


// text archive to grab from: 626.txt

.create "build/a012/2_938", 0


scrdef scr_seq_T29_000
scrdef scr_seq_T29_001
scrdef scr_seq_T29_002
scrdef scr_seq_T29_003
scrdef scr_seq_T29_004
scrdef scr_seq_T29_005
scrdef scr_seq_T29_006
scrdef scr_seq_T29_007
scrdef scr_seq_T29_008
scrdef scr_seq_T29_009
scrdef scr_seq_T29_010
scrdef scr_seq_T29_011
scrdef scr_seq_T29_012
scrdef scr_seq_T29_013
scrdef scr_seq_T29_014
scrdef scr_seq_T29_015
scrdef scr_seq_T29_016
scrdef scr_seq_T29_017
scrdef scr_seq_T29_018
scrdef_end

scr_seq_T29_000:
	goto_if_set FLAG_GOT_RED_SCALE, _0366
	setflag FLAG_UNK_1FC
	setflag FLAG_UNK_1FE
	setflag FLAG_MAPTEMP_011
	setflag FLAG_MAPTEMP_013
	setflag FLAG_MAPTEMP_014
	setflag FLAG_MAPTEMP_015
	setflag FLAG_UNK_289
	setflag FLAG_UNK_28B
	setflag FLAG_UNK_28C
	end

scr_seq_T29_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _036C
	end

scr_seq_T29_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4004, 1
	goto_if_ge _0386
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _038F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _03D2
	end

scr_seq_T29_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_DOWNCAST
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03E3
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _03F7
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _040B
	goto_if_set FLAG_GOT_BLACK_BELT_FROM_WESLEY, _042E
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0442
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 11
	goto _0491

scr_seq_T29_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GYARADOS, 0
	npc_msg 0
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_GYARADOS, 40, 1
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0499
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _049F
	compare VAR_TEMP_x4002, 4
	call_if_eq _04A3
	goto_if_set FLAG_GOT_RED_SCALE, _04A9
	openmsg
	goto_if_no_item_space ITEM_RED_SCALE, 1, _04B9
	callstd std_give_item_verbose
	setflag FLAG_GOT_RED_SCALE
	clearflag FLAG_HIDE_LAKE_OF_RAGE_ACE_TRAINER_LOIS
	closemsg
	releaseall
	end

scr_seq_T29_003:
	goto_if_set FLAG_UNK_0C3, _04C3
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	faceplayer
	buffer_players_name 0
	gender_msgbox 3, 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04F2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0531
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T29_follower_mon_static_dragonite, _082A
	wait_movement
	apply_movement obj_T29_wataru, _0834
	wait_movement
	scrcmd_775 8, 10
	setflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	hide_person obj_T29_wataru
	hide_person obj_T29_follower_mon_static_dragonite
	clearflag FLAG_HIDE_MAHOGANY_SHOP_LANCE
	setvar VAR_UNK_40A8, 1
	releaseall
	end

scr_seq_T29_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RED_GYARADOS_MEET, _0540
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T29_006:
	goto_if_set FLAG_UNK_139, _054B
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 31, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T29_014:
	setvar VAR_TEMP_x4001, 1
	setvar VAR_SPECIAL_x8008, 27
	setvar VAR_SPECIAL_x8009, 1
	goto _0581

scr_seq_T29_015:
	setvar VAR_TEMP_x4001, 2
	setvar VAR_SPECIAL_x8008, 29
	setvar VAR_SPECIAL_x8009, 1
	goto _0581

scr_seq_T29_016:
	setvar VAR_TEMP_x4001, 3
	setvar VAR_SPECIAL_x8008, 23
	setvar VAR_SPECIAL_x8009, 1
	goto _0581

scr_seq_T29_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_DRAGONITE, 0
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T29_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 30, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T29_008:
	simple_npc_msg 12
	end

scr_seq_T29_009:
	simple_npc_msg 11
	end

scr_seq_T29_010:
	simple_npc_msg 18
	end

scr_seq_T29_011:
	simple_npc_msg 21
	end

scr_seq_T29_012:
	simple_npc_msg 24
	end

scr_seq_T29_013:
	simple_npc_msg 27
	end

_0366:
	goto _05BD

_036C:
	setflag FLAG_HIDE_LAKE_OF_RAGE_RED_GYARADOS
	hide_person obj_T29_rgyaradosu
	clearflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	show_person obj_T29_wataru
	show_person obj_T29_follower_mon_static_dragonite
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0386:
	npc_msg 17
	goto _05E1

_038F:
	buffer_players_name 0
	npc_msg 14
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_PRYCE
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	hide_person obj_T29_gsleader7
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_03D2:
	setvar VAR_TEMP_x4004, 1
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E3:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 37
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03F7:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_040B:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0605
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 11
	goto _0491

_042E:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0442:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 8
	goto_if_no_item_space ITEM_BLACK_BELT, 1, _062E
	callstd std_give_item_verbose
	setflag FLAG_GOT_BLACK_BELT_FROM_WESLEY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0491:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0499:
	white_out
	releaseall
	end

_049F:
	releaseall
	end

_04A3:
	setflag FLAG_CAUGHT_RED_GYARADOS
	return

_04A9:
	clearflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	hide_person obj_T29_wataru
	hide_person obj_T29_follower_mon_static_dragonite
	releaseall
	end

_04B9:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_04C3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04F2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0531
	end

_04F2:
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T29_follower_mon_static_dragonite, _082A
	wait_movement
	apply_movement obj_T29_wataru, _0834
	wait_movement
	scrcmd_775 8, 10
	setflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	hide_person obj_T29_wataru
	hide_person obj_T29_follower_mon_static_dragonite
	clearflag FLAG_HIDE_MAHOGANY_SHOP_LANCE
	setvar VAR_UNK_40A8, 1
	releaseall
	end

_0531:
	setflag FLAG_UNK_0C3
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0540:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_054B:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 0, 0
	buffer_record_size 0, 1, SPECIES_MAGIKARP
	script_overlay_cmd 0, 1
	buffer_players_name 2
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 32, VAR_SPECIAL_RESULT
	callstd std_signpost
	dummy_486
	dummy_486
	releaseall
	end

_0581:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8008
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8009
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0638
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0657
	end

_05BD:
	check_registered_phone_number PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _066D
	goto_if_set FLAG_GAME_CLEAR, _0677
	goto _066D

_05E1:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _038F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _03D2
	end

_0605:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 36
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 38
	give_ribbon VAR_SPECIAL_x8002, RIBBON_DOWNCAST
	play_fanfare 20
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_062E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0638:
	callstd std_hidden_item_fanfare
	hide_person VAR_SPECIAL_LAST_TALKED
	compare VAR_TEMP_x4001, 1
	goto_if_ne _0692
	setflag FLAG_UNK_146
	goto _06A9

_0657:
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 35
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 0
	goto _06E2

_066D:
	setflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _06E8

_0677:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _071F
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _0736

_0692:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _073C
	setflag FLAG_UNK_147
	goto _06A9

_06A9:
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 33
	wait_fanfare
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 2, VAR_SPECIAL_RESULT
	npc_msg 34
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 1
	closemsg
	releaseall
	end

_06E2:
	closemsg
	releaseall
	end

_06E8:
	compare VAR_UNK_4037, 61993
	goto_if_eq _0779
	setflag FLAG_UNK_1FC
	setflag FLAG_UNK_1FE
	clearflag FLAG_HIDE_LAKE_OF_RAGE_FISHERMEN
	setflag FLAG_MAPTEMP_011
	setflag FLAG_MAPTEMP_013
	setflag FLAG_MAPTEMP_014
	setflag FLAG_MAPTEMP_015
	setflag FLAG_UNK_289
	setflag FLAG_UNK_28B
	setflag FLAG_UNK_28C
	end

_071F:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _07A2
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _0736

_0736:
	goto _06E8

_073C:
	setflag FLAG_UNK_148
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 33
	wait_fanfare
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_208 2, VAR_SPECIAL_RESULT
	npc_msg 34
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 1
	closemsg
	releaseall
	end

_0779:
	clearflag FLAG_UNK_1FC
	clearflag FLAG_UNK_1FE
	setflag FLAG_HIDE_LAKE_OF_RAGE_FISHERMEN
	clearflag FLAG_UNK_289
	clearflag FLAG_UNK_28B
	clearflag FLAG_UNK_28C
	goto_if_set FLAG_UNK_146, _07B9
	goto _07CE

_07A2:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _07DF
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _0736

_07B9:
	setflag FLAG_UNK_289
	goto_if_set FLAG_UNK_147, _07F6
	goto _080B

_07CE:
	goto_if_set FLAG_UNK_147, _07F6
	goto _080B

_07DF:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _081C
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _0736

_07F6:
	setflag FLAG_UNK_28B
	goto_if_set FLAG_UNK_148, _0822
	goto _0828

_080B:
	goto_if_set FLAG_UNK_148, _0822
	goto _0828

_081C:
	goto _066D

_0822:
	setflag FLAG_UNK_28C
	end

_0828:
	end


_082A:

	step 34, 1
	step 50, 2
	step_end

_0834:

	step 33, 1
	step_end
	.align 4


.close
