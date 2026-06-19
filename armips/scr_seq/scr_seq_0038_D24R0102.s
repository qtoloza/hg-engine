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

.include "armips/scr_seq/event_D24R0102.inc"


// text archive to grab from: 073.txt

.create "build/a012/2_038", 0


scrdef scr_seq_D24R0102_000
scrdef scr_seq_D24R0102_001
scrdef scr_seq_D24R0102_002
scrdef scr_seq_D24R0102_003
scrdef scr_seq_D24R0102_004
scrdef scr_seq_D24R0102_005
scrdef scr_seq_D24R0102_006
scrdef_end

scr_seq_D24R0102_005:
	clearflag FLAG_UNK_10F
	end

scr_seq_D24R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _01AF
	compare VAR_UNK_40EC, 1
	goto_if_ge _01B8
	goto_if_set FLAG_UNK_10F, _01C1
	npc_msg 0
	setflag FLAG_UNK_10F
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01CA
	apply_movement obj_D24R0102_suit, _0706
	goto _01DD

scr_seq_D24R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNOWN_REPORT_LEVEL, 8
	goto_if_eq _01E8
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_eq _01F1
	compare VAR_UNOWN_REPORT_LEVEL, 4
	goto_if_ge _0208
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0242
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0258
	compare VAR_UNK_40EC, 4
	goto_if_eq _02AC
	compare VAR_UNK_40EC, 3
	goto_if_eq _02D9
	compare VAR_UNK_40EC, 2
	goto_if_eq _02F9
	compare VAR_UNK_40EC, 1
	goto_if_eq _030C
	npc_msg 4
	goto _0315

scr_seq_D24R0102_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _031D
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0326
	npc_msg 19
	goto _0315

scr_seq_D24R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _032F
	check_seen_all_letter_unown VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0338
	npc_msg 21
	goto _0315

scr_seq_D24R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	goto _0315

scr_seq_D24R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set 16294, _0341
	hasitem ITEM_UNOWN_REPORT, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _034C
	npc_msg 26
	wait_button_or_walk_away
	goto _0357

_01AF:
	npc_msg 3
	goto _0315

_01B8:
	npc_msg 2
	goto _0315

_01C1:
	npc_msg 1
	goto _0315

_01CA:
	apply_movement obj_D24R0102_suit, _074C
	wait_movement
	npc_msg 1
	goto _0315

_01DD:
	wait_movement
	npc_msg 1
	goto _0315

_01E8:
	npc_msg 17
	goto _0315

_01F1:
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _048A
	goto _0493

_0208:
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _0493
	compare VAR_UNK_40F1, 4
	goto_if_eq _049C
	compare VAR_UNOWN_REPORT_LEVEL, 5
	goto_if_eq _0493
	compare VAR_UNK_40F1, 1
	goto_if_ge _04AF
	goto _0493

_0242:
	compare VAR_UNK_40EC, 1
	goto_if_eq _04B8
	npc_msg 4
	goto _0315

_0258:
	compare VAR_UNK_40EC, 0
	goto_if_eq _04C1
	compare VAR_UNK_40EC, 1
	goto_if_eq _030C
	compare VAR_UNOWN_REPORT_LEVEL, 4
	goto_if_eq _0493
	compare VAR_UNOWN_REPORT_LEVEL, 3
	goto_if_eq _04CA
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _04D6
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _04DF
	goto _04E8

_02AC:
	compare VAR_UNOWN_REPORT_LEVEL, 3
	goto_if_eq _0493
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _04D6
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _04DF
	goto _04E8

_02D9:
	compare VAR_UNOWN_REPORT_LEVEL, 2
	goto_if_eq _0493
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _04DF
	goto _04E8

_02F9:
	compare VAR_UNOWN_REPORT_LEVEL, 1
	goto_if_eq _0493
	goto _04E8

_030C:
	npc_msg 5
	goto _0315

_0315:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031D:
	npc_msg 20
	goto _0315

_0326:
	npc_msg 18
	goto _0315

_032F:
	npc_msg 23
	goto _0315

_0338:
	npc_msg 22
	goto _0315

_0341:
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_034C:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0357:
	goto_if_set 16297, _04F1
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 9
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 10
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 11
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 12
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 13
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 14
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 15
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 16
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 17
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 18
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 19
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 20
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 21
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 22
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 23
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 24
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 25
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 26
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 27
	goto_if_eq _05C9
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _05C9
	closemsg
	releaseall
	end

_048A:
	npc_msg 14
	goto _05EB

_0493:
	npc_msg 15
	goto _0315

_049C:
	compare VAR_UNOWN_REPORT_LEVEL, 5
	goto_if_eq _0603
	goto _04AF

_04AF:
	npc_msg 12
	goto _05EB

_04B8:
	npc_msg 9
	goto _0315

_04C1:
	npc_msg 4
	goto _0315

_04CA:
	npc_msg 10
	npc_msg 11
	goto _05EB

_04D6:
	npc_msg 8
	goto _05EB

_04DF:
	npc_msg 7
	goto _05EB

_04E8:
	npc_msg 6
	goto _05EB

_04F1:
	goto_if_set 16296, _060C
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 14
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 15
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 16
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 17
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 18
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 19
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 20
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 21
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 22
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 23
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 24
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 25
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 26
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 27
	goto_if_eq _0689
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _0689
	closemsg
	releaseall
	end

_05C9:
	npc_msg 27
	giveitem_no_check ITEM_TM010, 1
	npc_msg 28
	setflag 16297
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05EB:
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	addvar VAR_UNOWN_REPORT_LEVEL, 1
	goto _0315

_0603:
	npc_msg 13
	goto _05EB

_060C:
	goto_if_set 16295, _06AB
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 21
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 22
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 23
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 24
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 25
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 26
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 27
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _06C2
	closemsg
	releaseall
	end

_0689:
	npc_msg 29
	giveitem_no_check ITEM_UP_GRADE, 1
	npc_msg 30
	setflag 16296
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06AB:
	scrcmd_545 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 28
	goto_if_eq _06E4
	closemsg
	releaseall
	end

_06C2:
	npc_msg 31
	giveitem_no_check ITEM_LUCKY_EGG, 1
	npc_msg 34
	setflag 16295
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06E4:
	npc_msg 33
	giveitem_no_check 1, 1
	npc_msg 32
	setflag 16294
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0706:

	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 75, 1
	step_end
	.align 4
_074C:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 75, 1
	step_end
	.align 4


.close
