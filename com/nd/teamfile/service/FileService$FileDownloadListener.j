.bytecode 50.0
.class synchronized com/nd/teamfile/service/FileService$FileDownloadListener
.super java/lang/Object
.implements com/common/android/utils/httpRequest/HttpRequest$DownloadListener
.inner class private FileDownloadListener inner com/nd/teamfile/service/FileService$FileDownloadListener outer com/nd/teamfile/service/FileService

.field private 'fid' Ljava/lang/String;

.field private 'fileDb' Lcom/nd/teamfile/db/FileDb;

.field final synthetic 'this$0' Lcom/nd/teamfile/service/FileService;

.method public <init>(Lcom/nd/teamfile/service/FileService;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
putfield com/nd/teamfile/service/FileService$FileDownloadListener/fileDb Lcom/nd/teamfile/db/FileDb;
aload 0
aload 2
putfield com/nd/teamfile/service/FileService$FileDownloadListener/fid Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public finish(Ljava/lang/String;)V
aload 1
ifnull L0
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/fileDb Lcom/nd/teamfile/db/FileDb;
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/fid Ljava/lang/String;
aload 1
invokevirtual com/nd/teamfile/db/FileDb/setLocalPath(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
getstatic com/nd/teamfile/R$string/down_success_path I
invokevirtual com/nd/teamfile/service/FileService/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
ifnull L1
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/fid Ljava/lang/String;
aload 1
invokeinterface com/nd/teamfile/service/FileService$IDownloadProgressUpdateListener/onFinish(Ljava/lang/String;Ljava/lang/String;)V 2
L1:
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$300(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/fid Ljava/lang/String;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$300(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifne L2
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
ifnull L2
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
invokeinterface com/nd/teamfile/service/FileService$IDownloadProgressUpdateListener/AllFinish()V 0
L2:
return
L0:
ldc "FileService"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "download "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " failure"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
.limit locals 2
.limit stack 6
.end method

.method public updateStatus(I)V
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
ifnull L0
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService$FileDownloadListener/fid Ljava/lang/String;
iload 1
invokeinterface com/nd/teamfile/service/FileService$IDownloadProgressUpdateListener/onProgressUpdate(Ljava/lang/String;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
