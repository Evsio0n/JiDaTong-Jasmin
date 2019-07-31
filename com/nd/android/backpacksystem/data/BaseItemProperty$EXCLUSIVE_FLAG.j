.bytecode 50.0
.class public final synchronized enum com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;>;"
.inner class public static final enum EXCLUSIVE_FLAG inner com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG outer com/nd/android/backpacksystem/data/BaseItemProperty

.field private static final synthetic '$VALUES' [Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;

.field public static final enum 'CAN_NOT_GIVE' Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;

.field public static final enum 'CAN_NOT_PLANT' Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;

.field public static final enum 'NORMAL' Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;

.field private 'mValue' I

.method static <clinit>()V
new com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
dup
ldc "NORMAL"
iconst_0
iconst_0
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/NORMAL Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
new com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
dup
ldc "CAN_NOT_GIVE"
iconst_1
iconst_1
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_GIVE Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
new com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
dup
ldc "CAN_NOT_PLANT"
iconst_2
iconst_2
invokespecial com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/<init>(Ljava/lang/String;II)V
putstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_PLANT Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
iconst_3
anewarray com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
dup
iconst_0
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/NORMAL Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
aastore
dup
iconst_1
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_GIVE Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
aastore
dup
iconst_2
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/CAN_NOT_PLANT Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
aastore
putstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/$VALUES [Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;II)V
.signature "(I)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/mValue I
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;)I
aload 0
getfield com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/mValue I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static value2Flag(I)Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
invokestatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/values()[Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 4
getfield com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/mValue I
iload 0
if_icmpne L2
aload 4
areturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/NORMAL Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
areturn
.limit locals 5
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
ldc com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
getstatic com/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG/$VALUES [Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
invokevirtual [Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/backpacksystem/data/BaseItemProperty$EXCLUSIVE_FLAG;
areturn
.limit locals 0
.limit stack 1
.end method
