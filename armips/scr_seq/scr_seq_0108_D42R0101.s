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

.include "armips/scr_seq/event_D42R0101.inc"


// text archive to grab from: 127.txt

.create "build/a012/2_108", 0


scrdef scr_seq_D42R0101_000
scrdef scr_seq_D42R0101_001
scrdef_end

scr_seq_D42R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN, _00D5
	npc_msg 0
	goto_if_no_item_space ITEM_BLACK_GLASSES, 1, _00E0
	callstd std_give_item_verbose
	setflag FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D42R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_REGISTEEL, 6
	release obj_D42R0101_follower_mon_registeel
	scrcmd_523 obj_D42R0101_follower_mon_registeel, 2, 90, 2, 0
	lock obj_D42R0101_follower_mon_registeel
	npc_msg 4
	closemsg
	wait_cry
	wild_battle SPECIES_REGISTEEL, 40, 0
	lockall
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EB
	get_static_encounter_outcome VAR_TEMP_x4002
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D42R0101_follower_mon_registeel
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 1
	goto_if_eq _00F1
	compare VAR_TEMP_x4002, 5
	goto_if_eq _00F1
	releaseall
	end

_00D5:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E0:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00EB:
	white_out
	releaseall
	end

_00F1:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	clearflag 16341
	releaseall
	end
	.align 4


.close
