.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListAdapter$2$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/teamfile/ui/FileListAdapter$2/onClick(Landroid/view/View;)V
.inner class inner com/nd/teamfile/ui/FileListAdapter$2
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$2

.field final synthetic 'this$1' Lcom/nd/teamfile/ui/FileListAdapter$2;

.field final synthetic 'val$info' Lcom/nd/teamfile/sdk/type/FileInfo;

.method <init>(Lcom/nd/teamfile/ui/FileListAdapter$2;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter$2$2/this$1 Lcom/nd/teamfile/ui/FileListAdapter$2;
aload 0
aload 2
putfield com/nd/teamfile/ui/FileListAdapter$2$2/val$info Lcom/nd/teamfile/sdk/type/FileInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$2$2/this$1 Lcom/nd/teamfile/ui/FileListAdapter$2;
getfield com/nd/teamfile/ui/FileListAdapter$2/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$2$2/val$info Lcom/nd/teamfile/sdk/type/FileInfo;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$300(Lcom/nd/teamfile/ui/FileListAdapter;Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 3
.limit stack 2
.end method
