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

.include "armips/scr_seq/event_D25R0101.inc"


// text archive to grab from: 087.txt

.create "build/a012/2_056", 0


scrdef scr_seq_D25R0101_000
scrdef scr_seq_D25R0101_001
scrdef_end

scr_seq_D25R0101_000:
	// Yveltal visibility: Tier 2 (FLAG_RESTORED_POWER + Xerneas caught)
	goto_if_set FLAG_HIDE_YVELTAL, _yveltal_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_yveltal_entry
	goto_if_unset FLAG_RESTORED_POWER, _hide_yveltal_entry
	goto_if_unset FLAG_CAUGHT_XERNEAS, _hide_yveltal_entry
	clearflag FLAG_HIDE_YVELTAL
	goto _yveltal_vis_done
_hide_yveltal_entry:
	setflag FLAG_HIDE_YVELTAL
_yveltal_vis_done:
	end
	.align 4

// Yveltal encounter (Lv70 Dark/Flying)
scr_seq_D25R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _yveltal_not_postgame
	play_cry SPECIES_YVELTAL, 0
	npc_msg 15
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_YVELTAL, 70, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _yveltal_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _yveltal_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _yveltal_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _yveltal_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _yveltal_defeated
	setflag FLAG_HIDE_YVELTAL
	hide_person obj_D25R0101_yveltal
	releaseall
	end

_yveltal_not_postgame:
	releaseall
	end

_yveltal_lost:
	white_out
	releaseall
	end

_yveltal_fled:
	releaseall
	end

_yveltal_defeated:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_yveltal_caught:
	setflag FLAG_CAUGHT_YVELTAL
	return

	.align 4


.close
