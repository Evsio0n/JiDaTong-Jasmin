.bytecode 50.0
.class synchronized com/common/android/utils/download/progress_updownload/ProgressDownload$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/download/progress_updownload/ProgressDownload/startDownload(Ljava/lang/String;Ljava/io/File;)V
.inner class inner com/common/android/utils/download/progress_updownload/ProgressDownload$2

.field final synthetic 'this$0' Lcom/common/android/utils/download/progress_updownload/ProgressDownload;

.field final synthetic 'val$file' Ljava/io/File;

.field final synthetic 'val$url' Ljava/lang/String;

.method <init>(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;Ljava/lang/String;Ljava/io/File;)V
aload 0
aload 1
putfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
aload 0
aload 2
putfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/val$url Ljava/lang/String;
aload 0
aload 3
putfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/val$file Ljava/io/File;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/val$url Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$2/val$file Ljava/io/File;
invokestatic com/common/android/utils/download/progress_updownload/ProgressDownload/access$100(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;Ljava/lang/String;Ljava/io/File;)V
return
.limit locals 1
.limit stack 3
.end method
