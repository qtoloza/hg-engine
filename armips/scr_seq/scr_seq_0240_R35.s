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

.include "armips/scr_seq/event_R35.inc"


// text archive to grab from: 387.txt

.create "build/a012/2_240", 0


scrdef scr_seq_R35_000
scrdef scr_seq_R35_001
scrdef scr_seq_R35_002
scrdef scr_seq_R35_003
scrdef scr_seq_R35_004
scrdef scr_seq_R35_005
scrdef scr_seq_R35_006
scrdef_end

scr_seq_R35_001:
	goto_if_unset FLAG_UNK_189, _0147
	clearflag FLAG_UNK_189
	end

scr_seq_R35_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _017C
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0190
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _01A4
	apply_movement obj_player, _03C8
	apply_movement obj_R35_gsmiddleman1, _03DA
	goto _01BF

scr_seq_R35_000:
	direction_signpost 28, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R35_004:
	direction_signpost 29, 1, 19, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R35_002:
	simple_npc_msg 21
	end

scr_seq_R35_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SWELLOW, 0
	wait_cry
	wild_battle SPECIES_SWELLOW, 23, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0220
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R35_follower_mon_swellow
	setflag 16365
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R35_006:
	setvar VAR_SPECIAL_x8008, 81
	setvar VAR_SPECIAL_x8009, 1
	goto _0226

_0147:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0262
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0262
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0262
	setflag FLAG_HIDE_CAMERON
	goto _028E

_017C:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0190:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A4:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02B6
	apply_movement obj_player, _03E4
	goto _01BF

_01BF:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0327
	apply_movement obj_partner_poke, _03EE
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_0220:
	white_out
	releaseall
	end

_0226:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8008
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8009
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0361
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03A2
	end

_0262:
	clearflag FLAG_HIDE_CAMERON
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _03B8
	compare VAR_TEMP_x4000, 4
	goto_if_eq _03B8
	clearflag FLAG_UNK_1CD
	setflag FLAG_UNK_1CE
	end

_028E:
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _03B8
	compare VAR_TEMP_x4000, 4
	goto_if_eq _03B8
	clearflag FLAG_UNK_1CD
	setflag FLAG_UNK_1CE
	end

_02B6:
	apply_movement obj_player, _03FC
	apply_movement obj_R35_gsmiddleman1, _03DA
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0327
	apply_movement obj_partner_poke, _03EE
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_0327:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_0361:
	callstd std_hidden_item_fanfare
	hide_person VAR_SPECIAL_LAST_TALKED
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 2
	wait_fanfare
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_x800B
	scrcmd_208 2, VAR_SPECIAL_x800B
	npc_msg 3
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 1
	closemsg
	releaseall
	end

_03A2:
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 4
	wait_button_or_walk_away
	setvar VAR_SPECIAL_RESULT, 0
	goto _03C2

_03B8:
	clearflag FLAG_UNK_1CE
	setflag FLAG_UNK_1CD
	end

_03C2:
	closemsg
	releaseall
	end

	.align 4
_03C8:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_03DA:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_03E4:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_03EE:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_03FC:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
