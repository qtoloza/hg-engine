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

.include "armips/scr_seq/event_D32R0102.inc"


// text archive to grab from: 104.txt

.create "build/a012/2_081", 0


scrdef scr_seq_D32R0102_000
scrdef scr_seq_D32R0102_001
scrdef scr_seq_D32R0102_002
scrdef scr_seq_D32R0102_003
scrdef scr_seq_D32R0102_004
scrdef scr_seq_D32R0102_005
scrdef scr_seq_D32R0102_006
scrdef scr_seq_D32R0102_007
scrdef scr_seq_D32R0102_008
scrdef_end

scr_seq_D32R0102_002:
	compare VAR_UNK_40E5, 2
	goto_if_eq _0188
	end

scr_seq_D32R0102_004:
	goto_if_unset FLAG_UNK_189, _0196
	clearflag FLAG_UNK_189
	end

scr_seq_D32R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40E5, 2
	goto_if_eq _01BA
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D32R0102_001:
	scrcmd_609
	lockall
	npc_msg 0
	closemsg
	move_person_facing obj_D32R0102_gsmiddleman1, 14, 1, 36, DIR_NORTH
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8004, 12
	goto_if_ne _01C5
	apply_movement obj_D32R0102_gsmiddleman1, _0430
	apply_movement obj_player, _0446
	goto _01E8

scr_seq_D32R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01FF
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0213
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0227
	apply_movement obj_player, _0450
	apply_movement obj_D32R0102_gsmiddleman1_2, _0466
	goto _0242

scr_seq_D32R0102_005:
	goto_if_set FLAG_UNK_150, _02A3
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	buffer_players_name 0
	apply_movement obj_D32R0102_gsman1, _0470
	wait_movement
	npc_msg 5
	closemsg
	setflag FLAG_UNK_150
	goto _02BE

scr_seq_D32R0102_006:
	simple_npc_msg 7
	end

scr_seq_D32R0102_007:
	simple_npc_msg 8
	end

scr_seq_D32R0102_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 9, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

_0188:
	move_person_facing obj_D32R0102_gsmiddleman1, 17, 1, 25, DIR_WEST
	end

_0196:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _02CC
	compare VAR_TEMP_x4000, 6
	goto_if_eq _02CC
	setflag FLAG_HIDE_CAMERON
	end

_01BA:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01C5:
	compare VAR_SPECIAL_x8004, 13
	goto_if_ne _02D2
	apply_movement obj_D32R0102_gsmiddleman1, _0476
	apply_movement obj_player, _0446
	goto _01E8

_01E8:
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_UNK_40E5, 1
	setflag FLAG_UNK_25B
	end

_01FF:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0213:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0227:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02F5
	apply_movement obj_player, _0488
	goto _0242

_0242:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0318
	apply_movement obj_partner_poke, _0492
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 29
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

_02A3:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	closemsg
	apply_movement obj_D32R0102_gsman1, _04A0
	wait_movement
	releaseall
	end

_02BE:
	apply_movement obj_D32R0102_gsman1, _04A0
	wait_movement
	releaseall
	end

_02CC:
	clearflag FLAG_HIDE_CAMERON
	end

_02D2:
	compare VAR_SPECIAL_x8004, 14
	goto_if_ne _0352
	apply_movement obj_D32R0102_gsmiddleman1, _04A6
	apply_movement obj_player, _0446
	goto _01E8

_02F5:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0375
	apply_movement obj_player, _04BC
	apply_movement obj_D32R0102_gsmiddleman1_2, _0466
	goto _0242

_0318:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 29
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

_0352:
	compare VAR_SPECIAL_x8004, 15
	goto_if_ne _03E6
	apply_movement obj_D32R0102_gsmiddleman1, _04CE
	apply_movement obj_player, _04E0
	goto _01E8

_0375:
	apply_movement obj_player, _04EA
	apply_movement obj_D32R0102_gsmiddleman1_2, _0466
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0318
	apply_movement obj_partner_poke, _0492
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 29
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

_03E6:
	compare VAR_SPECIAL_x8004, 16
	goto_if_ne _0409
	apply_movement obj_D32R0102_gsmiddleman1, _04FC
	apply_movement obj_player, _04E0
	goto _01E8

_0409:
	apply_movement obj_D32R0102_gsmiddleman1, _0512
	apply_movement obj_player, _04E0
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_UNK_40E5, 1
	setflag FLAG_UNK_25B
	end

	.align 4
_0430:

	step 18, 1
	step 16, 5
	step 76, 2
	step 12, 1
	step 34, 1
	step_end
	.align 4
_0446:

	step 63, 5
	step 35, 1
	step_end
	.align 4
_0450:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0466:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0470:

	step 1, 1
	step_end
	.align 4
_0476:

	step 16, 5
	step 76, 2
	step 12, 1
	step 34, 1
	step_end
	.align 4
_0488:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0492:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_04A0:

	step 0, 1
	step_end
	.align 4
_04A6:

	step 15, 1
	step 16, 5
	step 76, 2
	step 12, 1
	step 34, 1
	step_end
	.align 4
_04BC:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_04CE:

	step 16, 5
	step 76, 2
	step 12, 1
	step 35, 1
	step_end
	.align 4
_04E0:

	step 63, 5
	step 34, 1
	step_end
	.align 4
_04EA:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_04FC:

	step 15, 1
	step 16, 5
	step 76, 2
	step 12, 1
	step 35, 1
	step_end
	.align 4
_0512:

	step 19, 2
	step 16, 5
	step 76, 2
	step 12, 1
	step 35, 1
	step_end
	.align 4


.close
