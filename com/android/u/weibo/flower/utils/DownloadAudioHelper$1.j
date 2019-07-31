.bytecode 50.0
.class synchronized com/android/u/weibo/flower/utils/DownloadAudioHelper$1
.super java/lang/Thread
.enclosing method com/android/u/weibo/flower/utils/DownloadAudioHelper/startDownload(Ljava/lang/String;Ljava/lang/String;)V
.inner class inner com/android/u/weibo/flower/utils/DownloadAudioHelper$1

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;

.field final synthetic 'val$filePath' Ljava/lang/String;

.field final synthetic 'val$url' Ljava/lang/String;

.method <init>(Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/this$0 Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;
aload 0
aload 2
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/val$url Ljava/lang/String;
aload 0
aload 3
putfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/val$filePath Ljava/lang/String;
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/this$0 Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;
invokestatic com/android/u/weibo/flower/utils/DownloadAudioHelper/access$000(Lcom/android/u/weibo/flower/utils/DownloadAudioHelper;)Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/val$url Ljava/lang/String;
new java/io/File
dup
aload 0
getfield com/android/u/weibo/flower/utils/DownloadAudioHelper$1/val$filePath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual com/common/android/utils/download/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
return
.limit locals 1
.limit stack 5
.end method
