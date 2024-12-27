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

.include "armips/scr_seq/event_T28R0201.inc"


// text archive to grab from: 625.txt

.create "build/a012/2_937", 0


scrdef scr_seq_T28R0201_000
scrdef scr_seq_T28R0201_001
scrdef_end

scr_seq_T28R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	goto_if_set 16285, _007B
	npc_msg 0
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0099
	npc_msg 2
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	give_egg SPECIES_RIOLU, 10
	setflag 16285
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T28R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F6
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_007B:
	check_badge BADGE_EARTH, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00A4
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0099:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00A4:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00EB
	npc_msg 7
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_RILEY_RILEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00E5
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E5:
	white_out
	releaseall
	end

_00EB:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F6:
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0137
	npc_msg 11
	closemsg
	trainer_battle TRAINER_PKMN_TRAINER_MIRA_BUCK, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00E5
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0137:
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
