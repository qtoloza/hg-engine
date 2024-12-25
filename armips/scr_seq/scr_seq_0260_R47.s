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

.include "armips/scr_seq/event_R47.inc"


// text archive to grab from: 407.txt

.create "build/a012/2_260", 0


scrdef scr_seq_R47_000
scrdef scr_seq_R47_001
scrdef scr_seq_R47_002
scrdef scr_seq_R47_003
scrdef scr_seq_R47_004
scrdef_end

scr_seq_R47_000:
	setvar VAR_UNK_40EB, 1
	setflag FLAG_UNK_9C9
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _004F
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _0067

_004F:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
_0067:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _00E6
	compare VAR_SCENE_EMBEDDED_TOWER, 3
	goto_if_eq _00E6
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _00EC
	goto_if_unset FLAG_UNK_189, _009F
	clearflag FLAG_UNK_189
	end

_009F:
	goto_if_set FLAG_GAME_CLEAR, _00B2
	goto _00E6
	end

_00B2:
	get_phone_book_rematch PHONE_CONTACT_CHUCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _00E6
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _00E0
	clearflag FLAG_UNK_304
	goto _00E4

_00E0:
	setflag FLAG_UNK_304
_00E4:
	end

_00E6:
	setflag FLAG_UNK_304
	end

_00EC:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	goto _00E6
	end

scr_seq_R47_002:
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _0162
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0148
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _0160

_0148:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
_0160:
	end

_0162:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	end

scr_seq_R47_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER, _019E
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	setflag FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

_019E:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R47_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_157, _0210
	npc_msg 2
	apply_movement obj_R47_leader3, _022C
	wait_movement
	npc_msg 3
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _01EB
	apply_movement obj_R47_leader3, _0234
	goto _020E

_01EB:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0206
	apply_movement obj_R47_leader3, _023C
	goto _020E

_0206:
	apply_movement obj_R47_leader3, _0244
_020E:
	wait_movement
_0210:
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _022C
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

	.align 4
_022C:
	step 32, 1
	step_end

	.align 4
_0234:
	step 33, 1
	step_end

	.align 4
_023C:
	step 34, 1
	step_end

	.align 4
_0244:
	step 35, 1
	step_end

scr_seq_R47_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02B5
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C0
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 91
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02B5:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02C0:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4





.close
