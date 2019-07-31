.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$2$1
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener
.signature "Ljava/lang/Object;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/widget/ListView;>;"
.enclosing method com/nd/teamfile/ui/FileListActivity$2/onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.inner class inner com/nd/teamfile/ui/FileListActivity$2
.inner class inner com/nd/teamfile/ui/FileListActivity$2$1

.field final synthetic 'this$1' Lcom/nd/teamfile/ui/FileListActivity$2;

.method <init>(Lcom/nd/teamfile/ui/FileListActivity$2;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$2$1/this$1 Lcom/nd/teamfile/ui/FileListActivity$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.signature "(Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;)V"
new com/nd/teamfile/ui/FileListActivity$RefreshTask
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$2$1/this$1 Lcom/nd/teamfile/ui/FileListActivity$2;
getfield com/nd/teamfile/ui/FileListActivity$2/this$0 Lcom/nd/teamfile/ui/FileListActivity;
iconst_1
invokespecial com/nd/teamfile/ui/FileListActivity$RefreshTask/<init>(Lcom/nd/teamfile/ui/FileListActivity;Z)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/teamfile/ui/FileListActivity$RefreshTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 4
.end method
