.bytecode 50.0
.class public synchronized com/nd/teamfile/service/FileService$ChangeIdentity
.super android/content/BroadcastReceiver
.inner class public ChangeIdentity inner com/nd/teamfile/service/FileService$ChangeIdentity outer com/nd/teamfile/service/FileService

.field final synthetic 'this$0' Lcom/nd/teamfile/service/FileService;

.method public <init>(Lcom/nd/teamfile/service/FileService;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService$ChangeIdentity/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 0
getfield com/nd/teamfile/service/FileService$ChangeIdentity/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$300(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
aload 0
getfield com/nd/teamfile/service/FileService$ChangeIdentity/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/clear()V
aload 0
getfield com/nd/teamfile/service/FileService$ChangeIdentity/this$0 Lcom/nd/teamfile/service/FileService;
aconst_null
invokestatic com/nd/teamfile/service/FileService/access$102(Lcom/nd/teamfile/service/FileService;Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
pop
aload 0
getfield com/nd/teamfile/service/FileService$ChangeIdentity/this$0 Lcom/nd/teamfile/service/FileService;
aconst_null
invokestatic com/nd/teamfile/service/FileService/access$202(Lcom/nd/teamfile/service/FileService;Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
pop
return
.limit locals 3
.limit stack 2
.end method
