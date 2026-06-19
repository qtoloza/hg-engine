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

.include "armips/scr_seq/event_T20R0402.inc"


// text archive to grab from: 549.txt

.create "build/a012/2_849", 0


scrdef scr_seq_T20R0402_000
scrdef scr_seq_T20R0402_001
scrdef scr_seq_T20R0402_002
scrdef scr_seq_T20R0402_003
scrdef scr_seq_T20R0402_004
scrdef scr_seq_T20R0402_005
scrdef_end

scr_seq_T20R0402_002:
	goto_if_set FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND, _00BC
	get_friend_sprite VAR_OBJ_0
	end

scr_seq_T20R0402_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00BE
	buffer_players_name 0
	goto_if_set FLAG_GOT_STARTER, _0102
	gender_msgbox 0, 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	play_cry SPECIES_MARILL, 0
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0402_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_AZUMARILL, 0
	npc_msg 21
	wait_cry
	gender_msgbox 19, 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00BC:
	end

_00BE:
	get_party_lead_alive VAR_SPECIAL_x8006
	get_shiny_leaf_count VAR_SPECIAL_x8006, VAR_SPECIAL_RESULT
	goto_if_set FLAG_SHOWED_FRIEND_A_SHINY_LEAF, _0113
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0146
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button_or_walk_away
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0159
	closemsg
	releaseall
	end

_0102:
	buffer_mon_species_name 1, VAR_SPECIAL_RESULT
	gender_msgbox 2, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0113:
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _01AE
	compare VAR_SPECIAL_x8004, 5
	goto_if_eq _01C6
	compare VAR_SPECIAL_x8004, 1
	goto_if_ge _0201
	goto _021A

_0146:
	setflag FLAG_SHOWED_FRIEND_A_SHINY_LEAF
	buffer_players_name 0
	gender_msgbox 7, 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0159:
	npc_msg 22
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0229
	gender_msgbox 24, 23
	closemsg
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0234
	trainer_battle TRAINER_TWINS_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _025A
	lockall
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01AE:
	buffer_players_name 0
	get_follow_poke_party_index VAR_SPECIAL_RESULT
	bufferpartymonnick 1, VAR_SPECIAL_RESULT
	gender_msgbox 15, 16
	closemsg
	goto _0260

_01C6:
	try_give_shiny_leaf_crown VAR_SPECIAL_x8006
	setflag FLAG_UNK_184
	buffer_players_name 0
	gender_msgbox 11, 12
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	show_certificate 2
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	gender_msgbox 13, 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0201:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _028A
	setvar VAR_SPECIAL_x8005, 4
	goto _02A3

_021A:
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0229:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0234:
	trainer_battle TRAINER_BUG_CATCHER_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _025A
	lockall
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_025A:
	white_out
	releaseall
	end

_0260:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	show_certificate 2
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	gender_msgbox 13, 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_028A:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _02BC
	setvar VAR_SPECIAL_x8005, 3
	goto _02A3

_02A3:
	buffer_players_name 0
	buffer_int 1, VAR_SPECIAL_x8004
	buffer_int 2, VAR_SPECIAL_x8005
	gender_msgbox 9, 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02BC:
	compare VAR_SPECIAL_x8004, 3
	goto_if_ne _02D5
	setvar VAR_SPECIAL_x8005, 2
	goto _02A3

_02D5:
	setvar VAR_SPECIAL_x8005, 1
	buffer_players_name 0
	buffer_int 1, VAR_SPECIAL_x8004
	buffer_int 2, VAR_SPECIAL_x8005
	gender_msgbox 9, 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
