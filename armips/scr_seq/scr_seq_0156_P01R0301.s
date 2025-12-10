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

.include "armips/scr_seq/event_P01R0301.inc"


// text archive to grab from: 259.txt

.create "build/a012/2_156", 0


scrdef scr_seq_P01R0301_000
scrdef scr_seq_P01R0301_001
scrdef scr_seq_P01R0301_002
scrdef scr_seq_P01R0301_003
scrdef scr_seq_P01R0301_004
scrdef scr_seq_P01R0301_005
scrdef scr_seq_P01R0301_006
scrdef scr_seq_P01R0301_007
scrdef scr_seq_P01R0301_008
scrdef scr_seq_P01R0301_009
scrdef_end

scr_seq_P01R0301_007:
	goto_if_unset FLAG_BOAT_ARRIVED, _014B
	end

scr_seq_P01R0301_006:
	compare VAR_BOAT_DIRECTION, 1
	goto_if_le _014D
	compare VAR_BOAT_DIRECTION, 2
	goto_if_ge _0157
	end

scr_seq_P01R0301_008:
	end

scr_seq_P01R0301_005:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _039C
	apply_movement obj_P01R0301_seaman_2_2, _03A2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40DC, 1
	releaseall
	end

scr_seq_P01R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_BOAT_DIRECTION, 1
	goto_if_gt _0161
	goto _0167

scr_seq_P01R0301_004:
	scrcmd_609
	lockall
	apply_movement obj_player, _03C0
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 22
	goto_if_ne _017D
	move_person_facing obj_P01R0301_gsgentleman, 31, 0, VAR_TEMP_x4001, DIR_WEST
	goto _019C

scr_seq_P01R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	nop_var_490 VAR_UNK_40CB
	compare VAR_UNK_40CB, 7
	goto_if_lt _01DD
	npc_msg 9
	goto _01E8

scr_seq_P01R0301_002:
	simple_npc_msg 10
	end

scr_seq_P01R0301_003:
	end

scr_seq_P01R0301_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16301, _02F9
	scrcmd_452 SPECIES_PHIONE, 0
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 489
	goto_if_eq _0323
	releaseall
	end

_014B:
	end

_014D:
	move_warp 0, 27, 20
	end

_0157:
	move_warp 12, 27, 20
	end

_0161:
	goto _01F0

_0167:
	goto_if_set FLAG_BOAT_ARRIVED, _0206
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_017D:
	compare VAR_TEMP_x4000, 23
	goto_if_ne _0232
	move_person_facing obj_P01R0301_gsgentleman, 32, 0, VAR_TEMP_x4001, DIR_WEST
	goto _019C

_019C:
	apply_movement obj_P01R0301_gsgentleman, _03C6
	apply_movement obj_player, _03DC
	wait_movement
	apply_movement obj_P01R0301_gsgentleman, _03F2
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_P01R0301_gsgentleman, _03F8
	wait_movement
	hide_person obj_P01R0301_gsgentleman
	setflag FLAG_UNK_215
	setvar VAR_UNK_40CB, 2
	stop_se SEQ_SE_GS_N_UMIBE
	releaseall
	end

_01DD:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E8:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01F0:
	goto_if_set FLAG_BOAT_ARRIVED, _0251
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0206:
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0277
	npc_msg 2
	closemsg
	apply_movement obj_P01R0301_seaman_2_2, _040E
	wait_movement
	setvar VAR_UNK_40CB, 7
	setvar VAR_TEMP_x4000, 1
	releaseall
	end

_0232:
	compare VAR_TEMP_x4000, 24
	goto_if_ne _0282
	move_person_facing obj_P01R0301_gsgentleman, 33, 0, VAR_TEMP_x4001, DIR_WEST
	goto _019C

_0251:
	compare VAR_TEMP_x4000, 1
	goto_if_eq _02A1
	npc_msg 5
	closemsg
	apply_movement obj_P01R0301_seaman_2_2, _040E
	wait_movement
	setvar VAR_TEMP_x4000, 1
	releaseall
	end

_0277:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0282:
	compare VAR_TEMP_x4000, 25
	goto_if_ne _02AC
	move_person_facing obj_P01R0301_gsgentleman, 34, 0, VAR_TEMP_x4001, DIR_WEST
	goto _019C

_02A1:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AC:
	move_person_facing obj_P01R0301_gsgentleman, 35, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_P01R0301_gsgentleman, _03C6
	apply_movement obj_player, _03DC
	wait_movement
	apply_movement obj_P01R0301_gsgentleman, _03F2
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_P01R0301_gsgentleman, _03F8
	wait_movement
	hide_person obj_P01R0301_gsgentleman
	setflag FLAG_UNK_215
	setvar VAR_UNK_40CB, 2
	stop_se SEQ_SE_GS_N_UMIBE
	releaseall
	end

_02F9:
	scrcmd_452 SPECIES_MANAPHY, 0
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 490
	goto_if_eq _034F
	releaseall
	end

_0323:
	play_cry SPECIES_PHIONE, 6
	wait_cry
	apply_movement obj_P01R0301_gsassistantm, _03C0
	wait_movement
	npc_msg 14
	scrcmd_452 SPECIES_MANAPHY, 0
	setflag 16301
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	scrcmd_453
	releaseall
	end

_034F:
	play_cry SPECIES_MANAPHY, 6
	wait_cry
	apply_movement obj_P01R0301_gsassistantm, _03C0
	wait_movement
	npc_msg 16
	giveitem_no_check ITEM_SPLASH_PLATE, 1
	gender_msgbox 17, 18
	wait_button_or_walk_away
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_P01R0301_gsassistantm
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_039C:

	step 12, 4
	step_end
	.align 4
_03A2:

	step 71, 1
	step 10, 1
	step 72, 1
	step 3, 2
	step 65, 1
	step 11, 1
	step 0, 2
	step_end
	.align 4
_03C0:

	step 75, 1
	step_end
	.align 4
_03C6:

	step 18, 9
	step 71, 1
	step 55, 1
	step 72, 1
	step 65, 1
	step_end
	.align 4
_03DC:

	step 61, 5
	step 3, 2
	step 61, 5
	step 51, 1
	step 65, 1
	step_end
	.align 4
_03F2:

	step 50, 4
	step_end
	.align 4
_03F8:

	step 38, 2
	step 0, 2
	step 16, 1
	step 2, 2
	step 18, 10
	step_end
	.align 4
_040E:

	step 71, 1
	step 13, 1
	step 72, 1
	step 2, 2
	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.align 4


.close
