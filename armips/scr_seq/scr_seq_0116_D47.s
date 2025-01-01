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

.include "armips/scr_seq/event_D47.inc"


// text archive to grab from: 133.txt

.create "build/a012/2_116", 0


scrdef scr_seq_D47_000
scrdef scr_seq_D47_001
scrdef scr_seq_D47_002
scrdef scr_seq_D47_003
scrdef scr_seq_D47_004
scrdef scr_seq_D47_005
scrdef scr_seq_D47_006
scrdef scr_seq_D47_007
scrdef scr_seq_D47_008
scrdef scr_seq_D47_009
scrdef scr_seq_D47_010
scrdef scr_seq_D47_011
scrdef scr_seq_D47_012
scrdef scr_seq_D47_013
scrdef scr_seq_D47_014
scrdef scr_seq_D47_015
scrdef scr_seq_D47_016
scrdef scr_seq_D47_017
scrdef scr_seq_D47_018
scrdef scr_seq_D47_019
scrdef scr_seq_D47_020
scrdef scr_seq_D47_021
scrdef_end

scr_seq_D47_014:
	goto_if_unset FLAG_UNK_189, _0353
	clearflag FLAG_UNK_189
	end

scr_seq_D47_000:
	simple_npc_msg 2
	end

scr_seq_D47_001:
	simple_npc_msg 3
	end

scr_seq_D47_002:
	simple_npc_msg 4
	end

scr_seq_D47_003:
	simple_npc_msg 5
	end

scr_seq_D47_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_JIGGLYPUFF, 0
	npc_msg 6
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0377
	npc_msg 7
	goto _0399

scr_seq_D47_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 6
	callstd std_special_mart
	releaseall
	end

scr_seq_D47_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_special_mart
	releaseall
	end

scr_seq_D47_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BEAUTIFLY, 0
	npc_msg 11
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47_009:
	simple_npc_msg 12
	end

scr_seq_D47_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SLOWPOKE, 0
	npc_msg 13
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 17, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D47_012:
	simple_npc_msg 14
	end

scr_seq_D47_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03B8
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03CC
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03E0
	apply_movement obj_player, _055C
	apply_movement obj_D47_gsmiddleman1, _0572
	goto _03FB

scr_seq_D47_015:
	simple_npc_msg 15
	end

scr_seq_D47_016:
	simple_npc_msg 16
	end

scr_seq_D47_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 18
	setflag 16383
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47_018:
	simple_npc_msg 22
	end

scr_seq_D47_019:
	simple_npc_msg 19
	end

scr_seq_D47_020:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47_021:
	apply_movement obj_D47_rkanbum, _057C
	apply_movement obj_D47_rocketw, _057C
	apply_movement obj_player, _0582
	apply_movement obj_D47_seven2, _0582
	wait_movement
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	buffer_players_name 0
	npc_msg 21
	closemsg
	multi_battle TRAINER_BIKER_MICKEY_2, TRAINER_SWIMMER_M_MICKEY_3, TRAINER_SWIMMER_M_MICKEY_2, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _045C
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	setvar 24880, 2
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D47_rkanbum
	hide_person obj_D47_rocketw
	setflag 16351
	setflag 16360
	clearflag 16359
	fade_screen 8, 1, 1, RGB_BLACK
	apply_movement obj_D47_seven2, _0588
	apply_movement obj_player, _058E
	wait_movement
	npc_msg 24
	goto_if_set FLAG_GOT_EEVEE_FROM_BILL, _0462
	npc_msg 25
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D47_seven2, _0594
	wait_movement
	hide_person obj_D47_seven2
	releaseall
	end

_0353:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _047E
	compare VAR_TEMP_x4000, 4
	goto_if_eq _047E
	setflag FLAG_HIDE_CAMERON
	end

_0377:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0484
	addvar VAR_TEMP_x400B, 1
	goto _048C

_0399:
	wait_button_or_walk_away
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0484
	addvar VAR_TEMP_x400B, 1
	goto _048C

_03B8:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03CC:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03E0:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _048E
	apply_movement obj_player, _059A
	goto _03FB

_03FB:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04B1
	apply_movement obj_partner_poke, _05A4
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 38
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

_045C:
	white_out
	releaseall
	end

_0462:
	npc_msg 26
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	apply_movement obj_D47_seven2, _0594
	wait_movement
	hide_person obj_D47_seven2
	releaseall
	end

_047E:
	clearflag FLAG_HIDE_CAMERON
	end

_0484:
	setvar VAR_TEMP_x400B, 0
	end

_048C:
	end

_048E:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _04EB
	apply_movement obj_player, _05B2
	apply_movement obj_D47_gsmiddleman1, _0572
	goto _03FB

_04B1:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 38
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

_04EB:
	apply_movement obj_player, _05C4
	apply_movement obj_D47_gsmiddleman1, _0572
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04B1
	apply_movement obj_partner_poke, _05A4
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 38
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
_055C:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0572:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_057C:

	step 1, 1
	step_end
	.align 4
_0582:

	step 0, 1
	step_end
	.align 4
_0588:

	step 2, 1
	step_end
	.align 4
_058E:

	step 3, 1
	step_end
	.align 4
_0594:

	step 13, 11
	step_end
	.align 4
_059A:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_05A4:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_05B2:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_05C4:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
