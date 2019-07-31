.bytecode 50.0
.class synchronized com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;Ljava/lang/Void;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;>;"
.inner class private static CheckVersionTask inner com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask outer com/nd/rj/common/incrementalupdates/UpgradeManager

.field private 'mAppName' Ljava/lang/String;

.field private 'mCheckResultProcess' Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;

.field private 'mCtx' Landroid/content/Context;

.field private 'mUpgradeInterface' Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;

.method <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;)V
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mAppName Ljava/lang/String;
aload 0
aload 3
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
return
.limit locals 4
.limit stack 2
.end method

.method private calcCurVersionMd5(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/getCachedCurMd5()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
invokestatic com/nd/rj/common/incrementalupdates/ApplyPatch/canUseNative()Z
ifne L1
ldc ""
areturn
L1:
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Utils/getInstalledApkPath(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
ldc ""
areturn
L2:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic com/nd/rj/common/incrementalupdates/Utils/getFileMD5(Ljava/io/File;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
ldc ""
areturn
L3:
aload 1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/cacheCurMd5(Ljava/lang/String;)V
aload 1
areturn
L0:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method private isNeedCheck(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;)Z
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
aload 2
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType/MANUAL_CHECK Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;
if_acmpne L0
iconst_1
istore 7
L1:
iload 7
ifeq L2
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "justin isNeedCheck = true ; curTime="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
aload 1
lload 3
invokestatic com/nd/rj/common/incrementalupdates/Storage/saveAutoCheckCtrl(Landroid/content/Context;J)V
L2:
iload 7
ireturn
L0:
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Storage/getAutoCheckCtrl(Landroid/content/Context;)J
lstore 5
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "justin checkTime"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
lload 5
ldc2_w -1L
lcmp
ifne L3
iconst_1
istore 7
goto L1
L3:
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "justin (curTime - checkTime)="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
lload 3
lload 5
lsub
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
lload 3
lload 5
lsub
ldc2_w 3000000L
lcmp
ifle L4
iconst_1
istore 7
goto L1
L4:
iconst_0
istore 7
goto L1
.limit locals 8
.limit stack 6
.end method

.method private notifyCheckUpgradeResult()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "notify_check_upgrade_result"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/getCheckUpgradeType()Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType; 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/isNeedCheck(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/UpgradeManager$CheckUpgradeType;)Z
ifne L0
getstatic com/nd/rj/common/incrementalupdates/UpgradeManager/TAG Ljava/lang/String;
ldc "justin !isNeedCheck() == true "
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/LOCAL_VERSION_IS_NEWEST Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
astore 2
L1:
aload 2
areturn
L0:
aload 0
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/<init>()V
putfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/getCachedCurMd5()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 1
iconst_0
aaload
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/setCurMd5(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult; 1
areturn
L2:
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult; 1
astore 3
aload 3
astore 2
aload 3
invokestatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/hasNewVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;)Z
ifeq L1
aload 0
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/calcCurVersionMd5(Landroid/content/Context;)Ljava/lang/String;
astore 4
aload 3
astore 2
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
iconst_0
aaload
aload 4
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam/setCurMd5(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
aload 1
iconst_0
aaload
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult; 1
areturn
.limit locals 5
.limit stack 3
.end method

.method protected volatile transient synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/doInBackground([Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;)V
iconst_0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/LOCAL_VERSION_IS_NEWEST Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L0
iconst_0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/access$0(Z)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/notifyCheckUpgradeResult()V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/localVersionIsNewestProcess(Landroid/content/Context;)V 1
L1:
return
L0:
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NEW_VERSION_AVAILABLE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L2
iconst_1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/access$0(Z)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/notifyCheckUpgradeResult()V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mAppName Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/getUpgradeInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo; 0
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/newVersionAvailable(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V 3
return
L2:
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/FORCED_UPGRADE Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L3
iconst_1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/access$0(Z)V
aload 0
invokespecial com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/notifyCheckUpgradeResult()V
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mAppName Ljava/lang/String;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mUpgradeInterface Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface;
invokeinterface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface/getUpgradeInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo; 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/popupUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
return
L3:
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/CHECK_VERSION_FAILED Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L4
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/checkFailedProcess(Landroid/content/Context;)V 1
return
L4:
aload 1
getstatic com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult/NETWORK_ERROR Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
if_acmpne L1
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCheckResultProcess Lcom/nd/rj/common/incrementalupdates/CheckUpgradeProcess;
aload 0
getfield com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/mCtx Landroid/content/Context;
invokeinterface com/nd/rj/common/incrementalupdates/CheckUpgradeProcess/networkErrorProcess(Landroid/content/Context;)V 1
return
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult
invokevirtual com/nd/rj/common/incrementalupdates/UpgradeManager$CheckVersionTask/onPostExecute(Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
iconst_1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
return
.limit locals 1
.limit stack 1
.end method
