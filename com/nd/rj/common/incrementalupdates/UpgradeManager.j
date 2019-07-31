.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/UpgradeManager
.super java/lang/Object
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$1
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$2
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$3
.inner class inner com/nd/rj/common/incrementalupdates/UpgradeManager$4
.inner class public static final enum CheckUpgradeType inner com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType outer com/nd/rj/common/incrementalupdates/UpgradeManager
.inner class private static CheckVersionTask inner com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask outer com/nd/rj/common/incrementalupdates/UpgradeManager

.field private static final 'AUTO_CHECK_INTERVAL' J = 3000000L


.field public static final 'NOTIFY_CHECK_UPGRADE_RESULT' Ljava/lang/String; = "notify_check_upgrade_result"

.field public static final 'TAG' Ljava/lang/String;

.field private static 'sCachedCurMd5' Ljava/lang/String;

.field private static 'sExitSoft' Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;

.field private static 'sHasNewVersion' Z

.field private static final 'sIsUpdating' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final 'sSES' Ljava/util/concurrent/ScheduledExecutorService;

.field private static 'sSF' Ljava/util/concurrent/ScheduledFuture; signature "Ljava/util/concurrent/ScheduledFuture<*>;"

.field private 'mConnection' Landroid/content/ServiceConnection;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sIsUpdating Ljava/util/concurrent/atomic/AtomicBoolean;
invokestatic java/util/concurrent/Executors/newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSES Ljava/util/concurrent/ScheduledExecutorService;
iconst_0
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sHasNewVersion Z
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/rj/common/incrementalupdates/UpgradeManager$1
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$1/<init>(Lcom/nd/rj/common/incrementalupdates/UpgradeManager;)V
putfield com/nd/rj/common/incrementalupdates/UpgradeManager/mConnection Landroid/content/ServiceConnection;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$0(Z)V
iload 0
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sHasNewVersion Z
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Landroid/content/Context;)V
aload 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/showForceUpdateInterceptDialog(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 1
.end method

.method public static allowLaunchApp(Landroid/content/Context;)Z
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Storage/getForceUpdateTime(Landroid/content/Context;)J
lstore 1
lload 1
ldc2_w -1L
lcmp
ifeq L0
invokestatic java/lang/System/currentTimeMillis()J
lload 1
lsub
ldc2_w 3500L
lcmp
ifge L0
aload 0
ldc2_w -1L
invokestatic com/nd/rj/common/incrementalupdates/Storage/setForceUpdateTime(Landroid/content/Context;J)V
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static cacheCurMd5(Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorenter
L0:
aload 0
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sCachedCurMd5 Ljava/lang/String;
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorexit
L1:
return
L2:
astore 0
L3:
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorexit
L4:
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method public static checkUpgrade(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
new java/lang/StringBuilder
dup
aload 0
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/packageName Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ":upgrade"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/getCurPorcessName(Landroid/content/Context;)Ljava/lang/String;
aload 3
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
ldc "  curProcessName.equalsIgnoreCase(upgradeServiceProcessName) = true"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L0:
aload 1
ifnull L1
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
if_acmpne L2
new com/nd/rj/common/incrementalupdates/ManualCheckUpgradeProcess
dup
invokespecial com/nd/rj/common/incrementalupdates/ManualCheckUpgradeProcess/<init>()V
astore 1
L3:
invokestatic com/nd/rj/common/incrementalupdates/Utils/isExternalStorageWriteable()Z
ifne L4
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/externalStorageNotWriteableProcess(Landroid/content/Context;)V 1
return
L2:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
ldc "  new AutoCheckUpgradeProcess()"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
new com/nd/rj/common/incrementalupdates/AutoCheckUpgradeProcess
dup
invokespecial com/nd/rj/common/incrementalupdates/AutoCheckUpgradeProcess/<init>()V
astore 1
goto L3
L4:
aload 2
ifnull L5
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isObjectValid()Z
ifne L6
L5:
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/checkFailedProcess(Landroid/content/Context;)V 1
return
L6:
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/isUpdating()Z
ifeq L7
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/isUpdatingProcess(Landroid/content/Context;)V 1
return
L7:
aload 0
ldc com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/isUpgradeServiceExist(Landroid/content/Context;Ljava/lang/Class;)Z
ifeq L8
aload 0
ldc com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
aload 1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/isUpgradeServiceRunning(Landroid/content/Context;Ljava/lang/Class;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)Z
ifne L1
L8:
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Utils/isOnline(Landroid/content/Context;)Z
ifeq L9
new com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask
dup
aload 0
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getAppName()Ljava/lang/String;
aload 1
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/<init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)V
iconst_1
anewarray com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L10:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
ifnull L11
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aconst_null
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
L11:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSES Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/rj/common/incrementalupdates/UpgradeManager$2
dup
aload 0
aload 2
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$2/<init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
ldc2_w 3600L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
return
L9:
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/offlineProcess(Landroid/content/Context;)V 1
goto L10
.limit locals 4
.limit stack 5
.end method

.method public static checkUpgradeWithOutTips(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
new java/lang/StringBuilder
dup
aload 0
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/packageName Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ":upgrade"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/getCurPorcessName(Landroid/content/Context;)Ljava/lang/String;
aload 3
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
ldc "  curProcessName.equalsIgnoreCase(upgradeServiceProcessName) = true"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L0:
aload 1
ifnull L1
aload 1
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
if_acmpne L2
new com/nd/rj/common/incrementalupdates/ManualCheckUpgradeProcess
dup
invokespecial com/nd/rj/common/incrementalupdates/ManualCheckUpgradeProcess/<init>()V
astore 1
L3:
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/isUpdating()Z
ifeq L4
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/isUpdatingProcess(Landroid/content/Context;)V 1
return
L2:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
ldc "  new AutoCheckUpgradeProcess()"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
new com/nd/rj/common/incrementalupdates/AutoCheckUpgradeProcess
dup
invokespecial com/nd/rj/common/incrementalupdates/AutoCheckUpgradeProcess/<init>()V
astore 1
goto L3
L4:
invokestatic com/nd/rj/common/incrementalupdates/Utils/isExternalStorageWriteable()Z
ifne L5
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/externalStorageNotWriteableProcess(Landroid/content/Context;)V 1
return
L5:
aload 2
ifnull L6
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/isObjectValid()Z
ifne L7
L6:
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/checkFailedProcess(Landroid/content/Context;)V 1
return
L7:
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Utils/isOnline(Landroid/content/Context;)Z
ifeq L8
new com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask
dup
aload 0
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/getAppName()Ljava/lang/String;
aload 1
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/<init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)V
iconst_1
anewarray com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L9:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
ifnull L10
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
aconst_null
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
L10:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSES Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/rj/common/incrementalupdates/UpgradeManager$3
dup
aload 0
aload 2
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$3/<init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)V
ldc2_w 3600L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sSF Ljava/util/concurrent/ScheduledFuture;
return
L8:
aload 1
aload 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/offlineProcess(Landroid/content/Context;)V 1
goto L9
.limit locals 4
.limit stack 5
.end method

.method public static exitSoft()V
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sExitSoft Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;
ifnull L0
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sExitSoft Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;
invokeinterface com/nd/rj/common/incrementalupdates/ExitSoftwareInterface/exitSoftware()V 0
L0:
return
.limit locals 0
.limit stack 1
.end method

.method public static getCachedCurMd5()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorenter
L0:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sCachedCurMd5 Ljava/lang/String;
astore 0
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorexit
L1:
aload 0
areturn
L2:
astore 0
L3:
ldc com/nd/rj/common/incrementalupdates/UpgradeManager
monitorexit
L4:
aload 0
athrow
.limit locals 1
.limit stack 1
.end method

.method private static getCurPorcessName(Landroid/content/Context;)Ljava/lang/String;
invokestatic android/os/Process/myPid()I
istore 1
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
invokevirtual android/app/ActivityManager/getRunningAppProcesses()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
ldc ""
areturn
L1:
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/app/ActivityManager$RunningAppProcessInfo
astore 2
aload 2
getfield android/app/ActivityManager$RunningAppProcessInfo/pid I
iload 1
if_icmpne L0
aload 2
getfield android/app/ActivityManager$RunningAppProcessInfo/processName Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method public static hasNewVersion()Z
.annotation visible Ljava/lang/Deprecated;
.end annotation
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sHasNewVersion Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static hasNewVersion(Landroid/content/Context;)Z
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sHasNewVersion Z
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Utils/getVersionCode(Landroid/content/Context;)I
istore 1
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Storage/getCheckInfo(Landroid/content/Context;)Lcom/nd/rj/common/incrementalupdates/Storage$CheckInfo;
astore 0
aload 0
ifnonnull L2
iconst_0
ireturn
L2:
aload 0
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
iload 1
if_icmpgt L1
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isUpdating()Z
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sIsUpdating Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method private static isUpgradeServiceExist(Landroid/content/Context;Ljava/lang/Class;)Z
.signature "(Landroid/content/Context;Ljava/lang/Class<*>;)Z"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
L0:
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
ldc_w 2147483647
invokevirtual android/app/ActivityManager/getRunningServices(I)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L1:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
L3:
goto L6
L4:
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/app/ActivityManager$RunningServiceInfo
astore 3
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
aload 3
getfield android/app/ActivityManager$RunningServiceInfo/service Landroid/content/ComponentName;
invokevirtual android/content/ComponentName/getClassName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 2
L5:
iload 2
ifeq L1
iconst_1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
L6:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method private static isUpgradeServiceRunning(Landroid/content/Context;Ljava/lang/Class;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)Z
.signature "(Landroid/content/Context;Ljava/lang/Class<*>;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)Z"
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
new com/nd/rj/common/incrementalupdates/UpgradeManager$4
dup
aload 0
aload 2
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$4/<init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)V
iconst_1
invokevirtual android/content/Context/bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
pop
L1:
iconst_1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 6
.end method

.method public static popupUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/incrementalupdates/UpgradeDialogActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 3
ldc "app_name"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "update_info"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public static setExitSoftInterface(Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;)V
aload 0
putstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sExitSoft Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;
return
.limit locals 1
.limit stack 1
.end method

.method public static setUpdateState(Z)V
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/sIsUpdating Ljava/util/concurrent/atomic/AtomicBoolean;
iload 0
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private static showForceUpdateInterceptDialog(Landroid/content/Context;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
L0:
new android/content/Intent
dup
aload 0
ldc com/nd/rj/common/incrementalupdates/activity/ForceUpgradeInterceptDialogActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual android/content/ActivityNotFoundException/printStackTrace()V
aload 0
ldc "\u76ee\u524d\u6b63\u5728\u5f3a\u5236\u5347\u7ea7\u4e2d....."
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L3:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method
