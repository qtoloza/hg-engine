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

.include "armips/scr_seq/event_D51R0301.inc"


// text archive to grab from: 147.txt

.create "build/a012/2_132", 0


scrdef scr_seq_D51R0301_000
scrdef scr_seq_D51R0301_001
scrdef scr_seq_D51R0301_002
scrdef scr_seq_D51R0301_003
scrdef_end

scr_seq_D51R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_09E, _002E
	npc_msg 0
	closemsg
	setflag FLAG_UNK_09E
_002E:
	player_has_species VAR_SPECIAL_RESULT, SPECIES_ARCEUS
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _004C
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_004C:
	apply_movement obj_D51R0301_champion, _0188
	wait_movement
	npc_msg 1
	closemsg
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0078
	goto _0107

_0078:
	compare VAR_TEMP_x4002, 1
	goto_if_ne _0091
	goto _00CF

_0091:
	goto _0097

_0097:
	apply_movement obj_D51R0301_champion, _0194
	wait_movement
	apply_movement obj_D51R0301_champion, _01A0
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _01A8
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _01B4
	wait_movement
	goto _0167

_00CF:
	apply_movement obj_D51R0301_champion, _01C4
	wait_movement
	apply_movement obj_D51R0301_champion, _01D0
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _01D8
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _01E0
	wait_movement
	goto _0167

_0107:
	apply_movement obj_D51R0301_champion, _01F0
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _01FC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D51R0301_champion, _0204
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_D51R0301_champion, _020C
	wait_movement
	apply_movement obj_player, _022C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_D51R0301_champion, _021C
	wait_movement
	goto _0167

_0167:
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_UNK_2DD
	hide_person obj_D51R0301_champion
	clearflag FLAG_HIDE_SINJOH_MYSTRI_SHRINE_CYNTHIA
	wait_se SEQ_SE_DP_KAIDAN2
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 7
	releaseall
	end


_0188:

	step 75, 1
	step 63, 1
	step_end

_0194:

	step 32, 1
	step 8, 2
	step_end

_01A0:

	step 33, 1
	step_end

_01A8:

	step 13, 2
	step 35, 1
	step_end

_01B4:

	step 13, 2
	step 14, 4
	step 33, 1
	step_end

_01C4:

	step 33, 1
	step 9, 1
	step_end

_01D0:

	step 32, 1
	step_end

_01D8:

	step 12, 1
	step_end

_01E0:

	step 13, 2
	step 14, 4
	step 33, 1
	step_end

_01F0:

	step 32, 1
	step 8, 2
	step_end

_01FC:

	step 8, 1
	step_end

_0204:

	step 33, 1
	step_end

_020C:

	step 15, 1
	step 13, 2
	step 34, 1
	step_end

_021C:

	step 13, 2
	step 14, 5
	step 33, 1
	step_end

_022C:

	step 35, 1
	step_end
scr_seq_D51R0301_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ge _026E
	goto_if_set FLAG_UNK_09D, _0263
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	setflag FLAG_UNK_09D
	releaseall
	end

_0263:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_026E:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D51R0301_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02A6
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _030C
_02A6:
	npc_msg 11
	closemsg
	play_se SEQ_SE_DP_TELE
	apply_movement obj_player, _0318
	wait_movement
	compare VAR_SCENE_SINJOH_MYSTRI_ROOM, 13
	goto_if_ne _02D2
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 10
	goto _02E4

_02D2:
	setvar VAR_SCENE_SINJOH_MYSTRI_ROOM, 1
	setflag FLAG_HIDE_SINJOH_MYSTRI_SHRINE_CYNTHIA
	clearflag FLAG_UNK_2DD
	clearflag FLAG_UNK_2DB
_02E4:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20, 0, 695, 397, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_030C:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end


_0318:

	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
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
	step_end
scr_seq_D51R0301_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ABRA, 0
	npc_msg 13
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
