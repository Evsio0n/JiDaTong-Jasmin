.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
.super android/app/IntentService
.inner class inner com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1

.field public static final 'TAG' Ljava/lang/String;

.field private 'mIsForceUpdate' Z

.field private 'mState' Lcom/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub;

.method static <clinit>()V
ldc com/nd/rj/common/incrementalupdates/IncrementalUpdatesService
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
ldc "IncrementalUpdatesService"
invokespecial android/app/IntentService/<init>(Ljava/lang/String;)V
aload 0
new com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1
dup
aload 0
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService$1/<init>(Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;)V
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mState Lcom/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nd/rj/common/incrementalupdates/IncrementalUpdatesService;)Z
aload 0
getfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mIsForceUpdate Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private failedProcess(Lde/greenrobot/event/EventBus;Z)V
iload 2
ifeq L0
aload 0
ldc2_w -1L
invokestatic com/nd/rj/common/incrementalupdates/Storage/saveAutoCheckCtrl(Landroid/content/Context;J)V
L0:
new com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
dup
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/<init>()V
astore 3
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/setFailedStatus()V
aload 1
aload 3
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 3
.end method

.method private getUpgradeCacheDir()Ljava/io/File;
aload 0
invokestatic com/nd/rj/common/incrementalupdates/Utils/getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
ldc "can not get cache file"
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
L0:
new java/io/File
dup
aload 1
ldc "upgrade"
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L1
aload 1
invokevirtual java/io/File/mkdirs()Z
pop
L1:
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method private installApk(Ljava/lang/String;)V
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 2
new java/lang/StringBuilder
dup
ldc "file://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
ldc "application/vnd.android.package-archive"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
aload 1
aload 2
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
aload 1
aload 3
aload 4
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/unRegisterHelper(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
return
.limit locals 5
.limit stack 4
.end method

.method private unRegisterHelper(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
aload 2
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress/unRegisterEvent(Lde/greenrobot/event/EventBus;)V
aload 3
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/UpdateStatusTip/unRegisterEvent(Lde/greenrobot/event/EventBus;)V
return
.limit locals 4
.limit stack 2
.end method

.method private updateApp(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 3
ifnull L6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isObjectValid()Z
ifne L7
L6:
return
L7:
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Storage/clearCheckInfo(Landroid/content/Context;)V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
astore 6
new com/nd/rj/common/incrementalupdates/UpdateStatusTip
dup
aload 1
invokespecial com/nd/rj/common/incrementalupdates/UpdateStatusTip/<init>(Landroid/content/Context;)V
astore 7
aload 7
aload 6
invokevirtual com/nd/rj/common/incrementalupdates/UpdateStatusTip/registerEvent(Lde/greenrobot/event/EventBus;)V
new com/nd/rj/common/incrementalupdates/DownloadProgress
dup
aload 0
aload 0
aload 0
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/getNotifi(Landroid/content/Context;Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress/<init>(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/NotificationInterface;)V
astore 8
aload 8
aload 6
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress/registerEvent(Lde/greenrobot/event/EventBus;)V
aload 6
new com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
dup
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/<init>()V
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
invokestatic com/nd/rj/common/incrementalupdates/Utils/isExternalStorageWriteable()Z
ifne L8
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/EXTERNAL_STORAGE_NOT_WRITEABLE Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
return
L8:
aload 0
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/getUpgradeCacheDir()Ljava/io/File;
astore 9
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "upgrade cache file path:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 9
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/d(Ljava/lang/String;Ljava/lang/String;)V
new com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl
dup
invokespecial com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/<init>()V
aload 9
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aload 3
aload 6
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeImpl/downloadUpgradeFile(Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;Lde/greenrobot/event/EventBus;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult;
astore 10
aload 10
ifnull L9
aload 10
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/isObjectValid()Z
ifne L10
L9:
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/DOWNLOAD_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
return
L10:
aload 10
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/getFilePath()Ljava/lang/String;
astore 2
aload 10
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult/isFullPackage()Z
ifeq L11
aload 2
astore 1
L12:
aload 9
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 2
aload 2
ifnull L13
aload 2
arraylength
istore 5
iconst_0
istore 4
L14:
iload 4
iload 5
if_icmplt L15
L13:
new com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
dup
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/<init>()V
astore 2
aload 2
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/setClearStatus()V
aload 6
aload 2
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
aload 6
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/unRegisterHelper(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
aload 0
aload 1
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/installApk(Ljava/lang/String;)V
return
L11:
new com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded
dup
invokespecial com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/<init>()V
astore 10
aload 10
invokevirtual com/nd/rj/common/incrementalupdates/DownloadProgress$Downloaded/setMergeStatus()V
aload 6
aload 10
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 1
invokestatic com/nd/rj/common/incrementalupdates/Utils/getInstalledApkPath(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L16
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/SRC_APK_NOT_FOUND Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
return
L16:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 10
new java/io/File
dup
aload 9
aload 10
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/delete()Z
pop
L0:
aload 10
aload 1
iconst_1
invokestatic com/nd/rj/common/incrementalupdates/Utils/copyFile(Ljava/io/File;Ljava/io/File;Z)V
L1:
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/getFullPackageInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/PackageInfo;
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/PackageInfo/getPackageMd5()Ljava/lang/String;
astore 10
new java/io/File
dup
aload 9
aload 10
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 11
aload 11
invokevirtual java/io/File/delete()Z
pop
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 2
L3:
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/ApplyPatch/applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 2
invokevirtual java/io/File/delete()Z
pop
aload 1
invokevirtual java/io/File/delete()Z
pop
aload 11
invokestatic com/nd/rj/common/incrementalupdates/Utils/getFileMD5(Ljava/io/File;)Ljava/lang/String;
aload 10
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L17
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/MD5_CHECK_FAILS Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
aload 11
invokevirtual java/io/File/delete()Z
pop
return
L2:
astore 1
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/COPY_FILE_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
return
L5:
astore 9
aload 0
aload 6
aload 3
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/failedProcess(Lde/greenrobot/event/EventBus;Z)V
aload 0
aload 6
getstatic com/nd/rj/common/incrementalupdates/UpdateStatus/APPLY_PATCH_FAILED Lcom/nd/rj/common/incrementalupdates/UpdateStatus;
aload 8
aload 7
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/postEvent(Lde/greenrobot/event/EventBus;Lcom/nd/rj/common/incrementalupdates/UpdateStatus;Lcom/nd/rj/common/incrementalupdates/DownloadProgress;Lcom/nd/rj/common/incrementalupdates/UpdateStatusTip;)V
aload 2
invokevirtual java/io/File/delete()Z
pop
aload 1
invokevirtual java/io/File/delete()Z
pop
return
L17:
aload 11
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 1
goto L12
L15:
aload 2
iload 4
aaload
astore 3
aload 3
invokevirtual java/io/File/isFile()Z
ifeq L18
aload 1
aload 3
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L18
aload 3
invokevirtual java/io/File/delete()Z
pop
L18:
iload 4
iconst_1
iadd
istore 4
goto L14
.limit locals 12
.limit stack 6
.end method

.method public getNotifi(Landroid/content/Context;Ljava/lang/String;)Lcom/nd/rj/common/incrementalupdates/NotificationInterface;
.catch java/lang/Exception from L0 to L1 using L2
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmple L3
new com/nd/rj/common/incrementalupdates/NotificationApiGT10
dup
invokespecial com/nd/rj/common/incrementalupdates/NotificationApiGT10/<init>()V
astore 3
aload 3
aload 1
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
aload 1
ldc "update"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
ldc "update_icon"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/init(Landroid/content/Context;Ljava/lang/String;I)V 3
aload 0
ldc_w 85678
aload 3
checkcast com/nd/rj/common/incrementalupdates/NotificationApiGT10
invokevirtual com/nd/rj/common/incrementalupdates/NotificationApiGT10/getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
invokevirtual android/support/v4/app/NotificationCompat$Builder/build()Landroid/app/Notification;
invokevirtual com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/startForeground(ILandroid/app/Notification;)V
aload 3
areturn
L3:
new com/nd/rj/common/incrementalupdates/NotificationApiLT11
dup
invokespecial com/nd/rj/common/incrementalupdates/NotificationApiLT11/<init>()V
astore 3
aload 3
aload 1
new java/lang/StringBuilder
dup
aload 2
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
aload 1
ldc "update"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 1
ldc "update_icon"
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokeinterface com/nd/rj/common/incrementalupdates/NotificationInterface/init(Landroid/content/Context;Ljava/lang/String;I)V 3
L0:
aload 0
ldc_w 85678
aload 3
checkcast com/nd/rj/common/incrementalupdates/NotificationApiLT11
invokevirtual com/nd/rj/common/incrementalupdates/NotificationApiLT11/getNotification()Landroid/app/Notification;
invokevirtual com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/startForeground(ILandroid/app/Notification;)V
L1:
aload 3
areturn
L2:
astore 1
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "error:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/getLocalizedMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/rj/common/incrementalupdates/utils/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
aload 0
getfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mState Lcom/nd/rj/common/incrementalupdates/aidl/UpdateServiceState$Stub;
areturn
.limit locals 2
.limit stack 1
.end method

.method public onDestroy()V
aload 0
invokespecial android/app/IntentService/onDestroy()V
aload 0
iconst_1
invokevirtual com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/stopForeground(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
iconst_1
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
L0:
aload 1
ldc "app_name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
ldc "update_info"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo
astore 1
aload 0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo/isForce()Z
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mIsForceUpdate Z
aload 0
aload 0
aload 2
aload 1
invokespecial com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/updateApp(Landroid/content/Context;Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;)V
L1:
iconst_0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mIsForceUpdate Z
return
L2:
astore 1
aload 1
ifnull L5
L4:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/TAG Ljava/lang/String;
aload 1
invokevirtual java/lang/Exception/getLocalizedMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
iconst_0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mIsForceUpdate Z
return
L3:
astore 1
iconst_0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setUpdateState(Z)V
aload 0
iconst_0
putfield com/nd/rj/common/incrementalupdates/IncrementalUpdatesService/mIsForceUpdate Z
aload 1
athrow
.limit locals 3
.limit stack 4
.end method
