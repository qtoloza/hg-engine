.nds
.thumb

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

.halfword ITEM_MASTER_BALL
.halfword EIGHT_BADGES

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

.halfword ITEM_POKE_DOLL
.halfword ZERO_BADGES

.close
