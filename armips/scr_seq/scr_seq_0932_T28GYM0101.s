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

.include "armips/scr_seq/event_T28GYM0101.inc"


// text archive to grab from: 622.txt

.create "build/a012/2_932", 0


scrdef scr_seq_T28GYM0101_000
scrdef scr_seq_T28GYM0101_001
scrdef_end

scr_seq_T28GYM0101_001:
	goto_if_unset FLAG_UNK_189, _00E2
	clearflag FLAG_UNK_189
	end

scr_seq_T28GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_GLACIER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _012E
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_PRYCE_PRYCE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0144
	settrainerflag TRAINER_BOARDER_DEANDRE
	settrainerflag TRAINER_BOARDER_GERARDO
	settrainerflag TRAINER_SKIER_JILL
	settrainerflag TRAINER_SKIER_DIANA
	settrainerflag TRAINER_BOARDER_PATTON
	npc_msg 1
	give_badge BADGE_GLACIER
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _014A
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto_if_no_item_space ITEM_TM007, 1, _01A0
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM07_FROM_PRYCE
	npc_msg 4
	npc_msg 11
	buffer_players_name 0
	npc_msg 12
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_PRYCE
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E2:
	get_phone_book_rematch PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _01AA
	goto_if_unset FLAG_GAME_CLEAR, _01B0
	check_registered_phone_number PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01B0
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _01B6
	setflag FLAG_UNK_2EE
	goto _01CD

_012E:
	goto_if_set FLAG_GAME_CLEAR, _01CF
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0144:
	white_out
	releaseall
	end

_014A:
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto_if_no_item_space ITEM_TM007, 1, _01A0
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM07_FROM_PRYCE
	npc_msg 4
	npc_msg 11
	buffer_players_name 0
	npc_msg 12
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_PRYCE
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A0:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01AA:
	setflag FLAG_UNK_2EE
	end

_01B0:
	clearflag FLAG_UNK_2EE
	end

_01B6:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0230
	setflag FLAG_UNK_2EE
	goto _01CD

_01CD:
	end

_01CF:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0247
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0252
	npc_msg 7
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 40
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0230:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _025D
	setflag FLAG_UNK_2EE
	goto _01CD

_0247:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0252:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_025D:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _0274
	setflag FLAG_UNK_2EE
	goto _01CD

_0274:
	clearflag FLAG_UNK_2EE
	end
	.align 4


.close
