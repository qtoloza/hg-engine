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

.include "armips/scr_seq/event_P01R0302.inc"


// text archive to grab from: 260.txt

.create "build/a012/2_157", 0


scrdef scr_seq_P01R0302_000
scrdef scr_seq_P01R0302_001
scrdef scr_seq_P01R0302_002
scrdef_end

scr_seq_P01R0302_002:
	compare VAR_UNK_40CB, 4
	goto_if_ge _0074
	end

scr_seq_P01R0302_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40CB, 6
	goto_if_ge _007A
	compare VAR_UNK_40CB, 4
	goto_if_eq _00AE
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_P01R0302_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00B9
	apply_movement obj_P01R0302_gsbabygirl1, _0188
	goto _00FB

_0074:
	setflag FLAG_UNK_217
	end

_007A:
	goto_if_set FLAG_UNK_ABB, _0135
	goto_if_set FLAG_UNK_092, _0135
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0140
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00AE:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B9:
	apply_movement obj_P01R0302_gsbabygirl1, _0196
	wait_movement
	gender_msgbox 3, 2
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setvar VAR_UNK_40CB, 4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	hide_person obj_P01R0302_gsbabygirl1
	setflag FLAG_UNK_217
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_00FB:
	wait_movement
	gender_msgbox 3, 2
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setvar VAR_UNK_40CB, 4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	hide_person obj_P01R0302_gsbabygirl1
	setflag FLAG_UNK_217
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0135:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0140:
	npc_msg 7
	closemsg
	goto_if_no_item_space ITEM_ODD_KEYSTONE, 1, _0178
	callstd std_obtain_item_verbose
	setflag FLAG_UNK_ABB
	setflag FLAG_UNK_092
	closemsg
	releaseall
	end

_0178:
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0188:

	step 75, 1
	step 63, 1
	step 0, 2
	step_end
	.align 4
_0196:

	step 75, 1
	step 63, 1
	step 3, 2
	step_end
	.align 4


.close
