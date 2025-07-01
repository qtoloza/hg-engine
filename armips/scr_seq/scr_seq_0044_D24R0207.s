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

.include "armips/scr_seq/event_D24R0207.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_044", 0


scrdef scr_seq_D24R0207_000
scrdef scr_seq_D24R0207_001
scrdef scr_seq_D24R0207_002
scrdef_end

scr_seq_D24R0207_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _0068
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40D5, 0
	compare VAR_UNK_40EF, 1
	goto_if_eq _004D
	setvar VAR_UNK_40EF, 1
	addvar VAR_UNK_40F1, 1
_004D:
	end

scr_seq_D24R0207_001:
	compare VAR_UNK_40D5, 1
	goto_if_ne _0064
	nop_var_490 VAR_UNK_40D5
	make_object_visible obj_player
_0064:
	end

	.align 4
_0068:

	step 68, 1
	step_end
scr_seq_D24R0207_002:
	scrcmd_609
	lockall
	setvar VAR_UNK_40CE, 1
	setflag FLAG_UNK_111
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _009E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0103
	end

_009E:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _00BD
	apply_movement obj_player, _021C
	goto _00FB

_00BD:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00D8
	apply_movement obj_player, _0238
	goto _00FB

_00D8:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _00F3
	apply_movement obj_player, _0254
	goto _00FB

_00F3:
	apply_movement obj_player, _0270
_00FB:
	wait_movement
	goto _0182

_0103:
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _012A
	apply_movement obj_player, _021C
	apply_movement obj_partner_poke, _0228
	goto _0180

_012A:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _014D
	apply_movement obj_player, _0238
	apply_movement obj_partner_poke, _0244
	goto _0180

_014D:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0170
	apply_movement obj_player, _0254
	apply_movement obj_partner_poke, _0260
	goto _0180

_0170:
	apply_movement obj_player, _0270
	apply_movement obj_partner_poke, _027C
_0180:
	wait_movement
_0182:
	play_se SEQ_SE_GS_RAKKA01
	compare VAR_UNOWN_REPORT_LEVEL, 7
	goto_if_ge _01C8
	compare VAR_UNOWN_REPORT_LEVEL, 6
	goto_if_eq _01F2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0205, 0, 5, 42, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_01C4:
	releaseall
	end

_01C8:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0218, 0, 5, 42, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _01C4

_01F2:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D24R0216, 0, 5, 42, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _01C4

	.align 4
_021C:

	step 40, 4
	step 69, 1
	step_end
	.align 4
_0228:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
	.align 4
_0238:

	step 41, 4
	step 69, 1
	step_end
	.align 4
_0244:

	step 62, 3
	step 21, 1
	step 69, 1
	step_end
	.align 4
_0254:

	step 42, 4
	step 69, 1
	step_end
	.align 4
_0260:

	step 62, 3
	step 22, 1
	step 69, 1
	step_end
	.align 4
_0270:

	step 43, 4
	step 69, 1
	step_end
	.align 4
_027C:

	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.align 4


.close
