.nds
.thumb

// Aurora Crystal specific change
// Changes items obtainable in some Poké Marts

.open "base/arm9.bin", 0x02000000

/* Values for badge restrictions as it isn't 1:1 */
ZERO_BADGES equ 1
ONE_BADGE equ 2
THREE_BADGES equ 3
FIVE_BADGES equ 4
SEVEN_BADGES equ 5
EIGHT_BADGES equ 6

/* General Poké Mart Table */
.org 0x020FBF22

.halfword ITEM_POKE_BALL
.halfword ZERO_BADGES

.halfword ITEM_GREAT_BALL
.halfword ONE_BADGE

.halfword ITEM_ULTRA_BALL
.halfword THREE_BADGES

.halfword ITEM_POTION
.halfword ZERO_BADGES

.halfword ITEM_SUPER_POTION
.halfword ONE_BADGE

.halfword ITEM_HYPER_POTION
.halfword THREE_BADGES

.halfword ITEM_MAX_POTION
.halfword SEVEN_BADGES

.halfword ITEM_FULL_RESTORE
.halfword EIGHT_BADGES

.halfword ITEM_ETHER
.halfword ZERO_BADGES

.halfword ITEM_MAX_ETHER
.halfword THREE_BADGES

.halfword ITEM_ELIXIR
.halfword FIVE_BADGES

.halfword ITEM_MAX_ELIXIR
.halfword SEVEN_BADGES

.halfword ITEM_REVIVE
.halfword THREE_BADGES

.halfword ITEM_MAX_REVIVE
.halfword EIGHT_BADGES

.halfword ITEM_FULL_HEAL
.halfword ZERO_BADGES

.halfword ITEM_REPEL
.halfword ZERO_BADGES

.halfword ITEM_SUPER_REPEL
.halfword THREE_BADGES

.halfword ITEM_MAX_REPEL
.halfword FIVE_BADGES

/* Cherrygrove City 2nd Clerk */
.org 0x020FBA54
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Violet City 2nd Clerk */
.org 0x020FBA78
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Azalea Town 2nd Clerk */
.org 0x020FBAB0
.halfword ITEM_BLOOM_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Goldenrod Dept Store 2F Lower */
.org 0x020FBBEA
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Goldenrod Dept Store 2F Upper */
.org 0x020FBC1A
.halfword ITEM_POKE_BALL
.halfword ITEM_GREAT_BALL
.halfword ITEM_ULTRA_BALL
.halfword ITEM_ESCAPE_ROPE
.halfword ITEM_POKE_DOLL
.halfword ITEM_REPEL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_MAX_REPEL
.halfword ITEM_GRASS_MAIL
.halfword ITEM_FLAME_MAIL
.halfword ITEM_BUBBLE_MAIL
.halfword ITEM_SPACE_MAIL
.halfword 0xFFFF

/* Goldenrod Dept Store 3F */
.org 0x020FBBB4
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP_DEF
.halfword 0xFFFF

/* Goldenrod Dept Store 4F */
.org 0x020FBAFA
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword 0xFFFF

/* Goldenrod Dept Store 5F */
.org 0x020FBC34
.halfword ITEM_TM70
.halfword ITEM_TM17
.halfword ITEM_TM54
.halfword ITEM_TM83
.halfword ITEM_TM16
.halfword ITEM_TM33
.halfword ITEM_TM22
.halfword ITEM_TM52
.halfword ITEM_TM38
.halfword ITEM_TM25
.halfword ITEM_TM14
.halfword ITEM_TM15
.halfword 0xFFFF

/* Goldenrod Herb Shop */
.org 0x020FBACA
.halfword ITEM_HEAL_POWDER
.halfword ITEM_ENERGY_POWDER
.halfword ITEM_ENERGY_ROOT
.halfword ITEM_REVIVAL_HERB
.halfword 0xFFFF

/* Ecruteak City 2nd Clerk */
.org 0x020FBA60
.halfword ITEM_AIR_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Olivine City 2nd Clerk */
.org 0x020FBA88
.halfword ITEM_HEART_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Cianwood City Pharmacy */
.org 0x020FBAD4
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_FULL_HEAL
.halfword ITEM_REVIVE
.halfword 0xFFFF

/* Mahogany Town Shop - Before Team Rocket */
.org 0x020FBAB8
.halfword ITEM_TINY_MUSHROOM
.halfword ITEM_POKE_BALL
.halfword ITEM_POTION
.halfword 0xFFFF

/* Mahogany Town Shop - After Team Rocket */
.org 0x020FBBD8
.halfword ITEM_GREAT_BALL
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_REVIVE
.halfword ITEM_AIR_MAIL
.halfword 0xFFFF

/* Blackthorn City 2nd Clerk */
.org 0x020FBA80
.halfword ITEM_AIR_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_DUSK_BALL
.halfword 0xFFFF

/* Safari Zone Gate Southwest Stall */
.org 0x020FBAC0
.halfword ITEM_AIR_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Vermillion City 2nd Clerk */
.org 0x020FBA5A
.halfword ITEM_AIR_MAIL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Saffron City 2nd Clerk */
.org 0x020FBA70
.halfword ITEM_AIR_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Lavender Town 2nd Clerk */
.org 0x020FBA98
.halfword ITEM_SNOW_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Cerulean City 2nd Clerk */

/* Celadon Dept Store 2F Lower */
.org 0x020FBC02
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARALYZE_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Celadon Dept Store 2F Upper */
.org 0x020FBC4E
.halfword ITEM_POKE_BALL
.halfword ITEM_GREAT_BALL
.halfword ITEM_ULTRA_BALL
.halfword ITEM_ESCAPE_ROPE
.halfword ITEM_POKE_DOLL
.halfword ITEM_REPEL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_MAX_REPEL
.halfword ITEM_GRASS_MAIL
.halfword ITEM_FLAME_MAIL
.halfword ITEM_BUBBLE_MAIL
.halfword ITEM_SPACE_MAIL
.halfword 0xFFFF

/* Celadon Dept Store 3F */
.org 0x020FBC68
.halfword ITEM_TM21
.halfword ITEM_TM27
.halfword ITEM_TM87
.halfword ITEM_TM78
.halfword ITEM_TM12
.halfword ITEM_TM41
.halfword ITEM_TM20
.halfword ITEM_TM28
.halfword ITEM_TM76
.halfword ITEM_TM55
.halfword ITEM_TM72
.halfword ITEM_TM79
.halfword 0xFFFF

/* Celadon Dept Store 4F */
.org 0x020FBA68
.halfword ITEM_AIR_MAIL
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_BLOOM_MAIL
.halfword 0xFFFF

/* Celadon Dept Store 5F Left */
.org 0x020FBBC6
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP_DEF
.halfword 0xFFFF

/* Celadon Dept Store 5F Right */
.org 0x020FBB08
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword 0xFFFF

/* Fuchsia City 2nd Clerk */
.org 0x020FBA90
.halfword ITEM_STEEL_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Pewter City 2nd Clerk */
.org 0x020FBAA0
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Viridian City 2nd Clerk */
.org 0x020FBAA8
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_HEAL_BALL
.halfword 0xFFFF

/* Mt. Moon Square Shop */
.org 0x020FBB16
.halfword ITEM_POKE_DOLL
.halfword ITEM_FRESH_WATER
.halfword ITEM_SODA_POP
.halfword ITEM_LEMONADE
.halfword ITEM_REPEL
.halfword ITEM_HEART_MAIL
.halfword 0xFFFF

.close
