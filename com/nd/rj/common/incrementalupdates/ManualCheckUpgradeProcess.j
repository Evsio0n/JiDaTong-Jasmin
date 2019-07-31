.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/ManualCheckUpgradeProcess
.super java/lang/Object
.implements com/nd/rj/common/incrementalupdates/CheckUpgradeProcess

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public checkFailedProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public externalStorageNotWriteableProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/EXTERNAL_STORAGE_NOT_WRITEABLE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCheckUpgradeType()Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isUpdatingProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/UPDATING Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public localVersionIsNewestProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/LATEST_VERSION Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public networkErrorProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public newVersionAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
aload 1
aload 2
aload 3
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/popupUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
return
.limit locals 4
.limit stack 3
.end method

.method public offlineProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/OFF_LINE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method

.method public urlErrorProcess(Landroid/content/Context;)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/CHECK_URL_ERROR Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
invokestatic com/nd/rj/common/incrementalupdates/UpdateStatus/showTip(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;)V
return
.limit locals 2
.limit stack 2
.end method
