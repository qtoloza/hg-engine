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

.include "armips/scr_seq/event_T26R0301.inc"


// text archive to grab from: 608.txt

.create "build/a012/2_916", 0


scrdef scr_seq_T26R0301_000
scrdef scr_seq_T26R0301_001
scrdef_end

scr_seq_T26R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TRADE_OLIVINE_CITY_KRABBY_VOLTORB, _0070
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _007B
	goto _011C

scr_seq_T26R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16259, _0127
	npc_msg 5
	giveitem_no_check ITEM_METAL_COAT, 1
	setflag 16259
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0070:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_007B:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _011C
	load_npc_trade 2
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _0132
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_BRAVE_BIRD
	setflag FLAG_TRADE_OLIVINE_CITY_KRABBY_VOLTORB
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 7
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_011C:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0127:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0132:
	npc_trade_end
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
