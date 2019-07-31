.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$2
.super java/lang/Object
.implements android/content/ServiceConnection
.enclosing method com/nd/teamfile/ui/FileListActivity
.inner class inner com/nd/teamfile/ui/FileListActivity$2
.inner class inner com/nd/teamfile/ui/FileListActivity$2$1

.field private 'dl' Lcom/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener;

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.field private 'ul' Lcom/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener;

.method <init>(Lcom/nd/teamfile/ui/FileListActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aconst_null
invokespecial com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener/<init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
putfield com/nd/teamfile/ui/FileListActivity$2/dl Lcom/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener;
aload 0
new com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aconst_null
invokespecial com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener/<init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
putfield com/nd/teamfile/ui/FileListActivity$2/ul Lcom/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener;
return
.limit locals 2
.limit stack 5
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
aload 2
checkcast com/nd/teamfile/service/FileService$LocalBinder
astore 1
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 1
invokevirtual com/nd/teamfile/service/FileService$LocalBinder/getService()Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/ui/FileListActivity/access$802(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService;
pop
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/dl Lcom/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener;
invokevirtual com/nd/teamfile/service/FileService/setDownloadProgressUpdateListener(Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/ul Lcom/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener;
invokevirtual com/nd/teamfile/service/FileService/setUploadProgressUpdateListener(Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$900(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
new com/nd/teamfile/ui/FileListActivity$2$1
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListActivity$2$1/<init>(Lcom/nd/teamfile/ui/FileListActivity$2;)V
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
new com/nd/teamfile/ui/FileListActivity$RefreshTask
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
iconst_1
invokespecial com/nd/teamfile/ui/FileListActivity$RefreshTask/<init>(Lcom/nd/teamfile/ui/FileListActivity;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/teamfile/ui/FileListActivity$RefreshTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/unsetDownloadProgressUpdateListener()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
invokestatic com/nd/teamfile/ui/FileListActivity/access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/unsetUploadProgressUpdateListener()V
return
.limit locals 2
.limit stack 1
.end method
