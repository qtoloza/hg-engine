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

.include "armips/scr_seq/event_D01R0101.inc"


// text archive to grab from: 047.txt

.create "build/a012/2_005", 0


scrdef scr_seq_D01R0101_000
scrdef scr_seq_D01R0101_001
scrdef scr_seq_D01R0101_002
scrdef scr_seq_D01R0101_003
scrdef_end

scr_seq_D01R0101_000:
	goto_if_unset FLAG_UNK_189, _00A1
	clearflag FLAG_UNK_189
	end

scr_seq_D01R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00CD
	compare VAR_TEMP_x4003, 1
	goto_if_ge _00EF
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00F8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _013B
	end

scr_seq_D01R0101_002:
	simple_npc_msg 0
	end

scr_seq_D01R0101_003:
	lockall
	hide_person 4
	giveitem_no_check ITEM_EARTH_PLATE, 1
	closemsg
	releaseall
	end

_00A1:
	check_registered_phone_number PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _014C
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _017A
	goto _0195

_00CD:
	get_weekday VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _019B
	goto_if_unset FLAG_TRADE_BROCK_BONSLY_RHYHORN, _01B9
	goto _01CF

_00EF:
	npc_msg 5
	goto _023D

_00F8:
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_BROCK
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_262
	hide_person obj_D01R0101_gsleader14
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_013B:
	setvar VAR_TEMP_x4003, 1
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_014C:
	get_phone_book_rematch PHONE_CONTACT_BROCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0195
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 17
	goto_if_ne _0261
	clearflag FLAG_UNK_262
	goto _0278

_017A:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _027A
	clearflag FLAG_UNK_262
	goto _0291

_0195:
	setflag FLAG_UNK_262
	end

_019B:
	compare VAR_SPECIAL_x8004, 4
	goto_if_ne _0293
	goto_if_unset FLAG_TRADE_BROCK_BONSLY_RHYHORN, _01B9
	goto _01CF

_01B9:
	compare VAR_TEMP_x4000, 111
	goto_if_ne _0319
	npc_msg 15
	goto _03DF

_01CF:
	compare VAR_TEMP_x4000, 55
	goto_if_eq _049E
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04A9
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04B4
	npc_msg 7
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 86
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

_023D:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00F8
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _013B
	end

_0261:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _04BF
	clearflag FLAG_UNK_262
	goto _0278

_0278:
	end

_027A:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _04D6
	clearflag FLAG_UNK_262
	goto _0291

_0291:
	end

_0293:
	compare VAR_SPECIAL_x8004, 6
	goto_if_ne _01CF
	goto_if_unset FLAG_TRADE_BROCK_BONSLY_RHYHORN, _01B9
	compare VAR_TEMP_x4000, 55
	goto_if_eq _049E
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04A9
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04B4
	npc_msg 7
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 86
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

_0319:
	buffer_players_name 0
	gender_msgbox 11, 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04ED
	npc_msg 13
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _04ED
	load_npc_trade 11
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _04FE
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_THUNDER_FANG
	setflag FLAG_TRADE_BROCK_BONSLY_RHYHORN
	setvar VAR_TEMP_x4000, 55
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 19
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_03DF:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04ED
	npc_msg 13
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _04ED
	load_npc_trade 11
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	npc_trade_get_req_species VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_ne _04FE
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	set_mon_move VAR_SPECIAL_x8004, 0, MOVE_FISSURE
	setflag FLAG_TRADE_BROCK_BONSLY_RHYHORN
	setvar VAR_TEMP_x4000, 55
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_RU
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 19
	giveitem_no_check ITEM_SECRET_KEY, 1
	closemsg
	releaseall
	end

_049E:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A9:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04B4:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04BF:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _050B
	clearflag FLAG_UNK_262
	goto _0278

_04D6:
	compare VAR_TEMP_x4000, 14
	goto_if_ne _0511
	clearflag FLAG_UNK_262
	goto _0291

_04ED:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_TEMP_x4000, 111
	end

_04FE:
	npc_trade_end
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_050B:
	goto _0195

_0511:
	goto _0195
	.align 4


.close
