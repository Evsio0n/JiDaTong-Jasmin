.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/controller/PspMediaFileDownloader
.super java/lang/Object
.implements com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener
.inner class private DownloadTask inner com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask outer com/nd/android/u/publicNumber/controller/PspMediaFileDownloader

.field private 'isCancelDownload' Z

.field private 'mDownloadListener' Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;

.field private 'mDownloadTask' Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask;

.field private 'mDownloader' Lcom/nd/android/u/business/com/ProgressDownloadManager;

.field private 'mFile' Ljava/io/File;

.field private 'mFilePath' Ljava/lang/String;

.field private 'mFilePathTmp' Ljava/lang/String;

.field private 'mFileTemp' Ljava/io/File;

.field private 'mMessage' Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;

.field private 'mUrl' Ljava/lang/String;

.method public <init>(Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/init()V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
L0:
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
iconst_1
invokevirtual com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/getResource(I)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mUrl Ljava/lang/String;
aload 0
aload 1
getfield com/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public/mMultimediaInfo Lcom/nd/android/u/publicNumber/ui/bean/MultimediaInfo;
invokevirtual com/nd/android/u/publicNumber/ui/bean/MultimediaInfo/getmMultimediaUrl()Ljava/lang/String;
invokestatic com/nd/android/u/allCommonUtils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "temp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePathTmp Ljava/lang/String;
aload 0
new java/io/File
dup
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePathTmp Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mMessage Lcom/nd/android/u/publicNumber/ui/bean/DisplayMessage_Public;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/init()V
L0:
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mUrl Ljava/lang/String;
aload 0
aload 2
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
aload 0
new java/io/File
dup
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "temp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePathTmp Ljava/lang/String;
aload 0
new java/io/File
dup
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePathTmp Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Ljava/io/File;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
new com/nd/android/u/business/com/ProgressDownloadManager
dup
invokespecial com/nd/android/u/business/com/ProgressDownloadManager/<init>()V
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/setOnDownloadListener(Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;)V
aload 0
new com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask
dup
aload 0
invokespecial com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/<init>(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)V
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadTask Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask;
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/isCancelDownload Z
return
.limit locals 1
.limit stack 4
.end method

.method public DownloadListener(Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public cancelDownload()V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloader Lcom/nd/android/u/business/com/ProgressDownloadManager;
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/cancelDownload()V
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/isCancelDownload Z
return
.limit locals 1
.limit stack 2
.end method

.method public getFilePath()Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFilePath Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onFail(ILjava/lang/String;)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L0:
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
iload 1
aload 2
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onFail(ILjava/lang/String;)V 2
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public onProgress(JJ)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
lload 1
lload 3
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onProgress(JJ)V 4
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public onSuccess(Ljava/io/File;)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/isCancelDownload Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L1:
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L2
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L2:
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
ifnull L3
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadListener Lcom/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener;
aload 1
invokeinterface com/nd/android/u/business/com/ProgressDownloadManager$onDonwloadListener/onSuccess(Ljava/io/File;)V 1
L3:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L2
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFileTemp Ljava/io/File;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
goto L2
.limit locals 2
.limit stack 2
.end method

.method public startDownload(Z)V
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
iload 1
ifeq L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L0:
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/isCancelDownload Z
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadTask Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadTask Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask;
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/isRunning Z
ifne L1
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mDownloadTask Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask;
invokevirtual com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/start()V
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public targetFileExist()Z
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/mFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ireturn
.limit locals 1
.limit stack 1
.end method
