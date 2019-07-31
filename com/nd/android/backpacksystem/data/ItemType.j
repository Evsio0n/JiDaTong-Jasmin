.bytecode 50.0
.class public final synchronized enum com/nd/android/backpacksystem/data/ItemType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/backpacksystem/data/ItemType;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/backpacksystem/data/ItemType;

.field public static final enum 'FLOWERS' Lcom/nd/android/backpacksystem/data/ItemType;

.field public static final enum 'GIFTS' Lcom/nd/android/backpacksystem/data/ItemType;

.field public static final enum 'HY_STOCK' Lcom/nd/android/backpacksystem/data/ItemType;

.field public static final 'HY_STOCK_CODE' I = 50001


.field public static final enum 'RAFFLE_TICKETS' Lcom/nd/android/backpacksystem/data/ItemType;

.method static <clinit>()V
new com/nd/android/backpacksystem/data/ItemType
dup
ldc "FLOWERS"
iconst_0
invokespecial com/nd/android/backpacksystem/data/ItemType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/backpacksystem/data/ItemType/FLOWERS Lcom/nd/android/backpacksystem/data/ItemType;
new com/nd/android/backpacksystem/data/ItemType
dup
ldc "GIFTS"
iconst_1
invokespecial com/nd/android/backpacksystem/data/ItemType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/backpacksystem/data/ItemType/GIFTS Lcom/nd/android/backpacksystem/data/ItemType;
new com/nd/android/backpacksystem/data/ItemType
dup
ldc "RAFFLE_TICKETS"
iconst_2
invokespecial com/nd/android/backpacksystem/data/ItemType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/backpacksystem/data/ItemType/RAFFLE_TICKETS Lcom/nd/android/backpacksystem/data/ItemType;
new com/nd/android/backpacksystem/data/ItemType
dup
ldc "HY_STOCK"
iconst_3
invokespecial com/nd/android/backpacksystem/data/ItemType/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/backpacksystem/data/ItemType/HY_STOCK Lcom/nd/android/backpacksystem/data/ItemType;
iconst_4
anewarray com/nd/android/backpacksystem/data/ItemType
dup
iconst_0
getstatic com/nd/android/backpacksystem/data/ItemType/FLOWERS Lcom/nd/android/backpacksystem/data/ItemType;
aastore
dup
iconst_1
getstatic com/nd/android/backpacksystem/data/ItemType/GIFTS Lcom/nd/android/backpacksystem/data/ItemType;
aastore
dup
iconst_2
getstatic com/nd/android/backpacksystem/data/ItemType/RAFFLE_TICKETS Lcom/nd/android/backpacksystem/data/ItemType;
aastore
dup
iconst_3
getstatic com/nd/android/backpacksystem/data/ItemType/HY_STOCK Lcom/nd/android/backpacksystem/data/ItemType;
aastore
putstatic com/nd/android/backpacksystem/data/ItemType/$VALUES [Lcom/nd/android/backpacksystem/data/ItemType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private static isBetween(JJJ)Z
lload 4
lload 0
lcmp
iflt L0
lload 4
lload 2
lcmp
ifgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 6
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/backpacksystem/data/ItemType;
ldc com/nd/android/backpacksystem/data/ItemType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/backpacksystem/data/ItemType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static valueToType(J)Lcom/nd/android/backpacksystem/data/ItemType;
ldc2_w 10000L
ldc2_w 19999L
lload 0
invokestatic com/nd/android/backpacksystem/data/ItemType/isBetween(JJJ)Z
ifeq L0
getstatic com/nd/android/backpacksystem/data/ItemType/RAFFLE_TICKETS Lcom/nd/android/backpacksystem/data/ItemType;
areturn
L0:
ldc2_w 20000L
ldc2_w 29999L
lload 0
invokestatic com/nd/android/backpacksystem/data/ItemType/isBetween(JJJ)Z
ifeq L1
getstatic com/nd/android/backpacksystem/data/ItemType/FLOWERS Lcom/nd/android/backpacksystem/data/ItemType;
areturn
L1:
ldc2_w 30000L
ldc2_w 49999L
lload 0
invokestatic com/nd/android/backpacksystem/data/ItemType/isBetween(JJJ)Z
ifeq L2
getstatic com/nd/android/backpacksystem/data/ItemType/GIFTS Lcom/nd/android/backpacksystem/data/ItemType;
areturn
L2:
lload 0
ldc2_w 50001L
lcmp
ifne L3
getstatic com/nd/android/backpacksystem/data/ItemType/HY_STOCK Lcom/nd/android/backpacksystem/data/ItemType;
areturn
L3:
aconst_null
areturn
.limit locals 2
.limit stack 6
.end method

.method public static values()[Lcom/nd/android/backpacksystem/data/ItemType;
getstatic com/nd/android/backpacksystem/data/ItemType/$VALUES [Lcom/nd/android/backpacksystem/data/ItemType;
invokevirtual [Lcom/nd/android/backpacksystem/data/ItemType;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/backpacksystem/data/ItemType;
areturn
.limit locals 0
.limit stack 1
.end method
