.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener
.super java/lang/Object
.implements com/nd/teamfile/service/FileService$IUploadProgressUpdateListener
.inner class private UploadProgressUpdateListener inner com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener outer com/nd/teamfile/ui/FileListActivity

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.method private <init>(Lcom/nd/teamfile/ui/FileListActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/<init>(Lcom/nd/teamfile/ui/FileListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public AllFinish()V
return
.limit locals 1
.limit stack 0
.end method

.method public onError(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/db/FileDb/deleteFile(I)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/ui/FileListAdapter/deleteItem(I)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public onFinish(Lcom/nd/teamfile/sdk/type/FileInfo;Ljava/lang/String;)V
new com/nd/teamfile/ui/FileListActivity$RefreshTask
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
iconst_0
invokespecial com/nd/teamfile/ui/FileListActivity$RefreshTask/<init>(Lcom/nd/teamfile/ui/FileListActivity;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/teamfile/ui/FileListActivity$RefreshTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public onProgressUpdate(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 0
.end method
