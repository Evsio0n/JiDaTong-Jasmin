.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/UpgradeManager$4
.super java/lang/Object
.implements android/content/ServiceConnection
.enclosing method com/nd/rj/common/incrementalupdates/UpgradeManager/isUpgradeServiceRunning(Landroid/content/Context;Ljava/lang/Class;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)Z
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$4

.field private final synthetic 'val$ctx' Landroid/content/Context;

.field private final synthetic 'val$process' Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;

.method <init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$process Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.catch android/os/RemoteException from L0 to L1 using L2
.catch android/os/RemoteException from L3 to L4 using L2
.catch android/os/RemoteException from L5 to L6 using L2
aload 2
ifnull L1
aload 2
invokestatic com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub/asInterface(Landroid/os/IBinder;)Lcom/nd/rj/common/incrementalupdates/aidl/UpdateServiceState;
astore 1
L0:
aload 1
invokeinterface com/nd/rj/common/incrementalupdates/aidl/UpdateServiceState/isForceUpdate()Z 0
ifeq L5
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
invokestatic com/nd/rj/common/incrementalupdates/Utils/isOnline(Landroid/content/Context;)Z
ifeq L3
ldc "test"
ldc "\u670d\u52a1\u5f3a\u5236\u5347\u7ea7\uff0c\u6709\u7f51\u7edc"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/access$1(Landroid/content/Context;)V
L1:
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
aload 0
invokevirtual android/content/Context/unbindService(Landroid/content/ServiceConnection;)V
return
L3:
ldc "test"
ldc "\u670d\u52a1\u5f3a\u5236\u5347\u7ea7\uff0c\u6ca1\u6709\u7f51\u7edc"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$process Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/offlineProcess(Landroid/content/Context;)V 1
L4:
goto L1
L2:
astore 1
aload 1
invokevirtual android/os/RemoteException/printStackTrace()V
goto L1
L5:
ldc "test"
ldc "\u670d\u52a1\u975e\u5f3a\u5236\u5347\u7ea7\uff0c\u6b63\u5728\u66f4\u65b0\u4e2d"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$process Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$4/val$ctx Landroid/content/Context;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/isUpdatingProcess(Landroid/content/Context;)V 1
L6:
goto L1
.limit locals 3
.limit stack 2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
return
.limit locals 2
.limit stack 0
.end method
