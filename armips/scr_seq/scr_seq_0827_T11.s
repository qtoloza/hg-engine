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

.include "armips/scr_seq/event_T11.inc"


// text archive to grab from: 529.txt

.create "build/a012/2_827", 0


scrdef scr_seq_T11_000
scrdef scr_seq_T11_001
scrdef scr_seq_T11_002
scrdef scr_seq_T11_003
scrdef scr_seq_T11_004
scrdef scr_seq_T11_005
scrdef scr_seq_T11_006
scrdef scr_seq_T11_007
scrdef scr_seq_T11_008
scrdef scr_seq_T11_009
scrdef scr_seq_T11_010
scrdef scr_seq_T11_011
scrdef scr_seq_T11_012
scrdef scr_seq_T11_013
scrdef scr_seq_T11_014
scrdef scr_seq_T11_015
scrdef scr_seq_T11_016
scrdef scr_seq_T11_017
scrdef_end

scr_seq_T11_016:
	goto_if_unset FLAG_UNK_0A0, _0292
	clearflag FLAG_UNK_0A0
	goto_if_unset FLAG_UNK_189, _02A3
	clearflag FLAG_UNK_189
	end

scr_seq_T11_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02F2
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0306
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _031A
	apply_movement obj_player, _05AA
	apply_movement obj_T11_gsmiddleman1_2, _05C0
	goto _0335

scr_seq_T11_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02F2
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0306
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0396
	apply_movement obj_player, _05CA
	apply_movement obj_T11_gsmiddleman1_3, _05C0
	goto _03B1

scr_seq_T11_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_2FB, _0412
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11_000:
	simple_npc_msg 0
	end

scr_seq_T11_001:
	simple_npc_msg 1
	end

scr_seq_T11_003:
	simple_npc_msg 4
	end

scr_seq_T11_004:
	simple_npc_msg 5
	end

scr_seq_T11_005:
	simple_npc_msg 6
	end

scr_seq_T11_006:
	simple_npc_msg 7
	end

scr_seq_T11_007:
	simple_npc_msg 8
	end

scr_seq_T11_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 9, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_009:
	direction_signpost 10, 0, 10, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_012:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_013:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T11_017:
	simple_npc_msg 15
	end

_0292:
	goto_if_unset FLAG_UNK_189, _02A3
	clearflag FLAG_UNK_189
	end

_02A3:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _041D
	compare VAR_TEMP_x4000, 2
	goto_if_eq _041D
	compare VAR_TEMP_x4000, 3
	goto_if_eq _041D
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0427
	compare VAR_TEMP_x4000, 6
	goto_if_eq _0427
	setflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	end

_02F2:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0306:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031A:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0431
	apply_movement obj_player, _05E0
	goto _0335

_0335:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04A2
	apply_movement obj_partner_poke, _05EA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 52
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

_0396:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04DC
	apply_movement obj_player, _05E0
	goto _03B1

_03B1:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04FF
	apply_movement obj_partner_poke, _05EA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 53
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

_0412:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_041D:
	clearflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	end

_0427:
	setflag FLAG_HIDE_CAMERON
	clearflag FLAG_UNK_27F
	end

_0431:
	apply_movement obj_player, _05F8
	apply_movement obj_T11_gsmiddleman1_2, _05C0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04A2
	apply_movement obj_partner_poke, _05EA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 52
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

_04A2:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 52
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

_04DC:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0539
	apply_movement obj_player, _05F8
	apply_movement obj_T11_gsmiddleman1_3, _05C0
	goto _03B1

_04FF:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 53
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

_0539:
	apply_movement obj_player, _060A
	apply_movement obj_T11_gsmiddleman1_3, _05C0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04FF
	apply_movement obj_partner_poke, _05EA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 53
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
_05AA:

	step 14, 1
	step 12, 2
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_05C0:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_05CA:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_05E0:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_05EA:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4
_05F8:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_060A:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4


.close
