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

.include "armips/scr_seq/event_T04.inc"


// text archive to grab from: 467.txt

.create "build/a012/2_758", 0


scrdef scr_seq_T04_000
scrdef scr_seq_T04_001
scrdef scr_seq_T04_002
scrdef scr_seq_T04_003
scrdef scr_seq_T04_004
scrdef scr_seq_T04_005
scrdef scr_seq_T04_006
scrdef scr_seq_T04_007
scrdef scr_seq_T04_008
scrdef scr_seq_T04_009
scrdef scr_seq_T04_010
scrdef scr_seq_T04_011
scrdef scr_seq_T04_012
scrdef scr_seq_T04_013
scrdef_end

scr_seq_T04_012:
	goto_if_unset FLAG_UNK_189, _004B
	clearflag FLAG_UNK_189
	end

_004B:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_eq _006F
	compare VAR_TEMP_x4000, 0
	goto_if_eq _006F
	setflag FLAG_HIDE_CAMERON
	end

_006F:
	clearflag FLAG_HIDE_CAMERON
	end

scr_seq_T04_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _0093
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0093:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T04_001:
	simple_npc_msg 2
	end

scr_seq_T04_002:
	simple_npc_msg 5
	end

scr_seq_T04_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	play_cry SPECIES_SLOWBRO, 0
	wait_cry
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T04_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROUTE_24_ROCKET, 3
	goto_if_ge _012C
	compare VAR_UNK_411C, 2
	goto_if_eq _0123
	compare VAR_UNK_411C, 1
	goto_if_eq _011A
	npc_msg 6
	goto _012F

_011A:
	npc_msg 7
	goto _012F

_0123:
	npc_msg 8
	goto _012F

_012C:
	npc_msg 9
_012F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T04_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T04_013:
	simple_npc_msg 12
	end

scr_seq_T04_006:
	direction_signpost 13, 0, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T04_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T04_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T04_009:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 16, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T04_010:
	direction_signpost 17, 1, 14, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T04_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02F5
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0309
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0246
	apply_movement obj_player, _0320
	apply_movement obj_T04_gsmiddleman1, _036C
	goto _0294

_0246:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0261
	apply_movement obj_player, _0338
	goto _0294

_0261:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0284
	apply_movement obj_player, _0358
	apply_movement obj_T04_gsmiddleman1, _036C
	goto _0294

_0284:
	apply_movement obj_player, _0344
	apply_movement obj_T04_gsmiddleman1, _036C
_0294:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02BB
	apply_movement obj_partner_poke, _0378
	wait_movement
_02BB:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 55
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

_02F5:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0309:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_0320:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_0338:

	step 12, 3
	step 33, 1
	step_end

_0344:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end

_0358:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_036C:

	step 63, 1
	step 32, 1
	step_end

_0378:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.align 4


.close
