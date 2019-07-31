.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask
.super java/lang/Thread
.inner class private DownloadTask inner com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask outer com/nd/android/u/publicNumber/controller/PspMediaFileDownloader

.field public 'isRunning' Z

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;

.method public <init>(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/this$0 Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
aload 0
invokespecial java/lang/Thread/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/isRunning Z
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/isRunning Z
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/this$0 Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
invokestatic com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/access$200(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Lcom/nd/android/u/business/com/ProgressDownloadManager;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/this$0 Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
invokestatic com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/access$000(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/controller/PspMediaFileDownloader$DownloadTask/this$0 Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;
invokestatic com/nd/android/u/publicNumber/controller/PspMediaFileDownloader/access$100(Lcom/nd/android/u/publicNumber/controller/PspMediaFileDownloader;)Ljava/io/File;
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
return
.limit locals 1
.limit stack 3
.end method
