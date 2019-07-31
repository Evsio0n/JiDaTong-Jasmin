.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener
.super java/lang/Object
.implements com/nd/teamfile/service/FileService$IDownloadProgressUpdateListener
.inner class private DownloadProgressUpdateListener inner com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener outer com/nd/teamfile/ui/FileListActivity

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.method private <init>(Lcom/nd/teamfile/ui/FileListActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/<init>(Lcom/nd/teamfile/ui/FileListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public AllFinish()V
return
.limit locals 1
.limit stack 0
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
aload 2
invokevirtual com/nd/teamfile/ui/FileListAdapter/setDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 2
invokestatic com/nd/teamfile/ui/FileListActivity/access$000(Lcom/nd/teamfile/ui/FileListActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onProgressUpdate(Ljava/lang/String;I)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
iload 2
invokevirtual com/nd/teamfile/ui/FileListAdapter/setDonwloadProgress(Ljava/lang/String;I)Z
ifeq L0
aload 0
getfield com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 3
.limit stack 3
.end method
