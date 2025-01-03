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

.include "armips/scr_seq/event_D23R0105.inc"


// text archive to grab from: 069.txt

.create "build/a012/2_033", 0


scrdef scr_seq_D23R0105_000
scrdef scr_seq_D23R0105_001
scrdef scr_seq_D23R0105_002
scrdef scr_seq_D23R0105_003
scrdef_end

scr_seq_D23R0105_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setvar VAR_UNK_4125, 0
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _002D
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
_002D:
	end

scr_seq_D23R0105_001:
	simple_npc_msg 7
	end

scr_seq_D23R0105_003:
	simple_npc_msg 8
	end

scr_seq_D23R0105_002:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_eq _0075
	simple_npc_msg 6
	end

_0075:
	getitemquantity ITEM_BASEMENT_KEY, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _022B
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	wait 16, VAR_SPECIAL_RESULT
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _00B8
	apply_movement obj_D23R0105_gsgentleman, _0258
	goto _00DB

_00B8:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _00D3
	apply_movement obj_D23R0105_gsgentleman, _024C
	goto _00DB

_00D3:
	apply_movement obj_D23R0105_gsgentleman, _0240
_00DB:
	wait_movement
	compare VAR_TEMP_x4000, 3
	goto_if_ne _00F8
	apply_movement obj_D23R0105_gsgentleman, _0264
	goto _010D

_00F8:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _010D
	apply_movement obj_D23R0105_gsgentleman, _0274
_010D:
	wait_movement
	npc_msg 1
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _012F
	apply_movement obj_D23R0105_gsgentleman, _0284
	goto _0144

_012F:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0144
	apply_movement obj_D23R0105_gsgentleman, _028C
_0144:
	wait_movement
	buffer_players_name 0
	npc_msg 2
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0167
	apply_movement obj_D23R0105_gsgentleman, _02B0
	goto _018A

_0167:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0182
	apply_movement obj_D23R0105_gsgentleman, _0294
	goto _018A

_0182:
	apply_movement obj_D23R0105_gsgentleman, _02C8
_018A:
	wait_movement
	setflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	clearflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	show_person obj_D23R0105_rkanbum2
	hide_person obj_D23R0105_gsgentleman
	compare VAR_TEMP_x4000, 0
	goto_if_ne _01B7
	apply_movement obj_D23R0105_rkanbum2, _0328
	goto _01DA

_01B7:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _01D2
	apply_movement obj_D23R0105_rkanbum2, _0310
	goto _01DA

_01D2:
	apply_movement obj_D23R0105_rkanbum2, _0344
_01DA:
	wait_movement
	npc_msg 3
	closemsg
	trainer_battle TRAINER_EXECUTIVE_PETREL_PETREL, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021D
	npc_msg 4
	setvar VAR_SPECIAL_x8004, 476
	setvar VAR_SPECIAL_x8005, 1
	callstd std_obtain_item_verbose
	closemsg
	releaseall
	setvar VAR_UNK_40E7, 2
	clearflag FLAG_HIDE_UNDERGROUND_KIMONO_GIRL
	end

_021D:
	white_out
	clearflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	setflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	releaseall
	end

_022B:
	simple_npc_msg 5
	end


_0240:

	step 2, 1
	step 75, 1
	step_end

_024C:

	step 3, 1
	step 75, 1
	step_end

_0258:

	step 1, 1
	step 75, 1
	step_end

_0264:

	step 71, 1
	step 19, 1
	step 72, 1
	step_end

_0274:

	step 71, 1
	step 18, 1
	step 72, 1
	step_end

_0284:

	step 18, 1
	step_end

_028C:

	step 19, 1
	step_end

_0294:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end

_02B0:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end

_02C8:

	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end

_0310:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end

_0328:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step_end

_0344:

	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step_end
	.align 4


.close
