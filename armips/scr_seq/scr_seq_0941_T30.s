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

.include "armips/scr_seq/event_T30.inc"


// text archive to grab from: 629.txt

.create "build/a012/2_941", 0


scrdef scr_seq_T30_000
scrdef scr_seq_T30_001
scrdef scr_seq_T30_002
scrdef scr_seq_T30_003
scrdef scr_seq_T30_004
scrdef scr_seq_T30_005
scrdef scr_seq_T30_006
scrdef scr_seq_T30_007
scrdef scr_seq_T30_008
scrdef scr_seq_T30_009
scrdef scr_seq_T30_010
scrdef scr_seq_T30_011
scrdef scr_seq_T30_012
scrdef scr_seq_T30_013
scrdef scr_seq_T30_014
scrdef scr_seq_T30_015
scrdef scr_seq_T30_016
scrdef_end

scr_seq_T30_005:
	compare VAR_UNK_40C4, 1
	goto_if_ne _005D
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 2
_005D:
	goto_if_unset FLAG_UNK_189, _006E
	clearflag FLAG_UNK_189
	end

_006E:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0089
	clearflag FLAG_HIDE_CAMERON
	goto _00A4

_0089:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _00A0
	clearflag FLAG_HIDE_CAMERON
	goto _00A4

_00A0:
	setflag FLAG_HIDE_CAMERON
_00A4:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _00BF
	clearflag FLAG_UNK_204
	goto _00C3

_00BF:
	setflag FLAG_UNK_204
_00C3:
	end

scr_seq_T30_007:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 3
	callstd std_phone_call
	setvar VAR_UNK_407B, 2
	end

scr_seq_T30_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SNOOZE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0209
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _021D
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _01B7
	goto_if_set FLAG_GOT_SOFT_SAND_FROM_SANTOS, _0199
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _014A
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 23
	goto _0191

_014A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 20
	goto_if_no_item_space ITEM_SOFT_SAND, 1, _01AD
	callstd std_give_item_verbose
	setflag FLAG_GOT_SOFT_SAND_FROM_SANTOS
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 21
_0191:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0199:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AD:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01B7:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _01DA
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 23
	goto _0191

_01DA:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 48
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 50
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SNOOZE
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0209:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 49
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021D:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 51
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30_000:
	simple_npc_msg 0
	end

scr_seq_T30_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0D1, _0262
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0262:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30_002:
	simple_npc_msg 3
	end

scr_seq_T30_003:
	simple_npc_msg 4
	end

scr_seq_T30_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _02B1
	npc_msg 5
	goto _02B4

_02B1:
	npc_msg 6
_02B4:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T30_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C1
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D5
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0335
	apply_movement obj_player, _03EC
	apply_movement obj_T30_gsmiddleman1, _0424
	goto _0360

_0335:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0350
	apply_movement obj_player, _0404
	goto _0360

_0350:
	apply_movement obj_player, _0410
	apply_movement obj_T30_gsmiddleman1, _0424
_0360:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0387
	apply_movement obj_partner_poke, _0430
	wait_movement
_0387:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 44
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

_03C1:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_03D5:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_03EC:

	step 14, 1
	step 12, 2
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_0404:

	step 12, 3
	step 33, 1
	step_end

_0410:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end

_0424:

	step 63, 1
	step 32, 1
	step_end

_0430:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
scr_seq_T30_008:
	direction_signpost 10, 0, 20, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_012:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_013:
	simple_npc_msg 7
	end

scr_seq_T30_014:
	simple_npc_msg 8
	end

scr_seq_T30_015:
	simple_npc_msg 9
	end
	.align 4


.close
