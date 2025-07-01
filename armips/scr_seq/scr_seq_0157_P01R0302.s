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
	goto_if_ge _001D
	end

_001D:
	setflag FLAG_UNK_217
	end

scr_seq_P01R0302_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40CB, 6
	goto_if_ge _005B
	compare VAR_UNK_40CB, 4
	goto_if_eq _0050
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0050:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_005B:
	goto_if_set FLAG_UNK_ABB, _0084
	goto_if_set FLAG_UNK_092, _0084
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _008F
_0084:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_008F:
	npc_msg 7
	closemsg
	compare VAR_UNK_4101, 0
	goto_if_ne _00B3
	setvar VAR_SPECIAL_x8004, 298
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_00B3:
	compare VAR_UNK_4101, 1
	goto_if_ne _00D2
	setvar VAR_SPECIAL_x8004, 299
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_00D2:
	compare VAR_UNK_4101, 2
	goto_if_ne _00F1
	setvar VAR_SPECIAL_x8004, 300
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_00F1:
	compare VAR_UNK_4101, 3
	goto_if_ne _0110
	setvar VAR_SPECIAL_x8004, 301
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0110:
	compare VAR_UNK_4101, 4
	goto_if_ne _012F
	setvar VAR_SPECIAL_x8004, 302
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_012F:
	compare VAR_UNK_4101, 5
	goto_if_ne _014E
	setvar VAR_SPECIAL_x8004, 303
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_014E:
	compare VAR_UNK_4101, 6
	goto_if_ne _016D
	setvar VAR_SPECIAL_x8004, 304
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_016D:
	compare VAR_UNK_4101, 7
	goto_if_ne _018C
	setvar VAR_SPECIAL_x8004, 305
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_018C:
	compare VAR_UNK_4101, 8
	goto_if_ne _01AB
	setvar VAR_SPECIAL_x8004, 306
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_01AB:
	compare VAR_UNK_4101, 9
	goto_if_ne _01CA
	setvar VAR_SPECIAL_x8004, 307
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_01CA:
	compare VAR_UNK_4101, 10
	goto_if_ne _01E9
	setvar VAR_SPECIAL_x8004, 308
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_01E9:
	compare VAR_UNK_4101, 11
	goto_if_ne _0208
	setvar VAR_SPECIAL_x8004, 309
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0208:
	compare VAR_UNK_4101, 12
	goto_if_ne _0227
	setvar VAR_SPECIAL_x8004, 310
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0227:
	compare VAR_UNK_4101, 13
	goto_if_ne _0246
	setvar VAR_SPECIAL_x8004, 311
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0246:
	compare VAR_UNK_4101, 14
	goto_if_ne _0265
	setvar VAR_SPECIAL_x8004, 312
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0265:
	compare VAR_UNK_4101, 15
	goto_if_ne _0284
	setvar VAR_SPECIAL_x8004, 313
	setvar VAR_SPECIAL_x8005, 1
	goto _0296

_0284:
	setvar VAR_SPECIAL_x8004, 92
	setvar VAR_SPECIAL_x8005, 1
	goto _029C

_0296:
	addvar VAR_UNK_4101, 1
_029C:
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02C3
	callstd std_obtain_item_verbose
	setflag FLAG_UNK_ABB
	setflag FLAG_UNK_092
	closemsg
	releaseall
	end

_02C3:
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 8
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
	goto_if_ne _02FD
	apply_movement obj_P01R0302_gsbabygirl1, _0340
	goto _0305

_02FD:
	apply_movement obj_P01R0302_gsbabygirl1, _0350
_0305:
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

	.align 4
_0340:

	step 75, 1
	step 63, 1
	step 0, 2
	step_end
	.align 4
_0350:

	step 75, 1
	step 63, 1
	step 3, 2
	step_end
	.align 4


.close
