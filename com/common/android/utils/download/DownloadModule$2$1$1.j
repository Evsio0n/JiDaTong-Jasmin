.bytecode 50.0
.class synchronized com/common/android/utils/download/DownloadModule$2$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/download/DownloadModule$2$1/onClick(Landroid/content/DialogInterface;I)V
.inner class inner com/common/android/utils/download/DownloadModule$2
.inner class inner com/common/android/utils/download/DownloadModule$2$1
.inner class inner com/common/android/utils/download/DownloadModule$2$1$1

.field final synthetic 'this$2' Lcom/common/android/utils/download/DownloadModule$2$1;

.method <init>(Lcom/common/android/utils/download/DownloadModule$2$1;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/isChaterDownload()Z
ifeq L0
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownloadModule/doChaterDownload(Lcom/common/android/utils/download/DownLoadData;)V
return
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1$1/this$2 Lcom/common/android/utils/download/DownloadModule$2$1;
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownloadModule/doDownload(Lcom/common/android/utils/download/DownLoadData;)V
return
.limit locals 1
.limit stack 2
.end method
