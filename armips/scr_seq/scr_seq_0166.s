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

.include "armips/scr_seq/event_0166.inc"


// text archive to grab from: 043.txt

.create "build/a012/2_166", 0


scrdef scr_seq_0166_000
scrdef scr_seq_0166_001
scrdef scr_seq_0166_002
scrdef scr_seq_0166_003
scrdef scr_seq_0166_004
scrdef scr_seq_0166_005
scrdef scr_seq_0166_006
scrdef scr_seq_0166_007
scrdef scr_seq_0166_008
scrdef scr_seq_0166_009
scrdef scr_seq_0166_010
scrdef scr_seq_0166_011
scrdef scr_seq_0166_012
scrdef_end

scr_seq_0166_000:
	scrcmd_609
	lockall
	setvar VAR_SPECIAL_RESULT, 7
	clearflag FLAG_UNK_966
	setvar VAR_UNK_4133, 0
	releaseall
	end

scr_seq_0166_001:
	end

scr_seq_0166_002:
	end

_0052:
	return

scr_seq_0166_003:
	scrcmd_521
	call _0064
	call _0052
	end

_0064:
	return
	return
scr_seq_0166_004:
	end
	make_object_visible 0xFF
	return
scr_seq_0166_005:
	simple_npc_msg 0
	end

scr_seq_0166_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 0
	setvar VAR_SPECIAL_x8007, 2
	npc_msg 3
	goto _00C1
	end
scr_seq_0166_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 1
	setvar VAR_SPECIAL_x8007, 2
	npc_msg 7
	goto _00C1
	end
_00C1:
	compare VAR_TEMP_x4003, 1
	goto_if_eq _00D7
	npc_msg 4
	goto _00DA

_00D7:
	npc_msg 12
_00DA:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 8, 0
	scrcmd_066 9, 1
	scrcmd_066 10, 2
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _012F
	case 1, _0137
	goto _0118
	end
_0118:
	scrcmd_283
	setvar VAR_UNK_4133, 0
	clearflag FLAG_UNK_966
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_012F:
	goto _0254
	end
_0137:
	compare VAR_TEMP_x4003, 1
	goto_if_eq _014C
	goto _0155
	end
_014C:
	npc_msg 13
	goto _00C1

_0155:
	npc_msg 5
_0158:
	scrcmd_064 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 96, 0
	scrcmd_066 97, 1
	scrcmd_066 98, 2
	scrcmd_066 99, 3
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _01A7
	case 1, _01AF
	case 2, _01BA
	goto _00C1
	end
_01A7:
	goto _01C8
	end
_01AF:
	npc_msg 18
	goto _0155
	end
_01BA:
	npc_msg 19
	goto _0155
	end
_01C5:
	npc_msg 117
_01C8:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 36, 0
	scrcmd_066 37, 1
	scrcmd_066 38, 2
	scrcmd_066 39, 3
	scrcmd_066 40, 4
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _0228
	case 1, _0233
	case 2, _023E
	case 3, _0249
	goto _0158
	end
_0228:
	npc_msg 14
	goto _01C5
	end
_0233:
	npc_msg 15
	goto _01C5
	end
_023E:
	npc_msg 16
	goto _01C5
	end
_0249:
	npc_msg 17
	goto _01C5
	end
_0254:
	npc_msg 219
	scrcmd_064 18, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 14, 0
	scrcmd_066 15, 1
	scrcmd_066 5, 2
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _0295
	case 1, _02E7
	goto _0118
	end
_0295:
	npc_msg 212
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0254
	closemsg
	scrcmd_226 8, VAR_SPECIAL_x8005, VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02D7
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _02DF
	goto _0339
	end
_02D7:
	goto _0254
	end
_02DF:
	goto _0254
	end
_02E7:
	npc_msg 212
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0254
	closemsg
	scrcmd_227 8, VAR_SPECIAL_x8005, VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0329
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0331
	goto _0339
	end
_0329:
	goto _0254
	end
_0331:
	scrcmd_283
	closemsg
	releaseall
	end

_0339:
	scrcmd_234 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_x8007, VAR_TEMP_x4002
	scrcmd_232 25
	scrcmd_233 25
_0347:
	compare VAR_TEMP_x4003, 0
	goto_if_eq _038D
	compare VAR_TEMP_x4003, 1
	goto_if_eq _0395
	compare VAR_TEMP_x4003, 2
	goto_if_eq _03A7
	end
	scrcmd_236 VAR_SPECIAL_RESULT
	addvar VAR_SPECIAL_RESULT, 1
	npc_msg 177
	scrcmd_236 VAR_SPECIAL_RESULT
	closemsg
	goto _0347
_038D:
	goto _03B4
	end
_0395:
	setflag FLAG_UNK_966
	setvar VAR_UNK_4133, 5
	goto _03B4
	end
_03A7:
	scrcmd_048 211
	closemsg
	goto _03B4
	end
_03B4:
	get_player_gender VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03CD
	goto _03DB
	end
_03CD:
	buffer_players_name 0
	scrcmd_048 66
	goto _03E9
	end
_03DB:
	buffer_players_name 0
	scrcmd_048 67
	goto _03E9
	end
_03E9:
	scrcmd_048 68
	scrcmd_232 26
	scrcmd_233 26
	closemsg
	goto _03FE
	end
_03FE:
	scrcmd_232 4
	scrcmd_233 4
	scrcmd_257 239
	pokeathlon 1, 0, VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	scrcmd_237
	scrcmd_048 78
	closemsg
	scrcmd_232 24
	scrcmd_233 24
	scrcmd_587
	wait 10, VAR_SPECIAL_RESULT
	scrcmd_235 VAR_TEMP_x4002
	clearflag FLAG_UNK_966
	setvar VAR_UNK_4133, 0
	goto _0443

_0443:
	releaseall
	end

_0447: ; unreferenced
    play_se SEQ_SE_DP_CON_F007
    compare VAR_SPECIAL_RESULT, 1
    call_if_eq _048E
    compare VAR_SPECIAL_RESULT, 2
    call_if_eq _0498
    compare VAR_SPECIAL_RESULT, 3
    call_if_eq _04AC
    compare VAR_SPECIAL_RESULT, 4
    call_if_eq _04C8
    compare VAR_SPECIAL_RESULT, 5
    call_if_ge _04EE
    return

_048E:
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    return

_0498:
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    return

_04AC:
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    return

_04C8:
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    return

_04EE:
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait 10, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait 5, VAR_SPECIAL_RESULT
    play_se SEQ_SE_DP_CON_015
    wait_se SEQ_SE_DP_CON_015
    return

	.align 4
_0520: ; unreferenced
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step_end

	.align 4
_0554: ; unreferenced
	step 63, 2
	step 34, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 37, 1
	step_end

	.align 4
_0570: ; unreferenced
	step 34, 1
	step_end

	.align 4
_0578: ; unreferenced
	step 32, 1
	step_end

	.align 4
_0580: ; unreferenced
	step 35, 1
	step_end

	.align 4
_0588: ; unreferenced
	step 33, 1
	step_end

scr_seq_0166_008:
scr_seq_0166_009:
scr_seq_0166_010:
scr_seq_0166_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4003, 2
	setvar VAR_SPECIAL_x8004, 0
	npc_msg 111
	goto _05AF
	end
_05AF:
	npc_msg 112
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 113, 0
	scrcmd_066 114, 1
	scrcmd_066 115, 2
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _05FD
	case 1, _0872
	case 2, _0A97
	goto _0A97
	end
_05FD:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 155, 0
	scrcmd_066 156, 1
	scrcmd_066 157, 2
	scrcmd_066 158, 3
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _064C
	case 1, _0660
	case 2, _067A
	goto _068E
	end
_064C:
	setvar VAR_TEMP_x4004, 0
	setvar VAR_SPECIAL_x8007, 3
	goto _0743
	end
_0660:
	setvar VAR_TEMP_x4004, 1
	setvar VAR_SPECIAL_x8005, 0
	setvar VAR_SPECIAL_x8007, 5
	goto _0743
	end
_067A:
	setvar VAR_TEMP_x4004, 0
	setvar VAR_SPECIAL_x8007, 7
	goto _0743
	end
_068E:
	npc_msg 159
	wait_button_or_walk_away
	goto _0A9C
	end

_069B:
	npc_msg 168
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 169, 0
	scrcmd_066 170, 1
	scrcmd_066 171, 2
	scrcmd_066 172, 3
	scrcmd_066 173, 4
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _06FE
	case 1, _070C
	case 2, _071A
	case 3, _0728
	goto _0736
	end
_06FE:
	setvar VAR_SPECIAL_x8004, 0
	goto _0743
	end
_070C:
	setvar VAR_SPECIAL_x8004, 1
	goto _0743
	end
_071A:
	setvar VAR_SPECIAL_x8004, 2
	goto _0743
	end
_0728:
	setvar VAR_SPECIAL_x8004, 3
	goto _0743
	end
_0736:
	npc_msg 174
	wait_button_or_walk_away
	goto _0A9C
	end
_0743:
	compare VAR_TEMP_x4004, 1
	goto_if_eq _081D
	goto _0756

_0756:
	npc_msg 160
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 161, 0
	scrcmd_066 162, 1
	scrcmd_066 163, 2
	scrcmd_066 164, 3
	scrcmd_066 165, 4
	scrcmd_066 166, 5
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _07CA
	case 1, _07D8
	case 2, _07E6
	case 3, _07F4
	case 4, _0802
	goto _0810
	end
_07CA:
	setvar VAR_SPECIAL_x8005, 0
	goto _081D
	end
_07D8:
	setvar VAR_SPECIAL_x8005, 1
	goto _081D
	end
_07E6:
	setvar VAR_SPECIAL_x8005, 2
	goto _081D
	end
_07F4:
	setvar VAR_SPECIAL_x8005, 3
	goto _081D
	end
_0802:
	setvar VAR_SPECIAL_x8005, 4
	goto _081D
	end
_0810:
	npc_msg 167
	wait_button_or_walk_away
	goto _0A9C
	end
_081D:
	npc_msg 175
	npc_msg 176
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setvar VAR_SPECIAL_RESULT, 0
_0837:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _084F
	get_move_selection 0, VAR_SPECIAL_RESULT
	goto _0837

_084F:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_TEMP_x4002, 255
	goto_if_eq _0810
	goto _0339
	end
_0872:
	npc_msg 117
_0875:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 121, 0
	scrcmd_066 118, 1
	scrcmd_066 119, 2
	scrcmd_066 120, 3
	scrcmd_066 122, 4
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _0A7E
	case 1, _08D8
	case 2, _0953
	case 3, _09EA
	goto _05AF
	end
_08D5:
	npc_msg 117
_08D8:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 125, 0
	scrcmd_066 126, 1
	scrcmd_066 127, 2
	scrcmd_066 129, 3
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _0927
	case 1, _0932
	case 2, _093D
	goto _0948
	end
_0927:
	npc_msg 130
	goto _08D5
	end
_0932:
	npc_msg 131
	goto _08D5
	end
_093D:
	npc_msg 132
	goto _08D5
	end
_0948:
	goto _0875
	end
_0950:
	npc_msg 117
_0953:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 135, 0
	scrcmd_066 136, 1
	scrcmd_066 137, 2
	scrcmd_066 138, 3
	scrcmd_066 139, 4
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _09B3
	case 1, _09BE
	case 2, _09C9
	case 3, _09D4
	goto _09DF
	end
_09B3:
	npc_msg 140
	goto _0950
	end
_09BE:
	npc_msg 141
	goto _0950
	end
_09C9:
	npc_msg 142
	goto _0950
	end
_09D4:
	npc_msg 143
	goto _0950
	end
_09DF:
	goto _0875
	end
_09E7:
	npc_msg 117
_09EA:
	scrcmd_065 1, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 145, 0
	scrcmd_066 146, 1
	scrcmd_066 147, 2
	scrcmd_066 148, 3
	scrcmd_066 149, 4
	scrcmd_067
	switch VAR_SPECIAL_RESULT
	case 0, _0A4A
	case 1, _0A55
	case 2, _0A60
	case 3, _0A6B
	goto _0A76
	end
_0A4A:
	npc_msg 150
	goto _09E7
	end
_0A55:
	npc_msg 151
	goto _09E7
	end
_0A60:
	npc_msg 152
	goto _09E7
	end
_0A6B:
	npc_msg 153
	goto _09E7
	end
_0A76:
	goto _0875
	end
_0A7E:
	npc_msg 124
	npc_msg 117
	goto _0875
	end
_0A8C: ; unreferenced
	npc_msg 123
	goto _0A9C
	end
_0A97:
	npc_msg 116
	wait_button_or_walk_away
_0A9C:
	closemsg
	releaseall
	end

scr_seq_0166_012:
	end
	.align 4





.close
