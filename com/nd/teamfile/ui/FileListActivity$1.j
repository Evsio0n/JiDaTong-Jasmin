.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/teamfile/ui/FileListActivity/doItemLongClick(Ljava/lang/Object;)V
.inner class inner com/nd/teamfile/ui/FileListActivity$1

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListActivity;

.field final synthetic 'val$fileInfo' Lcom/nd/teamfile/sdk/type/FileInfo;

.method <init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity$1/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aload 0
aload 2
putfield com/nd/teamfile/ui/FileListActivity$1/val$fileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
iload 2
ifne L0
aload 0
getfield com/nd/teamfile/ui/FileListActivity$1/val$fileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getState()I
ifne L1
L1:
new com/nd/teamfile/ui/FileListActivity$DeleteFileTask
dup
aload 0
getfield com/nd/teamfile/ui/FileListActivity$1/this$0 Lcom/nd/teamfile/ui/FileListActivity;
aconst_null
invokespecial com/nd/teamfile/ui/FileListActivity$DeleteFileTask/<init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/ui/FileListActivity$1;)V
iconst_1
anewarray com/nd/teamfile/sdk/type/FileInfo
dup
iconst_0
aload 0
getfield com/nd/teamfile/ui/FileListActivity$1/val$fileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
aastore
invokevirtual com/nd/teamfile/ui/FileListActivity$DeleteFileTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
L0:
return
.limit locals 3
.limit stack 5
.end method
