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

.include "armips/scr_seq/event_T03R0601.inc"


// text archive to grab from: 466.txt

.create "build/a012/2_757", 0


scrdef scr_seq_T03R0601_000
scrdef scr_seq_T03R0601_001
scrdef scr_seq_T03R0601_002
scrdef_end

scr_seq_T03R0601_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	buffer_players_name 0
	goto_if_unset 16313, _039B
	goto_if_unset 16284, _03C3
	goto_if_set FLAG_HIDE_MT_SILVER_CAVE_MOLTRES, _0458
	goto_if_set 16330, _0476
	goto_if_set 16312, _048F
	goto_if_set 16313, _049D
	apply_movement obj_T03R0601_daigo, _0706
	wait_movement
	npc_msg 0
	setflag 16313
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _04C1
	goto _04EE

scr_seq_T03R0601_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 13
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 14
	scrcmd_452 SPECIES_ARTICUNO, 0
	play_cry SPECIES_ARTICUNO, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_ZAPDOS, 0
	play_cry SPECIES_ZAPDOS, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_MOLTRES, 0
	play_cry SPECIES_MOLTRES, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_MEWTWO, 0
	play_cry SPECIES_MEWTWO, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_MEW, 0
	play_cry SPECIES_MEW, 0
	wait_button_or_walk_away
	scrcmd_453
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 15
	scrcmd_452 SPECIES_RAIKOU, 0
	play_cry SPECIES_RAIKOU, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_ENTEI, 0
	play_cry SPECIES_ENTEI, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_SUICUNE, 0
	play_cry SPECIES_SUICUNE, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_LUGIA, 0
	play_cry SPECIES_LUGIA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_HO_OH, 0
	play_cry SPECIES_HO_OH, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_CELEBI, 0
	play_cry SPECIES_CELEBI, 0
	wait_button_or_walk_away
	scrcmd_453
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 16
	scrcmd_452 SPECIES_REGIROCK, 0
	play_cry SPECIES_REGIROCK, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_REGICE, 0
	play_cry SPECIES_REGICE, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_REGISTEEL, 0
	play_cry SPECIES_REGISTEEL, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_LATIAS, 1
	play_cry SPECIES_LATIAS, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_LATIOS, 0
	play_cry SPECIES_LATIOS, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_KYOGRE, 0
	play_cry SPECIES_KYOGRE, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_GROUDON, 0
	play_cry SPECIES_GROUDON, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_RAYQUAZA, 0
	play_cry SPECIES_RAYQUAZA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_JIRACHI, 0
	play_cry SPECIES_JIRACHI, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_DEOXYS, 0
	play_cry SPECIES_DEOXYS, 0
	wait_button_or_walk_away
	scrcmd_453
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 17
	scrcmd_452 SPECIES_UXIE, 0
	play_cry SPECIES_UXIE, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_MESPRIT, 0
	play_cry SPECIES_MESPRIT, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_AZELF, 0
	play_cry SPECIES_AZELF, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_DIALGA, 0
	play_cry SPECIES_DIALGA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_PALKIA, 0
	play_cry SPECIES_PALKIA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_GIRATINA, 1
	play_cry SPECIES_GIRATINA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_HEATRAN, 0
	play_cry SPECIES_HEATRAN, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_REGIGIGAS, 0
	play_cry SPECIES_REGIGIGAS, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_CRESSELIA, 1
	play_cry SPECIES_CRESSELIA, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_MANAPHY, 0
	play_cry SPECIES_MANAPHY, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_DARKRAI, 0
	play_cry SPECIES_DARKRAI, 0
	wait_button_or_walk_away
	scrcmd_453
	scrcmd_452 SPECIES_SHAYMIN, 0
	play_cry SPECIES_SHAYMIN, 0
	wait_button_or_walk_away
	scrcmd_453
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 18
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 19
	scrcmd_452 SPECIES_PHIONE, 0
	play_cry SPECIES_PHIONE, 0
	wait_button_or_walk_away
	scrcmd_453
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _051B
	npc_msg 20
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0601_002:
	buffer_players_name 0
	end

_039B:
	apply_movement obj_T03R0601_daigo, _0706
	wait_movement
	npc_msg 0
	setflag 16313
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _04C1
	goto _04EE

_03C3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 28
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 252
	goto_if_eq _0521
	compare VAR_TEMP_x4001, 253
	goto_if_eq _0521
	compare VAR_TEMP_x4001, 254
	goto_if_eq _0521
	compare VAR_TEMP_x4001, 255
	goto_if_eq _0579
	compare VAR_TEMP_x4001, 256
	goto_if_eq _0579
	compare VAR_TEMP_x4001, 257
	goto_if_eq _0579
	compare VAR_TEMP_x4001, 258
	goto_if_eq _05D1
	compare VAR_TEMP_x4001, 259
	goto_if_eq _05D1
	compare VAR_TEMP_x4001, 260
	goto_if_eq _05D1
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0458:
	npc_msg 23
	wait_button_or_walk_away
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0629
	closemsg
	releaseall
	end

_0476:
	npc_msg 6
	scrcmd_452 SPECIES_REGIGIGAS, 0
	npc_msg 10
	scrcmd_453
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_048F:
	npc_msg 6
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_049D:
	apply_movement obj_T03R0601_daigo, _0706
	wait_movement
	npc_msg 6
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _04C1
	goto _04EE

_04C1:
	scrcmd_452 SPECIES_LATIOS, 0
	npc_msg 1
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 381
	goto_if_eq _066A
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04EE:
	scrcmd_452 SPECIES_LATIAS, 1
	npc_msg 1
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 380
	goto_if_eq _06AA
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_051B:
	closemsg
	releaseall
	end

_0521:
	npc_msg 30
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _06EA
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _06EA
	give_mon SPECIES_TORCHIC, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_MUDKIP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 31
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	setflag 16284
	releaseall
	end

_0579:
	npc_msg 30
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _06EA
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _06EA
	give_mon SPECIES_TREECKO, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_MUDKIP, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 32
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	setflag 16284
	releaseall
	end

_05D1:
	npc_msg 30
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _06EA
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _06EA
	give_mon SPECIES_TREECKO, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	give_mon SPECIES_TORCHIC, 5, 155, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 33
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	setflag 16284
	releaseall
	end

_0629:
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06F5
	npc_msg 25
	closemsg
	trainer_battle TRAINER_PICNICKER_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 9
	goto_if_eq _0700
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_066A:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 0, RGB_WHITE
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_WHITE
	npc_msg 9
	giveitem_no_check ITEM_ENIGMA_STONE, 1
	closemsg
	setflag 16312
	releaseall
	end

_06AA:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 0, RGB_WHITE
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_WHITE
	npc_msg 5
	giveitem_no_check ITEM_ENIGMA_STONE, 1
	closemsg
	setflag 16312
	releaseall
	end

_06EA:
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06F5:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0700:
	white_out
	releaseall
	end

	.align 4
_0706:

	step 75, 1
	step_end
	.align 4


.close
