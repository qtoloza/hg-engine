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

.include "armips/scr_seq/event_D39R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_100", 0


scrdef scr_seq_D39R0102_000
scrdef scr_seq_D39R0102_001
scrdef scr_seq_D39R0102_002
scrdef scr_seq_D39R0102_003
scrdef scr_seq_D39R0102_004
scrdef_end

scr_seq_D39R0102_000:
	setvar VAR_TEMP_x4000, 12
	setvar VAR_TEMP_x4001, 12
	goto _0063

scr_seq_D39R0102_001:
	setvar VAR_TEMP_x4000, 10
	setvar VAR_TEMP_x4001, 21
	goto _0063

scr_seq_D39R0102_002:
	setvar VAR_TEMP_x4000, 20
	setvar VAR_TEMP_x4001, 10
	goto _0063

scr_seq_D39R0102_003:
	setvar VAR_TEMP_x4000, 21
	setvar VAR_TEMP_x4001, 23
	goto _0063

scr_seq_D39R0102_004:
	buffer_players_name 0
	end

_0063:
	scrcmd_609
	lockall
	setvar VAR_UNK_40AB, 1
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0094
	apply_movement obj_player, _0146
	apply_movement obj_partner_poke, _0150
	goto _00B7

_0094:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00E5
	apply_movement obj_player, _015E
	apply_movement obj_partner_poke, _0168
	goto _00B7

_00B7:
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D39R0103, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_00E5:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0108
	apply_movement obj_player, _0176
	apply_movement obj_partner_poke, _0180
	goto _00B7

_0108:
	apply_movement obj_player, _018E
	apply_movement obj_partner_poke, _0198
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D39R0103, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

	.align 4
_0146:

	step 40, 4
	step 69, 1
	step_end
	.align 4
_0150:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
	.align 4
_015E:

	step 41, 4
	step 69, 1
	step_end
	.align 4
_0168:

	step 62, 3
	step 21, 1
	step 69, 1
	step_end
	.align 4
_0176:

	step 42, 4
	step 69, 1
	step_end
	.align 4
_0180:

	step 62, 3
	step 22, 1
	step 69, 1
	step_end
	.align 4
_018E:

	step 43, 4
	step 69, 1
	step_end
	.align 4
_0198:

	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.align 4


.close
