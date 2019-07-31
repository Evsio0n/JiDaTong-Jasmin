.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;>;"
.inner class public static final enum CheckVersionResult inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult outer com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface

.field public static final enum 'CHECK_URL_ERROR' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field public static final enum 'CHECK_VERSION_FAILED' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field private static final synthetic 'ENUM$VALUES' [Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field public static final enum 'FORCED_UPGRADE' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field public static final enum 'LOCAL_VERSION_IS_NEWEST' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field public static final enum 'NETWORK_ERROR' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.field public static final enum 'NEW_VERSION_AVAILABLE' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;

.method static <clinit>()V
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "NEW_VERSION_AVAILABLE"
iconst_0
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NEW_VERSION_AVAILABLE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "LOCAL_VERSION_IS_NEWEST"
iconst_1
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/LOCAL_VERSION_IS_NEWEST Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "CHECK_VERSION_FAILED"
iconst_2
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "NETWORK_ERROR"
iconst_3
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "FORCED_UPGRADE"
iconst_4
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/FORCED_UPGRADE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
ldc "CHECK_URL_ERROR"
iconst_5
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
bipush 6
anewarray com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
dup
iconst_0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NEW_VERSION_AVAILABLE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
dup
iconst_1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/LOCAL_VERSION_IS_NEWEST Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
dup
iconst_2
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
dup
iconst_3
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
dup
iconst_4
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/FORCED_UPGRADE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
dup
iconst_5
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aastore
putstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
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

.method public static hasNewVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NEW_VERSION_AVAILABLE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpeq L2
aload 0
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/FORCED_UPGRADE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L1
L2:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
ldc com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/ENUM$VALUES [Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
astore 1
aload 1
arraylength
istore 0
iload 0
anewarray com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
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
