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

.include "armips/scr_seq/event_T22.inc"


// text archive to grab from: 556.txt

.create "build/a012/2_857", 0


scrdef scr_seq_T22_000
scrdef scr_seq_T22_001
scrdef scr_seq_T22_002
scrdef scr_seq_T22_003
scrdef scr_seq_T22_004
scrdef scr_seq_T22_005
scrdef scr_seq_T22_006
scrdef scr_seq_T22_007
scrdef scr_seq_T22_008
scrdef scr_seq_T22_009
scrdef scr_seq_T22_010
scrdef scr_seq_T22_011
scrdef scr_seq_T22_012
scrdef scr_seq_T22_013
scrdef scr_seq_T22_014
scrdef_end

scr_seq_T22_000:
	setflag FLAG_UNK_09F
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 1
	callstd std_phone_call
	setvar VAR_SCENE_VIOLET_CITY_OW, 2
	clearflag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	setflag FLAG_HIDE_ELMS_LAB_AIDE
	end

scr_seq_T22_004:
	scrcmd_609
	lockall
	callstd std_play_kimono_girl_music
	apply_movement obj_T22_dancer, _0C2A
	wait_movement
	npc_msg 13
	closemsg
	apply_movement obj_T22_dancer, _0C38
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T22_dancer, _0C3E
	wait_movement
	npc_msg 15
	closemsg
	apply_movement obj_T22_dancer, _0C4C
	wait_movement
	npc_msg 16
	closemsg
	apply_movement obj_T22_dancer, _0C8E
	wait_movement
	callstd std_fade_end_kimono_girl_music
	hide_person obj_T22_dancer
	setflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	buffer_players_name 0
	move_person_facing obj_T22_gsleader1, 479, 0, 258, DIR_SOUTH
	play_se SEQ_SE_DP_DOOR_CLOSE
	wait_se SEQ_SE_DP_DOOR_CLOSE
	apply_movement obj_player, _0CA2
	apply_movement obj_T22_gsleader1, _0C9C
	wait_movement
	buffer_players_name 0
	npc_msg 29
	register_gear_number PHONE_CONTACT_FALKNER
	buffer_players_name 0
	npc_msg 30
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T22_gsleader1, _1052
	wait_movement
	hide_person obj_T22_gsleader1
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 4
	end

scr_seq_T22_005:
	simple_npc_msg 26
	end

scr_seq_T22_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0241
	apply_movement obj_T22_gsbigman, _0CA8
	goto _025C

scr_seq_T22_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call _0285
	call _02A6
	compare VAR_SPECIAL_x8006, 1
	goto_if_eq _032C
	npc_msg 17
	closemsg
	call _0285
	releaseall
	end

scr_seq_T22_002:
	end

scr_seq_T22_006:
	simple_npc_msg 27
	end

scr_seq_T22_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T22_008:
	direction_signpost 9, 0, 13, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T22_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 10, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T22_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T22_011:
	simple_npc_msg 5
	end

scr_seq_T22_012:
	simple_npc_msg 6
	end

scr_seq_T22_013:
	simple_npc_msg 7
	end

scr_seq_T22_014:
	simple_npc_msg 8
	end

_0241:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _03D9
	apply_movement obj_T22_gsbigman, _0CCA
	goto _025C

_025C:
	wait_movement
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03F4
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03FF
	end

_0285:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0423
	apply_movement obj_T22_juggrer, _0CEC
	wait_movement
	goto _0440

_02A6:
	hasitem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0442
	setvar VAR_SPECIAL_x8000, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04A7
	setvar VAR_SPECIAL_x8001, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04EB
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _050E
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_032C:
	npc_msg 18
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8000, 1
	goto_if_ne _0510
	menu_item_add 205, 255, 0
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _059B
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0611
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0672
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_03D9:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _095D
	apply_movement obj_T22_gsbigman, _0D2E
	goto _025C

_03F4:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03FF:
	npc_msg 3
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _098E
	apply_movement obj_T22_gsbigman, _0D50
	goto _09A9

_0423:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _09DC
	apply_movement obj_T22_juggrer, _0D76
	wait_movement
	goto _0440

_0440:
	return

_0442:
	hasitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04A7
	setvar VAR_SPECIAL_x8001, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04EB
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _050E
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_04A7:
	hasitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04EB
	setvar VAR_SPECIAL_x8002, 1
	setvar VAR_SPECIAL_x8006, 1
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _050E
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_04EB:
	hasitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _050E
	setvar VAR_SPECIAL_x8003, 1
	setvar VAR_SPECIAL_x8006, 1
	return

_050E:
	return

_0510:
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _059B
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0611
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0672
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_059B:
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0611
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0672
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_0611:
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0672
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_0672:
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_06BE:
	npc_msg 21
	goto_if_no_item_space ITEM_CHERI_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_PECHA_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_LEPPA_BERRY, 1, _09E8
	giveitem_no_check ITEM_CHERI_BERRY, 1
	giveitem_no_check ITEM_PECHA_BERRY, 1
	giveitem_no_check ITEM_LEPPA_BERRY, 1
	takeitem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	goto _09F7

_0762:
	npc_msg 22
	goto_if_no_item_space ITEM_ORAN_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_CHESTO_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_WIKI_BERRY, 1, _09E8
	giveitem_no_check ITEM_ORAN_BERRY, 1
	giveitem_no_check ITEM_CHESTO_BERRY, 1
	giveitem_no_check ITEM_WIKI_BERRY, 1
	takeitem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	goto _09F7

_0806:
	npc_msg 23
	goto_if_no_item_space ITEM_ASPEAR_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_SITRUS_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_IAPAPA_BERRY, 1, _09E8
	giveitem_no_check ITEM_ASPEAR_BERRY, 1
	giveitem_no_check ITEM_SITRUS_BERRY, 1
	giveitem_no_check ITEM_IAPAPA_BERRY, 1
	takeitem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	goto _09F7

_08AA:
	npc_msg 24
	goto_if_no_item_space ITEM_RAWST_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_LUM_BERRY, 1, _09E8
	goto_if_no_item_space ITEM_AGUAV_BERRY, 1, _09E8
	giveitem_no_check ITEM_RAWST_BERRY, 1
	giveitem_no_check ITEM_LUM_BERRY, 1
	giveitem_no_check ITEM_AGUAV_BERRY, 1
	takeitem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	goto _09F7

_094E:
	npc_msg 20
	closemsg
	call _0285
	releaseall
	end

_095D:
	apply_movement obj_T22_gsbigman, _0DB8
	wait_movement
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03F4
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03FF
	end

_098E:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0A31
	apply_movement obj_T22_gsbigman, _0DDA
	goto _09A9

_09A9:
	wait_movement
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0A4C
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0A78
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0AA4
	goto _0AD0

_09DC:
	apply_movement obj_T22_juggrer, _0DF8
	wait_movement
	return

_09E8:
	npc_msg 25
	closemsg
	call _0285
	releaseall
	end

_09F7:
	setvar VAR_SPECIAL_x8000, 0
	setvar VAR_SPECIAL_x8001, 0
	setvar VAR_SPECIAL_x8002, 0
	setvar VAR_SPECIAL_x8003, 0
	setvar VAR_SPECIAL_x8006, 0
	call _02A6
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _0AFC
	npc_msg 19
	goto _0B02

_0A31:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0BAC
	apply_movement obj_T22_gsbigman, _0E3A
	goto _09A9

_0A4C:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T22_gsbigman, _0E5C
	apply_movement obj_player, _0EA6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0BE7

_0A78:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T22_gsbigman, _0E5C
	apply_movement obj_player, _0EC4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0BE7

_0AA4:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T22_gsbigman, _0EE2
	apply_movement obj_player, _0FD0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0BE7

_0AD0:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T22_gsbigman, _0E5C
	apply_movement obj_player, _1002
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0BE7

_0AFC:
	goto _094E

_0B02:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8000, 1
	goto_if_ne _0510
	menu_item_add 205, 255, 0
	compare VAR_SPECIAL_x8001, 1
	goto_if_ne _059B
	menu_item_add 206, 255, 1
	compare VAR_SPECIAL_x8002, 1
	goto_if_ne _0611
	menu_item_add 207, 255, 2
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0672
	menu_item_add 208, 255, 3
	menu_item_add 126, 255, 4
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _06BE
	case 1, _0762
	case 2, _0806
	case 3, _08AA
	goto _094E

_0BAC:
	apply_movement obj_T22_gsbigman, _101C
	wait_movement
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0A4C
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0A78
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0AA4
	goto _0AD0

_0BE7:
	npc_msg 4
	closemsg
	apply_movement obj_T22_gsbigman, _1046
	wait_movement
	scrcmd_307 15, 8, 15, 1, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T22_gsbigman, _104C
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	hide_person obj_T22_gsbigman
	setflag FLAG_UNK_19A
	clearflag FLAG_HIDE_EARL_IN_SCHOOL
	releaseall
	end

	.align 4
_0C2A:

	step 75, 1
	step 14, 5
	step 12, 1
	step_end
	.align 4
_0C38:

	step 12, 1
	step_end
	.align 4
_0C3E:

	step 71, 1
	step 9, 1
	step 72, 1
	step_end
	.align 4
_0C4C:

	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step_end
	.align 4
_0C8E:

	step 13, 2
	step 14, 1
	step 13, 7
	step_end
	.align 4
_0C9C:

	step 14, 9
	step_end
	.align 4
_0CA2:

	step 35, 1
	step_end
	.align 4
_0CA8:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.align 4
_0CCA:

	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4
_0CEC:

	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step_end
	.align 4
_0D2E:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0D50:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0D76:

	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step_end
	.align 4
_0DB8:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
	.align 4
_0DDA:

	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0DF8:

	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step_end
	.align 4
_0E3A:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0E5C:

	step 17, 8
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 33, 1
	step_end
	.align 4
_0EA6:

	step 63, 1
	step 90, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end
	.align 4
_0EC4:

	step 63, 1
	step 91, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end
	.align 4
_0EE2:

	step 18, 2
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 3
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 19, 2
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 5
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_0FD0:

	step 17, 1
	step 19, 1
	step 38, 1
	step 63, 2
	step 37, 1
	step 63, 2
	step 18, 1
	step 89, 6
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end
	.align 4
_1002:

	step 63, 1
	step 89, 9
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	step_end
	.align 4
_101C:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end
	.align 4
_1046:

	step 12, 2
	step_end
	.align 4
_104C:

	step 12, 1
	step_end
	.align 4
_1052:

	step 15, 9
	step_end
	.align 4


.close
