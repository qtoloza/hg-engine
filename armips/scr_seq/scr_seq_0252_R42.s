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

.include "armips/scr_seq/event_R42.inc"


// text archive to grab from: 399.txt

.create "build/a012/2_252", 0


scrdef scr_seq_R42_000
scrdef scr_seq_R42_001
scrdef scr_seq_R42_002
scrdef scr_seq_R42_003
scrdef scr_seq_R42_004
scrdef scr_seq_R42_005
scrdef scr_seq_R42_006
scrdef_end

scr_seq_R42_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _030C
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	clearflag FLAG_HIDE_ROUTE_42_HIKER
	show_person obj_R42_mount_2_2
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _016C
	apply_movement obj_R42_mount_2_2, _0312
	goto _0187

scr_seq_R42_001:
	scrcmd_609
	lockall
	play_cry SPECIES_SUICUNE, 0
	release obj_R42_follower_mon_static_suicune
	scrcmd_523 obj_R42_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_R42_follower_mon_static_suicune
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R42_follower_mon_static_suicune, _031C
	apply_movement obj_player, _0336
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_ROUTE_42_EUSINE
	show_person obj_R42_minaki
	callstd std_play_eusine_music
	apply_movement obj_R42_minaki, _0350
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_R42_minaki, _035E
	wait_movement
	buffer_players_name 0
	npc_msg 8
	closemsg
	apply_movement obj_R42_minaki, _0368
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_R42_minaki, _036E
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_R42_follower_mon_static_suicune
	hide_person obj_R42_minaki
	setflag FLAG_HIDE_ROUTE_42_SUICUNE
	setflag FLAG_HIDE_ROUTE_42_EUSINE
	setvar VAR_UNK_4092, 0
	setvar VAR_UNK_4070, 1
	setvar VAR_UNK_4071, 1
	clearflag FLAG_HIDE_VERMILION_SUICUNE
	releaseall
	end

scr_seq_R42_002:
	direction_signpost 0, 1, 1, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 2, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_005:
	direction_signpost 3, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_006:
	buffer_players_name 0
	end

_016C:
	compare VAR_SPECIAL_x8001, 173
	goto_if_ne _01EA
	apply_movement obj_R42_mount_2_2, _0374
	goto _0187

_0187:
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _037E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_R42_mount_2_2, _0390
	wait_movement
	giveitem_no_check ITEM_HM04, 1
	npc_msg 6
	closemsg
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _0205
	apply_movement obj_R42_mount_2_2, _0396
	goto _0220

_01EA:
	compare VAR_SPECIAL_x8001, 174
	goto_if_ne _0234
	apply_movement obj_R42_mount_2_2, _03A8
	goto _0187

_0205:
	compare VAR_SPECIAL_x8001, 173
	goto_if_ne _024F
	apply_movement obj_R42_mount_2_2, _03B2
	goto _0220

_0220:
	wait_movement
	setflag FLAG_HIDE_ROUTE_42_HIKER
	hide_person obj_R42_mount_2_2
	setvar VAR_UNK_4091, 1
	releaseall
	end

_0234:
	compare VAR_SPECIAL_x8001, 175
	goto_if_ne _026A
	apply_movement obj_R42_mount_2_2, _03C4
	goto _0187

_024F:
	compare VAR_SPECIAL_x8001, 174
	goto_if_ne _02D5
	apply_movement obj_R42_mount_2_2, _03CE
	goto _0220

_026A:
	apply_movement obj_R42_mount_2_2, _03D8
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _037E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_R42_mount_2_2, _0390
	wait_movement
	giveitem_no_check ITEM_HM04, 1
	npc_msg 6
	closemsg
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _0205
	apply_movement obj_R42_mount_2_2, _0396
	goto _0220

_02D5:
	compare VAR_SPECIAL_x8001, 175
	goto_if_ne _02F0
	apply_movement obj_R42_mount_2_2, _03E2
	goto _0220

_02F0:
	apply_movement obj_R42_mount_2_2, _03F4
	wait_movement
	setflag FLAG_HIDE_ROUTE_42_HIKER
	hide_person obj_R42_mount_2_2
	setvar VAR_UNK_4091, 1
	releaseall
	end

	.align 4
_030C:

	step 75, 1
	step_end
	.align 4
_0312:

	step 17, 1
	step 18, 1
	step_end
	.align 4
_031C:

	step 62, 3
	step 22, 2
	step 58, 1
	step 22, 2
	step 56, 2
	step 112, 1
	step_end
	.align 4
_0336:

	step 75, 1
	step 71, 1
	step 16, 4
	step 72, 1
	step 65, 1
	step 15, 1
	step_end
	.align 4
_0350:

	step 15, 4
	step 12, 3
	step 15, 6
	step_end
	.align 4
_035E:

	step 12, 1
	step 2, 1
	step_end
	.align 4
_0368:

	step 15, 1
	step_end
	.align 4
_036E:

	step 15, 9
	step_end
	.align 4
_0374:

	step 17, 2
	step 18, 1
	step_end
	.align 4
_037E:

	step 3, 1
	step 71, 1
	step 58, 1
	step 72, 1
	step_end
	.align 4
_0390:

	step 14, 2
	step_end
	.align 4
_0396:

	step 13, 1
	step 14, 5
	step 13, 2
	step 14, 5
	step_end
	.align 4
_03A8:

	step 17, 3
	step 18, 1
	step_end
	.align 4
_03B2:

	step 13, 1
	step 14, 5
	step 13, 1
	step 14, 5
	step_end
	.align 4
_03C4:

	step 17, 4
	step 18, 1
	step_end
	.align 4
_03CE:

	step 13, 1
	step 14, 10
	step_end
	.align 4
_03D8:

	step 17, 5
	step 18, 1
	step_end
	.align 4
_03E2:

	step 13, 1
	step 14, 4
	step 12, 1
	step 14, 5
	step_end
	.align 4
_03F4:

	step 12, 1
	step 14, 10
	step_end
	.align 4


.close
