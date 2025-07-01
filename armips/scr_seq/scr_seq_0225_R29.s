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
scrdef scr_seq_R29_009
scrdef_end

scr_seq_R29_000:
	get_friend_sprite VAR_OBJ_1
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _01DA
	setflag FLAG_UNK_207
	end

scr_seq_R29_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SHOCK
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01F5
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _0209
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _021D
	goto_if_set FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY, _0240
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0254
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _02A3

scr_seq_R29_001:
	scrcmd_609
	lockall
	play_cry SPECIES_MARILL, 0
	wait_cry
	apply_movement obj_R29_follower_mon_static_marill, _07DE
	wait_movement
	apply_movement obj_R29_var_2, _07F0
	wait_movement
	callstd std_play_friend_music
	gender_msgbox 17, 18
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	release obj_R29_follower_mon_static_marill
	compare VAR_TEMP_x4001, 396
	goto_if_ne _02AB
	apply_movement obj_R29_var_2, _07FA
	apply_movement obj_R29_follower_mon_static_marill, _0814
	goto _02CE

scr_seq_R29_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_379 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0329
	npc_msg 12
	goto _033F

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

scr_seq_R29_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_FURRET, 0
	wait_cry
	wild_battle SPECIES_FURRET, 15, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0347
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	hide_person 11
	setflag 16379
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_01DA:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _034D
	clearflag FLAG_UNK_207
	goto _0353

_01F5:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0209:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 35
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021D:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0355
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _02A3

_0240:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0254:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 4
	goto_if_no_item_space ITEM_TWISTED_SPOON, 1, _037E
	callstd std_give_item_verbose
	setflag FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02A3:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02AB:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0388
	apply_movement obj_R29_var_2, _0832
	apply_movement obj_R29_follower_mon_static_marill, _0840
	goto _02CE

_02CE:
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
	goto_if_ne _03AB
	apply_movement obj_R29_var_2, _0852
	apply_movement obj_R29_follower_mon_static_marill, _085C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _03E3
	apply_movement obj_player, _086A
	goto _03F1

_0329:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03F7
	npc_msg 13
	goto _033F

_033F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0347:
	white_out
	releaseall
	end

_034D:
	setflag FLAG_UNK_207
	end

_0353:
	end

_0355:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 32
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 34
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SHOCK
	play_fanfare 20	
	wait_fanfare
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_037E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0388:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _040D
	apply_movement obj_R29_var_2, _087C
	apply_movement obj_R29_follower_mon_static_marill, _088A
	goto _02CE

_03AB:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0430
	apply_movement obj_R29_var_2, _089C
	apply_movement obj_R29_follower_mon_static_marill, _08A6
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0468
	apply_movement obj_player, _08B4
	goto _0476

_03E3:
	apply_movement obj_player, _08C6
	goto _047C

_03F1:
	goto _047C

_03F7:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _04FB
	npc_msg 13
	goto _033F

_040D:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0506
	apply_movement obj_R29_var_2, _08D8
	apply_movement obj_R29_follower_mon_static_marill, _08E6
	goto _02CE

_0430:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0529
	apply_movement obj_R29_var_2, _08F8
	apply_movement obj_R29_follower_mon_static_marill, _0902
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0561
	apply_movement obj_player, _0910
	goto _056F

_0468:
	apply_movement obj_player, _0922
	goto _047C

_0476:
	goto _047C

_047C:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4002, 0
	call_if_eq _0575
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_R29_var_2, _0934
	apply_movement obj_R29_follower_mon_static_marill, _093A
	wait_movement
	gender_msgbox 3, 4
	giveitem_no_check ITEM_POKE_BALL, 15
	gender_msgbox 7, 8
	closemsg
	apply_movement obj_R29_var_2, _0944
	apply_movement obj_R29_follower_mon_static_marill, _0956
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_follower_mon_static_marill
	setflag FLAG_HIDE_ROUTE_29_FRIEND
	setflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	callstd std_fade_end_friend_music
	releaseall
	end

_04FB:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0506:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _05D8
	apply_movement obj_R29_var_2, _096C
	apply_movement obj_R29_follower_mon_static_marill, _0972
	goto _02CE

_0529:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _05FB
	apply_movement obj_R29_var_2, _097C
	apply_movement obj_R29_follower_mon_static_marill, _0986
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0633
	apply_movement obj_player, _0994
	goto _0641

_0561:
	apply_movement obj_player, _09A6
	goto _047C

_056F:
	goto _047C

_0575:
	apply_movement obj_R29_var_2, _09B8
	wait_movement
	apply_movement obj_R29_var_2, _09BE
	apply_movement obj_R29_follower_mon_static_marill, _09D8
	wait_movement
	apply_movement obj_R29_var_2, _09F2
	apply_movement obj_R29_follower_mon_static_marill, _09F8
	wait_movement
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R29_var_2, _09FE
	apply_movement obj_R29_follower_mon_static_marill, _0A04
	apply_movement obj_player, _0A0E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_05D8:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0647
	apply_movement obj_R29_var_2, _0A18
	apply_movement obj_R29_follower_mon_static_marill, _0A26
	goto _02CE

_05FB:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _06BF
	apply_movement obj_R29_var_2, _0A38
	apply_movement obj_R29_follower_mon_static_marill, _0A42
	compare VAR_TEMP_x4002, 0
	goto_if_ne _06F7
	apply_movement obj_player, _0A50
	goto _0705

_0633:
	apply_movement obj_player, _0A62
	goto _047C

_0641:
	goto _047C

_0647:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _02CE
	apply_movement obj_R29_var_2, _0A74
	apply_movement obj_R29_follower_mon_static_marill, _0A82
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
	goto_if_ne _03AB
	apply_movement obj_R29_var_2, _0852
	apply_movement obj_R29_follower_mon_static_marill, _085C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _03E3
	apply_movement obj_player, _086A
	goto _03F1

_06BF:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _070B
	apply_movement obj_R29_var_2, _0A94
	apply_movement obj_R29_follower_mon_static_marill, _0A9E
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0743
	apply_movement obj_player, _0AAC
	goto _0751

_06F7:
	apply_movement obj_player, _0ABE
	goto _047C

_0705:
	goto _047C

_070B:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _047C
	apply_movement obj_R29_var_2, _0AD0
	apply_movement obj_R29_follower_mon_static_marill, _0AD6
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0757
	apply_movement obj_player, _0AE0
	goto _047C

_0743:
	apply_movement obj_player, _0AEA
	goto _047C

_0751:
	goto _047C

_0757:
	apply_movement obj_player, _0AFC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4002, 0
	call_if_eq _0575
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_R29_var_2, _0934
	apply_movement obj_R29_follower_mon_static_marill, _093A
	wait_movement
	gender_msgbox 3, 4
	giveitem_no_check ITEM_POKE_BALL, 15
	gender_msgbox 7, 8
	closemsg
	apply_movement obj_R29_var_2, _0944
	apply_movement obj_R29_follower_mon_static_marill, _0956
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_follower_mon_static_marill
	setflag FLAG_HIDE_ROUTE_29_FRIEND
	setflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	callstd std_fade_end_friend_music
	releaseall
	end

	.align 4
_07DE:

	step 17, 1
	step 19, 2
	step 16, 1
	step 50, 2
	step_end
	.align 4
_07F0:

	step 35, 1
	step 75, 1
	step_end
	.align 4
_07FA:

	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 4
	step_end
	.align 4
_0814:

	step 18, 1
	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 3
	step_end
	.align 4
_0832:

	step 15, 2
	step 12, 3
	step 15, 2
	step_end
	.align 4
_0840:

	step 14, 1
	step 15, 2
	step 12, 3
	step 15, 1
	step_end
	.align 4
_0852:

	step 13, 6
	step 14, 9
	step_end
	.align 4
_085C:

	step 15, 1
	step 13, 6
	step 14, 8
	step_end
	.align 4
_086A:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 5
	step_end
	.align 4
_087C:

	step 15, 2
	step 12, 2
	step 15, 2
	step_end
	.align 4
_088A:

	step 14, 1
	step 15, 2
	step 12, 2
	step 15, 1
	step_end
	.align 4
_089C:

	step 13, 5
	step 14, 9
	step_end
	.align 4
_08A6:

	step 15, 1
	step 13, 5
	step 14, 8
	step_end
	.align 4
_08B4:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 5
	step_end
	.align 4
_08C6:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 7
	step_end
	.align 4
_08D8:

	step 15, 2
	step 12, 1
	step 15, 2
	step_end
	.align 4
_08E6:

	step 14, 1
	step 15, 2
	step 12, 1
	step 15, 1
	step_end
	.align 4
_08F8:

	step 13, 4
	step 14, 9
	step_end
	.align 4
_0902:

	step 15, 1
	step 13, 4
	step 14, 8
	step_end
	.align 4
_0910:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 5
	step_end
	.align 4
_0922:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 7
	step_end
	.align 4
_0934:

	step 15, 1
	step_end
	.align 4
_093A:

	step 14, 1
	step 35, 1
	step_end
	.align 4
_0944:

	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 3
	step_end
	.align 4
_0956:

	step 15, 1
	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 2
	step_end
	.align 4
_096C:

	step 15, 4
	step_end
	.align 4
_0972:

	step 14, 1
	step 15, 3
	step_end
	.align 4
_097C:

	step 13, 3
	step 14, 9
	step_end
	.align 4
_0986:

	step 15, 1
	step 13, 3
	step 14, 8
	step_end
	.align 4
_0994:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 5
	step_end
	.align 4
_09A6:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 7
	step_end
	.align 4
_09B8:

	step 75, 1
	step_end
	.align 4
_09BE:

	step 50, 3
	step 65, 1
	step 50, 3
	step 63, 3
	step 50, 3
	step 63, 3
	step_end
	.align 4
_09D8:

	step 63, 3
	step 58, 1
	step 63, 3
	step 50, 3
	step 63, 3
	step 50, 3
	step_end
	.align 4
_09F2:

	step 15, 3
	step_end
	.align 4
_09F8:

	step 15, 3
	step_end
	.align 4
_09FE:

	step 14, 3
	step_end
	.align 4
_0A04:

	step 15, 1
	step 14, 2
	step_end
	.align 4
_0A0E:

	step 63, 1
	step 14, 2
	step_end
	.align 4
_0A18:

	step 15, 2
	step 13, 1
	step 15, 2
	step_end
	.align 4
_0A26:

	step 14, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end
	.align 4
_0A38:

	step 13, 2
	step 14, 9
	step_end
	.align 4
_0A42:

	step 15, 1
	step 13, 2
	step 14, 8
	step_end
	.align 4
_0A50:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 5
	step_end
	.align 4
_0A62:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 7
	step_end
	.align 4
_0A74:

	step 15, 2
	step 13, 2
	step 15, 2
	step_end
	.align 4
_0A82:

	step 14, 1
	step 15, 2
	step 13, 2
	step 15, 1
	step_end
	.align 4
_0A94:

	step 13, 1
	step 14, 9
	step_end
	.align 4
_0A9E:

	step 15, 1
	step 13, 1
	step 14, 8
	step_end
	.align 4
_0AAC:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 5
	step_end
	.align 4
_0ABE:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 7
	step_end
	.align 4
_0AD0:

	step 14, 9
	step_end
	.align 4
_0AD6:

	step 15, 1
	step 14, 8
	step_end
	.align 4
_0AE0:

	step 63, 1
	step 14, 6
	step_end
	.align 4
_0AEA:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 7
	step_end
	.align 4
_0AFC:

	step 63, 1
	step 14, 8
	step_end
	.align 4


.close
