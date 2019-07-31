.bytecode 50.0
.class synchronized com/common/android/utils/download/DownloadModule$2$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/common/android/utils/download/DownloadModule$2/handleMessage(Landroid/os/Message;)V
.inner class inner com/common/android/utils/download/DownloadModule$2
.inner class inner com/common/android/utils/download/DownloadModule$2$1
.inner class inner com/common/android/utils/download/DownloadModule$2$1$1

.field final synthetic 'this$1' Lcom/common/android/utils/download/DownloadModule$2;

.method <init>(Lcom/common/android/utils/download/DownloadModule$2;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
.catch java/io/IOException from L0 to L1 using L2
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/createNewFile()Z
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 1
aload 1
iconst_3
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule$2$1/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
new java/lang/Thread
dup
new com/common/android/utils/download/DownloadModule$2$1$1
dup
aload 0
invokespecial com/common/android/utils/download/DownloadModule$2$1$1/<init>(Lcom/common/android/utils/download/DownloadModule$2$1;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
return
.limit locals 3
.limit stack 5
.end method
