.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/GetNewVersionProgress
.super com/nd/android/u/cloud/helper/DoWithProgress
.inner class inner com/nd/android/u/cloud/helper/GetNewVersionProgress$1
.inner class inner com/nd/android/u/cloud/helper/GetNewVersionProgress$2

.field private static final 'TAG' Ljava/lang/String; = "GetNewVersionProgress"

.field private 'downPath' Ljava/lang/String;

.field private 'handler' Landroid/os/Handler;

.field private 'mDownloadModule' Lcom/common/android/utils/download/DownloadModule;

.field private 'notes' Ljava/lang/StringBuffer;

.field private 'url' Ljava/lang/StringBuffer;

.field private 'versonCode' Ljava/lang/StringBuffer;

.field private 'versonName' Ljava/lang/StringBuffer;

.method public <init>(Landroid/app/Activity;Landroid/os/Handler;I)V
aload 0
aload 1
iload 3
invokespecial com/nd/android/u/cloud/helper/DoWithProgress/<init>(Landroid/content/Context;I)V
aload 0
aload 2
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/handler Landroid/os/Handler;
aload 0
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
aload 0
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
aload 0
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/notes Ljava/lang/StringBuffer;
aload 0
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;)Ljava/lang/StringBuffer;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress/downloadFile(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private downloadFile(Ljava/lang/String;)V
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
ldc "GetNewVersionProgress"
ldc "\u8bf7\u88c5SD\u5361\u540e\u66f4\u65b0\u7248\u672c"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131494039
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
invokestatic com/product/android/utils/FileHelper/getDownloadFilePath()Ljava/lang/String;
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/downPath Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress/startDownload(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method private getVerInfo()I
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
iconst_0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
iconst_0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/length()I
invokevirtual java/lang/StringBuffer/delete(II)Ljava/lang/StringBuffer;
pop
invokestatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getInstance()Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
getstatic com/product/android/business/config/Configuration/MYAPPID I
getstatic com/product/android/business/config/Configuration/MYPRODUCT Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getAppByAppid(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
astore 1
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getVer()I
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getVername()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/notes Ljava/lang/StringBuffer;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getNotes()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapApp/getDown_url()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L1:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L3
ldc_w 2131493349
ireturn
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private startDownload(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
ifnonnull L0
aload 0
new com/common/android/utils/download/DownloadModule
dup
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokespecial com/common/android/utils/download/DownloadModule/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_APP_NAME Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setSoftName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/downPath Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadDirPath(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
ldc_w 2131492868
invokestatic com/nd/android/u/cloud/helper/PubFunction/getResourcesString(I)Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadFileName(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
aconst_null
invokevirtual com/common/android/utils/download/DownloadModule/setIntentClassName(Ljava/lang/Class;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
aload 1
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUrl(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
getstatic com/product/android/business/config/Configuration/NOTIFICATION_ICON I
invokevirtual com/common/android/utils/download/DownloadModule/setDownloadIco(I)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
sipush 10001
invokevirtual com/common/android/utils/download/DownloadModule/setSoftUid(I)V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
invokevirtual com/common/android/utils/download/DownloadModule/startChapterDownload()V
return
L0:
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
invokevirtual com/common/android/utils/download/DownloadModule/isDownloading()Z
ifeq L1
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
ldc_w 2131493587
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
invokevirtual com/common/android/utils/download/DownloadModule/startChapterDownload()V
return
.limit locals 2
.limit stack 4
.end method

.method public doProcedure()I
aload 0
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress/getVerInfo()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public doSuccess()V
aload 0
invokespecial com/nd/android/u/cloud/helper/DoWithProgress/doSuccess()V
ldc "GetNewVersionProgress"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "versonCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "  versonName:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " url"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/url Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/length()I
ifle L0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonCode Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokestatic ims/utils/CommUtil/parseInt(Ljava/lang/String;)I
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokestatic com/nd/android/u/cloud/helper/PubFunction/getAppVersionCode(Landroid/content/Context;)I
isub
ifle L0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 2130838626
invokevirtual android/app/AlertDialog$Builder/setIcon(I)Landroid/app/AlertDialog$Builder;
pop
aload 3
ldc_w 2131494503
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493596
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/versonName Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 2
astore 1
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/notes Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuffer/length()I
ifle L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131495482
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/notes Ljava/lang/StringBuffer;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L1:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493520
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 3
ldc_w 2131495491
new com/nd/android/u/cloud/helper/GetNewVersionProgress$1
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress$1/<init>(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
ldc_w 2131495489
new com/nd/android/u/cloud/helper/GetNewVersionProgress$2
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/GetNewVersionProgress$2/<init>(Lcom/nd/android/u/cloud/helper/GetNewVersionProgress;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
pop
aload 3
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L0:
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mContext Landroid/content/Context;
ldc_w 2131494504
invokestatic com/nd/android/u/cloud/helper/PubFunction/getResourcesString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public isDownloading()Z
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
invokevirtual com/common/android/utils/download/DownloadModule/isDownloading()Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public stopCurrent()V
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/helper/GetNewVersionProgress/mDownloadModule Lcom/common/android/utils/download/DownloadModule;
invokevirtual com/common/android/utils/download/DownloadModule/stopCurrent()V
L0:
return
.limit locals 1
.limit stack 1
.end method
