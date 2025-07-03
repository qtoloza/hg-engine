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

.include "armips/scr_seq/event_T27.inc"


// text archive to grab from: 612.txt

.create "build/a012/2_920", 0


scrdef scr_seq_T27_000
scrdef scr_seq_T27_001
scrdef scr_seq_T27_002
scrdef scr_seq_T27_003
scrdef scr_seq_T27_004
scrdef scr_seq_T27_005
scrdef scr_seq_T27_006
scrdef scr_seq_T27_007
scrdef scr_seq_T27_008
scrdef scr_seq_T27_009
scrdef scr_seq_T27_010
scrdef scr_seq_T27_011
scrdef scr_seq_T27_012
scrdef scr_seq_T27_013
scrdef scr_seq_T27_014
scrdef scr_seq_T27_015
scrdef scr_seq_T27_016
scrdef scr_seq_T27_017
scrdef scr_seq_T27_018
scrdef_end

scr_seq_T27_000:
	end

scr_seq_T27_015:
	goto_if_unset FLAG_UNK_189, _0370
	clearflag FLAG_UNK_189
	end

scr_seq_T27_012:
	scrcmd_609
	lockall
	scrcmd_307 11, 5, 25, 23, 1
	scrcmd_310 1
	scrcmd_308 1
	apply_movement obj_player, _0586
	wait_movement
	lock obj_partner_poke
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _038B
	scrcmd_606
	goto _03A4

scr_seq_T27_005:
	scrcmd_609
	lockall
	clearflag FLAG_HIDE_ECRUTEAK_RIVAL
	show_person obj_T27_gsrivel
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T27_gsrivel, _0590
	apply_movement obj_player, _05A2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_WALL_HIT2
	npc_msg 16
	wait 30, VAR_SPECIAL_RESULT
	buffer_rivals_name 1
	npc_msg 17
	closemsg
	apply_movement obj_T27_gsrivel, _05B4
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 18
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T27_gsrivel, _05C2
	apply_movement obj_player, _05A2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T27_gsrivel, _05CC
	apply_movement obj_player, _05DA
	wait_movement
	hide_person obj_T27_gsrivel
	setflag FLAG_HIDE_ECRUTEAK_RIVAL
	releaseall
	setvar VAR_UNK_4079, 4
	setvar VAR_UNK_410C, 4
	clearflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_UNK_241
	end

scr_seq_T27_013:
	simple_npc_msg 19
	end

scr_seq_T27_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03BB
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03CF
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03E3
	apply_movement obj_player, _05E4
	apply_movement obj_T27_gsmiddleman1, _05FA
	goto _03FE

scr_seq_T27_001:
	direction_signpost 11, 0, 18, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_016:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_96A, _045F
	npc_msg 8
	goto _046A

scr_seq_T27_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0472
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T27_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_410C, 2
	goto_if_gt _047D
	npc_msg 2
	goto _0488

scr_seq_T27_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0490
	compare VAR_UNK_40A1, 0
	goto_if_ne _049B
	npc_msg 5
	goto _04A6

scr_seq_T27_007:
	simple_npc_msg 10
	end

scr_seq_T27_011:
	simple_npc_msg 4
	end

scr_seq_T27_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	callstd std_play_kimono_girl_music
	goto_if_unset 16306, _04AE
	npc_msg 20
	scrcmd_452 SPECIES_JIRACHI, 0
	npc_msg 21
	scrcmd_453
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	clearflag 16306
	callstd std_fade_end_kimono_girl_music
	releaseall
	end

scr_seq_T27_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	buffer_players_name 0
	apply_movement obj_T27_clown, _0604
	wait_movement
	faceplayer
	goto_if_set 16249, _04C8
	npc_msg 25
	giveitem_no_check ITEM_TM92, 1
	npc_msg 26
	setflag 16249
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0370:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _04D3
	clearflag FLAG_HIDE_CAMERON
	goto _04D9

_038B:
	scrcmd_607
	release obj_partner_poke
	setvar VAR_UNK_4079, 0
	scrcmd_311 1
	scrcmd_308 1
	scrcmd_309 1
	releaseall
	end

_03A4:
	release obj_partner_poke
	setvar VAR_UNK_4079, 0
	scrcmd_311 1
	scrcmd_308 1
	scrcmd_309 1
	releaseall
	end

_03BB:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03CF:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E3:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04DB
	apply_movement obj_player, _068A
	goto _03FE

_03FE:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _054C
	apply_movement obj_partner_poke, _0694
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

_045F:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_046A:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0472:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_047D:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0488:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0490:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_049B:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A6:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04AE:
	npc_msg 23
	scrcmd_452 SPECIES_JIRACHI, 0
	npc_msg 24
	wait_button_or_walk_away
	scrcmd_453
	closemsg
	callstd std_fade_end_kimono_girl_music
	releaseall
	end

_04C8:
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04D3:
	setflag FLAG_HIDE_CAMERON
	end

_04D9:
	end

_04DB:
	apply_movement obj_player, _06A2
	apply_movement obj_T27_gsmiddleman1, _05FA
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _054C
	apply_movement obj_partner_poke, _0694
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

_054C:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

	.align 4
_0586:

	step 17, 2
	step 63, 1
	step_end
	.align 4
_0590:

	step 71, 1
	step 17, 1
	step 36, 1
	step 72, 1
	step_end
	.align 4
_05A2:

	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	step_end
	.align 4
_05B4:

	step 75, 1
	step 63, 1
	step 33, 1
	step_end
	.align 4
_05C2:

	step 17, 1
	step 37, 1
	step_end
	.align 4
_05CC:

	step 10, 3
	step 63, 3
	step 18, 6
	step_end
	.align 4
_05DA:

	step 63, 3
	step 34, 1
	step_end
	.align 4
_05E4:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_05FA:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0604:

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
	step 75, 1
	step_end
	.align 4
_068A:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0694:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_06A2:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
