.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$DownloadTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;>;"
.inner class private DownloadTask inner com/product/android/ui/activity/WebViewActivity$DownloadTask outer com/product/android/ui/activity/WebViewActivity

.field public 'running' Z

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method private <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$DownloadTask/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity$DownloadTask/running Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/product/android/ui/activity/WebViewActivity;Lcom/product/android/ui/activity/WebViewActivity$1;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/WebViewActivity$DownloadTask/<init>(Lcom/product/android/ui/activity/WebViewActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
.catch java/io/IOException from L0 to L1 using L2
aload 0
iconst_1
putfield com/product/android/ui/activity/WebViewActivity$DownloadTask/running Z
aload 1
iconst_0
aaload
astore 1
L0:
aload 1
invokestatic com/product/android/utils/FileHelper/getDefaultAudioFile(Ljava/lang/String;)Ljava/io/File;
astore 2
aload 0
getfield com/product/android/ui/activity/WebViewActivity$DownloadTask/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$2200(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/download/ProgressDownloadManager;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$DownloadTask/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$2100(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;
invokevirtual com/common/android/utils/download/ProgressDownloadManager/setOnDownloadListener(Lcom/common/android/utils/download/ProgressDownloadManager$onDonwloadListener;)V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$DownloadTask/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$2200(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/common/android/utils/download/ProgressDownloadManager;
aload 1
aload 2
invokevirtual com/common/android/utils/download/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
L1:
aload 0
iconst_0
putfield com/product/android/ui/activity/WebViewActivity$DownloadTask/running Z
aconst_null
areturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/product/android/ui/activity/WebViewActivity$DownloadTask/doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method
