.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/utils/DownloadAudioHelper
.super java/lang/Object
.implements com/common/android/utils/download/ProgressDownloadManager$onDonwloadListener
.inner class inner com/android/u/weibo/flower/utils/DownloadAudioHelper$1

.field public static final 'MSG_FAIL' I = 101


.field public static final 'MSG_SUCCESS' I = 100


.field private 'mDownloadMgr' Lcom/common/android/utils/download/ProgressDownloadManager;

.field public 'mHandler' Landroid/os/Handler;

.field public 'mIsDownloading' Z

.method public <init>(Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mIsDownloading Z
aload 0
aload 1
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;)Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onFail(ILjava/lang/String;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mIsDownloading Z
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mHandler Landroid/os/Handler;
bipush 101
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public onProgress(JJ)V
return
.limit locals 5
.limit stack 0
.end method

.method public onSuccess(Ljava/io/File;)V
aload 0
iconst_0
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mIsDownloading Z
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mHandler Landroid/os/Handler;
bipush 100
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mIsDownloading Z
ifeq L0
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mIsDownloading Z
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
ifnonnull L1
aload 0
new com/common/android/utils/download/ProgressDownloadManager
dup
invokespecial com/common/android/utils/download/ProgressDownloadManager/<init>()V
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
invokevirtual com/common/android/utils/download/ProgressDownloadManager/setOnDownloadListener(Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;)V
L1:
new com/android/u/weibo/flower/utils/DownloadAudioHelper$1
dup
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/flower/utils/DownloadAudioHelper$1/<init>(Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual com/android/u/weibo/flower/utils/DownloadAudioHelper$1/start()V
return
.limit locals 3
.limit stack 5
.end method

.method public stopDownload()V
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper/mDownloadMgr Lcom/common/android/utils/download/ProgressDownloadManager;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/cancelDownload()V
L0:
return
.limit locals 1
.limit stack 1
.end method
