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

.include "armips/scr_seq/event_D43R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_109", 0


scrdef scr_seq_D43R0102_000
scrdef scr_seq_D43R0102_001
scrdef scr_seq_D43R0102_002
scrdef_end

scr_seq_D43R0102_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _0048
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40CA, 0
	end

scr_seq_D43R0102_001:
	// === Keldeo Visibility Control (Tier 4) ===
	// Requires all 3 Swords of Justice + MT_SILVER
	goto_if_set FLAG_HIDE_KELDEO, _keldeo_vis_done
	goto_if_unset FLAG_GAME_CLEAR, _hide_keldeo_entry
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _hide_keldeo_entry
	goto_if_unset FLAG_CAUGHT_COBALION, _hide_keldeo_entry
	goto_if_unset FLAG_CAUGHT_TERRAKION, _hide_keldeo_entry
	goto_if_unset FLAG_CAUGHT_VIRIZION, _hide_keldeo_entry
	clearflag FLAG_HIDE_KELDEO
	goto _keldeo_vis_done
_hide_keldeo_entry:
	setflag FLAG_HIDE_KELDEO
_keldeo_vis_done:
	// === Original Entry Script ===
	compare VAR_UNK_40CA, 1
	goto_if_ne _0043
	make_object_visible obj_player
_0043:
	end

	.align 4
_0048:

	step 68, 1
	step_end
	.align 4

// Keldeo encounter (Lv45 Water/Fighting)
scr_seq_D43R0102_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GAME_CLEAR, _keldeo_not_postgame
	play_cry SPECIES_KELDEO, 0
	npc_msg 1404
	closemsg
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_KELDEO, 45, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _keldeo_lost
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _keldeo_fled
	compare VAR_TEMP_x4002, 4
	call_if_eq _keldeo_caught
	compare VAR_TEMP_x4002, 1
	goto_if_eq _keldeo_defeated
	compare VAR_TEMP_x4002, 5
	goto_if_eq _keldeo_defeated
	setflag FLAG_HIDE_KELDEO
	hide_person obj_D43R0102_keldeo
	releaseall
	end

_keldeo_not_postgame:
	releaseall
	end

_keldeo_lost:
	white_out
	releaseall
	end

_keldeo_fled:
	releaseall
	end

_keldeo_defeated:
	npc_msg 1409
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_keldeo_caught:
	setflag FLAG_CAUGHT_KELDEO
	return

	.align 4


.close
