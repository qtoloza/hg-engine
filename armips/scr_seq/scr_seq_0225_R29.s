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

.include "armips/scr_seq/event_R29.inc"


// text archive to grab from: 373.txt

.create "build/a012/2_225", 0


scrdef scr_seq_R29_000
scrdef scr_seq_R29_001
scrdef scr_seq_R29_002
scrdef scr_seq_R29_003
scrdef scr_seq_R29_004
scrdef scr_seq_R29_005
scrdef scr_seq_R29_006
scrdef scr_seq_R29_007
scrdef scr_seq_R29_008
scrdef_end

scr_seq_R29_000:
	get_friend_sprite VAR_OBJ_1
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0043
	setflag FLAG_UNK_207
	end

_0043:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _005E
	clearflag FLAG_UNK_207
	goto _0062

_005E:
	setflag FLAG_UNK_207
_0062:
	end

scr_seq_R29_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SHOCK
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _018A
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _019E
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0138
	goto_if_set FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY, _011A
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _00CB
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _0112

_00CB:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 4
	goto_if_no_item_space ITEM_TWISTED_SPOON, 1, _012E
	callstd std_give_item_verbose
	setflag FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
_0112:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_011A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_012E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0138:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _015B
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _0112

_015B:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 32
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 34
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SHOCK
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_018A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019E:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R29_001:
	scrcmd_609
	lockall
	play_cry SPECIES_MARILL, 0
	wait_cry
	apply_movement obj_R29_follower_mon_static_marill, _05C4
	wait_movement
	apply_movement obj_R29_var_2, _05D8
	wait_movement
	callstd std_play_friend_music
	gender_msgbox 17, 18
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	release obj_R29_follower_mon_static_marill
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0209
	apply_movement obj_R29_var_2, _0660
	apply_movement obj_R29_follower_mon_static_marill, _06D4
	goto _02D5

_0209:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _022C
	apply_movement obj_R29_var_2, _067C
	apply_movement obj_R29_follower_mon_static_marill, _06F4
	goto _02D5

_022C:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _024F
	apply_movement obj_R29_var_2, _068C
	apply_movement obj_R29_follower_mon_static_marill, _0708
	goto _02D5

_024F:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0272
	apply_movement obj_R29_var_2, _069C
	apply_movement obj_R29_follower_mon_static_marill, _071C
	goto _02D5

_0272:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0295
	apply_movement obj_R29_var_2, _06AC
	apply_movement obj_R29_follower_mon_static_marill, _0730
	goto _02D5

_0295:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _02B8
	apply_movement obj_R29_var_2, _06B4
	apply_movement obj_R29_follower_mon_static_marill, _073C
	goto _02D5

_02B8:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _02D5
	apply_movement obj_R29_var_2, _06C4
	apply_movement obj_R29_follower_mon_static_marill, _0750
_02D5:
	wait_movement
	lock obj_R29_follower_mon_static_marill
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	get_player_gender VAR_TEMP_x4002
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _033E
	apply_movement obj_R29_var_2, _0764
	apply_movement obj_R29_follower_mon_static_marill, _07B4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0330
	apply_movement obj_player, _0820
	goto _0338

_0330:
	apply_movement obj_player, _08A4
_0338:
	goto _04DC

_033E:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0384
	apply_movement obj_R29_var_2, _0770
	apply_movement obj_R29_follower_mon_static_marill, _07C4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0376
	apply_movement obj_player, _0834
	goto _037E

_0376:
	apply_movement obj_player, _08B8
_037E:
	goto _04DC

_0384:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _03CA
	apply_movement obj_R29_var_2, _077C
	apply_movement obj_R29_follower_mon_static_marill, _07D4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _03BC
	apply_movement obj_player, _0848
	goto _03C4

_03BC:
	apply_movement obj_player, _08CC
_03C4:
	goto _04DC

_03CA:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0410
	apply_movement obj_R29_var_2, _0788
	apply_movement obj_R29_follower_mon_static_marill, _07E4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0402
	apply_movement obj_player, _085C
	goto _040A

_0402:
	apply_movement obj_player, _08E0
_040A:
	goto _04DC

_0410:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0456
	apply_movement obj_R29_var_2, _0794
	apply_movement obj_R29_follower_mon_static_marill, _07F4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0448
	apply_movement obj_player, _0870
	goto _0450

_0448:
	apply_movement obj_player, _08F4
_0450:
	goto _04DC

_0456:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _049C
	apply_movement obj_R29_var_2, _07A0
	apply_movement obj_R29_follower_mon_static_marill, _0804
	compare VAR_TEMP_x4002, 0
	goto_if_ne _048E
	apply_movement obj_player, _0884
	goto _0496

_048E:
	apply_movement obj_player, _0908
_0496:
	goto _04DC

_049C:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _04DC
	apply_movement obj_R29_var_2, _07AC
	apply_movement obj_R29_follower_mon_static_marill, _0814
	compare VAR_TEMP_x4002, 0
	goto_if_ne _04D4
	apply_movement obj_player, _0898
	goto _04DC

_04D4:
	apply_movement obj_player, _091C
_04DC:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4002, 0
	call_if_eq _0559
	wait 10, VAR_SPECIAL_RESULT
	catching_tutorial
	apply_movement obj_R29_var_2, _064C
	apply_movement obj_R29_follower_mon_static_marill, _0654
	wait_movement
	gender_msgbox 3, 4
	giveitem_no_check ITEM_POKE_BALL, 5
	gender_msgbox 7, 8
	closemsg
	apply_movement obj_R29_var_2, _0928
	apply_movement obj_R29_follower_mon_static_marill, _093C
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_follower_mon_static_marill
	setflag FLAG_HIDE_ROUTE_29_FRIEND
	setflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	releaseall
	end

_0559:
	apply_movement obj_R29_var_2, _05BC
	wait_movement
	apply_movement obj_R29_var_2, _05E4
	apply_movement obj_R29_follower_mon_static_marill, _0600
	wait_movement
	apply_movement obj_R29_var_2, _061C
	apply_movement obj_R29_follower_mon_static_marill, _0624
	wait_movement
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R29_var_2, _062C
	apply_movement obj_R29_follower_mon_static_marill, _0634
	apply_movement obj_player, _0640
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

	.align 4
_05BC:

	step 75, 1
	step_end
	.align 4
_05C4:

	step 17, 1
	step 19, 2
	step 16, 1
	step 50, 2
	step_end
	.align 4
_05D8:

	step 35, 1
	step 75, 1
	step_end
	.align 4
_05E4:

	step 50, 3
	step 65, 1
	step 50, 3
	step 63, 3
	step 50, 3
	step 63, 3
	step_end
	.align 4
_0600:

	step 63, 3
	step 58, 1
	step 63, 3
	step 50, 3
	step 63, 3
	step 50, 3
	step_end
	.align 4
_061C:

	step 15, 3
	step_end
	.align 4
_0624:

	step 15, 3
	step_end
	.align 4
_062C:

	step 14, 3
	step_end
	.align 4
_0634:

	step 15, 1
	step 14, 2
	step_end
	.align 4
_0640:

	step 63, 1
	step 14, 2
	step_end
	.align 4
_064C:

	step 15, 1
	step_end
	.align 4
_0654:

	step 14, 1
	step 35, 1
	step_end
	.align 4
_0660:

	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 4
	step_end
	.align 4
_067C:

	step 15, 2
	step 12, 3
	step 15, 2
	step_end
	.align 4
_068C:

	step 15, 2
	step 12, 2
	step 15, 2
	step_end
	.align 4
_069C:

	step 15, 2
	step 12, 1
	step 15, 2
	step_end
	.align 4
_06AC:

	step 15, 4
	step_end
	.align 4
_06B4:

	step 15, 2
	step 13, 1
	step 15, 2
	step_end
	.align 4
_06C4:

	step 15, 2
	step 13, 2
	step 15, 2
	step_end
	.align 4
_06D4:

	step 18, 1
	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 3
	step_end
	.align 4
_06F4:

	step 14, 1
	step 15, 2
	step 12, 3
	step 15, 1
	step_end
	.align 4
_0708:

	step 14, 1
	step 15, 2
	step 12, 2
	step 15, 1
	step_end
	.align 4
_071C:

	step 14, 1
	step 15, 2
	step 12, 1
	step 15, 1
	step_end
	.align 4
_0730:

	step 14, 1
	step 15, 3
	step_end
	.align 4
_073C:

	step 14, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end
	.align 4
_0750:

	step 14, 1
	step 15, 2
	step 13, 2
	step 15, 1
	step_end
	.align 4
_0764:

	step 13, 6
	step 14, 9
	step_end
	.align 4
_0770:

	step 13, 5
	step 14, 9
	step_end
	.align 4
_077C:

	step 13, 4
	step 14, 9
	step_end
	.align 4
_0788:

	step 13, 3
	step 14, 9
	step_end
	.align 4
_0794:

	step 13, 2
	step 14, 9
	step_end
	.align 4
_07A0:

	step 13, 1
	step 14, 9
	step_end
	.align 4
_07AC:

	step 14, 9
	step_end
	.align 4
_07B4:

	step 15, 1
	step 13, 6
	step 14, 8
	step_end
	.align 4
_07C4:

	step 15, 1
	step 13, 5
	step 14, 8
	step_end
	.align 4
_07D4:

	step 15, 1
	step 13, 4
	step 14, 8
	step_end
	.align 4
_07E4:

	step 15, 1
	step 13, 3
	step 14, 8
	step_end
	.align 4
_07F4:

	step 15, 1
	step 13, 2
	step 14, 8
	step_end
	.align 4
_0804:

	step 15, 1
	step 13, 1
	step 14, 8
	step_end
	.align 4
_0814:

	step 15, 1
	step 14, 8
	step_end
	.align 4
_0820:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 5
	step_end
	.align 4
_0834:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 5
	step_end
	.align 4
_0848:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 5
	step_end
	.align 4
_085C:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 5
	step_end
	.align 4
_0870:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 5
	step_end
	.align 4
_0884:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 5
	step_end
	.align 4
_0898:

	step 63, 1
	step 14, 6
	step_end
	.align 4
_08A4:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 7
	step_end
	.align 4
_08B8:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 7
	step_end
	.align 4
_08CC:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 7
	step_end
	.align 4
_08E0:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 7
	step_end
	.align 4
_08F4:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 7
	step_end
	.align 4
_0908:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 7
	step_end
	.align 4
_091C:

	step 63, 1
	step 14, 8
	step_end
	.align 4
_0928:

	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 3
	step_end
	.align 4
_093C:

	step 15, 1
	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 2
	step_end
scr_seq_R29_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_379 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0976
	npc_msg 12
	goto _09A5

_0976:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _098C
	npc_msg 13
	goto _09A5

_098C:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _09A2
	npc_msg 13
	goto _09A5

_09A2:
	npc_msg 14
_09A5:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R29_004:
	direction_signpost 16, 1, 1, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R29_005:
	direction_signpost 15, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R29_006:
	simple_npc_msg 9
	end

scr_seq_R29_007:
	simple_npc_msg 11
	end

scr_seq_R29_008:
	simple_npc_msg 10
	end
	.align 4


.close
