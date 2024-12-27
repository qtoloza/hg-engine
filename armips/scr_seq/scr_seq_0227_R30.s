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

.include "armips/scr_seq/event_R30.inc"


// text archive to grab from: 375.txt

.create "build/a012/2_227", 0


scrdef scr_seq_R30_000
scrdef scr_seq_R30_001
scrdef scr_seq_R30_002
scrdef scr_seq_R30_003
scrdef scr_seq_R30_004
scrdef scr_seq_R30_005
scrdef scr_seq_R30_006
scrdef scr_seq_R30_007
scrdef scr_seq_R30_008
scrdef scr_seq_R30_009
scrdef scr_seq_R30_010
scrdef_end

scr_seq_R30_001:
	setflag FLAG_GOT_ELMS_PANIC_CALL
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 0
	callstd std_phone_call
	setvar VAR_SCENE_ROUTE_30_OW, 3
	end

scr_seq_R30_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_R30_follower_mon_static_rattata, _0088
	wait_movement
	apply_movement obj_R30_follower_mon_static_pidgey, _0090
	wait_movement
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 1
	closemsg
	apply_movement obj_R30_gsboy2_3, _0098
	wait_movement
	releaseall
	end


_0088:

	step 48, 3
	step_end

_0090:

	step 49, 2
	step_end

_0098:

	step 32, 1
	step_end
scr_seq_R30_002:
	scrcmd_609
	lockall
	scrcmd_307 17, 11, 11, 3, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_HIDE_ROUTE_30_APRICORN_MAN
	show_person obj_R30_gsmiddleman1
	apply_movement obj_R30_gsmiddleman1, _01B0
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement obj_R30_gsmiddleman1, _01C4
	wait_movement
	npc_msg 5
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4000, 558
	goto_if_ne _010A
	apply_movement obj_player, _01D4
	goto _0148

_010A:
	compare VAR_TEMP_x4000, 559
	goto_if_ne _0125
	apply_movement obj_player, _01E8
	goto _0148

_0125:
	compare VAR_TEMP_x4000, 560
	goto_if_ne _0140
	apply_movement obj_player, _01FC
	goto _0148

_0140:
	apply_movement obj_player, _0210
_0148:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 6
	giveitem_no_check ITEM_APRICORN_BOX, 1
	npc_msg 8
	closemsg
	apply_movement obj_R30_gsmiddleman1, _01CC
	wait_movement
	scrcmd_307 17, 11, 11, 3, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_R30_gsmiddleman1, _01B8
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	hide_person obj_R30_gsmiddleman1
	setflag FLAG_HIDE_ROUTE_30_APRICORN_MAN
	releaseall
	setflag FLAG_GOT_APRICORN_BOX
	setvar VAR_SCENE_ROUTE_30_OW, 1
	end


_01B0:

	step 13, 1
	step_end

_01B8:

	step 12, 1
	step 69, 1
	step_end

_01C4:

	step 35, 1
	step_end

_01CC:

	step 32, 1
	step_end

_01D4:

	step 13, 2
	step 34, 1
	step 63, 2
	step 14, 2
	step_end

_01E8:

	step 13, 2
	step 34, 1
	step 63, 2
	step 14, 3
	step_end

_01FC:

	step 13, 2
	step 34, 1
	step 63, 2
	step 14, 4
	step_end

_0210:

	step 13, 2
	step 34, 1
	step 63, 2
	step 14, 5
	step_end
scr_seq_R30_003:
	simple_npc_msg 13
	end

scr_seq_R30_004:
	scrcmd_609
	lockall
	setvar VAR_SPECIAL_x8004, 0
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 0
	callstd std_phone_call
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	releaseall
	end

scr_seq_R30_005:
	direction_signpost 9, 1, 6, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R30_006:
	direction_signpost 10, 1, 3, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R30_007:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R30_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R30_009:
	goto_if_set FLAG_GOT_POKEDEX, _02D5
	simple_npc_msg 2
	end

_02D5:
	simple_npc_msg 3
	end

scr_seq_R30_010:
	simple_npc_msg 4
	end
	.align 4


.close
