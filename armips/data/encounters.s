.nds
.thumb

.include "armips/include/macros.s"

.include "asm/include/species.inc"

// Each encounter data has been labeled with the area it gets used.
// Some are labeled ???, these are most likely not used.

NEW_ROCK_SMASH_RATE equ 150
FISHING_RATE equ 200

KLL equ 2 // Kanto Lower Level
KHL equ 2 // Kanto Higher Level
KPL equ 2 // Kanto Post Level (Cerulean Cave / Mt Silver)

/******************************************************** JOHTO HALF ********************************************************/

/************** New Bark Town **************/
encounterdata   0

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_CHINCHOU, 2, 2
encounter SPECIES_SHELLDER, 2, 2
encounter SPECIES_FINNEON, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 29 **************/
encounterdata   1

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_SENTRET
pokemon SPECIES_SENTRET
pokemon SPECIES_SUNKERN
pokemon SPECIES_SUNKERN
pokemon SPECIES_SNUBBULL
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_LILLIPUP

// day encounter slots
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_SENTRET
pokemon SPECIES_SENTRET
pokemon SPECIES_SUNKERN
pokemon SPECIES_SUNKERN
pokemon SPECIES_SNUBBULL
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_LILLIPUP

// night encounter slots
pokemon SPECIES_MEOWTH
pokemon SPECIES_MEOWTH
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_SNUBBULL
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_LILLIPUP

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 46 **************/
encounterdata  68

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_IGGLYBUFF
pokemon SPECIES_IGGLYBUFF
pokemon SPECIES_PATRAT
pokemon SPECIES_BUNNELBY

// day encounter slots
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_IGGLYBUFF
pokemon SPECIES_IGGLYBUFF
pokemon SPECIES_PATRAT
pokemon SPECIES_BUNNELBY

// night encounter slots
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_CLEFFA
pokemon SPECIES_CLEFFA
pokemon SPECIES_CLEFFA
pokemon SPECIES_CLEFFA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Cherrygrove City **************/
encounterdata   2

walkrate 0
surfrate 15
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_REMORAID, 2, 2
encounter SPECIES_CARVANHA, 2, 2
encounter SPECIES_BASCULIN, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 30 **************/
encounterdata   3

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_LEDYBA
pokemon SPECIES_LEDYBA
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_WEEDLE
pokemon SPECIES_WEEDLE
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_LOTAD
pokemon SPECIES_LOTAD
pokemon SPECIES_KRICKETOT
pokemon SPECIES_KRICKETOT

// day encounter slots
pokemon SPECIES_LEDYBA
pokemon SPECIES_LEDYBA
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_WEEDLE
pokemon SPECIES_WEEDLE
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_LOTAD
pokemon SPECIES_LOTAD
pokemon SPECIES_KRICKETOT
pokemon SPECIES_KRICKETOT

// night encounter slots
pokemon SPECIES_SPINARAK
pokemon SPECIES_SPINARAK
pokemon SPECIES_POLIWAG
pokemon SPECIES_POLIWAG
pokemon SPECIES_SURSKIT
pokemon SPECIES_SURSKIT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_LOTAD
pokemon SPECIES_PURRLOIN
pokemon SPECIES_KRICKETOT
pokemon SPECIES_PURRLOIN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_SURSKIT, 2, 2
encounter SPECIES_SURSKIT, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_MASQUERAIN, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_TYMPOLE, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 31 **************/
encounterdata   4

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_AZURILL
pokemon SPECIES_AZURILL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_BUDEW
pokemon SPECIES_BIDOOF
pokemon SPECIES_ABRA
pokemon SPECIES_FLETCHLING
pokemon SPECIES_SHINX
pokemon SPECIES_PIDOVE

// day encounter slots
pokemon SPECIES_AZURILL
pokemon SPECIES_AZURILL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_BUDEW
pokemon SPECIES_BIDOOF
pokemon SPECIES_ABRA
pokemon SPECIES_FLETCHLING
pokemon SPECIES_SHINX
pokemon SPECIES_PIDOVE

// night encounter slots
pokemon SPECIES_AZURILL
pokemon SPECIES_AZURILL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_BUDEW
pokemon SPECIES_BIDOOF
pokemon SPECIES_ABRA
pokemon SPECIES_FLETCHLING
pokemon SPECIES_SHINX
pokemon SPECIES_PIDOVE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_AZUMARILL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_CORPHISH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Dark Cave - Violet **************/
encounterdata  69

walkrate 10
surfrate 10
rocksmashrate 50
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_WYNAUT
pokemon SPECIES_ARON
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_NOIBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_DUNSPARCE

// day encounter slots
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_WYNAUT
pokemon SPECIES_ARON
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_NOIBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_DUNSPARCE

// night encounter slots
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_WYNAUT
pokemon SPECIES_ARON
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_NOIBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_DUNSPARCE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2

// rock smash encounters
encounter SPECIES_DUNSPARCE, 2, 2
encounter SPECIES_GEODUDE, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_BARBOACH, 2, 2
encounter SPECIES_BARBOACH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_DUNSPARCE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Violet City **************/
encounterdata   5

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_AZUMARILL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_FEEBAS, 2, 2
encounter SPECIES_FEEBAS, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_WHISCASH

.close

/************** Sprout Tower **************/
encounterdata   6

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SPINARAK
pokemon SPECIES_SPINARAK
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_CHINGLING
pokemon SPECIES_MEDITITE
pokemon SPECIES_SHUPPET
pokemon SPECIES_LITWICK
pokemon SPECIES_DUSKULL
pokemon SPECIES_ELGYEM

// day encounter slots
pokemon SPECIES_SPINARAK
pokemon SPECIES_SPINARAK
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_CHINGLING
pokemon SPECIES_MEDITITE
pokemon SPECIES_SHUPPET
pokemon SPECIES_LITWICK
pokemon SPECIES_DUSKULL
pokemon SPECIES_ELGYEM

// night encounter slots
pokemon SPECIES_SPINARAK
pokemon SPECIES_SPINARAK
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_CHINGLING
pokemon SPECIES_MEDITITE
pokemon SPECIES_SHUPPET
pokemon SPECIES_LITWICK
pokemon SPECIES_DUSKULL
pokemon SPECIES_ELGYEM

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 36 - East **************/
encounterdata  29

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_VULPIX
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// day encounter slots
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_VULPIX
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// night encounter slots
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_VULPIX
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORAN_M
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 32 - North **************/
encounterdata   8

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_STARLY
pokemon SPECIES_STARLY
pokemon SPECIES_VOLTORB
pokemon SPECIES_LITLEO
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_PANCHAM

// day encounter slots
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_STARLY
pokemon SPECIES_STARLY
pokemon SPECIES_VOLTORB
pokemon SPECIES_LITLEO
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_PANCHAM

// night encounter slots
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_WOOPER
pokemon SPECIES_WOOPER
pokemon SPECIES_VOLTORB
pokemon SPECIES_LITLEO
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_PANCHAM

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_BELLSPROUT
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_QWILFISH

.close

/************** Ruins of Alph (Outside) **************/
encounterdata   9

walkrate 25 // Changed from 10
surfrate 10
rocksmashrate 20
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RALTS
pokemon SPECIES_RALTS
pokemon SPECIES_NATU
pokemon SPECIES_NATU
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_HONEDGE
pokemon SPECIES_MUNNA
pokemon SPECIES_AEGISLASH
pokemon SPECIES_GOLETT

// day encounter slots
pokemon SPECIES_RALTS
pokemon SPECIES_RALTS
pokemon SPECIES_NATU
pokemon SPECIES_NATU
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_HONEDGE
pokemon SPECIES_MUNNA
pokemon SPECIES_AEGISLASH
pokemon SPECIES_GOLETT

// night encounter slots
pokemon SPECIES_RALTS
pokemon SPECIES_RALTS
pokemon SPECIES_WOOPER
pokemon SPECIES_WOOPER
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_HONEDGE
pokemon SPECIES_MUNNA
pokemon SPECIES_AEGISLASH
pokemon SPECIES_GOLETT

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_NOSEPASS, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_CORPHISH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NATU
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Ruins of Alph (Inside) **************/
encounterdata  10

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 45 - South **************/
encounterdata   7

walkrate 25
surfrate 0
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_NUMEL
pokemon SPECIES_SPOINK
pokemon SPECIES_SWABLU
pokemon SPECIES_RUFFLET
pokemon SPECIES_MIENFOO
pokemon SPECIES_VULLABY

// day encounter slots
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_NUMEL
pokemon SPECIES_SPOINK
pokemon SPECIES_SWABLU
pokemon SPECIES_RUFFLET
pokemon SPECIES_MIENFOO
pokemon SPECIES_VULLABY

// night encounter slots
pokemon SPECIES_PHANPY
pokemon SPECIES_PHANPY
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_NUMEL
pokemon SPECIES_SPOINK
pokemon SPECIES_SWABLU
pokemon SPECIES_RUFFLET
pokemon SPECIES_MIENFOO
pokemon SPECIES_VULLABY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_SLUGMA, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_DRATINI, 2, 2
encounter SPECIES_DRATINI, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 32 - South **************/
encounterdata  15

walkrate 15
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BUIZEL
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_GLAMEOW
pokemon SPECIES_GLAMEOW
pokemon SPECIES_WINGULL
pokemon SPECIES_WINGULL
pokemon SPECIES_SCRAGGY
pokemon SPECIES_PACHIRISU

// day encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BUIZEL
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_GLAMEOW
pokemon SPECIES_GLAMEOW
pokemon SPECIES_WINGULL
pokemon SPECIES_WINGULL
pokemon SPECIES_SCRAGGY
pokemon SPECIES_PACHIRISU

// night encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BUIZEL
pokemon SPECIES_DRIFLOON
pokemon SPECIES_DRIFLOON
pokemon SPECIES_MAREEP
pokemon SPECIES_MAREEP
pokemon SPECIES_GLAMEOW
pokemon SPECIES_GLAMEOW
pokemon SPECIES_WINGULL
pokemon SPECIES_WINGULL
pokemon SPECIES_SCRAGGY
pokemon SPECIES_PACHIRISU

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_CHINCHOU, 2, 2
encounter SPECIES_REMORAID, 2, 2
encounter SPECIES_QWILFISH, 2, 2
encounter SPECIES_INKAY, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Union Cave - Upper Floors **************/
encounterdata  14

walkrate 10
surfrate 15
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_WHISMUR
pokemon SPECIES_MAKUHITA
pokemon SPECIES_RHYHORN
pokemon SPECIES_BAGON
pokemon SPECIES_GIBLE
pokemon SPECIES_ONIX

// day encounter slots
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_WHISMUR
pokemon SPECIES_MAKUHITA
pokemon SPECIES_RHYHORN
pokemon SPECIES_BAGON
pokemon SPECIES_GIBLE
pokemon SPECIES_DRILBUR

// night encounter slots
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_WHISMUR
pokemon SPECIES_MAKUHITA
pokemon SPECIES_RHYHORN
pokemon SPECIES_BAGON
pokemon SPECIES_GIBLE
pokemon SPECIES_DRILBUR

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_DIGLETT, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_BARBOACH, 2, 2
encounter SPECIES_BARBOACH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 33 **************/
encounterdata  17

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_STUNKY
pokemon SPECIES_STUNKY
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_CROAGUNK
pokemon SPECIES_GULPIN
pokemon SPECIES_SKORUPI
pokemon SPECIES_TRUBBISH
pokemon SPECIES_PAWNIARD
pokemon SPECIES_LICKITUNG

// day encounter slots
pokemon SPECIES_STUNKY
pokemon SPECIES_STUNKY
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_CROAGUNK
pokemon SPECIES_GULPIN
pokemon SPECIES_SKORUPI
pokemon SPECIES_TRUBBISH
pokemon SPECIES_PAWNIARD
pokemon SPECIES_LICKITUNG

// night encounter slots
pokemon SPECIES_STUNKY
pokemon SPECIES_STUNKY
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_CROAGUNK
pokemon SPECIES_GULPIN
pokemon SPECIES_SKORUPI
pokemon SPECIES_TRUBBISH
pokemon SPECIES_PAWNIARD
pokemon SPECIES_LICKITUNG

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_HOPPIP
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Ilex Forest **************/
encounterdata  20

walkrate 5
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_PARAS
pokemon SPECIES_SLAKOTH
pokemon SPECIES_CATERPIE
pokemon SPECIES_AIPOM
pokemon SPECIES_WEEDLE
pokemon SPECIES_AIPOM
pokemon SPECIES_PICHU
pokemon SPECIES_NINCADA
pokemon SPECIES_METAPOD
pokemon SPECIES_SHELMET
pokemon SPECIES_KAKUNA
pokemon SPECIES_KARRABLAST

// day encounter slots
pokemon SPECIES_PARAS
pokemon SPECIES_SLAKOTH
pokemon SPECIES_CATERPIE
pokemon SPECIES_AIPOM
pokemon SPECIES_WEEDLE
pokemon SPECIES_AIPOM
pokemon SPECIES_PICHU
pokemon SPECIES_NINCADA
pokemon SPECIES_METAPOD
pokemon SPECIES_SHELMET
pokemon SPECIES_KAKUNA
pokemon SPECIES_KARRABLAST

// night encounter slots
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_VENONAT
pokemon SPECIES_VENONAT
pokemon SPECIES_PICHU
pokemon SPECIES_NINCADA
pokemon SPECIES_PHANTUMP
pokemon SPECIES_MURKROW
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_PUMPKABOO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Slowpoke Well - Upper Floor **************/
encounterdata  18

walkrate 5
surfrate 10
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
monwithform SPECIES_SHELLOS, 1
monwithform SPECIES_SHELLOS, 1
pokemon SPECIES_WOOBAT
pokemon SPECIES_DWEBBLE

// day encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
monwithform SPECIES_SHELLOS, 1
monwithform SPECIES_SHELLOS, 1
pokemon SPECIES_WOOBAT
pokemon SPECIES_DWEBBLE

// night encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
monwithform SPECIES_SHELLOS, 2
monwithform SPECIES_SHELLOS, 2
pokemon SPECIES_WOOBAT
pokemon SPECIES_DWEBBLE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_SLOWPOKE, 2, 2
encounter SPECIES_SLOWPOKE, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_SHUCKLE, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_BARBOACH, 2, 2
encounter SPECIES_BARBOACH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_SLOWPOKE
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 34 **************/
encounterdata  21

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_ELEKID
pokemon SPECIES_ELEKID
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_DITTO
pokemon SPECIES_PACHIRISU
pokemon SPECIES_DUCKLETT
pokemon SPECIES_MINCCINO

// day encounter slots
pokemon SPECIES_ELEKID
pokemon SPECIES_ELEKID
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_DITTO
pokemon SPECIES_PACHIRISU
pokemon SPECIES_DUCKLETT
pokemon SPECIES_MINCCINO

// night encounter slots
pokemon SPECIES_ELEKID
pokemon SPECIES_ELEKID
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_MIMEJR
pokemon SPECIES_MIMEJR
pokemon SPECIES_DITTO
pokemon SPECIES_PACHIRISU
pokemon SPECIES_DUCKLETT
pokemon SPECIES_MINCCINO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_CHINCHOU, 2, 2
encounter SPECIES_FINNEON, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CORSOLA, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_RALTS
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 35 **************/
encounterdata  22

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_YANMA
pokemon SPECIES_YANMA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_VOLBEAT
pokemon SPECIES_ILLUMISE
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_FOONGUS
pokemon SPECIES_ESPURR

// day encounter slots
pokemon SPECIES_YANMA
pokemon SPECIES_YANMA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_VOLBEAT
pokemon SPECIES_ILLUMISE
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_FOONGUS
pokemon SPECIES_ESPURR

// night encounter slots
pokemon SPECIES_YANMA
pokemon SPECIES_YANMA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_VOLBEAT
pokemon SPECIES_ILLUMISE
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_FOONGUS
pokemon SPECIES_ESPURR

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_CORPHISH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_YANMA
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** National Park **************/
encounterdata  23

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKITTY
pokemon SPECIES_SKITTY
pokemon SPECIES_BUNEARY
pokemon SPECIES_BUNEARY
pokemon SPECIES_SUNKERN
pokemon SPECIES_EEVEE
pokemon SPECIES_PETILIL
pokemon SPECIES_COTTONEE
pokemon SPECIES_HAPPINY
pokemon SPECIES_ROSELIA

// day encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKITTY
pokemon SPECIES_SKITTY
pokemon SPECIES_BUNEARY
pokemon SPECIES_BUNEARY
pokemon SPECIES_SUNKERN
pokemon SPECIES_EEVEE
pokemon SPECIES_PETILIL
pokemon SPECIES_COTTONEE
pokemon SPECIES_HAPPINY
pokemon SPECIES_ROSELIA

// night encounter slots
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_SKITTY
pokemon SPECIES_SKITTY
pokemon SPECIES_BUNEARY
pokemon SPECIES_BUNEARY
pokemon SPECIES_PSYDUCK
pokemon SPECIES_EEVEE
pokemon SPECIES_PETILIL
pokemon SPECIES_COTTONEE
pokemon SPECIES_HAPPINY
pokemon SPECIES_ROSELIA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 36 - West **************/
encounterdata  25

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_NIDORINO
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// day encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_NIDORINO
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_NIDORINO
pokemon SPECIES_BONSLY
pokemon SPECIES_SPRITZEE
pokemon SPECIES_SWIRLIX
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORAN_M
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 37 **************/
encounterdata  26

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_STANTLER
pokemon SPECIES_STANTLER
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_LUXIO
pokemon SPECIES_LUXIO
pokemon SPECIES_PANPOUR
pokemon SPECIES_PANSAGE
pokemon SPECIES_PANSEAR
pokemon SPECIES_SOLOSIS

// day encounter slots
pokemon SPECIES_STANTLER
pokemon SPECIES_STANTLER
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_LUXIO
pokemon SPECIES_LUXIO
pokemon SPECIES_PANPOUR
pokemon SPECIES_PANSAGE
pokemon SPECIES_PANSEAR
pokemon SPECIES_SOLOSIS

// night encounter slots
pokemon SPECIES_STANTLER
pokemon SPECIES_STANTLER
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_VULPIX
pokemon SPECIES_VULPIX
pokemon SPECIES_LUXIO
pokemon SPECIES_LUXIO
pokemon SPECIES_ARIADOS
pokemon SPECIES_ZORUA
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GOTHITA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Ecruteak City **************/
encounterdata  27

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 38 **************/
encounterdata  38

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_SKIDDO
pokemon SPECIES_BLITZLE
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// day encounter slots
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_SNUBBULL
pokemon SPECIES_SNUBBULL
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_SKIDDO
pokemon SPECIES_BLITZLE
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// night encounter slots
pokemon SPECIES_MEOWTH
pokemon SPECIES_MEOWTH
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_SNUBBULL
pokemon SPECIES_SNUBBULL
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_ELECTRIKE
pokemon SPECIES_SKIDDO
pokemon SPECIES_BLITZLE
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SNUBBULL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 42 **************/
encounterdata  52

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_ARBOK
pokemon SPECIES_MANKEY
pokemon SPECIES_CACNEA
pokemon SPECIES_MARILL
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_SEVIPER
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_HELIOPTILE
pokemon SPECIES_TRAPINCH
pokemon SPECIES_SKARMORY
pokemon SPECIES_TORKOAL

// day encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_ARBOK
pokemon SPECIES_MANKEY
pokemon SPECIES_CACNEA
pokemon SPECIES_MARILL
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_SEVIPER
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_HELIOPTILE
pokemon SPECIES_TRAPINCH
pokemon SPECIES_SKARMORY
pokemon SPECIES_TORKOAL

// night encounter slots
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_ARBOK
pokemon SPECIES_MANKEY
pokemon SPECIES_CACNEA
pokemon SPECIES_MARILL
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_SEVIPER
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_HELIOPTILE
pokemon SPECIES_TRAPINCH
pokemon SPECIES_SKARMORY
pokemon SPECIES_TORKOAL

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_MANKEY
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Mt. Mortar (Lower Level Areas) **************/
encounterdata  53

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_MAKUHITA
pokemon SPECIES_MAKUHITA
pokemon SPECIES_CUBONE
pokemon SPECIES_MEDITITE
pokemon SPECIES_RIOLU
pokemon SPECIES_FERROSEED
pokemon SPECIES_TYROGUE
pokemon SPECIES_KANGASKHAN

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_MAKUHITA
pokemon SPECIES_MAKUHITA
pokemon SPECIES_CUBONE
pokemon SPECIES_MEDITITE
pokemon SPECIES_RIOLU
pokemon SPECIES_FERROSEED
pokemon SPECIES_TYROGUE
pokemon SPECIES_KANGASKHAN

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_MAKUHITA
pokemon SPECIES_MAKUHITA
pokemon SPECIES_CUBONE
pokemon SPECIES_MEDITITE
pokemon SPECIES_TIMBURR
pokemon SPECIES_FERROSEED
pokemon SPECIES_TYROGUE
pokemon SPECIES_KANGASKHAN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_MARILL, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_AZUMARILL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_BARBOACH, 2, 2
encounter SPECIES_BARBOACH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_MARILL
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 44 **************/
encounterdata  59

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_SNOVER
pokemon SPECIES_SNOVER
pokemon SPECIES_LICKITUNG
pokemon SPECIES_LICKITUNG
pokemon SPECIES_SNEASEL
pokemon SPECIES_KLINK
pokemon SPECIES_DELIBIRD
pokemon SPECIES_CUBCHOO

// day encounter slots
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_SNOVER
pokemon SPECIES_SNOVER
pokemon SPECIES_LICKITUNG
pokemon SPECIES_LICKITUNG
pokemon SPECIES_SNEASEL
pokemon SPECIES_KLINK
pokemon SPECIES_DELIBIRD
pokemon SPECIES_CUBCHOO

// night encounter slots
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_POLIWHIRL
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_SNOVER
pokemon SPECIES_SNOVER
pokemon SPECIES_LICKITUNG
pokemon SPECIES_LICKITUNG
pokemon SPECIES_SNEASEL
pokemon SPECIES_KLINK
pokemon SPECIES_DELIBIRD
pokemon SPECIES_CUBCHOO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_SPHEAL, 2, 2
encounter SPECIES_SPHEAL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_SEALEO, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_REMORAID, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_REMORAID

.close

/************** Ice Path - Upper Floors **************/
encounterdata  60

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SNORUNT
pokemon SPECIES_BERGMITE
pokemon SPECIES_VANILLITE
pokemon SPECIES_ABSOL
pokemon SPECIES_BELDUM

// day encounter slots
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SNORUNT
pokemon SPECIES_BERGMITE
pokemon SPECIES_VANILLITE
pokemon SPECIES_ABSOL
pokemon SPECIES_BELDUM

// night encounter slots
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SMOOCHUM
pokemon SPECIES_SWINUB
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SNORUNT
pokemon SPECIES_BERGMITE
pokemon SPECIES_VANILLITE
pokemon SPECIES_ABSOL
pokemon SPECIES_BELDUM

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Burned Tower **************/
encounterdata  28

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_SPINDA
pokemon SPECIES_SPINDA
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_YAMASK

// day encounter slots
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_SPINDA
pokemon SPECIES_SPINDA
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_YAMASK

// night encounter slots
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_SPINDA
pokemon SPECIES_SPINDA
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_YAMASK

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Union Cave - Lower Floor **************/
encounterdata  16

walkrate 15
surfrate 15
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_RHYHORN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_LOUDRED
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE

// day encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_RHYHORN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_LOUDRED
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE

// night encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_RHYHORN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_LOUDRED
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_DUGTRIO, 2, 2

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_CLAMPERL, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CORSOLA, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


/************** Ruins of Alph (Outside - Lower Half) **************/
/** Unused **/
encounterdata  54

walkrate 25 // Changed from 10
surfrate 10
rocksmashrate 20
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_XATU
pokemon SPECIES_XATU
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_BRONZOR
pokemon SPECIES_BRONZOR
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_SMEARGLE
pokemon SPECIES_SIGILYPH

// day encounter slots
pokemon SPECIES_XATU
pokemon SPECIES_XATU
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_BRONZOR
pokemon SPECIES_BRONZOR
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_SMEARGLE
pokemon SPECIES_SIGILYPH

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_BALTOY
pokemon SPECIES_BALTOY
pokemon SPECIES_BRONZOR
pokemon SPECIES_BRONZOR
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_SMEARGLE
pokemon SPECIES_SIGILYPH

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_NOSEPASS, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_CORPHISH, 2, 2
encounter SPECIES_CORPHISH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NATU
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Slowpoke Well - Lower Floor **************/
encounterdata  19

walkrate 15
surfrate 10
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
monwithform SPECIES_GASTRODON, 1
monwithform SPECIES_GASTRODON, 1
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWKING
pokemon SPECIES_SLOWKING

// day encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
monwithform SPECIES_GASTRODON, 1
monwithform SPECIES_GASTRODON, 1
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWKING
pokemon SPECIES_SLOWKING

// night encounter slots
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
monwithform SPECIES_GASTRODON, 1
monwithform SPECIES_GASTRODON, 1
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWKING
pokemon SPECIES_SLOWKING

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_ZUBAT, 2, 2
encounter SPECIES_SLOWPOKE, 2, 2
encounter SPECIES_SLOWPOKE, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_SHUCKLE, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_BARBOACH, 2, 2
encounter SPECIES_BARBOACH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_SLOWPOKE
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 39 **************/
encounterdata  39

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_GRANBULL
pokemon SPECIES_MANECTRIC
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// day encounter slots
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_GRANBULL
pokemon SPECIES_MANECTRIC
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// night encounter slots
pokemon SPECIES_MEOWTH
pokemon SPECIES_MEOWTH
pokemon SPECIES_PONYTA
pokemon SPECIES_PONYTA
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_GRANBULL
pokemon SPECIES_MANECTRIC
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MILTANK
pokemon SPECIES_TAUROS

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Olivine City **************/
encounterdata  40

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_CLAMPERL, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CLAUNCHER, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 40 **************/
encounterdata  41

walkrate 25
surfrate 10
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_MAGNETON
pokemon SPECIES_PACHIRISU
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_FLOATZEL
pokemon SPECIES_GASTRODON
pokemon SPECIES_MARACTUS
pokemon SPECIES_THROH
pokemon SPECIES_CARNIVINE
pokemon SPECIES_SAWK

// day encounter slots
pokemon SPECIES_MAGNETON
pokemon SPECIES_PACHIRISU
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_FLOATZEL
pokemon SPECIES_GASTRODON
pokemon SPECIES_MARACTUS
pokemon SPECIES_THROH
pokemon SPECIES_CARNIVINE
pokemon SPECIES_SAWK

// night encounter slots
pokemon SPECIES_MAGNETON
pokemon SPECIES_PACHIRISU
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_FLOATZEL
pokemon SPECIES_GASTRODON
pokemon SPECIES_MARACTUS
pokemon SPECIES_THROH
pokemon SPECIES_CARNIVINE
pokemon SPECIES_SAWK

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_STUNFISK, 2, 2
encounter SPECIES_SHUCKLE, 2, 2

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_CLAMPERL, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CORSOLA, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 41 **************/
encounterdata  42

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MANTYKE, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_SHARPEDO, 2, 2
encounter SPECIES_MANTINE, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_CHINCHOU, 2, 2
encounter SPECIES_SHELLDER, 2, 2
encounter SPECIES_FINNEON, 2, 2
encounter SPECIES_WAILMER, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Cianwood City **************/
encounterdata  51

walkrate 0
surfrate 15
rocksmashrate 30
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_CLAMPERL, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CORSOLA, 2, 2

// rock smash encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_SHUCKLE, 2, 2

// old rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_CORSOLA, 2, 2
encounter SPECIES_CORSOLA, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Cliff Edge Gate **************/
encounterdata  82

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_WOOPER, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2
encounter SPECIES_QUAGSIRE, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_MAGIKARP
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 47 **************/
encounterdata  71

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_MILTANK
pokemon SPECIES_MILTANK
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA
pokemon SPECIES_TROPIUS
pokemon SPECIES_AUDINO

// day encounter slots
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_MILTANK
pokemon SPECIES_MILTANK
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA
pokemon SPECIES_TROPIUS
pokemon SPECIES_AUDINO

// night encounter slots
pokemon SPECIES_DITTO
pokemon SPECIES_DITTO
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MILTANK
pokemon SPECIES_MILTANK
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA
pokemon SPECIES_TROPIUS
pokemon SPECIES_AUDINO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_SEEL, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_STARYU, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_DEWGONG, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_LUVDISC, 2, 2
encounter SPECIES_SHELLDER, 2, 2
encounter SPECIES_LANTURN, 2, 2
encounter SPECIES_OCTILLERY, 2, 2
encounter SPECIES_OCTILLERY, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_DITTO
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Cliff Cave **************/
encounterdata  83

walkrate 10
surfrate 0
rocksmashrate 30
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_CRUSTLE
pokemon SPECIES_STEELIX
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_CRUSTLE

// day encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_CRUSTLE
pokemon SPECIES_STEELIX
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_CRUSTLE

// night encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_CRUSTLE
pokemon SPECIES_STEELIX
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_CRUSTLE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_KINGLER, 2, 2
encounter SPECIES_DUGTRIO, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 48 **************/
encounterdata 102

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_CHANSEY

// day encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_BOUFFALANT
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_BOUFFALANT
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_TAUROS
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 43 **************/
encounterdata  57

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_FURRET
pokemon SPECIES_FURRET
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_LOMBRE
pokemon SPECIES_LOMBRE

// day encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_FURRET
pokemon SPECIES_FURRET
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FARFETCHD
pokemon SPECIES_FARFETCHD
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_LOMBRE
pokemon SPECIES_DEERLING

// night encounter slots
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_FLAAFFY
pokemon SPECIES_FLAAFFY
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_KIRLIA
pokemon SPECIES_KIRLIA
pokemon SPECIES_LOMBRE
pokemon SPECIES_DEERLING

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_CRAWDAUNT, 2, 2
encounter SPECIES_CRAWDAUNT, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_FLAAFFY
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Lake of Rage **************/
encounterdata  58

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_FEEBAS, 2, 2
encounter SPECIES_FEEBAS, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Whirl Islands **************/
encounterdata  43

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GASTRODON
pokemon SPECIES_GOOMY

// day encounter slots
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GASTRODON
pokemon SPECIES_GOOMY

// night encounter slots
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GASTRODON
pokemon SPECIES_GOOMY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_SKRELP, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_KINGLER, 2, 2
encounter SPECIES_TYNAMO, 2, 2
encounter SPECIES_RELICANTH, 2, 2
encounter SPECIES_RELICANTH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Ice Path - B2F **************/
encounterdata  61

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_METANG

// day encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_METANG

// night encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_METANG

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Ice Path - B3F **************/
/* Same as above, except for exotic encounters */
encounterdata  62

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_CRYOGONAL

// day encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_CRYOGONAL

// night encounter slots
pokemon SPECIES_DELIBIRD
pokemon SPECIES_SNEASEL
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_PILOSWINE
pokemon SPECIES_PILOSWINE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GLALIE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_ABSOL
pokemon SPECIES_CRYOGONAL

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Blackthorn City **************/
encounterdata  65

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


/************** Route 45 - North **************/
encounterdata  67

walkrate 25
surfrate 0
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GLIGAR
pokemon SPECIES_GLIGAR
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_FEAROW
pokemon SPECIES_GRAVELER
pokemon SPECIES_CAMERUPT
pokemon SPECIES_GRUMPIG
pokemon SPECIES_TORKOAL
pokemon SPECIES_ALTARIA

// day encounter slots
pokemon SPECIES_GLIGAR
pokemon SPECIES_GLIGAR
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_FEAROW
pokemon SPECIES_GRAVELER
pokemon SPECIES_CAMERUPT
pokemon SPECIES_GRUMPIG
pokemon SPECIES_TORKOAL
pokemon SPECIES_ALTARIA

// night encounter slots
pokemon SPECIES_GLIGAR
pokemon SPECIES_GLIGAR
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_GRAVELER
pokemon SPECIES_CAMERUPT
pokemon SPECIES_GRUMPIG
pokemon SPECIES_TORKOAL
pokemon SPECIES_ALTARIA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_MAGCARGO, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWABLU
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Dark Cave - Blackthorn **************/
encounterdata  70

walkrate 10
surfrate 10
rocksmashrate NEW_ROCK_SMASH_RATE
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_URSARING
pokemon SPECIES_URSARING
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_LAIRON
pokemon SPECIES_LAIRON
pokemon SPECIES_PUPITAR
pokemon SPECIES_DUNSPARCE

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_URSARING
pokemon SPECIES_URSARING
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_LAIRON
pokemon SPECIES_LAIRON
pokemon SPECIES_PUPITAR
pokemon SPECIES_DUNSPARCE

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_URSARING
pokemon SPECIES_URSARING
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_LAIRON
pokemon SPECIES_LAIRON
pokemon SPECIES_PUPITAR
pokemon SPECIES_DUNSPARCE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_GOLBAT, 2, 2

// rock smash encounters
encounter SPECIES_DUNSPARCE, 2, 2
encounter SPECIES_GRAVELER, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_WHISCASH, 2, 2
encounter SPECIES_WHISCASH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Dragon's Den **************/
encounterdata  66

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GABITE
pokemon SPECIES_AXEW
pokemon SPECIES_SHELGON
pokemon SPECIES_DRUDDIGON

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GABITE
pokemon SPECIES_AXEW
pokemon SPECIES_SHELGON
pokemon SPECIES_DRUDDIGON

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GABITE
pokemon SPECIES_AXEW
pokemon SPECIES_SHELGON
pokemon SPECIES_DRUDDIGON

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_DRATINI, 2, 2
encounter SPECIES_DRATINI, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_DRAGONAIR, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_DRATINI, 2, 2
encounter SPECIES_DRATINI, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_DRAGONAIR, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_DRATINI
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Mt. Mortar (Higher Level Area) **************/
encounterdata  55

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_HARIYAMA
pokemon SPECIES_HARIYAMA
pokemon SPECIES_MAROWAK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_LUCARIO
pokemon SPECIES_LUCARIO
pokemon SPECIES_HITMONTOP
pokemon SPECIES_KANGASKHAN

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_HARIYAMA
pokemon SPECIES_HARIYAMA
pokemon SPECIES_MAROWAK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_LUCARIO
pokemon SPECIES_LUCARIO
pokemon SPECIES_HITMONTOP
pokemon SPECIES_KANGASKHAN

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_HARIYAMA
pokemon SPECIES_HARIYAMA
pokemon SPECIES_MAROWAK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CLEFABLE
pokemon SPECIES_HITMONTOP
pokemon SPECIES_KANGASKHAN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_AZUMARILL, 2, 2
encounter SPECIES_AZUMARILL, 2, 2
encounter SPECIES_AZUMARILL, 2, 2
encounter SPECIES_SEAKING, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_WHISCASH, 2, 2
encounter SPECIES_WHISCASH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Bell Tower **************/
encounterdata  30

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_ARIADOS
pokemon SPECIES_CHIMECHO
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_BANETTE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_BRONZONG
pokemon SPECIES_BRONZONG
pokemon SPECIES_CLAYDOL
pokemon SPECIES_CLAYDOL

// day encounter slots
pokemon SPECIES_ARIADOS
pokemon SPECIES_CHIMECHO
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_BANETTE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_BRONZONG
pokemon SPECIES_BRONZONG
pokemon SPECIES_CLAYDOL
pokemon SPECIES_CLAYDOL

// night encounter slots
pokemon SPECIES_ARIADOS
pokemon SPECIES_CHIMECHO
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_BANETTE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_BRONZONG
pokemon SPECIES_BRONZONG
pokemon SPECIES_CLAYDOL
pokemon SPECIES_CLAYDOL

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Tohjo Falls **************/
encounterdata 132

walkrate 15
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_FLOATZEL
pokemon SPECIES_FLOATZEL
pokemon SPECIES_AZUMARILL
pokemon SPECIES_AZUMARILL

// day encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_FLOATZEL
pokemon SPECIES_FLOATZEL
pokemon SPECIES_AZUMARILL
pokemon SPECIES_AZUMARILL

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_FLOATZEL
pokemon SPECIES_FLOATZEL
pokemon SPECIES_AZUMARILL
pokemon SPECIES_AZUMARILL

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLBAT, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SLOWBRO, 2, 2
encounter SPECIES_SLOWBRO, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_WHISCASH, 2, 2
encounter SPECIES_WHISCASH, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 27 **************/
encounterdata 104

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_SEVIPER
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_LINOONE
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_KECLEON
pokemon SPECIES_SANDILE

// day encounter slots
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_SEVIPER
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_LINOONE
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_KECLEON
pokemon SPECIES_SANDILE

// night encounter slots
pokemon SPECIES_ZANGOOSE
pokemon SPECIES_SEVIPER
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_LINOONE
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_KECLEON
pokemon SPECIES_SANDILE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_TENTACOOL, 2, 2
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_LUVDISC, 2, 2
encounter SPECIES_CHINCHOU, 2, 2
encounter SPECIES_REMORAID, 2, 2
encounter SPECIES_SHELLDER, 2, 2
encounter SPECIES_FINNEON, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_DODUO
// swarm surf
pokemon SPECIES_LUVDISC
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 26 **************/
encounterdata 103

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HEATMOR
pokemon SPECIES_KECLEON
pokemon SPECIES_DURANT

// day encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HEATMOR
pokemon SPECIES_KECLEON
pokemon SPECIES_DURANT

// night encounter slots
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HEATMOR
pokemon SPECIES_KECLEON
pokemon SPECIES_DURANT

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_PELIPPER, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_PELIPPER, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_LUVDISC, 2, 2
encounter SPECIES_LANTURN, 2, 2
encounter SPECIES_OCTILLERY, 2, 2
encounter SPECIES_CLOYSTER, 2, 2
encounter SPECIES_LUMINEON, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_DODUO
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Victory Road **************/
encounterdata 110

walkrate 10
surfrate 0
rocksmashrate 40
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_MAGNETON
pokemon SPECIES_DEINO
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// day encounter slots
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_MAGNETON
pokemon SPECIES_DEINO
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// night encounter slots
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_MAGNETON
pokemon SPECIES_DEINO
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_ONIX, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/******************************************************** KANTO HALF ********************************************************/
// This is currently sorted in order of access in FR/LG.

/************** Pallet Town **************/
encounterdata  95

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_LANTURN, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 1 **************/
encounterdata 111

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_FURRET
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_LINOONE
pokemon SPECIES_LINOONE

// day encounter slots
pokemon SPECIES_FURRET
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_LINOONE
pokemon SPECIES_LINOONE

// night encounter slots
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_LINOONE
pokemon SPECIES_LINOONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_POOCHYENA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Viridian City **************/
encounterdata  96

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWHIRL, KHL, KHL
encounter SPECIES_POLIWHIRL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWHIRL, KHL, KHL
encounter SPECIES_CRAWDAUNT, KHL, KHL
encounter SPECIES_CRAWDAUNT, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 22 **************/
encounterdata 129

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH

// day encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWHIRL, KHL, KHL
encounter SPECIES_POLIWHIRL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWHIRL, KHL, KHL
encounter SPECIES_CRAWDAUNT, KHL, KHL
encounter SPECIES_CRAWDAUNT, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 2 - South **************/
encounterdata 112

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KLL, KLL, KLL

// morning encounter slots
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_LEDIAN
pokemon SPECIES_LEDIAN
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_EMOLGA

// day encounter slots
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_LEDIAN
pokemon SPECIES_LEDIAN
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_EMOLGA

// night encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_ARIADOS
pokemon SPECIES_ARIADOS
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_EMOLGA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Viridian Forest **************/
encounterdata 137

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KLL

// morning encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_KRICKETUNE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VIGOROTH
pokemon SPECIES_SEWADDLE
pokemon SPECIES_PIKACHU
pokemon SPECIES_VENIPEDE

// day encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_KRICKETUNE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VIGOROTH
pokemon SPECIES_SEWADDLE
pokemon SPECIES_PIKACHU
pokemon SPECIES_VENIPEDE

// night encounter slots
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_KRICKETUNE
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VIGOROTH
pokemon SPECIES_SEWADDLE
pokemon SPECIES_PIKACHU
pokemon SPECIES_VENIPEDE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRICKETOT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 3 **************/
encounterdata 113

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH

// day encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH

// night encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_SANDSLASH

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_BALTOY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Mt. Moon - Inside **************/
encounterdata 106   // Mt. Moon 1F

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CLEFABLE
pokemon SPECIES_LUNATONE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SOLROCK

// day encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CLEFABLE
pokemon SPECIES_LUNATONE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SOLROCK

// night encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CLEFABLE
pokemon SPECIES_LUNATONE
pokemon SPECIES_LUNATONE
pokemon SPECIES_SOLROCK
pokemon SPECIES_SOLROCK

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_MAGIKARP, 2, KLL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_MAGIKARP, 2, KLL

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 4 **************/
encounterdata 114   // Route 4

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF

// day encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF

// night encounter slots
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARBOK
pokemon SPECIES_SANDSLASH
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_WIGGLYTUFF
pokemon SPECIES_WIGGLYTUFF

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_SPEAROW
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Cerulean City **************/
encounterdata  97

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 24 **************/
encounterdata 130

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SUNFLORA
pokemon SPECIES_SUNFLORA
pokemon SPECIES_BIBAREL
pokemon SPECIES_BIBAREL
pokemon SPECIES_LOMBRE
pokemon SPECIES_LOMBRE
pokemon SPECIES_NUZLEAF
pokemon SPECIES_FLABEBE

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SUNFLORA
pokemon SPECIES_SUNFLORA
pokemon SPECIES_BIBAREL
pokemon SPECIES_BIBAREL
pokemon SPECIES_LOMBRE
pokemon SPECIES_LOMBRE
pokemon SPECIES_NUZLEAF
pokemon SPECIES_FLABEBE

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_BIBAREL
pokemon SPECIES_BIBAREL
pokemon SPECIES_LOMBRE
pokemon SPECIES_LOMBRE
pokemon SPECIES_NUZLEAF
pokemon SPECIES_FLABEBE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_FRILLISH, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_ALOMOMOLA, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_BELLSPROUT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 25 **************/
encounterdata 131

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CHATOT
pokemon SPECIES_CHATOT
pokemon SPECIES_LOPUNNY
pokemon SPECIES_LOPUNNY
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CHATOT
pokemon SPECIES_CHATOT
pokemon SPECIES_LOPUNNY
pokemon SPECIES_LOPUNNY
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_LOPUNNY
pokemon SPECIES_LOPUNNY
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH
pokemon SPECIES_VIGOROTH

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_BUNEARY
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 5 **************/
encounterdata 115

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GRANBULL
pokemon SPECIES_DELCATTY
pokemon SPECIES_DELCATTY
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// day encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GRANBULL
pokemon SPECIES_DELCATTY
pokemon SPECIES_DELCATTY
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PERSIAN
pokemon SPECIES_PERSIAN
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GRANBULL
pokemon SPECIES_DELCATTY
pokemon SPECIES_DELCATTY
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 6 **************/
encounterdata 116

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// day encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PERSIAN
pokemon SPECIES_PERSIAN
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARCANINE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_PSYDUCK, KLL, KLL
encounter SPECIES_PSYDUCK, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_GOLDUCK, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Vermilion City **************/
encounterdata  98

walkrate 0
surfrate 15
rocksmashrate 40
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_WINGULL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_DIGLETT, KLL, KLL
encounter SPECIES_SHUCKLE, KHL, KHL

// old rod encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_LANTURN, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_WINGULL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Diglett's Cave **************/
encounterdata 133

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KLL, KLL, KHL, KHL, KHL, KHL, KLL, KLL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// day encounter slots
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// night encounter slots
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DIGLETT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 11 **************/
encounterdata 121

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KLL, KLL, KLL

// morning encounter slots
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_MR_MIME
pokemon SPECIES_LUXIO
pokemon SPECIES_PLUSLE
pokemon SPECIES_FURFROU
pokemon SPECIES_MINUN
pokemon SPECIES_FURFROU

// day encounter slots
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_MR_MIME
pokemon SPECIES_LUXIO
pokemon SPECIES_PLUSLE
pokemon SPECIES_FURFROU
pokemon SPECIES_MINUN
pokemon SPECIES_FURFROU

// night encounter slots
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_MR_MIME
pokemon SPECIES_LUXIO
pokemon SPECIES_PLUSLE
pokemon SPECIES_FURFROU
pokemon SPECIES_MINUN
pokemon SPECIES_FURFROU

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DROWZEE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 9 **************/
encounterdata 119

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE

// day encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_PRIMEAPE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_SABLEYE
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 10 **************/
encounterdata 120

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_DEDENNE

// day encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_DEDENNE

// night encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINO
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_KINGLER
pokemon SPECIES_DEDENNE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_SPEAROW
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Power Plant (New) **************/
encounterdata 142

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_ELECTRODE
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_KLEFKI
pokemon SPECIES_JOLTIK
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING

// day encounter slots
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_ELECTRODE
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_KLEFKI
pokemon SPECIES_JOLTIK
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING

// night encounter slots
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_MAGNETON
pokemon SPECIES_MAGNETON
pokemon SPECIES_ELECTRODE
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_KLEFKI
pokemon SPECIES_JOLTIK
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SPEAROW
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Rock Tunnel **************/
encounterdata 108

walkrate 15
surfrate 0
rocksmashrate 20
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_MAROWAK
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_KANGASKHAN

// day encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_MAROWAK
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_KANGASKHAN

// night encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_SABLEYE
pokemon SPECIES_MAWILE
pokemon SPECIES_MAROWAK
pokemon SPECIES_MAROWAK
pokemon SPECIES_RHYDON
pokemon SPECIES_KANGASKHAN

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GRAVELER, KHL, KHL
encounter SPECIES_PROBOPASS, KHL, KHL

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CUBONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 8 **************/
encounterdata 118

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL
pokemon SPECIES_KIRLIA
pokemon SPECIES_XATU
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// day encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL
pokemon SPECIES_KIRLIA
pokemon SPECIES_XATU
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_KADABRA
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_KIRLIA
pokemon SPECIES_BANETTE
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEOTTO
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 7 **************/
encounterdata 117

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL
pokemon SPECIES_KADABRA
pokemon SPECIES_LUXIO
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// day encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL
pokemon SPECIES_KADABRA
pokemon SPECIES_LUXIO
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// night encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_KADABRA
pokemon SPECIES_LUXIO
pokemon SPECIES_ARCANINE
pokemon SPECIES_ARCANINE
pokemon SPECIES_NINETALES
pokemon SPECIES_NINETALES

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Celadon City **************/
encounterdata  99

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GRIMER, KLL, KLL
encounter SPECIES_GRIMER, KLL, KLL
encounter SPECIES_GRIMER, KLL, KLL
encounter SPECIES_MUK, KHL, KHL
encounter SPECIES_MUK, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_GRIMER
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 12 **************/
encounterdata  92

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_SLOWPOKE, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SLOWBRO, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_HORSEA, KLL, KLL
encounter SPECIES_SEADRA, KHL, KHL
encounter SPECIES_QWILFISH, KHL, KHL
encounter SPECIES_QWILFISH, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_RELICANTH

.close

/************** Route 13 **************/
encounterdata 122

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KHL, KHL, KLL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_FARFETCHD
pokemon SPECIES_PACHIRISU
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_FARFETCHD
pokemon SPECIES_PACHIRISU
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_VENOMOTH
pokemon SPECIES_PACHIRISU
pokemon SPECIES_PURUGLY
pokemon SPECIES_PURUGLY
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_SLOWPOKE, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_TENTACOOL, KLL, KLL
encounter SPECIES_SLOWBRO, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_HORSEA, KLL, KLL
encounter SPECIES_SEADRA, KHL, KHL
encounter SPECIES_QWILFISH, KHL, KHL
encounter SPECIES_QWILFISH, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_CHANSEY
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 14 **************/
encounterdata 123

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORINA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 15 **************/
encounterdata 124

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KLL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_PINSIR
pokemon SPECIES_TAUROS
pokemon SPECIES_TAUROS
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORINA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 16 **************/
encounterdata 125

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_LARVESTA

// day encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_LARVESTA

// night encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_LARVESTA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRIMER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 17 **************/
encounterdata 126

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// day encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// night encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRIMER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Route 18 **************/
encounterdata 127

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// day encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// night encounter slots
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HONCHKROW
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_MUK
pokemon SPECIES_WEEZING
pokemon SPECIES_SWALOT
pokemon SPECIES_SWALOT
pokemon SPECIES_MAGCARGO
pokemon SPECIES_MAGCARGO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRIMER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Fuchsia City **************/
encounterdata 100

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_MAGIKARP, 2, KLL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_GOLDEEN, KLL, KLL
encounter SPECIES_SEAKING, KHL, KHL
encounter SPECIES_SEAKING, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 19 **************/
encounterdata  93

walkrate 0
surfrate 10
rocksmashrate 30
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_SHARPEDO, KHL, KHL
encounter SPECIES_LAPRAS, KHL, KHL

// rock smash encounters
encounter SPECIES_KINGLER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL

// old rod encounters
encounter SPECIES_KINGLER, KHL, KHL
encounter SPECIES_CORSOLA, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_HUNTAIL, KHL, KHL
encounter SPECIES_GOREBYSS, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_CLAMPERL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 20 **************/
encounterdata  94

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_SHARPEDO, KHL, KHL
encounter SPECIES_LAPRAS, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_SEADRA, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_LANTURN, KHL, KHL
encounter SPECIES_LUMINEON, KHL, KHL
encounter SPECIES_WAILORD, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Seafoam Islands **************/
encounterdata  74

walkrate 5
surfrate 5
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_KINGLER
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO

// day encounter slots
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_KINGLER
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO

// night encounter slots
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_DEWGONG
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_KINGLER
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SLOWBRO
pokemon SPECIES_SEALEO
pokemon SPECIES_SEALEO

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_DEWGONG, KHL, KHL
encounter SPECIES_SEALEO, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_GYARADOS, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_KINGLER, KHL, KHL
encounter SPECIES_SEADRA, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Cinnabar Island **************/
encounterdata 101

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_TENTACRUEL, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_SEADRA, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_LANTURN, KHL, KHL
encounter SPECIES_OCTILLERY, KHL, KHL
encounter SPECIES_LUMINEON, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 21 **************/
encounterdata 128

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL, KHL

// morning encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_CHATOT
pokemon SPECIES_HAWLUCHA

// day encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_CHATOT
pokemon SPECIES_HAWLUCHA

// night encounter slots
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_DRIFBLIM

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_TENTACRUEL, KHL, KHL
encounter SPECIES_PELIPPER, KHL, KHL
encounter SPECIES_STARMIE, KHL, KHL
encounter SPECIES_SHARPEDO, KHL, KHL
encounter SPECIES_SHARPEDO, KHL, KHL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_SEADRA, KHL, KHL
encounter SPECIES_CLOYSTER, KHL, KHL
encounter SPECIES_LANTURN, KHL, KHL
encounter SPECIES_OCTILLERY, KHL, KHL
encounter SPECIES_LUMINEON, KHL, KHL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Route 28 **************/
encounterdata 105

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// day encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// night encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_WEAVILE
pokemon SPECIES_WEAVILE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_CRAWDAUNT, KPL, KPL
encounter SPECIES_CRAWDAUNT, KPL, KPL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Mt. Silver - Outside Cave **************/
encounterdata  85

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// day encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_DODRIO
pokemon SPECIES_DODRIO
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// night encounter slots
pokemon SPECIES_TANGROWTH
pokemon SPECIES_TANGROWTH
pokemon SPECIES_WEAVILE
pokemon SPECIES_WEAVILE
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_ARBOK
pokemon SPECIES_ARBOK
pokemon SPECIES_MANECTRIC
pokemon SPECIES_MANECTRIC

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, KLL, KLL
encounter SPECIES_POLIWAG, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, KLL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_CRAWDAUNT, KPL, KPL
encounter SPECIES_CRAWDAUNT, KPL, KPL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Mt. Silver Cave - Inside **************/

// Mt. Silver - 1F
encounterdata  86

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_LAIRON
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_MAGMAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_LUCARIO
pokemon SPECIES_DARUMAKA

// day encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_LAIRON
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_MAGMAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_LUCARIO
pokemon SPECIES_DARUMAKA

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_LAIRON
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_MAGMAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_MISMAGIUS
pokemon SPECIES_DARUMAKA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_GOLDUCK, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_AZUMARILL, KPL, KPL
encounter SPECIES_AZUMARILL, KPL, KPL

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_GYARADOS, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_WHISCASH, KPL, KPL
encounter SPECIES_WHISCASH, KPL, KPL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ONIX
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Mt. Silver - Lower Mountainside **************/
encounterdata  87   // Mt. Silver (Mountainside)

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_DONPHAN
pokemon SPECIES_URSARING
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// day encounter slots
pokemon SPECIES_DONPHAN
pokemon SPECIES_URSARING
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// night encounter slots
pokemon SPECIES_DONPHAN
pokemon SPECIES_URSARING
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MACHOKE
pokemon SPECIES_PUPITAR
pokemon SPECIES_STEELIX
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_SKARMORY
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Mt. Silver - Upper Snowy Mountainside **************/
encounterdata  89

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_GLALIE
pokemon SPECIES_FROSLASS
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_METANG
pokemon SPECIES_WEAVILE
pokemon SPECIES_ABSOL
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// day encounter slots
pokemon SPECIES_GLALIE
pokemon SPECIES_FROSLASS
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_METANG
pokemon SPECIES_WEAVILE
pokemon SPECIES_ABSOL
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// night encounter slots
pokemon SPECIES_GLALIE
pokemon SPECIES_FROSLASS
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MEDICHAM
pokemon SPECIES_METANG
pokemon SPECIES_WEAVILE
pokemon SPECIES_ABSOL
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_ALTARIA
pokemon SPECIES_ALTARIA

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SNEASEL
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Cerulean Cave **************/
encounterdata 139

walkrate 10
surfrate 10
rocksmashrate 20
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL, KPL

// morning encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_ELECTRODE
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_KADABRA
pokemon SPECIES_MAGNETON
pokemon SPECIES_LICKILICKY
pokemon SPECIES_RHYDON
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY
pokemon SPECIES_SNORLAX
pokemon SPECIES_CARBINK

// day encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_ELECTRODE
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_KADABRA
pokemon SPECIES_MAGNETON
pokemon SPECIES_LICKILICKY
pokemon SPECIES_RHYDON
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY
pokemon SPECIES_SNORLAX
pokemon SPECIES_CARBINK

// night encounter slots
pokemon SPECIES_PARASECT
pokemon SPECIES_ELECTRODE
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_KADABRA
pokemon SPECIES_MAGNETON
pokemon SPECIES_LICKILICKY
pokemon SPECIES_RHYDON
pokemon SPECIES_DITTO
pokemon SPECIES_CHANSEY
pokemon SPECIES_SNORLAX
pokemon SPECIES_CARBINK

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWHIRL, KPL, KPL
encounter SPECIES_GOLDUCK, KPL, KPL
encounter SPECIES_GOLDUCK, KPL, KPL
encounter SPECIES_SLOWBRO, KPL, KPL
encounter SPECIES_SLOWBRO, KPL, KPL

// rock smash encounters
encounter SPECIES_GRAVELER, KPL, KPL
encounter SPECIES_ONIX, KPL, KPL

// old rod encounters
encounter SPECIES_GYARADOS, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_SEAKING, KPL, KPL
encounter SPECIES_WHISCASH, KPL, KPL
encounter SPECIES_WHISCASH, KPL, KPL

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/******************************************************** NOT USED ********************************************************/


/************** Mt. Moon - Outside **************/
encounterdata  72

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate FISHING_RATE
goodrodrate FISHING_RATE
superrodrate FISHING_RATE
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// super rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/************** Ruins of Alph - ??? */
encounterdata  11

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Ruins of Alph - ??? */
encounterdata  12

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Ruins of Alph - Ladder Room - Effectively unused **************/
encounterdata  13

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** National Park - Bug Catching Contest Placeholder **************/
encounterdata  24

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// day encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// night encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// hoenn encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// sinnoh encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Now Unused Mt. Mortar **************/
encounterdata  56

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE

// day encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATICATE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// super rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


/************** Now Unused Ice Path **************/
encounterdata  63

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_ZUBAT
pokemon SPECIES_JYNX
pokemon SPECIES_ZUBAT
pokemon SPECIES_JYNX

// day encounter slots
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// night encounter slots
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_GOLBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_SWINUB
pokemon SPECIES_SWINUB
pokemon SPECIES_ZUBAT
pokemon SPECIES_JYNX
pokemon SPECIES_ZUBAT
pokemon SPECIES_JYNX

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Now Unused Bell Tower Files **************/
encounterdata  31   // Bell Tower 3F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  32   // Bell Tower 4F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  33   // Bell Tower 5F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  34   // Bell Tower 6F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  35   // Bell Tower 7F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  36   // Bell Tower 8F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  37   // Bell Tower 9F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  84   // Bell Tower 10F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_GASTLY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


/************** Now Unused Whirl Islands (and some totally unused stuff?) **************/
encounterdata  44   // Whirl Islands B1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// day encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// night encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  45   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  46   // Whirl Islands B2F

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// day encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// night encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_TENTACRUEL, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_SEADRA, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_KRABBY, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_KRABBY, 2, 2

// super rod encounters
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_KINGLER, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_KINGLER, 2, 2

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_HORSEA
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  47   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  48   // Whirl Islands B3F (Ledge overlooking Lugia room)

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// day encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// night encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  49   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  50   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/************** Unknown **************/

encounterdata  64   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

encounterdata  90   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

encounterdata  91   // Safari Zone (Placeholder, not used)

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 100
goodrodrate 100
superrodrate 100
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_ZIGZAGOON

// sinnoh encounter slots
pokemon SPECIES_BIDOOF
pokemon SPECIES_BIDOOF

// surf encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// good rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// super rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_GOLDEEN

.close


encounterdata 138   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


/************** Route 2 - North (Not used anymore) **************/
encounterdata 136

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_LEDIAN
pokemon SPECIES_LEDIAN
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY

// day encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_BEEDRILL
pokemon SPECIES_LEDIAN
pokemon SPECIES_LEDIAN
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY
pokemon SPECIES_BEAUTIFLY

// night encounter slots
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_ARIADOS
pokemon SPECIES_ARIADOS
pokemon SPECIES_DUSTOX
pokemon SPECIES_DUSTOX
pokemon SPECIES_DUSTOX
pokemon SPECIES_DUSTOX

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 107   // Mt. Moon 2F - not used

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// day encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


/************** Mt. Moon - Outside, Full Moon (not used) **************/
encounterdata  73

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// good rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// super rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_MAGIKARP
// swarm super rod
pokemon SPECIES_POLIWAG

.close


encounterdata 109   // Rock Tunnel B1F (not used now)

walkrate 15
surfrate 0
rocksmashrate 20
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// day encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// night encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_GEODUDE, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CUBONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/** excess seafoam islands **/


encounterdata  75   // Seafoam Islands B1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

encounterdata  76   // Seafoam Islands B2F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

encounterdata  77   // Seafoam Islands B3F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DEWGONG
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

encounterdata  78   // Seafoam Islands B4F

walkrate 10
surfrate 5
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// day encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// night encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_SEEL, 2, 2
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_SLOWBRO, 2, 2
encounter SPECIES_SLOWBRO, 2, 2
encounter SPECIES_SLOWBRO, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_KRABBY, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_KRABBY, 2, 2
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_KRABBY, 2, 2

// super rod encounters
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_HORSEA, 2, 2
encounter SPECIES_KINGLER, 2, 2
encounter SPECIES_SEADRA, 2, 2
encounter SPECIES_SEADRA, 2, 2

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_SEEL
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

/**** unused cerulean cave ****/


encounterdata 140   // Cerulean Cave B1F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE

// day encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// good rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// super rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2

// swarm grass
pokemon SPECIES_KADABRA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

encounterdata 141   // Cerulean Cave B2F

walkrate 10
surfrate 10
rocksmashrate 5
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// day encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_PSYDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2
encounter SPECIES_GOLDUCK, 2, 2

// rock smash encounters
encounter SPECIES_GEODUDE, 2, 2
encounter SPECIES_GRAVELER, 2, 2

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// good rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_POLIWAG, 2, 2

// super rod encounters
encounter SPECIES_POLIWAG, 2, 2
encounter SPECIES_POLIWHIRL, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2
encounter SPECIES_GYARADOS, 2, 2

// swarm grass
pokemon SPECIES_KADABRA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


/**** unused mt silver ****/


// Mt. Silver - 2F
encounterdata  80

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// super rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

// Mt. Silver 3F
encounterdata  81

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// super rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_SNEASEL
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close

// Mt. Silver (1F, Moltres Room)
encounterdata  79

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// good rod encounters
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2

// super rod encounters
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_GOLDEEN, 2, 2
encounter SPECIES_MAGIKARP, 2, 2
encounter SPECIES_SEAKING, 2, 2
encounter SPECIES_MAGIKARP, 2, 2

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


/************** Mt. Silver - Small Cave - Not Used **************/
encounterdata  88

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_BANETTE
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_BANETTE
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_BANETTE
pokemon SPECIES_HAUNTER
pokemon SPECIES_HAUNTER
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE

// hoenn encounter slots
pokemon SPECIES_MISMAGIUS
pokemon SPECIES_MISMAGIUS

// sinnoh encounter slots
pokemon SPECIES_MISMAGIUS
pokemon SPECIES_MISMAGIUS

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

/*********** Victory Road 2F/3F Not in use *************/


// 2F
encounterdata 134

walkrate 10
surfrate 0
rocksmashrate 40
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// hoenn encounter slots
pokemon SPECIES_HITMONLEE
pokemon SPECIES_HITMONLEE

// sinnoh encounter slots
pokemon SPECIES_HITMONLEE
pokemon SPECIES_HITMONLEE

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_STEELIX, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close

// 3F
encounterdata 135

walkrate 10
surfrate 0
rocksmashrate 40
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// day encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_MAGNETON
pokemon SPECIES_URSARING
pokemon SPECIES_DONPHAN
pokemon SPECIES_LOUDRED
pokemon SPECIES_MAROWAK
pokemon SPECIES_LAIRON
pokemon SPECIES_RHYDON
pokemon SPECIES_RHYDON
pokemon SPECIES_STEELIX
pokemon SPECIES_STEELIX

// hoenn encounter slots
pokemon SPECIES_HITMONCHAN
pokemon SPECIES_HITMONCHAN

// sinnoh encounter slots
pokemon SPECIES_HITMONCHAN
pokemon SPECIES_HITMONCHAN

// surf encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters
encounter SPECIES_GRAVELER, 2, 2
encounter SPECIES_STEELIX, 2, 2

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close
