#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/constants/species.h"

const u16 UNUSED FormToSpeciesMapping[] =
{
    [SPECIES_MEGA_VENUSAUR - SPECIES_MEGA_START] = SPECIES_VENUSAUR,
    [SPECIES_MEGA_CHARIZARD_X - SPECIES_MEGA_START] = SPECIES_CHARIZARD,
    [SPECIES_MEGA_CHARIZARD_Y - SPECIES_MEGA_START] = SPECIES_CHARIZARD,
    [SPECIES_MEGA_BLASTOISE - SPECIES_MEGA_START] = SPECIES_BLASTOISE,
    [SPECIES_MEGA_BEEDRILL - SPECIES_MEGA_START] = SPECIES_BEEDRILL,
    [SPECIES_MEGA_PIDGEOT - SPECIES_MEGA_START] = SPECIES_PIDGEOT,
    [SPECIES_MEGA_ALAKAZAM - SPECIES_MEGA_START] = SPECIES_ALAKAZAM,
    [SPECIES_MEGA_SLOWBRO - SPECIES_MEGA_START] = SPECIES_SLOWBRO,
    [SPECIES_MEGA_GENGAR - SPECIES_MEGA_START] = SPECIES_GENGAR,
    [SPECIES_MEGA_KANGASKHAN - SPECIES_MEGA_START] = SPECIES_KANGASKHAN,
    [SPECIES_MEGA_PINSIR - SPECIES_MEGA_START] = SPECIES_PINSIR,
    [SPECIES_MEGA_GYARADOS - SPECIES_MEGA_START] = SPECIES_GYARADOS,
    [SPECIES_MEGA_AERODACTYL - SPECIES_MEGA_START] = SPECIES_AERODACTYL,
    [SPECIES_MEGA_MEWTWO_X - SPECIES_MEGA_START] = SPECIES_MEWTWO,
    [SPECIES_MEGA_MEWTWO_Y - SPECIES_MEGA_START] = SPECIES_MEWTWO,
    [SPECIES_MEGA_AMPHAROS - SPECIES_MEGA_START] = SPECIES_AMPHAROS,
    [SPECIES_MEGA_STEELIX - SPECIES_MEGA_START] = SPECIES_STEELIX,
    [SPECIES_MEGA_SCIZOR - SPECIES_MEGA_START] = SPECIES_SCIZOR,
    [SPECIES_MEGA_HERACROSS - SPECIES_MEGA_START] = SPECIES_HERACROSS,
    [SPECIES_MEGA_HOUNDOOM - SPECIES_MEGA_START] = SPECIES_HOUNDOOM,
    [SPECIES_MEGA_TYRANITAR - SPECIES_MEGA_START] = SPECIES_TYRANITAR,
    [SPECIES_MEGA_SCEPTILE - SPECIES_MEGA_START] = SPECIES_SCEPTILE,
    [SPECIES_MEGA_BLAZIKEN - SPECIES_MEGA_START] = SPECIES_BLAZIKEN,
    [SPECIES_MEGA_SWAMPERT - SPECIES_MEGA_START] = SPECIES_SWAMPERT,
    [SPECIES_MEGA_GARDEVOIR - SPECIES_MEGA_START] = SPECIES_GARDEVOIR,
    [SPECIES_MEGA_SABLEYE - SPECIES_MEGA_START] = SPECIES_SABLEYE,
    [SPECIES_MEGA_MAWILE - SPECIES_MEGA_START] = SPECIES_MAWILE,
    [SPECIES_MEGA_AGGRON - SPECIES_MEGA_START] = SPECIES_AGGRON,
    [SPECIES_MEGA_MEDICHAM - SPECIES_MEGA_START] = SPECIES_MEDICHAM,
    [SPECIES_MEGA_MANECTRIC - SPECIES_MEGA_START] = SPECIES_MANECTRIC,
    [SPECIES_MEGA_SHARPEDO - SPECIES_MEGA_START] = SPECIES_SHARPEDO,
    [SPECIES_MEGA_CAMERUPT - SPECIES_MEGA_START] = SPECIES_CAMERUPT,
    [SPECIES_MEGA_ALTARIA - SPECIES_MEGA_START] = SPECIES_ALTARIA,
    [SPECIES_MEGA_BANETTE - SPECIES_MEGA_START] = SPECIES_BANETTE,
    [SPECIES_MEGA_ABSOL - SPECIES_MEGA_START] = SPECIES_ABSOL,
    [SPECIES_MEGA_GLALIE - SPECIES_MEGA_START] = SPECIES_GLALIE,
    [SPECIES_MEGA_SALAMENCE - SPECIES_MEGA_START] = SPECIES_SALAMENCE,
    [SPECIES_MEGA_METAGROSS - SPECIES_MEGA_START] = SPECIES_METAGROSS,
    [SPECIES_MEGA_LATIAS - SPECIES_MEGA_START] = SPECIES_LATIAS,
    [SPECIES_MEGA_LATIOS - SPECIES_MEGA_START] = SPECIES_LATIOS,
    [SPECIES_MEGA_RAYQUAZA - SPECIES_MEGA_START] = SPECIES_RAYQUAZA,
    [SPECIES_MEGA_LOPUNNY - SPECIES_MEGA_START] = SPECIES_LOPUNNY,
    [SPECIES_MEGA_GARCHOMP - SPECIES_MEGA_START] = SPECIES_GARCHOMP,
    [SPECIES_MEGA_LUCARIO - SPECIES_MEGA_START] = SPECIES_LUCARIO,
    [SPECIES_MEGA_ABOMASNOW - SPECIES_MEGA_START] = SPECIES_ABOMASNOW,
    [SPECIES_MEGA_GALLADE - SPECIES_MEGA_START] = SPECIES_GALLADE,
    [SPECIES_MEGA_AUDINO - SPECIES_MEGA_START] = SPECIES_AUDINO,
    [SPECIES_MEGA_DIANCIE - SPECIES_MEGA_START] = SPECIES_DIANCIE,
    [SPECIES_KYOGRE_PRIMAL - SPECIES_MEGA_START] = SPECIES_KYOGRE,
    [SPECIES_GROUDON_PRIMAL - SPECIES_MEGA_START] = SPECIES_GROUDON,
    [SPECIES_RATTATA_ALOLAN - SPECIES_MEGA_START] = SPECIES_RATTATA,
    [SPECIES_RATICATE_ALOLAN - SPECIES_MEGA_START] = SPECIES_RATICATE,
    [SPECIES_RAICHU_ALOLAN - SPECIES_MEGA_START] = SPECIES_RAICHU,
    [SPECIES_SANDSHREW_ALOLAN - SPECIES_MEGA_START] = SPECIES_SANDSHREW,
    [SPECIES_SANDSLASH_ALOLAN - SPECIES_MEGA_START] = SPECIES_SANDSLASH,
    [SPECIES_VULPIX_ALOLAN - SPECIES_MEGA_START] = SPECIES_VULPIX,
    [SPECIES_NINETALES_ALOLAN - SPECIES_MEGA_START] = SPECIES_NINETALES,
    [SPECIES_DIGLETT_ALOLAN - SPECIES_MEGA_START] = SPECIES_DIGLETT,
    [SPECIES_DUGTRIO_ALOLAN - SPECIES_MEGA_START] = SPECIES_DUGTRIO,
    [SPECIES_MEOWTH_ALOLAN - SPECIES_MEGA_START] = SPECIES_MEOWTH,
    [SPECIES_PERSIAN_ALOLAN - SPECIES_MEGA_START] = SPECIES_PERSIAN,
    [SPECIES_GEODUDE_ALOLAN - SPECIES_MEGA_START] = SPECIES_GEODUDE,
    [SPECIES_GRAVELER_ALOLAN - SPECIES_MEGA_START] = SPECIES_GRAVELER,
    [SPECIES_GOLEM_ALOLAN - SPECIES_MEGA_START] = SPECIES_GOLEM,
    [SPECIES_GRIMER_ALOLAN - SPECIES_MEGA_START] = SPECIES_GRIMER,
    [SPECIES_MUK_ALOLAN - SPECIES_MEGA_START] = SPECIES_MUK,
    [SPECIES_EXEGGUTOR_ALOLAN - SPECIES_MEGA_START] = SPECIES_EXEGGUTOR,
    [SPECIES_MAROWAK_ALOLAN - SPECIES_MEGA_START] = SPECIES_MAROWAK,
    [SPECIES_RATICATE_ALOLAN_LARGE - SPECIES_MEGA_START] = SPECIES_RATICATE,
    [SPECIES_MAROWAK_ALOLAN_LARGE - SPECIES_MEGA_START] = SPECIES_MAROWAK,
    [SPECIES_GUMSHOOS_LARGE - SPECIES_MEGA_START] = SPECIES_GUMSHOOS,
    [SPECIES_VIKAVOLT_LARGE - SPECIES_MEGA_START] = SPECIES_VIKAVOLT,
    [SPECIES_RIBOMBEE_LARGE - SPECIES_MEGA_START] = SPECIES_RIBOMBEE,
    [SPECIES_ARAQUANID_LARGE - SPECIES_MEGA_START] = SPECIES_ARAQUANID,
    [SPECIES_LURANTIS_LARGE - SPECIES_MEGA_START] = SPECIES_LURANTIS,
    [SPECIES_SALAZZLE_LARGE - SPECIES_MEGA_START] = SPECIES_SALAZZLE,
    [SPECIES_TOGEDEMARU_LARGE - SPECIES_MEGA_START] = SPECIES_TOGEDEMARU,
    [SPECIES_MIMIKYU_LARGE - SPECIES_MEGA_START] = SPECIES_MIMIKYU,
    [SPECIES_MIMIKYU_BUSTED_LARGE - SPECIES_MEGA_START] = SPECIES_MIMIKYU,
    [SPECIES_KOMMO_O_LARGE - SPECIES_MEGA_START] = SPECIES_KOMMO_O,
    [SPECIES_MEOWTH_GALARIAN - SPECIES_MEGA_START] = SPECIES_MEOWTH,
    [SPECIES_PONYTA_GALARIAN - SPECIES_MEGA_START] = SPECIES_PONYTA,
    [SPECIES_RAPIDASH_GALARIAN - SPECIES_MEGA_START] = SPECIES_RAPIDASH,
    [SPECIES_SLOWPOKE_GALARIAN - SPECIES_MEGA_START] = SPECIES_SLOWPOKE,
    [SPECIES_SLOWBRO_GALARIAN - SPECIES_MEGA_START] = SPECIES_SLOWBRO,
    [SPECIES_FARFETCHD_GALARIAN - SPECIES_MEGA_START] = SPECIES_FARFETCHD,
    [SPECIES_WEEZING_GALARIAN - SPECIES_MEGA_START] = SPECIES_WEEZING,
    [SPECIES_MR_MIME_GALARIAN - SPECIES_MEGA_START] = SPECIES_MR_MIME,
    [SPECIES_ARTICUNO_GALARIAN - SPECIES_MEGA_START] = SPECIES_ARTICUNO,
    [SPECIES_ZAPDOS_GALARIAN - SPECIES_MEGA_START] = SPECIES_ZAPDOS,
    [SPECIES_MOLTRES_GALARIAN - SPECIES_MEGA_START] = SPECIES_MOLTRES,
    [SPECIES_SLOWKING_GALARIAN - SPECIES_MEGA_START] = SPECIES_SLOWKING,
    [SPECIES_CORSOLA_GALARIAN - SPECIES_MEGA_START] = SPECIES_CORSOLA,
    [SPECIES_ZIGZAGOON_GALARIAN - SPECIES_MEGA_START] = SPECIES_ZIGZAGOON,
    [SPECIES_LINOONE_GALARIAN - SPECIES_MEGA_START] = SPECIES_LINOONE,
    [SPECIES_DARUMAKA_GALARIAN - SPECIES_MEGA_START] = SPECIES_DARUMAKA,
    [SPECIES_DARMANITAN_GALARIAN - SPECIES_MEGA_START] = SPECIES_DARMANITAN,
    [SPECIES_YAMASK_GALARIAN - SPECIES_MEGA_START] = SPECIES_YAMASK,
    [SPECIES_STUNFISK_GALARIAN - SPECIES_MEGA_START] = SPECIES_STUNFISK,
    [SPECIES_PIKACHU_COSPLAY - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_ROCK_STAR - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_BELLE - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_POP_STAR - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_PH_D - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_LIBRE - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_ORIGINAL_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_HOENN_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_SINNOH_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_UNOVA_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_KALOS_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_ALOLA_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_PARTNER_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_PIKACHU_WORLD_CAP - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_CASTFORM_SUNNY - SPECIES_MEGA_START] = SPECIES_CASTFORM,
    [SPECIES_CASTFORM_RAINY - SPECIES_MEGA_START] = SPECIES_CASTFORM,
    [SPECIES_CASTFORM_SNOWY - SPECIES_MEGA_START] = SPECIES_CASTFORM,
    [SPECIES_CHERRIM_SUNSHINE - SPECIES_MEGA_START] = SPECIES_CHERRIM,
    [SPECIES_SHELLOS_EAST_SEA - SPECIES_MEGA_START] = SPECIES_SHELLOS,
    [SPECIES_GASTRODON_EAST_SEA - SPECIES_MEGA_START] = SPECIES_GASTRODON,
    [SPECIES_DIALGA_ORIGIN - SPECIES_MEGA_START] = SPECIES_DIALGA,
    [SPECIES_PALKIA_ORIGIN - SPECIES_MEGA_START] = SPECIES_PALKIA,
    [SPECIES_BASCULIN_BLUE_STRIPED - SPECIES_MEGA_START] = SPECIES_BASCULIN,
    [SPECIES_BASCULIN_WHITE_STRIPED - SPECIES_MEGA_START] = SPECIES_BASCULIN,
    [SPECIES_DARMANITAN_ZEN_MODE - SPECIES_MEGA_START] = SPECIES_DARMANITAN,
    [SPECIES_DARMANITAN_ZEN_MODE_GALARIAN - SPECIES_MEGA_START] = SPECIES_DARMANITAN,
    [SPECIES_DEERLING_SUMMER - SPECIES_MEGA_START] = SPECIES_DEERLING,
    [SPECIES_DEERLING_AUTUMN - SPECIES_MEGA_START] = SPECIES_DEERLING,
    [SPECIES_DEERLING_WINTER - SPECIES_MEGA_START] = SPECIES_DEERLING,
    [SPECIES_SAWSBUCK_SUMMER - SPECIES_MEGA_START] = SPECIES_SAWSBUCK,
    [SPECIES_SAWSBUCK_AUTUMN - SPECIES_MEGA_START] = SPECIES_SAWSBUCK,
    [SPECIES_SAWSBUCK_WINTER - SPECIES_MEGA_START] = SPECIES_SAWSBUCK,
    [SPECIES_TORNADUS_THERIAN - SPECIES_MEGA_START] = SPECIES_TORNADUS,
    [SPECIES_THUNDURUS_THERIAN - SPECIES_MEGA_START] = SPECIES_THUNDURUS,
    [SPECIES_LANDORUS_THERIAN - SPECIES_MEGA_START] = SPECIES_LANDORUS,
    [SPECIES_KYUREM_WHITE - SPECIES_MEGA_START] = SPECIES_KYUREM,
    [SPECIES_KYUREM_BLACK - SPECIES_MEGA_START] = SPECIES_KYUREM,
    [SPECIES_KELDEO_RESOLUTE - SPECIES_MEGA_START] = SPECIES_KELDEO,
    [SPECIES_MELOETTA_PIROUETTE - SPECIES_MEGA_START] = SPECIES_MELOETTA,
    [SPECIES_GENESECT_DOUSE_DRIVE - SPECIES_MEGA_START] = SPECIES_GENESECT,
    [SPECIES_GENESECT_SHOCK_DRIVE - SPECIES_MEGA_START] = SPECIES_GENESECT,
    [SPECIES_GENESECT_BURN_DRIVE - SPECIES_MEGA_START] = SPECIES_GENESECT,
    [SPECIES_GENESECT_CHILL_DRIVE - SPECIES_MEGA_START] = SPECIES_GENESECT,
    [SPECIES_GRENINJA_BATTLE_BOND - SPECIES_MEGA_START] = SPECIES_GRENINJA,
    [SPECIES_GRENINJA_ASH - SPECIES_MEGA_START] = SPECIES_GRENINJA,
    [SPECIES_VIVILLON_POLAR - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_TUNDRA - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_CONTINENTAL - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_GARDEN - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_ELEGANT - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_MEADOW - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_MODERN - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_MARINE - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_ARCHIPELAGO - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_HIGH_PLAINS - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_SANDSTORM - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_RIVER - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_MONSOON - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_SAVANNA - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_SUN - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_OCEAN - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_JUNGLE - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_FANCY - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_VIVILLON_POKE_BALL - SPECIES_MEGA_START] = SPECIES_VIVILLON,
    [SPECIES_FLABEBE_YELLOW_FLOWER - SPECIES_MEGA_START] = SPECIES_FLABEBE,
    [SPECIES_FLABEBE_ORANGE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLABEBE,
    [SPECIES_FLABEBE_BLUE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLABEBE,
    [SPECIES_FLABEBE_WHITE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLABEBE,
    [SPECIES_FLOETTE_YELLOW_FLOWER - SPECIES_MEGA_START] = SPECIES_FLOETTE,
    [SPECIES_FLOETTE_ORANGE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLOETTE,
    [SPECIES_FLOETTE_BLUE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLOETTE,
    [SPECIES_FLOETTE_WHITE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLOETTE,
    [SPECIES_FLOETTE_ETERNAL_FLOWER - SPECIES_MEGA_START] = SPECIES_FLOETTE,
    [SPECIES_FLORGES_YELLOW_FLOWER - SPECIES_MEGA_START] = SPECIES_FLORGES,
    [SPECIES_FLORGES_ORANGE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLORGES,
    [SPECIES_FLORGES_BLUE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLORGES,
    [SPECIES_FLORGES_WHITE_FLOWER - SPECIES_MEGA_START] = SPECIES_FLORGES,
    [SPECIES_FURFROU_HEART - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_STAR - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_DIAMOND - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_DEBUTANTE - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_MATRON - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_DANDY - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_LA_REINE - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_KABUKI - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_FURFROU_PHARAOH - SPECIES_MEGA_START] = SPECIES_FURFROU,
    [SPECIES_AEGISLASH_BLADE - SPECIES_MEGA_START] = SPECIES_AEGISLASH,
    [SPECIES_PUMPKABOO_SMALL - SPECIES_MEGA_START] = SPECIES_PUMPKABOO,
    [SPECIES_PUMPKABOO_LARGE - SPECIES_MEGA_START] = SPECIES_PUMPKABOO,
    [SPECIES_PUMPKABOO_SUPER - SPECIES_MEGA_START] = SPECIES_PUMPKABOO,
    [SPECIES_GOURGEIST_SMALL - SPECIES_MEGA_START] = SPECIES_GOURGEIST,
    [SPECIES_GOURGEIST_LARGE - SPECIES_MEGA_START] = SPECIES_GOURGEIST,
    [SPECIES_GOURGEIST_SUPER - SPECIES_MEGA_START] = SPECIES_GOURGEIST,
    [SPECIES_XERNEAS_ACTIVE - SPECIES_MEGA_START] = SPECIES_XERNEAS,
    [SPECIES_ZYGARDE_10 - SPECIES_MEGA_START] = SPECIES_ZYGARDE,
    [SPECIES_ZYGARDE_10_POWER_CONSTRUCT - SPECIES_MEGA_START] = SPECIES_ZYGARDE,
    [SPECIES_ZYGARDE_50_POWER_CONSTRUCT - SPECIES_MEGA_START] = SPECIES_ZYGARDE,
    [SPECIES_ZYGARDE_10_COMPLETE - SPECIES_MEGA_START] = SPECIES_ZYGARDE,
    [SPECIES_ZYGARDE_50_COMPLETE - SPECIES_MEGA_START] = SPECIES_ZYGARDE,
    [SPECIES_HOOPA_UNBOUND - SPECIES_MEGA_START] = SPECIES_HOOPA,
    [SPECIES_ORICORIO_POM_POM - SPECIES_MEGA_START] = SPECIES_ORICORIO,
    [SPECIES_ORICORIO_PAU - SPECIES_MEGA_START] = SPECIES_ORICORIO,
    [SPECIES_ORICORIO_SENSU - SPECIES_MEGA_START] = SPECIES_ORICORIO,
    [SPECIES_ROCKRUFF_OWN_TEMPO - SPECIES_MEGA_START] = SPECIES_ROCKRUFF,
    [SPECIES_LYCANROC_MIDNIGHT - SPECIES_MEGA_START] = SPECIES_LYCANROC,
    [SPECIES_LYCANROC_DUSK - SPECIES_MEGA_START] = SPECIES_LYCANROC,
    [SPECIES_WISHIWASHI_SCHOOL - SPECIES_MEGA_START] = SPECIES_WISHIWASHI,
    [SPECIES_MINIOR_METEOR_ORANGE - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_METEOR_YELLOW - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_METEOR_GREEN - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_METEOR_BLUE - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_METEOR_INDIGO - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_METEOR_VIOLET - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_RED - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_ORANGE - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_YELLOW - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_GREEN - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_BLUE - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_INDIGO - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MINIOR_CORE_VIOLET - SPECIES_MEGA_START] = SPECIES_MINIOR,
    [SPECIES_MIMIKYU_BUSTED - SPECIES_MEGA_START] = SPECIES_MIMIKYU,
    [SPECIES_NECROZMA_DUSK_MANE - SPECIES_MEGA_START] = SPECIES_NECROZMA,
    [SPECIES_NECROZMA_DAWN_WINGS - SPECIES_MEGA_START] = SPECIES_NECROZMA,
    [SPECIES_NECROZMA_ULTRA_DUSK_MANE - SPECIES_MEGA_START] = SPECIES_NECROZMA,
    [SPECIES_NECROZMA_ULTRA_DAWN_WINGS - SPECIES_MEGA_START] = SPECIES_NECROZMA,
    [SPECIES_MAGEARNA_ORIGINAL - SPECIES_MEGA_START] = SPECIES_MAGEARNA,
    [SPECIES_PIKACHU_PARTNER - SPECIES_MEGA_START] = SPECIES_PIKACHU,
    [SPECIES_EEVEE_PARTNER - SPECIES_MEGA_START] = SPECIES_EEVEE,
    [SPECIES_CRAMORANT_GULPING - SPECIES_MEGA_START] = SPECIES_CRAMORANT,
    [SPECIES_CRAMORANT_GORGING - SPECIES_MEGA_START] = SPECIES_CRAMORANT,
    [SPECIES_TOXTRICITY_LOW_KEY - SPECIES_MEGA_START] = SPECIES_TOXTRICITY,
    [SPECIES_SINISTEA_ANTIQUE - SPECIES_MEGA_START] = SPECIES_SINISTEA,
    [SPECIES_POLTEAGEIST_ANTIQUE - SPECIES_MEGA_START] = SPECIES_POLTEAGEIST,
    [SPECIES_ALCREMIE_BERRY_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_ALCREMIE_LOVE_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_ALCREMIE_STAR_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_ALCREMIE_CLOVER_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_ALCREMIE_FLOWER_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_ALCREMIE_RIBBON_SWEET - SPECIES_MEGA_START] = SPECIES_ALCREMIE,
    [SPECIES_EISCUE_NOICE_FACE - SPECIES_MEGA_START] = SPECIES_EISCUE,
    [SPECIES_MORPEKO_HANGRY - SPECIES_MEGA_START] = SPECIES_MORPEKO,
    [SPECIES_ZACIAN_CROWNED - SPECIES_MEGA_START] = SPECIES_ZACIAN,
    [SPECIES_ZAMAZENTA_CROWNED - SPECIES_MEGA_START] = SPECIES_ZAMAZENTA,
    [SPECIES_ETERNATUS_ETERNAMAX - SPECIES_MEGA_START] = SPECIES_ETERNATUS,
    [SPECIES_URSHIFU_RAPID_STRIKE - SPECIES_MEGA_START] = SPECIES_URSHIFU,
    [SPECIES_ZARUDE_DADA - SPECIES_MEGA_START] = SPECIES_ZARUDE,
    [SPECIES_CALYREX_ICE_RIDER - SPECIES_MEGA_START] = SPECIES_CALYREX,
    [SPECIES_CALYREX_SHADOW_RIDER - SPECIES_MEGA_START] = SPECIES_CALYREX,
    [SPECIES_ENAMORUS_THERIAN - SPECIES_MEGA_START] = SPECIES_ENAMORUS,
    [SPECIES_GROWLITHE_HISUIAN - SPECIES_MEGA_START] = SPECIES_GROWLITHE,
    [SPECIES_ARCANINE_HISUIAN - SPECIES_MEGA_START] = SPECIES_ARCANINE,
    [SPECIES_VOLTORB_HISUIAN - SPECIES_MEGA_START] = SPECIES_VOLTORB,
    [SPECIES_ELECTRODE_HISUIAN - SPECIES_MEGA_START] = SPECIES_ELECTRODE,
    [SPECIES_TYPHLOSION_HISUIAN - SPECIES_MEGA_START] = SPECIES_TYPHLOSION,
    [SPECIES_QWILFISH_HISUIAN - SPECIES_MEGA_START] = SPECIES_QWILFISH,
    [SPECIES_SNEASEL_HISUIAN - SPECIES_MEGA_START] = SPECIES_SNEASEL,
    [SPECIES_SAMUROTT_HISUIAN - SPECIES_MEGA_START] = SPECIES_SAMUROTT,
    [SPECIES_LILLIGANT_HISUIAN - SPECIES_MEGA_START] = SPECIES_LILLIGANT,
    [SPECIES_ZORUA_HISUIAN - SPECIES_MEGA_START] = SPECIES_ZORUA,
    [SPECIES_ZOROARK_HISUIAN - SPECIES_MEGA_START] = SPECIES_ZOROARK,
    [SPECIES_BRAVIARY_HISUIAN - SPECIES_MEGA_START] = SPECIES_BRAVIARY,
    [SPECIES_SLIGGOO_HISUIAN - SPECIES_MEGA_START] = SPECIES_SLIGGOO,
    [SPECIES_GOODRA_HISUIAN - SPECIES_MEGA_START] = SPECIES_GOODRA,
    [SPECIES_AVALUGG_HISUIAN - SPECIES_MEGA_START] = SPECIES_AVALUGG,
    [SPECIES_DECIDUEYE_HISUIAN - SPECIES_MEGA_START] = SPECIES_DECIDUEYE,
    [SPECIES_KLEAVOR_LORD - SPECIES_MEGA_START] = SPECIES_KLEAVOR,
    [SPECIES_LILLIGANT_LADY - SPECIES_MEGA_START] = SPECIES_LILLIGANT,
    [SPECIES_ARCANINE_LORD - SPECIES_MEGA_START] = SPECIES_ARCANINE,
    [SPECIES_ELECTRODE_LORD - SPECIES_MEGA_START] = SPECIES_ELECTRODE,
    [SPECIES_AVALUGG_LORD - SPECIES_MEGA_START] = SPECIES_AVALUGG,
    [SPECIES_UNFEZANT_FEMALE - SPECIES_MEGA_START] = SPECIES_UNFEZANT,
    [SPECIES_FRILLISH_FEMALE - SPECIES_MEGA_START] = SPECIES_FRILLISH,
    [SPECIES_JELLICENT_FEMALE - SPECIES_MEGA_START] = SPECIES_JELLICENT,
    [SPECIES_PYROAR_FEMALE - SPECIES_MEGA_START] = SPECIES_PYROAR,
    [SPECIES_MEOWSTIC_FEMALE - SPECIES_MEGA_START] = SPECIES_MEOWSTIC,
    [SPECIES_INDEEDEE_FEMALE - SPECIES_MEGA_START] = SPECIES_INDEEDEE,
    [SPECIES_BASCULEGION_FEMALE - SPECIES_MEGA_START] = SPECIES_BASCULEGION,
    [SPECIES_MAUSHOLD_FAMILY_OF_THREE - SPECIES_MEGA_START] = SPECIES_MAUSHOLD,
    [SPECIES_SQUAWKABILLY_BLUE_PLUMAGE - SPECIES_MEGA_START] = SPECIES_SQUAWKABILLY,
    [SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE - SPECIES_MEGA_START] = SPECIES_SQUAWKABILLY,
    [SPECIES_SQUAWKABILLY_WHITE_PLUMAGE - SPECIES_MEGA_START] = SPECIES_SQUAWKABILLY,
    [SPECIES_PALAFIN_HERO - SPECIES_MEGA_START] = SPECIES_PALAFIN,
    [SPECIES_TATSUGIRI_DROOPY - SPECIES_MEGA_START] = SPECIES_TATSUGIRI,
    [SPECIES_TATSUGIRI_STRETCHY - SPECIES_MEGA_START] = SPECIES_TATSUGIRI,
    [SPECIES_DUDUNSPARCE_THREE_SEGMENT - SPECIES_MEGA_START] = SPECIES_DUDUNSPARCE,
    [SPECIES_GIMMIGHOUL_ROAMING - SPECIES_MEGA_START] = SPECIES_GIMMIGHOUL,
    [SPECIES_WOOPER_PALDEAN - SPECIES_MEGA_START] = SPECIES_WOOPER,
    [SPECIES_TAUROS_COMBAT - SPECIES_MEGA_START] = SPECIES_TAUROS,
    [SPECIES_TAUROS_BLAZE - SPECIES_MEGA_START] = SPECIES_TAUROS,
    [SPECIES_TAUROS_AQUA - SPECIES_MEGA_START] = SPECIES_TAUROS,
    [SPECIES_OINKOLOGNE_FEMALE - SPECIES_MEGA_START] = SPECIES_OINKOLOGNE,
    [SPECIES_REVAVROOM_SEGIN - SPECIES_MEGA_START] = SPECIES_REVAVROOM,
    [SPECIES_REVAVROOM_SCHEDAR - SPECIES_MEGA_START] = SPECIES_REVAVROOM,
    [SPECIES_REVAVROOM_NAVI - SPECIES_MEGA_START] = SPECIES_REVAVROOM,
    [SPECIES_REVAVROOM_RUCHBAH - SPECIES_MEGA_START] = SPECIES_REVAVROOM,
    [SPECIES_REVAVROOM_CAPH - SPECIES_MEGA_START] = SPECIES_REVAVROOM,
    [SPECIES_KORAIDON_LIMITED_BUILD - SPECIES_MEGA_START] = SPECIES_KORAIDON,
    [SPECIES_KORAIDON_SPRINTING_BUILD - SPECIES_MEGA_START] = SPECIES_KORAIDON,
    [SPECIES_KORAIDON_SWIMMING_BUILD - SPECIES_MEGA_START] = SPECIES_KORAIDON,
    [SPECIES_KORAIDON_GLIDING_BUILD - SPECIES_MEGA_START] = SPECIES_KORAIDON,
    [SPECIES_MIRAIDON_LOW_POWER_MODE - SPECIES_MEGA_START] = SPECIES_MIRAIDON,
    [SPECIES_MIRAIDON_DRIVE_MODE - SPECIES_MEGA_START] = SPECIES_MIRAIDON,
    [SPECIES_MIRAIDON_AQUATIC_MODE - SPECIES_MEGA_START] = SPECIES_MIRAIDON,
    [SPECIES_MIRAIDON_GLIDE_MODE - SPECIES_MEGA_START] = SPECIES_MIRAIDON,
    [SPECIES_POLTCHAGEIST_MASTERPIECE - SPECIES_MEGA_START] = SPECIES_POLTCHAGEIST,
    [SPECIES_SINISTCHA_MASTERPIECE - SPECIES_MEGA_START] = SPECIES_SINISTCHA,
    [SPECIES_OGERPON_WELLSPRING_MASK - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_HEARTHFLAME_MASK - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_CORNERSTONE_MASK - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_TEAL_MASK_TERASTAL - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_WELLSPRING_MASK_TERASTAL - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_HEARTHFLAME_MASK_TERASTAL - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_OGERPON_CORNERSTONE_MASK_TERASTAL - SPECIES_MEGA_START] = SPECIES_OGERPON,
    [SPECIES_URSALUNA_BLOODMOON - SPECIES_MEGA_START] = SPECIES_URSALUNA,
    [SPECIES_TERAPAGOS_TERASTAL - SPECIES_MEGA_START] = SPECIES_TERAPAGOS,
    [SPECIES_TERAPAGOS_STELLAR - SPECIES_MEGA_START] = SPECIES_TERAPAGOS,
};
