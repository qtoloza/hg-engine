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

.include "armips/scr_seq/event_D40R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_102", 0


scrdef scr_seq_D40R0102_000
scrdef scr_seq_D40R0102_001
scrdef_end

scr_seq_D40R0102_000:
	// Zekrom visibility: Tier 2 (FLAG_RESTORED_POWER + Reshiram caught)
	goto_if_set FLAG_HIDE_ZEKROM, _zekrom_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_zekrom_entry
	goto_if_unset FLAG_RESTORED_POWER, _hide_zekrom_entry
	goto_if_unset FLAG_CAUGHT_RESHIRAM, _hide_zekrom_entry
	clearflag FLAG_HIDE_ZEKROM
	goto _zekrom_vis_done
_hide_zekrom_entry:
	setflag FLAG_HIDE_ZEKROM
_zekrom_vis_done:
	end
	.align 4

// Zekrom encounter (Lv70 Dragon/Electric)
scr_seq_D40R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _zekrom_not_postgame
	play_cry SPECIES_ZEKROM, 0
	npc_msg 1408
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_ZEKROM, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _zekrom_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _zekrom_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _zekrom_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _zekrom_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _zekrom_defeated
	setflag FLAG_HIDE_ZEKROM
	hide_person obj_D40R0102_zekrom
	releaseall
	end

_zekrom_not_postgame:
	releaseall
	end

_zekrom_lost:
	white_out
	releaseall
	end

_zekrom_fled:
	releaseall
	end

_zekrom_defeated:
	npc_msg 1413
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_zekrom_caught:
	setflag FLAG_CAUGHT_ZEKROM
	return

	.align 4


.close
