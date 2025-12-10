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

.include "armips/scr_seq/event_D02R0103.inc"


// text archive to grab from: 050.txt

.create "build/a012/2_009", 0


scrdef scr_seq_D02R0103_000
scrdef scr_seq_D02R0103_001
scrdef scr_seq_D02R0103_002
scrdef scr_seq_D02R0103_003
scrdef scr_seq_D02R0103_004
scrdef_end

scr_seq_D02R0103_002:
	make_object_visible obj_D02R0103_stop
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _010E
	move_person_facing obj_D02R0103_stop, 18, 0, 10, DIR_SOUTH
	move_warp 2, 20, 3
	goto _0131

scr_seq_D02R0103_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D02R0103_001:
	simple_npc_msg 1
	end

scr_seq_D02R0103_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_CRESSELIA, 6
	npc_msg 2
	closemsg
	wait_cry
	wild_battle SPECIES_CRESSELIA, 50, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0133
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D02R0103_follower_mon_cresselia
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0139
	compare VAR_TEMP_x4002, 4
	call_if_eq _0148
	compare VAR_TEMP_x4002, 5
	goto_if_eq _0139
	releaseall
	end

scr_seq_D02R0103_004:
	setflag 16319
	compare VAR_TEMP_x4001, 4
	goto_if_ne _0131
	move_person_facing obj_D02R0103_stop, 18, 0, 10, DIR_SOUTH
	move_warp 2, 20, 3
	end

_010E:
	compare VAR_TEMP_x4001, 4
	goto_if_ne _0131
	move_person_facing obj_D02R0103_stop, 18, 0, 10, DIR_SOUTH
	move_warp 2, 20, 3
	end

_0131:
	end

_0133:
	white_out
	releaseall
	end

_0139:
	npc_msg 3
	clearflag 16319
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0148:
	npc_msg 4
	giveitem_no_check ITEM_LUNAR_FEATHER, 1
	closemsg
	releaseall
	end
	.align 4


.close
