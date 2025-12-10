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

.include "armips/scr_seq/event_T03R0101.inc"


// text archive to grab from: 464.txt

.create "build/a012/2_755", 0


scrdef scr_seq_T03R0101_000
scrdef scr_seq_T03R0101_001
scrdef scr_seq_T03R0101_002
scrdef scr_seq_T03R0101_003
scrdef scr_seq_T03R0101_004
scrdef scr_seq_T03R0101_005
scrdef scr_seq_T03R0101_006
scrdef scr_seq_T03R0101_007
scrdef scr_seq_T03R0101_008
scrdef scr_seq_T03R0101_009
scrdef scr_seq_T03R0101_010
scrdef scr_seq_T03R0101_011
scrdef scr_seq_T03R0101_012
scrdef scr_seq_T03R0101_013
scrdef scr_seq_T03R0101_014
scrdef scr_seq_T03R0101_015
scrdef scr_seq_T03R0101_016
scrdef scr_seq_T03R0101_017
scrdef scr_seq_T03R0101_018
scrdef scr_seq_T03R0101_019
scrdef scr_seq_T03R0101_020
scrdef_end

scr_seq_T03R0101_014:
	compare VAR_UNK_4083, 5
	goto_if_ge _0389
	compare VAR_UNK_4083, 4
	goto_if_eq _0389
	compare VAR_UNK_4083, 3
	goto_if_eq _0393
	compare VAR_UNK_4083, 2
	goto_if_eq _0393
	compare VAR_UNK_4083, 1
	goto_if_eq _03A1
	hasitem ITEM_ENIGMA_STONE, 1, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03AB
	scrcmd_546 0, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03AB
	nop_var_490 VAR_TEMP_x4007
	setvar VAR_UNK_4083, 1
	clearflag FLAG_HIDE_STEVEN_IN_HOUSE_BEFORE_LATIS
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	end

scr_seq_T03R0101_017:
	end

scr_seq_T03R0101_000:
	simple_npc_msg 0
	end

scr_seq_T03R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 2, 0
	goto_if_set FLAG_MAPTEMP_001, _03B9
	compare VAR_UNK_407F, 0
	goto_if_ne _03C6
	npc_msg 1
	countfossils VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8000, 0
	goto_if_ne _03EB
	npc_msg 6
	goto _0590

scr_seq_T03R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _059C
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05B0
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05C4
	apply_movement obj_player, _0D33
	apply_movement obj_T03R0101_gsmiddleman1, _0D49
	goto _05DF

scr_seq_T03R0101_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4130, 5
	releaseall
	end

scr_seq_T03R0101_015:
	end

scr_seq_T03R0101_018:
	compare VAR_UNK_4083, 0
	goto_if_eq _0640
	compare VAR_UNK_4083, 1
	goto_if_eq _0642
	end

scr_seq_T03R0101_016:
	lockall
	hasitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _065E
	scrcmd_546 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _065E
	apply_movement obj_T03R0101_daigo, _0D53
	wait_movement
	npc_msg 14
	closemsg
	apply_movement obj_T03R0101_daigo, _0D59
	wait_movement
	npc_msg 15
	npc_msg 16
	closemsg
	apply_movement obj_T03R0101_daigo, _0D63
	apply_movement obj_T03R0101_gsassistantm, _0D71
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 6
	goto_if_ne _0662
	apply_movement obj_player, _0D77
	goto _0761

scr_seq_T03R0101_002:
	simple_npc_msg 10
	end

scr_seq_T03R0101_003:
	simple_npc_msg 11
	end

scr_seq_T03R0101_004:
	simple_npc_msg 12
	end

scr_seq_T03R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 24
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0101_020:
	lockall
	hasitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _065E
	npc_msg 14
	closemsg
	apply_movement 8, _0D59
	wait_movement
	npc_msg 15
	npc_msg 16
	closemsg
	apply_movement 8, _0D63
	apply_movement obj_T03R0101_gsassistantm, _0D71
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 6
	goto_if_ne _0662
	apply_movement obj_player, _0D77
	goto _0761

_0389:
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_BEFORE_LATIS
	goto _0858

_0393:
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_BEFORE_LATIS
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	goto _0858

_03A1:
	clearflag FLAG_HIDE_STEVEN_IN_HOUSE_BEFORE_LATIS
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_AFTER_LATIS
	end

_03AB:
	nop_var_490 VAR_TEMP_x4006
	setflag FLAG_HIDE_STEVEN_IN_HOUSE_BEFORE_LATIS
	goto _0858

_03B9:
	setflag FLAG_MAPTEMP_001
	npc_msg 3
	goto _0590

_03C6:
	buffer_species_name 0, VAR_UNK_407F, 0, 0
	npc_msg 4
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_ne _0869
	npc_msg 5
	goto _0590

_03EB:
	compare VAR_SPECIAL_x8000, 1
	goto_if_eq _08F0
	setvar VAR_SPECIAL_x8001, 0
	hasitem ITEM_OLD_AMBER, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_HELIX_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_DOME_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_ROOT_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_CLAW_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_ARMOR_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	hasitem ITEM_SKULL_FOSSIL, 1, VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_x8001, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8001, 1
	goto_if_eq _08F0
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 0
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 0
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	setvar VAR_TEMP_x4005, 0
	setvar VAR_TEMP_x4006, 0
	setvar VAR_TEMP_x4007, 0
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_x8005, 0
	call_if_eq _0929
	compare VAR_SPECIAL_x8005, 1
	call_if_eq _0939
	compare VAR_SPECIAL_x8005, 2
	call_if_eq _0949
	compare VAR_SPECIAL_x8005, 3
	call_if_eq _0959
	compare VAR_SPECIAL_x8005, 4
	call_if_eq _0969
	compare VAR_SPECIAL_x8005, 5
	call_if_eq _0979
	compare VAR_SPECIAL_x8005, 6
	call_if_eq _0989
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0999
	compare VAR_SPECIAL_x8004, 0
	call_if_eq _09A5
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _09AD
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _09B5
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _09BD
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _09C5
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _09CD
	compare VAR_SPECIAL_x8004, 6
	call_if_eq _09D5
	copyvar VAR_SPECIAL_x8006, VAR_SPECIAL_x8005
	addvar VAR_SPECIAL_x8006, 159
	menu_item_add VAR_SPECIAL_x8006, 255, VAR_SPECIAL_x8004
	goto _09DD

_0590:
	wait_button_or_walk_away
	closemsg
	script_overlay_cmd 2, 1
	releaseall
	end

_059C:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05B0:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05C4:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AA8
	apply_movement obj_player, _0D81
	goto _05DF

_05DF:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B19
	apply_movement obj_partner_poke, _0D8B
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 65
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0640:
	end

_0642:
	nop_var_490 VAR_UNK_4083
	scrcmd_344 0, 0
	move_person_facing obj_T03R0101_daigo, 26, 0, 7, DIR_SOUTH
	goto _0640

_065E:
	releaseall
	end

_0662:
	apply_movement obj_player, _0D99
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_player, _0DA3
	wait_movement
	buffer_players_name 0
	npc_msg 17
	closemsg
	apply_movement obj_T03R0101_gsassistantm, _0DB5
	wait_movement
	npc_msg 18
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	wait 30, VAR_SPECIAL_RESULT
	release 8
	move_person_facing 8, 25, 0, 7, DIR_SOUTH
	wait 10, VAR_SPECIAL_RESULT
	lock 8
	compare VAR_TEMP_x4001, 6
	goto_if_eq _0B53
	scrcmd_729 VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 0
	goto_if_eq _0B53
	apply_movement obj_partner_poke, _0DBB
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_T03R0101_gsassistantm, _0DB5
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_T03R0101_gsassistantm, _0DC9
	wait_movement
	takeitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 225
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	apply_movement 8, _0DDF
	wait_movement
	apply_movement obj_player, _0D53
	wait_movement
	npc_msg 21
	closemsg
	apply_movement 8, _0DE5
	wait_movement
	setvar VAR_UNK_4083, 2
	hide_person 8
	releaseall
	end

_0761:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_player, _0DA3
	wait_movement
	buffer_players_name 0
	npc_msg 17
	closemsg
	apply_movement obj_T03R0101_gsassistantm, _0DB5
	wait_movement
	npc_msg 18
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	wait 30, VAR_SPECIAL_RESULT
	release 8
	move_person_facing 8, 25, 0, 7, DIR_SOUTH
	wait 10, VAR_SPECIAL_RESULT
	lock 8
	compare VAR_TEMP_x4001, 6
	goto_if_eq _0B53
	scrcmd_729 VAR_TEMP_x4009
	compare VAR_TEMP_x4009, 0
	goto_if_eq _0B53
	apply_movement obj_partner_poke, _0DBB
	wait_movement
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_T03R0101_gsassistantm, _0DB5
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_T03R0101_gsassistantm, _0DC9
	wait_movement
	takeitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 225
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	apply_movement 8, _0DDF
	wait_movement
	apply_movement obj_player, _0D53
	wait_movement
	npc_msg 21
	closemsg
	apply_movement 8, _0DE5
	wait_movement
	setvar VAR_UNK_4083, 2
	hide_person 8
	releaseall
	end

_0858:
	goto_if_unset FLAG_UNK_189, _0BC9
	clearflag FLAG_UNK_189
	end

_0869:
	buffer_species_name 1, VAR_UNK_407F, 0, 0
	buffer_players_name 0
	play_fanfare SEQ_ME_POKEGET
	npc_msg 8
	wait_fanfare
	give_mon VAR_UNK_407F, 5, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_420 116
	setvar VAR_UNK_407F, 0
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BED
	get_party_count VAR_TEMP_x4000
	subvar VAR_TEMP_x4000, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BF5
	scrcmd_420 50
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	script_overlay_cmd 2, 1
	releaseall
	end

_08F0:
	getfossilminimumamount VAR_SPECIAL_x8002, VAR_SPECIAL_x8004, 1
	buffer_item_name 0, VAR_SPECIAL_x8002
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C09
	getfossilpokemon VAR_UNK_407F, VAR_SPECIAL_x8002
	takeitem VAR_SPECIAL_x8002, 1, VAR_SPECIAL_RESULT
	goto _03B9

_0929:
	setvar VAR_TEMP_x4000, 103
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0939:
	setvar VAR_TEMP_x4000, 101
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0949:
	setvar VAR_TEMP_x4000, 102
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0959:
	setvar VAR_TEMP_x4000, 99
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0969:
	setvar VAR_TEMP_x4000, 100
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0979:
	setvar VAR_TEMP_x4000, 104
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0989:
	setvar VAR_TEMP_x4000, 105
	hasitem VAR_TEMP_x4000, 1, VAR_SPECIAL_RESULT
	return

_0999:
	addvar VAR_SPECIAL_x8005, 1
	goto _0C18

_09A5:
	copyvar VAR_TEMP_x4001, VAR_TEMP_x4000
	return

_09AD:
	copyvar VAR_TEMP_x4002, VAR_TEMP_x4000
	return

_09B5:
	copyvar VAR_TEMP_x4003, VAR_TEMP_x4000
	return

_09BD:
	copyvar VAR_TEMP_x4004, VAR_TEMP_x4000
	return

_09C5:
	copyvar VAR_TEMP_x4005, VAR_TEMP_x4000
	return

_09CD:
	copyvar VAR_TEMP_x4006, VAR_TEMP_x4000
	return

_09D5:
	copyvar VAR_TEMP_x4007, VAR_TEMP_x4000
	return

_09DD:
	addvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8005, 1
	compare VAR_SPECIAL_x8004, VAR_SPECIAL_x8001
	goto_if_ne _0C18
	menu_item_add 45, 255, VAR_SPECIAL_x8004
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _0C09
	compare VAR_SPECIAL_x8000, 0
	call_if_eq _0CF5
	compare VAR_SPECIAL_x8000, 1
	call_if_eq _0CFD
	compare VAR_SPECIAL_x8000, 2
	call_if_eq _0D05
	compare VAR_SPECIAL_x8000, 3
	call_if_eq _0D0D
	compare VAR_SPECIAL_x8000, 4
	call_if_eq _0D15
	compare VAR_SPECIAL_x8000, 5
	call_if_eq _0D1D
	compare VAR_SPECIAL_x8000, 6
	call_if_eq _0D25
	getfossilpokemon VAR_UNK_407F, VAR_SPECIAL_x8002
	compare VAR_UNK_407F, 0
	goto_if_eq _0C09
	buffer_item_name 0, VAR_SPECIAL_x8002
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0C09
	takeitem VAR_SPECIAL_x8002, 1, VAR_SPECIAL_RESULT
	goto _03B9

_0AA8:
	apply_movement obj_player, _0DEB
	apply_movement obj_T03R0101_gsmiddleman1, _0D49
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B19
	apply_movement obj_partner_poke, _0D8B
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 65
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0B19:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 65
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0B53:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_T03R0101_gsassistantm, _0DB5
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_T03R0101_gsassistantm, _0DC9
	wait_movement
	takeitem ITEM_ENIGMA_STONE, 1, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 225
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	apply_movement 8, _0DDF
	wait_movement
	apply_movement obj_player, _0D53
	wait_movement
	npc_msg 21
	closemsg
	apply_movement 8, _0DE5
	wait_movement
	setvar VAR_UNK_4083, 2
	hide_person 8
	releaseall
	end

_0BC9:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0D2D
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0D2D
	setflag FLAG_HIDE_CAMERON
	end

_0BED:
	script_overlay_cmd 2, 1
	releaseall
	end

_0BF5:
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	script_overlay_cmd 2, 1
	releaseall
	end

_0C09:
	setvar VAR_UNK_407F, 0
	npc_msg 2
	goto _0590

_0C18:
	compare VAR_SPECIAL_x8005, 0
	call_if_eq _0929
	compare VAR_SPECIAL_x8005, 1
	call_if_eq _0939
	compare VAR_SPECIAL_x8005, 2
	call_if_eq _0949
	compare VAR_SPECIAL_x8005, 3
	call_if_eq _0959
	compare VAR_SPECIAL_x8005, 4
	call_if_eq _0969
	compare VAR_SPECIAL_x8005, 5
	call_if_eq _0979
	compare VAR_SPECIAL_x8005, 6
	call_if_eq _0989
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0999
	compare VAR_SPECIAL_x8004, 0
	call_if_eq _09A5
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _09AD
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _09B5
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _09BD
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _09C5
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _09CD
	compare VAR_SPECIAL_x8004, 6
	call_if_eq _09D5
	copyvar VAR_SPECIAL_x8006, VAR_SPECIAL_x8005
	addvar VAR_SPECIAL_x8006, 159
	menu_item_add VAR_SPECIAL_x8006, 255, VAR_SPECIAL_x8004
	goto _09DD

_0CF5:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4001
	return

_0CFD:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4002
	return

_0D05:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4003
	return

_0D0D:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4004
	return

_0D15:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4005
	return

_0D1D:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4006
	return

_0D25:
	copyvar VAR_SPECIAL_x8002, VAR_TEMP_x4007
	return

_0D2D:
	clearflag FLAG_HIDE_CAMERON
	end

	.align 4
_0D33:

	step 256, 3072
	step 512, 3840
	step 256, 3072
	step 768, 8448
	step 256, 65024
	step 16128, 256
	.align 4
_0D49:

	step 256, 8192
	step 256, 65024
	step 8704, 256
	.align 4
_0D53:

	step 256, 65024
	step 16128, 256
	.align 4
_0D59:

	step 256, 19200
	step 256, 65024
	step 18176, 256
	.align 4
_0D63:

	step 256, 3840
	step 256, 18432
	step 256, 65024
	step 8192, 256
	.align 4
_0D71:

	step 256, 65024
	step 3840, 256
	.align 4
_0D77:

	step 256, 3328
	step 256, 65024
	step 3072, 768
	.align 4
_0D81:

	step 768, 8448
	step 256, 65024
	step 3840, 256
	.align 4
_0D8B:

	step 256, 3072
	step 256, 256
	step 256, 65024
	step 3840, 256
	.align 4
_0D99:

	step 256, 256
	step 256, 65024
	step 3328, 256
	.align 4
_0DA3:

	step 256, 16128
	step 256, 3072
	step 256, 256
	step 256, 65024
	step 8192, 256
	.align 4
_0DB5:

	step 256, 65024
	step 5120, 256
	.align 4
_0DBB:

	step 256, 5888
	step 256, 256
	step 256, 65024
	step 3072, 256
	.align 4
_0DC9:

	step 256, 8192
	step 256, 18176
	step 256, 3328
	step 256, 18432
	step 256, 65024
	step 768, 256
	.align 4
_0DDF:

	step 256, 65024
	step 3584, 2048
	.align 4
_0DE5:

	step 2048, 65024
	step 3072, 256
	.align 4
_0DEB:

	step 256, 3840
	step 256, 3072
	step 768, 8448
	step 256, 65024
	step 0, 0
	.align 4


.close
