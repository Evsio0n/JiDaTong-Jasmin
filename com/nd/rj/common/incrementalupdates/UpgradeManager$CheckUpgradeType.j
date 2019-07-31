.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;>;"
.inner class public static final enum CheckUpgradeType inner com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType outer com/nd/rj/common/incrementalupdates/UpgradeManager

.field public static final enum 'AUTO_CHECK' Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;

.field public static final enum 'MANUAL_CHECK' Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
dup
ldc "AUTO_CHECK"
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/AUTO_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
new com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
dup
ldc "MANUAL_CHECK"
iconst_1
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
iconst_2
anewarray com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
dup
iconst_0
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/AUTO_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
aastore
dup
iconst_1
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
aastore
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
ldc com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType
astore 2
aload 1
iconst_0
aload 2
iconst_0
iload 0
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
areturn
.limit locals 3
.limit stack 5
.end method
