.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/AutoCheckUpgradeProcess
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/CheckUpgradeProcess

.field private static final 'CHECK_INTERVAL' J = 604800000L


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkFailedProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public externalStorageNotWriteableProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public getCheckUpgradeType()Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/AUTO_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isUpdatingProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public localVersionIsNewestProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public networkErrorProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public newVersionAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getNewestVersionCode()I
istore 6
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Storage/getCheckInfo(Landroid/content/Context;)Lcom/nd/rj/common/incrementalupdates/Storage$CheckInfo;
astore 7
aload 7
invokevirtual com/nd/rj/common/incrementalupdates/Storage$CheckInfo/isObjectValid()Z
ifeq L0
iconst_0
istore 5
iload 6
aload 7
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
if_icmple L1
iconst_1
istore 4
L2:
iload 4
ifeq L3
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Storage/clearCheckInfo(Landroid/content/Context;)V
aload 1
aload 2
aload 3
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/popupUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
L3:
return
L1:
iload 5
istore 4
iload 6
aload 7
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
if_icmpne L2
iload 5
istore 4
invokestatic java/lang/System/currentTimeMillis()J
aload 7
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mCheckTime J
lsub
ldc2_w 604800000L
lcmp
ifle L2
iconst_1
istore 4
goto L2
L0:
aload 7
iload 6
putfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
aload 7
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mCheckTime J
aload 1
aload 7
invokestatic com/nd/rj/common/incrementalupdates/Storage/saveCheckInfo(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/Storage$CheckInfo;)V
aload 1
aload 2
aload 3
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/popupUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
return
.limit locals 8
.limit stack 4
.end method

.method public offlineProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method

.method public urlErrorProcess(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 0
.end method
