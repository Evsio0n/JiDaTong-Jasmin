.bytecode 50.0
.class synchronized com/common/android/utils/download/progress_updownload/ProgressDownload$1
.super android/os/Handler
.enclosing method com/common/android/utils/download/progress_updownload/ProgressDownload
.inner class inner com/common/android/utils/download/progress_updownload/ProgressDownload$1

.field final synthetic 'this$0' Lcom/common/android/utils/download/progress_updownload/ProgressDownload;

.method <init>(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)V
aload 0
aload 1
putfield com/common/android/utils/download/progress_updownload/ProgressDownload$1/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$1/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
invokestatic com/common/android/utils/download/progress_updownload/ProgressDownload/access$000(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
ifnonnull L0
return
L0:
aload 1
getfield android/os/Message/what I
tableswitch 256
L1
L2
L3
default : L4
L4:
return
L1:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$1/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
invokestatic com/common/android/utils/download/progress_updownload/ProgressDownload/access$000(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
invokeinterface com/common/android/utils/download/progress_updownload/IProgressListener/onSuccess(Ljava/lang/String;)V 1
return
L2:
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$1/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
invokestatic com/common/android/utils/download/progress_updownload/ProgressDownload/access$000(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/String
invokeinterface com/common/android/utils/download/progress_updownload/IProgressListener/onFail(Ljava/lang/String;)V 1
return
L3:
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "CUR_SIZE"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 1
invokevirtual android/os/Message/getData()Landroid/os/Bundle;
ldc "TOTAL_SIZE"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 4
aload 0
getfield com/common/android/utils/download/progress_updownload/ProgressDownload$1/this$0 Lcom/common/android/utils/download/progress_updownload/ProgressDownload;
invokestatic com/common/android/utils/download/progress_updownload/ProgressDownload/access$000(Lcom/common/android/utils/download/progress_updownload/ProgressDownload;)Lcom/common/android/utils/download/progress_updownload/IProgressListener;
lload 2
lload 4
invokeinterface com/common/android/utils/download/progress_updownload/IProgressListener/onProgress(JJ)V 4
return
.limit locals 6
.limit stack 5
.end method
