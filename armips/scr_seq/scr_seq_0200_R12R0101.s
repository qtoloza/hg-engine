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

.include "armips/scr_seq/event_R12R0101.inc"


// text archive to grab from: 349.txt

.create "build/a012/2_200", 0


scrdef scr_seq_R12R0101_000
scrdef scr_seq_R12R0101_001
scrdef_end

scr_seq_R12R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_SUPER_ROD, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0108
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0113
	npc_msg 1
	giveitem_no_check ITEM_SUPER_ROD, 1
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R12R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	stop_bgm 0
	play_bgm SEQ_GS_OHKIDO
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	npc_msg 4
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _011E
	compare VAR_TEMP_x4001, 2
	goto_if_eq _011E
	compare VAR_TEMP_x4001, 3
	goto_if_eq _011E
	compare VAR_TEMP_x4001, 4
	goto_if_eq _019A
	compare VAR_TEMP_x4001, 5
	goto_if_eq _019A
	compare VAR_TEMP_x4001, 6
	goto_if_eq _019A
	compare VAR_TEMP_x4001, 7
	goto_if_eq _0216
	compare VAR_TEMP_x4001, 8
	goto_if_eq _0216
	compare VAR_TEMP_x4001, 9
	goto_if_eq _0216
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	fade_out_bgm 0, 10
	reset_bgm
	releaseall
	end

_0108:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0113:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_011E:
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0292
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0292
	give_mon SPECIES_CHARMANDER, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_SQUIRTLE, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 7
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R12R0101_ookido
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_019A:
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0292
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0292
	give_mon SPECIES_BULBASAUR, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_SQUIRTLE, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R12R0101_ookido
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0216:
	npc_msg 6
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _0292
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0292
	give_mon SPECIES_BULBASAUR, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_CHARMANDER, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 9
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R12R0101_ookido
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0292:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	releaseall
	end
	.align 4


.close
