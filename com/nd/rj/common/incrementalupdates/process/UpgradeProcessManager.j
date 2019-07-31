.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/process/UpgradeProcessManager
.super java/lang/Object

.field public static final 'TAG' Ljava/lang/String;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/process/UpgradeProcessManager
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/process/UpgradeProcessManager/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getNewVersionCode(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
iconst_0
istore 2
L0:
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/<init>()V
astore 0
aload 0
aload 1
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult; 1
astore 1
L1:
aload 1
ifnull L4
L3:
getstatic com/nd/rj/common/incrementalupdates/process/UpgradeProcessManager/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "CheckVersionResult:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L4:
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/getUpgradeInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo; 0
astore 0
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L8
L5:
iconst_m1
ireturn
L6:
aload 0
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionCode()I
istore 3
L7:
iload 3
ireturn
L2:
astore 0
aload 0
ifnull L9
iconst_m1
istore 2
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/nd/rj/common/incrementalupdates/process/UpgradeProcessManager/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "exp:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L9:
iload 2
ireturn
L8:
aload 0
ifnonnull L6
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method
