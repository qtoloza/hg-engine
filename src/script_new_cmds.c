#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/pokemon.h"
#include "../include/repel.h"
#include "../include/roamer.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/types.h"

#define SCRIPT_NEW_CMD_REPEL_USE 0
#define SCRIPT_NEW_CMD_GET_PARTY_SLOT_USABLE_MOVE 1

#define SCRIPT_NEW_CMD_MAX 256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx)
{
    u8 sw = ScriptReadByte(ctx);
    u16 UNUSED arg0 = ScriptReadHalfword(ctx);

    switch (sw) {
    case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
        u16 most_recent_repel = Repel_GetMostRecent();
        SetScriptVar(arg0, most_recent_repel);
        Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
        break;

    case SCRIPT_NEW_CMD_GET_PARTY_SLOT_USABLE_MOVE:; {
        u16 move = ScriptReadHalfword(ctx);
        struct Party *party = SaveData_GetPlayerPartyPtr(ctx->fsys->savedata);

        s32 tmhm = -1;
        for (s32 j = 0; j < 100; j++) {
            if (ItemToMachineMove(j + ITEM_TM001) == move) {
                tmhm = j;
                break;
            }
        }

        u16 result = 6; // PARTY_SIZE: no usable Pokemon found
        for (s32 i = 0; i < 6; i++) {
            struct PartyPokemon *mon = Party_GetMonByIndex(party, i);
            u16 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
            if (species == SPECIES_NONE) {
                break; // party slots are contiguous; no more Pokemon
            }
            if (GetMonData(mon, MON_DATA_IS_EGG, NULL)) {
                continue;
            }
            if (GetMonData(mon, MON_DATA_MOVE1, NULL) == move
                || GetMonData(mon, MON_DATA_MOVE2, NULL) == move
                || GetMonData(mon, MON_DATA_MOVE3, NULL) == move
                || GetMonData(mon, MON_DATA_MOVE4, NULL) == move) {
                result = i; // already knows the move
                break;
            }
            if (tmhm >= 0) {
                u16 form = GetMonData(mon, MON_DATA_FORM, NULL);
                if (GetTMHMCompatBySpeciesAndForm(species, form, (u8)tmhm)) {
                    result = i; // can learn this HM
                    break;
                }
            }
        }

        if (result == 6 && tmhm < 0) {
            result = 0;
        }

        SetScriptVar(arg0, result);
        break;
    }

    default:
        break;
    }

    return FALSE;
}

BOOL LONG_CALL ScrCmd_CreateRoamer(SCRIPTCONTEXT *ctx)
{
    u8 roamerNo = ScriptReadByte(ctx);
    Save_CreateRoamerByID(ctx->fsys->savedata, roamerNo);
    return FALSE;
}
