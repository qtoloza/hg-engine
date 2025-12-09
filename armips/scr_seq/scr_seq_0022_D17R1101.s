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

.include "armips/scr_seq/event_D17R1101.inc"


// text archive to grab from: 059.txt

.create "build/a012/2_022", 0


scrdef scr_seq_D17R1101_000
scrdef scr_seq_D17R1101_001
scrdef scr_seq_D17R1101_002
scrdef scr_seq_D17R1101_003
scrdef scr_seq_D17R1101_004
scrdef_end

scr_seq_D17R1101_000:
	goto_if_unset FLAG_UNK_189, _00CC
	clearflag FLAG_UNK_189
	end

scr_seq_D17R1101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0118
	compare VAR_TEMP_x4002, 1
	goto_if_ge _0179
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0182
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01C5
	end

scr_seq_D17R1101_002:
	lockall
	hide_person obj_D17R1101_monstarball
	setflag 16338
	giveitem_no_check ITEM_TM035, 1
	closemsg
	releaseall
	end

scr_seq_D17R1101_003:
	end

scr_seq_D17R1101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 10
	closemsg
	apply_movement obj_player, _0258
	wait_movement
	hide_person obj_D17R1101_monstarball_2
	buffer_players_name 0
	giveitem_no_check ITEM_FLAME_PLATE, 1
	closemsg
	releaseall
	end

_00CC:
	goto_if_unset FLAG_GAME_CLEAR, _01D6
	get_phone_book_rematch PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _01D6
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01DC
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _01F7
	clearflag FLAG_UNK_2CA
	goto _020E

_0118:
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0210
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021B
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 20
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

_0179:
	npc_msg 4
	goto _0226

_0182:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_MORTY
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_2CA
	hide_person obj_D17R1101_gsleader4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_01C5:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01D6:
	setflag FLAG_UNK_2CA
	end

_01DC:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _024A
	clearflag FLAG_UNK_2CA
	goto _0250

_01F7:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0252
	clearflag FLAG_UNK_2CA
	goto _020E

_020E:
	end

_0210:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_021B:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0226:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0182
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01C5
	end

_024A:
	setflag FLAG_UNK_2CA
	end

_0250:
	end

_0252:
	setflag FLAG_UNK_2CA
	end

	.align 4
_0258:

	step 75, 1
	step_end
	.align 4


.close
