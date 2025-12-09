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

.include "armips/scr_seq/event_D52R0102.inc"


// text archive to grab from: 149.txt

.create "build/a012/2_134", 0


scrdef scr_seq_D52R0102_000
scrdef scr_seq_D52R0102_001
scrdef scr_seq_D52R0102_002
scrdef_end

scr_seq_D52R0102_001:
	compare VAR_SCENE_EMBEDDED_TOWER, 4
	goto_if_ge _00A1
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _00A3
	goto _00A9

scr_seq_D52R0102_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _00CF
	end

scr_seq_D52R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_KYOGRE, 0
	npc_msg 0
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_KYOGRE, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00DD
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _00E3
	compare VAR_TEMP_x4002, 4
	goto_if_eq _00F2
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	releaseall
	end

_00A1:
	end

_00A3:
	goto _012E

_00A9:
	goto_if_set FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE, _00A1
	hasitem ITEM_BLUE_ORB, 1, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ge _0138
	goto _012E

_00CF:
	setflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE
	hide_person obj_D52R0102_follower_mon_static_kyogre
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_00DD:
	white_out
	releaseall
	end

_00E3:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	setflag FLAG_BEAT_OR_ESCAPED_FROM_GROUDON_OR_KYOGRE
	releaseall
	end

_00F2:
	npc_msg 5
	play_se SEQ_SE_GS_STOPPERKAIJO
	npc_msg 6
	wait_se SEQ_SE_GS_STOPPERKAIJO
	takeitem ITEM_BLUE_ORB, 1, VAR_SPECIAL_RESULT
	giveitem_no_check ITEM_JADE_ORB, 1
	closemsg
	setvar VAR_SCENE_EMBEDDED_TOWER, 4
	setflag FLAG_CAUGHT_KYOGRE
	clearflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE_HIKER
	goto _0142

_012E:
	setflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE
	setflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE_HIKER
	end

_0138:
	setflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE_HIKER
	clearflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE
	end

_0142:
	setflag FLAG_HIDE_EMBEDDED_TOWER_KYOGRE_HIKER
	setflag FLAG_HIDE_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end
	.align 4


.close
