.bytecode 50.0
.class synchronized com/common/android/utils/download/DownloadModule$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/common/android/utils/download/DownloadModule/startChapterDownload()V
.inner class inner com/common/android/utils/download/DownloadModule$1

.field final synthetic 'this$0' Lcom/common/android/utils/download/DownloadModule;

.method <init>(Lcom/common/android/utils/download/DownloadModule;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$000(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokestatic com/common/android/utils/download/DownloadModule/access$200(Lcom/common/android/utils/download/DownloadModule;Ljava/lang/String;Lcom/common/android/utils/download/DownLoadData;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/getServerFileName()Ljava/lang/String;
astore 7
L1:
aload 7
ifnull L4
L3:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 7
ldc "utf-8"
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokestatic com/common/android/utils/download/DownloadModule/access$302(Lcom/common/android/utils/download/DownloadModule;Ljava/lang/String;)Ljava/lang/String;
pop
L4:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
new java/io/File
dup
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$500(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$300(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/common/android/utils/download/DownloadModule/access$402(Lcom/common/android/utils/download/DownloadModule;Ljava/io/File;)Ljava/io/File;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$500(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/listFiles()[Ljava/io/File;
astore 7
aload 7
arraylength
istore 2
L5:
iconst_0
istore 1
L16:
iload 1
iload 2
if_icmpge L8
aload 7
iload 1
aaload
astore 8
L6:
aload 8
invokevirtual java/io/File/getName()Ljava/lang/String;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$300(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L17
aload 8
invokevirtual java/io/File/delete()Z
pop
L7:
goto L17
L8:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
astore 7
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
aload 7
invokevirtual com/common/android/utils/download/DownLoadData/setFileName(Ljava/lang/String;)V
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
ifnull L12
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L12
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/length()J
lstore 3
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/getSize()J
lstore 5
L9:
lload 5
lconst_0
lcmp
ifle L12
lload 3
lload 5
lcmp
ifne L12
L10:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 7
aload 7
iconst_2
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L11:
return
L12:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 7
aload 7
iconst_3
putfield android/os/Message/what I
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/isChaterDownload()Z
ifeq L14
aload 7
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokevirtual java/io/File/length()J
ldc2_w 100L
lmul
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownLoadData/getSize()J
ldiv
l2i
putfield android/os/Message/arg1 I
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownloadModule/doChaterDownload(Lcom/common/android/utils/download/DownLoadData;)V
L13:
return
L2:
astore 7
aload 7
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
astore 7
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 8
aload 8
iconst_1
putfield android/os/Message/what I
aload 8
aload 7
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 8
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L14:
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$600(Lcom/common/android/utils/download/DownloadModule;)Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$1/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$100(Lcom/common/android/utils/download/DownloadModule;)Lcom/common/android/utils/download/DownLoadData;
invokevirtual com/common/android/utils/download/DownloadModule/doDownload(Lcom/common/android/utils/download/DownLoadData;)V
L15:
return
L17:
iload 1
iconst_1
iadd
istore 1
goto L16
.limit locals 9
.limit stack 5
.end method
