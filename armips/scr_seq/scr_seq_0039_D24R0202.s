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

.include "armips/scr_seq/event_D24R0202.inc"


// text archive to grab from: 074.txt

.create "build/a012/2_039", 0


scrdef scr_seq_D24R0202_000
scrdef scr_seq_D24R0202_001
scrdef scr_seq_D24R0202_002
scrdef scr_seq_D24R0202_003
scrdef scr_seq_D24R0202_004
scrdef_end

scr_seq_D24R0202_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	alph_puzzle 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto_if_set FLAG_SYS_ALPH_PUZZLE_KABUTO, _004A
	releaseall
	end

_004A:
	setflag FLAG_UNK_188
	wait 2, VAR_SPECIAL_x8004
	screen_shake 0, 2, 10, 6
	wait 10, VAR_SPECIAL_x8004
	apply_movement obj_player, _02AC
	wait_movement
	hide_person obj_D24R0202_babyboy1_13
	play_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_UNK_111
	setflag FLAG_UNK_21C
	clearflag FLAG_HIDE_RUINS_OF_ALPH_ASSISTANTS
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00A2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00B2
	end

_00A2:
	apply_movement obj_player, _0234
	wait_movement
	goto _00C4

_00B2:
	apply_movement obj_player, _0234
	apply_movement obj_partner_poke, _0240
	wait_movement
_00C4:
	setvar VAR_UNK_40CE, 1
	compare VAR_UNK_40EC, 1
	goto_if_ge _010F
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0205, 0, 25, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_UNK_40DD, 1
	addvar VAR_UNK_40EC, 1
	releaseall
	end

_010F:
	setflag FLAG_HIDE_RUINS_OF_ALPH_ASSISTANTS
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0205, 0, 25, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_UNK_40DD, 1
	addvar VAR_UNK_40EC, 1
	releaseall
	end

scr_seq_D24R0202_004:
	scrcmd_609
	lockall
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _016F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _017F
	end

_016F:
	apply_movement obj_player, _0234
	wait_movement
	goto _0191

_017F:
	apply_movement obj_player, _0234
	apply_movement obj_partner_poke, _0240
	wait_movement
_0191:
	setvar VAR_UNK_40CE, 1
	play_se SEQ_SE_GS_RAKKA01
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _01DD
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _0207
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0205, 0, 25, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_01D9:
	releaseall
	end

_01DD:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0218, 0, 25, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _01D9

_0207:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0216, 0, 25, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _01D9


_0234:

	step 40, 4
	step 69, 1
	step_end

_0240:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
scr_seq_D24R0202_001:
	scrcmd_609
	lockall
	open_alph_hidden_room 0
	releaseall
	end

scr_seq_D24R0202_002:
	scrcmd_609
	lockall
	goto_if_set FLAG_OPENED_ALPH_ESCAPE_ROPE_SECRET_ROOM, _029A
	wait 2, VAR_SPECIAL_x8004
	screen_shake 0, 2, 10, 6
	wait 10, VAR_SPECIAL_x8004
	apply_movement obj_player, _02AC
	wait_movement
	hide_person obj_D24R0202_babyboy1_12
	setflag FLAG_OPENED_ALPH_ESCAPE_ROPE_SECRET_ROOM
	play_se SEQ_SE_DP_UG_008
	releaseall
	end

_029A:
	wait 10, VAR_SPECIAL_x8004
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_02AC:

	step 75, 1
	step_end
scr_seq_D24R0202_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_188, _02D2
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D2:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
