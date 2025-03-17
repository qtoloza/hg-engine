#ifndef CONSTANTS_FILE_H
#define CONSTANTS_FILE_H

//NARC files
#define ARC_BATTLE_MOVE_SEQ 0
#define ARC_BATTLE_SUB_SEQ 1
#define ARC_PERSONAL 2
#define ARC_MON_PIC 4
#define ARC_BATTLE_GFX 8
#define ARC_MOVE_DATA 11
#define ARC_ITEM_DATA 17
#define ARC_ITEM_GFX_DATA 18
#define ARC_POKEICON 20
#define ARC_CODE_ADDONS 28
#define ARC_BATTLE_PARTICLES 29
#define ARC_BATTLE_EFF_SEQ 30
#define ARC_EVOLUTIONS 34
#define ARC_TRAINER_DATA 55
#define ARC_TRAINER_PARTY_DATA 56
#define ARC_OTHER_MON_PIC 114
// 194 and 195 interrupt the otherwise-sensical mapping of file 30 -> a030, every file after is offset by 2
#define ARC_PBR_POKEGRA 194
#define ARC_PBR_OTHERPOKE 195
#define ARC_DEX_LISTS 216
#define ARC_EGG_MOVES 231


//a008 file indexes
#define BATTLE_GFX_SUN_NCGR 346
#define BATTLE_GFX_SUN_NCLR 347
#define BATTLE_GFX_NCER 348
#define BATTLE_GFX_RAIN_NCGR 349
#define BATTLE_GFX_RAIN_NCLR 350
#define BATTLE_GFX_SANDSTORM_NCGR 351
#define BATTLE_GFX_SANDSTORM_NCLR 352
#define BATTLE_GFX_HAIL_NCGR 353
#define BATTLE_GFX_HAIL_NCLR 354
#define BATTLE_GFX_FOG_NCGR 355
#define BATTLE_GFX_FOG_NCLR 356

//a028 file indexes
#define CODE_ADDON_SYNTHETIC_NARC_EXTENSION 0
#define CODE_ADDON_HIDDEN_ABILITY_LIST 7
#define CODE_ADDON_BASE_EXPERIENCE_LIST 8
#define CODE_ADDON_NUM_OF_OW_FORMS_PER_MON 9
#define CODE_ADDON_BASE_OW_PER_MON 10
#define CODE_ADDON_FORM_DATA 11
#define CODE_ADDON_FORM_SPECIES_MAPPING 12
#define CODE_ADDON_FORM_REVERSION_MAPPING 13

//a018 file indices for mega stuff
#define MEGA_ICON_FIGHT_GFX (797)
#define PRIMAL_REVERSION_OMEGA_GFX (799)
#define PRIMAL_REVERSION_ALPHA_GFX (801)
#define MEGA_ICON_SELECTED_GFX (803)
#define MEGA_ICON_BLANK_GFX (805)

//heap IDs
#define HEAPID_DEFAULT 0
#define HEAPID_MAIN_HEAP 3
#define HEAPID_WORLD 11
#define HEAP_ID_PARTY_MENU 12

//overlay id's
#define OVERLAY_WIFI 0
#define OVERLAY_FIELD 1
#define OVERLAY_BATTLE 12
#define OVERLAY_POKEDEX 18
#define OVERLAY_HALL_OF_FAME 63
#define OVERLAY_HALL_OF_FAME_PC 64
#define OVERLAY_POKEATHLON 96
#define OVERLAY_POKEWALKER 112
#define OVERLAY_ARM9_EXTENSION 129
#define OVERLAY_BATTLE_EXTENSION 130
#define OVERLAY_FIELD_EXTENSION 131
#define OVERLAY_POKEDEX_EXTENSION 132
#define OVERLAY_GETMONEVOLUTION_SPECIFIC 133
#define OVERLAY_GETMONEVOLUTION_BATTLE 134
#define OVERLAY_MOVEHITDEFENDERABILITYCHECK_SPECIFIC 135
#define OVERLAY_SWITCHINABILITYCHECK_SPECIFIC 136
#define OVERLAY_BTL_SCR_CMD_33_STATBUFFCHANGE 137
#define OVERLAY_CALCBASEDAMAGE 138
#define OVERLAY_BATTLEFORMCHANGECHECK 139
#define OVERLAY_CHECKDEFENDERITEMEFFECTONHIT 140
#define OVERLAY_SERVERFIELDCONDITIONCHECK 141
#define OVERLAY_BATTLECONTROLLER_BEFOREMOVE 142
#define OVERLAY_BATTLESYSTEM_BUFFERMESSAGE 143

#define MAX_ACTIVE_OVERLAYS 8

#endif
