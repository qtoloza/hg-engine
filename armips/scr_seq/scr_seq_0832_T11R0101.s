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

.include "armips/scr_seq/event_T11R0101.inc"


// text archive to grab from: 533.txt

.create "build/a012/2_832", 0


scrdef scr_seq_T11R0101_000
scrdef scr_seq_T11R0101_001
scrdef scr_seq_T11R0101_002
scrdef scr_seq_T11R0101_003
scrdef scr_seq_T11R0101_004
scrdef scr_seq_T11R0101_005
scrdef scr_seq_T11R0101_006
scrdef scr_seq_T11R0101_007
scrdef scr_seq_T11R0101_008
scrdef scr_seq_T11R0101_009
scrdef scr_seq_T11R0101_010
scrdef scr_seq_T11R0101_011
scrdef scr_seq_T11R0101_012
scrdef scr_seq_T11R0101_013
scrdef scr_seq_T11R0101_014
scrdef scr_seq_T11R0101_015
scrdef scr_seq_T11R0101_016
scrdef scr_seq_T11R0101_017
scrdef scr_seq_T11R0101_018
scrdef scr_seq_T11R0101_019
scrdef scr_seq_T11R0101_020
scrdef_end

scr_seq_T11R0101_003:
	get_phone_book_rematch PHONE_CONTACT_WHITNEY, VAR_TEMP_x4000
	get_phone_book_rematch PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	get_phone_book_rematch PHONE_CONTACT_CLAIR, VAR_TEMP_x4002
	get_phone_book_rematch PHONE_CONTACT_ERIKA, VAR_TEMP_x4003
	get_phone_book_rematch PHONE_CONTACT_MISTY, VAR_TEMP_x4004
	get_phone_book_rematch PHONE_CONTACT_BLAINE, VAR_TEMP_x4005
	get_phone_book_rematch PHONE_CONTACT_BLUE, VAR_TEMP_x4006
	get_phone_book_rematch PHONE_CONTACT_CHUCK, VAR_TEMP_x4007
	get_phone_book_rematch PHONE_CONTACT_BROCK, VAR_TEMP_x4008
	get_phone_book_rematch PHONE_CONTACT_BUGSY, VAR_TEMP_x4009
	get_phone_book_rematch PHONE_CONTACT_SABRINA, VAR_TEMP_x400A
	get_phone_book_rematch PHONE_CONTACT_FALKNER, VAR_TEMP_x400B
	get_phone_book_rematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x400C
	get_phone_book_rematch PHONE_CONTACT_MORTY, VAR_TEMP_x400D
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x400E
	get_phone_book_rematch PHONE_CONTACT_PRYCE, VAR_TEMP_x400F
	compare VAR_TEMP_x4003, 0
	goto_if_ne _0958
	setflag FLAG_UNK_2B8
	goto _0973

scr_seq_T11R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	closemsg
	trainer_battle TRAINER_LEADER_WHITNEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _098A
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 17
	setflag FLAG_UNK_2B5
	hide_person obj_T11R0101_gsleader3
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 30
	closemsg
	trainer_battle TRAINER_LEADER_JANINE_JANINE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0990
	npc_msg 31
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 26
	setflag FLAG_UNK_2B6
	hide_person obj_T11R0101_gsleader13
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 18
	closemsg
	trainer_battle TRAINER_LEADER_CLAIR_CLAIR_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0996
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 27
	setflag FLAG_UNK_2B7
	hide_person obj_T11R0101_gsleader8
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 24
	closemsg
	trainer_battle TRAINER_LEADER_ERIKA_ERIKA_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _099C
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 28
	setflag FLAG_UNK_2B8
	hide_person obj_T11R0101_gsleader12
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 26
	closemsg
	trainer_battle TRAINER_LEADER_MISTY_MISTY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09A2
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 29
	setflag FLAG_UNK_2B9
	hide_person obj_T11R0101_gsleader11
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 32
	closemsg
	trainer_battle TRAINER_LEADER_BLAINE_BLAINE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09A8
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 30
	setflag FLAG_UNK_2BA
	hide_person obj_T11R0101_gsleader15
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 34
	closemsg
	trainer_battle TRAINER_LEADER_BLUE_BLUE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09AE
	npc_msg 35
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 31
	setflag FLAG_UNK_2BB
	hide_person obj_T11R0101_gsleader16
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	closemsg
	trainer_battle TRAINER_LEADER_CHUCK_CHUCK_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09B4
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 32
	setflag FLAG_UNK_2BC
	hide_person obj_T11R0101_gsleader5
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 28
	closemsg
	trainer_battle TRAINER_LEADER_BROCK_BROCK_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09BA
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 33
	setflag FLAG_UNK_2BD
	hide_person obj_T11R0101_gsleader14
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	closemsg
	trainer_battle TRAINER_LEADER_BUGSY_BUGSY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09C0
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 34
	setflag FLAG_UNK_2BE
	hide_person obj_T11R0101_gsleader2
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 22
	closemsg
	trainer_battle TRAINER_LEADER_SABRINA_SABRINA_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09C6
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 35
	setflag FLAG_UNK_2BF
	hide_person obj_T11R0101_gsleader10
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 4
	closemsg
	trainer_battle TRAINER_LEADER_FALKNER_FALKNER_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09CC
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 18
	setflag FLAG_UNK_2C0
	hide_person obj_T11R0101_gsleader1
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 20
	closemsg
	trainer_battle TRAINER_LEADER_LT_SURGE_LT__SURGE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09D2
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 36
	setflag FLAG_UNK_2C1
	hide_person obj_T11R0101_gsleader9
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 14
	closemsg
	trainer_battle TRAINER_LEADER_MORTY_MORTY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09D8
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 37
	setflag FLAG_UNK_2C2
	hide_person obj_T11R0101_gsleader4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	closemsg
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09DE
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 38
	setflag FLAG_UNK_2C3
	hide_person obj_T11R0101_gsleader6
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 16
	closemsg
	trainer_battle TRAINER_LEADER_PRYCE_PRYCE_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _09E4
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_462 39
	setflag FLAG_UNK_2C4
	hide_person obj_T11R0101_gsleader7
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T11R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_KARATE_KING, _09EA
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T11R0101_001:
	simple_npc_msg 2
	end

scr_seq_T11R0101_002:
	simple_npc_msg 3
	end

scr_seq_T11R0101_020:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 36
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0A57
	npc_msg 37
	closemsg
	trainer_battle TRAINER_LEADER_FALKNER_FALKNER_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_JANINE_JANINE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_BUGSY_BUGSY_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_BROCK_BROCK_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_MISTY_MISTY_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_SUPER_NERD_MICKEY_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_WHITNEY_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	trainer_battle TRAINER_LEADER_MORTY_MORTY_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_LT_SURGE_LT__SURGE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_SUPER_NERD_MICKEY_3, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_CHUCK_CHUCK_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_ERIKA_ERIKA_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_SABRINA_SABRINA_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_SUPER_NERD_MICKEY_4, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_PRYCE_PRYCE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_BLAINE_BLAINE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_LEADER_CLAIR_CLAIR_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_eq _0A6D
	compare VAR_SPECIAL_RESULT, 155
	goto_if_eq _0A8C
	goto _0AAB

_0958:
	clearflag FLAG_UNK_2B8
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0ACA
	setflag FLAG_UNK_2B5
	goto _0AE5

_0973:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0ACA
	setflag FLAG_UNK_2B5
	goto _0AE5

_098A:
	white_out
	releaseall
	end

_0990:
	white_out
	releaseall
	end

_0996:
	white_out
	releaseall
	end

_099C:
	white_out
	releaseall
	end

_09A2:
	white_out
	releaseall
	end

_09A8:
	white_out
	releaseall
	end

_09AE:
	white_out
	releaseall
	end

_09B4:
	white_out
	releaseall
	end

_09BA:
	white_out
	releaseall
	end

_09C0:
	white_out
	releaseall
	end

_09C6:
	white_out
	releaseall
	end

_09CC:
	white_out
	releaseall
	end

_09D2:
	white_out
	releaseall
	end

_09D8:
	white_out
	releaseall
	end

_09DE:
	white_out
	releaseall
	end

_09E4:
	white_out
	releaseall
	end

_09EA:
	npc_msg 1
	closemsg
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	register_gear_number PHONE_CONTACT_WHITNEY
	register_gear_number PHONE_CONTACT_JANINE
	register_gear_number PHONE_CONTACT_CLAIR
	register_gear_number PHONE_CONTACT_ERIKA
	register_gear_number PHONE_CONTACT_MISTY
	register_gear_number PHONE_CONTACT_BLAINE
	register_gear_number PHONE_CONTACT_BLUE
	register_gear_number PHONE_CONTACT_CHUCK
	register_gear_number PHONE_CONTACT_BROCK
	register_gear_number PHONE_CONTACT_BUGSY
	register_gear_number PHONE_CONTACT_SABRINA
	register_gear_number PHONE_CONTACT_FALKNER
	register_gear_number PHONE_CONTACT_LT__SURGE
	register_gear_number PHONE_CONTACT_MORTY
	register_gear_number PHONE_CONTACT_JASMINE
	register_gear_number PHONE_CONTACT_PRYCE
	releaseall
	end

_0A57:
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0A62:
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0A6D:
	trainer_battle TRAINER_RIVAL_SILVER_20, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	goto _0AFC

_0A8C:
	trainer_battle TRAINER_RIVAL_SILVER_21, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	goto _0AFC

_0AAB:
	trainer_battle TRAINER_RIVAL_SILVER_19, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	goto _0AFC

_0ACA:
	clearflag FLAG_UNK_2B5
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0C4D
	setflag FLAG_UNK_2B6
	goto _0C68

_0AE5:
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0C4D
	setflag FLAG_UNK_2B6
	goto _0C68

_0AFC:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_5, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_ELITE_FOUR_WILL_WILL_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_ELITE_FOUR_KOGA_KOGA_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	trainer_battle TRAINER_ELITE_FOUR_BRUNO_BRUNO_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_ELITE_FOUR_KAREN_KAREN_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_SUPER_NERD_MICKEY_6, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	trainer_battle TRAINER_LEADER_BLUE_BLUE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	trainer_battle TRAINER_CHAMPION_LANCE_2, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	fade_screen 8, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 8, 1, 1, RGB_BLACK
	wait_fade
	trainer_battle TRAINER_PKMN_TRAINER_RED_RED, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A62
	releaseall
	end

_0C4D:
	clearflag FLAG_UNK_2B6
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0C7F
	setflag FLAG_UNK_2B7
	goto _0C9A

_0C68:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0C7F
	setflag FLAG_UNK_2B7
	goto _0C9A

_0C7F:
	clearflag FLAG_UNK_2B7
	compare VAR_TEMP_x4004, 0
	goto_if_ne _0CB1
	setflag FLAG_UNK_2B9
	goto _0CCC

_0C9A:
	compare VAR_TEMP_x4004, 0
	goto_if_ne _0CB1
	setflag FLAG_UNK_2B9
	goto _0CCC

_0CB1:
	clearflag FLAG_UNK_2B9
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0CE3
	setflag FLAG_UNK_2BA
	goto _0CFE

_0CCC:
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0CE3
	setflag FLAG_UNK_2BA
	goto _0CFE

_0CE3:
	clearflag FLAG_UNK_2BA
	compare VAR_TEMP_x4006, 0
	goto_if_ne _0D15
	setflag FLAG_UNK_2BB
	goto _0D30

_0CFE:
	compare VAR_TEMP_x4006, 0
	goto_if_ne _0D15
	setflag FLAG_UNK_2BB
	goto _0D30

_0D15:
	clearflag FLAG_UNK_2BB
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0D47
	setflag FLAG_UNK_2BC
	goto _0D62

_0D30:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0D47
	setflag FLAG_UNK_2BC
	goto _0D62

_0D47:
	clearflag FLAG_UNK_2BC
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0D79
	setflag FLAG_UNK_2BD
	goto _0D94

_0D62:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0D79
	setflag FLAG_UNK_2BD
	goto _0D94

_0D79:
	clearflag FLAG_UNK_2BD
	compare VAR_TEMP_x4009, 0
	goto_if_ne _0DAB
	setflag FLAG_UNK_2BE
	goto _0DC6

_0D94:
	compare VAR_TEMP_x4009, 0
	goto_if_ne _0DAB
	setflag FLAG_UNK_2BE
	goto _0DC6

_0DAB:
	clearflag FLAG_UNK_2BE
	compare VAR_TEMP_x400A, 0
	goto_if_ne _0DDD
	setflag FLAG_UNK_2BF
	goto _0DF8

_0DC6:
	compare VAR_TEMP_x400A, 0
	goto_if_ne _0DDD
	setflag FLAG_UNK_2BF
	goto _0DF8

_0DDD:
	clearflag FLAG_UNK_2BF
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0E0F
	setflag FLAG_UNK_2C0
	goto _0E2A

_0DF8:
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0E0F
	setflag FLAG_UNK_2C0
	goto _0E2A

_0E0F:
	clearflag FLAG_UNK_2C0
	compare VAR_TEMP_x400C, 0
	goto_if_ne _0E41
	setflag FLAG_UNK_2C1
	goto _0E5C

_0E2A:
	compare VAR_TEMP_x400C, 0
	goto_if_ne _0E41
	setflag FLAG_UNK_2C1
	goto _0E5C

_0E41:
	clearflag FLAG_UNK_2C1
	compare VAR_TEMP_x400D, 0
	goto_if_ne _0E73
	setflag FLAG_UNK_2C2
	goto _0E8E

_0E5C:
	compare VAR_TEMP_x400D, 0
	goto_if_ne _0E73
	setflag FLAG_UNK_2C2
	goto _0E8E

_0E73:
	clearflag FLAG_UNK_2C2
	compare VAR_TEMP_x400E, 0
	goto_if_ne _0EA5
	setflag FLAG_UNK_2C3
	goto _0EC0

_0E8E:
	compare VAR_TEMP_x400E, 0
	goto_if_ne _0EA5
	setflag FLAG_UNK_2C3
	goto _0EC0

_0EA5:
	clearflag FLAG_UNK_2C3
	compare VAR_TEMP_x400F, 0
	goto_if_ne _0ED7
	setflag FLAG_UNK_2C4
	goto _0EDD

_0EC0:
	compare VAR_TEMP_x400F, 0
	goto_if_ne _0ED7
	setflag FLAG_UNK_2C4
	goto _0EDD

_0ED7:
	clearflag FLAG_UNK_2C4
	end

_0EDD:
	end
	.align 4


.close
