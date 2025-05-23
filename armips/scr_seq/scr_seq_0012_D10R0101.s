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

.include "armips/scr_seq/event_D10R0101.inc"


// text archive to grab from: 052.txt

.create "build/a012/2_012", 0


scrdef scr_seq_D10R0101_000
scrdef scr_seq_D10R0101_001
scrdef scr_seq_D10R0101_002
scrdef scr_seq_D10R0101_003
scrdef scr_seq_D10R0101_004
scrdef scr_seq_D10R0101_005
scrdef_end

scr_seq_D10R0101_000:
	palpark_action 2
	end

scr_seq_D10R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	non_npc_msg 6
	wait 30, VAR_SPECIAL_RESULT
	non_npc_msg 7
	play_se SEQ_SE_DP_DECIDE
	wait 30, VAR_SPECIAL_RESULT
	non_npc_msg 8
	play_se SEQ_SE_DP_DECIDE
	wait 30, VAR_SPECIAL_RESULT
	non_npc_msg 9
	play_se SEQ_SE_DP_DECIDE
	wait 30, VAR_SPECIAL_RESULT
	non_npc_msg 10
	play_se SEQ_SE_DP_CON_016
	wait 30, VAR_SPECIAL_RESULT
	palpark_action 0
	setvar VAR_UNK_4124, 1
	closemsg
	releaseall
	end

scr_seq_D10R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_se SEQ_SE_DP_PINPON
	buffer_players_name 0
	npc_msg 4
	play_bgm SEQ_SILENCE_DUNGEON
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	closemsg
	releaseall
	setvar VAR_UNK_4124, 1
	call _01D4
	end

scr_seq_D10R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00D5
	releaseall
	end

_00D5:
	setvar VAR_UNK_4124, 2
	releaseall
	call _01D4
	end

scr_seq_D10R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	call _0180
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0110
	setvar VAR_UNK_4124, 2
	releaseall
	call _01D4
	end

_0110:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0134
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end


_0134:

	step 12, 1
	step_end
scr_seq_D10R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	call _0180
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0169
	setvar VAR_UNK_4124, 2
	releaseall
	call _01D4
	end

_0169:
	apply_movement obj_D10R0101_mount_2, _0178
	wait_movement
	releaseall
	end


_0178:

	step 34, 1
	step_end
_0180:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01C9
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01B9
	buffer_players_name 0
	npc_msg 2
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 0
	return

_01B9:
	buffer_players_name 0
	npc_msg 3
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 0
	return

_01C9:
	npc_msg 1
	setvar VAR_SPECIAL_RESULT, 1
	return

_01D4:
	palpark_action 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T08R0201, 0, 7, 7, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return
	.align 4


.close
