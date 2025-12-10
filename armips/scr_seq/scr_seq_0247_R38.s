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

.include "armips/scr_seq/event_R38.inc"


// text archive to grab from: 394.txt

.create "build/a012/2_247", 0


scrdef scr_seq_R38_000
scrdef scr_seq_R38_001
scrdef scr_seq_R38_002
scrdef scr_seq_R38_003
scrdef scr_seq_R38_004
scrdef_end

scr_seq_R38_000:
	end

scr_seq_R38_001:
	direction_signpost 15, 1, 8, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R38_002:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 16, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R38_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ELECTABUZZ, 0
	wait_cry
	wild_battle SPECIES_ELECTABUZZ, 33, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00B0
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R38_follower_mon_electabuzz
	setflag 16362
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R38_004:
	lockall
	hide_person obj_R38_monstarball_3
	setflag 16339
	giveitem_no_check ITEM_TM024, 1
	closemsg
	releaseall
	end

_00B0:
	white_out
	releaseall
	end
	.align 4


.close
