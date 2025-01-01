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

.include "armips/scr_seq/event_T25R0501.inc"


// text archive to grab from: 587.txt

.create "build/a012/2_893", 0


scrdef scr_seq_T25R0501_000
scrdef scr_seq_T25R0501_001
scrdef scr_seq_T25R0501_002
scrdef scr_seq_T25R0501_003
scrdef scr_seq_T25R0501_004
scrdef scr_seq_T25R0501_005
scrdef scr_seq_T25R0501_006
scrdef scr_seq_T25R0501_007
scrdef scr_seq_T25R0501_008
scrdef_end

scr_seq_T25R0501_006:
	scrcmd_582 MAP_T25, 348, 350
	goto_if_set FLAG_RESTORED_POWER, _0162
	end

scr_seq_T25R0501_005:
	goto_if_set FLAG_RESTORED_POWER, _016A
	end

scr_seq_T25R0501_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RESTORED_POWER, _0178
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0501_001:
	scrcmd_609
	lockall
	apply_movement obj_player, _0350
	wait_movement
	goto_if_set FLAG_UNK_123, _0196
	npc_msg 1
	closemsg
	setflag FLAG_UNK_123
	wait 50, VAR_SPECIAL_x8004
	hasitem ITEM_PASS, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01A1
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0356
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_T25R0501_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0501_002:
	end

scr_seq_T25R0501_003:
	end

scr_seq_T25R0501_004:
	end

scr_seq_T25R0501_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	gender_msgbox 10, 11
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	buffer_mon_species_name 1, 0
	compare VAR_TEMP_x4001, 25
	goto_if_eq _01B8
	compare VAR_TEMP_x4001, 113
	goto_if_eq _01E5
	compare VAR_TEMP_x4001, 83
	goto_if_eq _0212
	compare VAR_TEMP_x4001, 366
	goto_if_eq _023F
	compare VAR_TEMP_x4001, 104
	goto_if_eq _027F
	compare VAR_TEMP_x4001, 105
	goto_if_eq _027F
	compare VAR_TEMP_x4001, 132
	goto_if_eq _02AC
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0162:
	setvar VAR_UNK_410B, 0
	end

_016A:
	move_person_facing obj_T25R0501_policeman, 4, 0, 6, DIR_EAST
	end

_0178:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _02EC
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	goto _02FF

_0196:
	npc_msg 3
	closemsg
	goto _0303

_01A1:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_410B, 1
	setvar VAR_UNK_411E, 1
	releaseall
	end

_01B8:
	goto_if_set 16235, _0345
	npc_msg 13
	giveitem_no_check ITEM_LIGHT_BALL, 1
	setflag 16235
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E5:
	goto_if_set 16234, _0345
	npc_msg 13
	giveitem_no_check ITEM_LUCKY_PUNCH, 1
	setflag 16234
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0212:
	goto_if_set 16233, _0345
	npc_msg 13
	giveitem_no_check ITEM_LEEK, 1
	setflag 16233
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_023F:
	goto_if_set 16232, _0345
	npc_msg 13
	npc_msg 14
	giveitem_no_check ITEM_DEEP_SEA_TOOTH, 1
	giveitem_no_check ITEM_DEEP_SEA_SCALE, 1
	setflag 16232
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_027F:
	goto_if_set 16231, _0345
	npc_msg 13
	giveitem_no_check ITEM_THICK_CLUB, 1
	setflag 16231
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AC:
	goto_if_set 16230, _0345
	npc_msg 13
	npc_msg 14
	giveitem_no_check ITEM_QUICK_POWDER, 1
	giveitem_no_check ITEM_METAL_POWDER, 1
	setflag 16230
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02EC:
	npc_msg 7
	closemsg
	apply_movement obj_T25R0501_policeman, _035C
	wait_movement
	releaseall
	end

_02FF:
	releaseall
	end

_0303:
	wait 50, VAR_SPECIAL_x8004
	hasitem ITEM_PASS, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01A1
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0356
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_0345:
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0350:

	step 34, 1
	step_end
	.align 4
_0356:

	step 13, 2
	step_end
	.align 4
_035C:

	step 3, 1
	step_end
	.align 4


.close
