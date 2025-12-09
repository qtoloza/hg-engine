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

.include "armips/scr_seq/event_T25R0801.inc"


// text archive to grab from: 590.txt

.create "build/a012/2_897", 0


scrdef scr_seq_T25R0801_000
scrdef scr_seq_T25R0801_001
scrdef scr_seq_T25R0801_002
scrdef_end

scr_seq_T25R0801_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16271, _0094
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00B2
	goto _0149

scr_seq_T25R0801_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0154
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0801_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0197
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0094:
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01DA
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B2:
	wait_fade
	closemsg
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0149
	load_npc_trade 4
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _021D
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_AROMATHERAPY
	setflag 16271
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 19
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_0149:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0154:
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _022A
	npc_msg 10
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_MARLEY_MIRA, 0, 0, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0235
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0197:
	npc_msg 11
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _023B
	npc_msg 13
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_BUCK_MARLEY, 0, 0, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0235
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01DA:
	npc_msg 15
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0246
	npc_msg 17
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_CHERYL_CHERYL, 0, 0, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0235
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021D:
	npc_trade_end
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_022A:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0235:
	white_out
	releaseall
	end

_023B:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0246:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
