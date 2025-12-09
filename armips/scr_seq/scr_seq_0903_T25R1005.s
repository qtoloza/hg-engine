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

.include "armips/scr_seq/event_T25R1005.inc"


// text archive to grab from: 596.txt

.create "build/a012/2_903", 0


scrdef scr_seq_T25R1005_000
scrdef scr_seq_T25R1005_001
scrdef scr_seq_T25R1005_002
scrdef scr_seq_T25R1005_003
scrdef scr_seq_T25R1005_004
scrdef scr_seq_T25R1005_005
scrdef scr_seq_T25R1005_006
scrdef scr_seq_T25R1005_007
scrdef scr_seq_T25R1005_008
scrdef_end

scr_seq_T25R1005_005:
	setflag FLAG_HIDE_GOLDENROD_DEPT_STORE_5F_RETURN_FRUSTRATION_LADY
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0172
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0178
	clearflag FLAG_HIDE_GOLDENROD_DEPT_STORE_5F_RETURN_FRUSTRATION_LADY
	end

scr_seq_T25R1005_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 7
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1005_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _017A
	npc_msg 18
	goto _0185

scr_seq_T25R1005_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _018D
	npc_msg 16
	goto _0198

scr_seq_T25R1005_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SYS_ROCKET_COSTUME, _01A0
	goto_if_set FLAG_TRADE_GOLDENROD_CITY_DROWZEE_MACHOP, _01AB
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01B6
	goto _0257

scr_seq_T25R1005_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1005_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_08E, _0262
	get_party_lead_alive VAR_SPECIAL_x8000
	buffer_mon_species_name 0, VAR_SPECIAL_x8000
	npc_msg 0
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 149
	goto_if_ge _0271
	compare VAR_SPECIAL_RESULT, 50
	goto_if_le _028C
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1005_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 21
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1005_008:
	play_cry SPECIES_HAPPINY, 0
	simple_npc_msg 21
	end

_0172:
	clearflag FLAG_HIDE_GOLDENROD_DEPT_STORE_5F_RETURN_FRUSTRATION_LADY
	end

_0178:
	end

_017A:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0185:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_018D:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0198:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A0:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AB:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01B6:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0257
	load_npc_trade 1
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _02A7
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_EARTH_POWER
	setflag FLAG_TRADE_GOLDENROD_CITY_DROWZEE_MACHOP
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 20
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_0257:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0262:
	npc_msg 6
	setflag FLAG_UNK_08E
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0271:
	npc_msg 1
	setvar VAR_SPECIAL_x8004, 354
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	goto _0262

_028C:
	npc_msg 4
	setvar VAR_SPECIAL_x8004, 348
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	goto _0262

_02A7:
	npc_trade_end
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
