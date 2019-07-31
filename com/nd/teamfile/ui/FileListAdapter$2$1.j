.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListAdapter$2$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/teamfile/ui/FileListAdapter$2/onClick(Landroid/view/View;)V
.inner class inner com/nd/teamfile/ui/FileListAdapter$2
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$1

.field final synthetic 'this$1' Lcom/nd/teamfile/ui/FileListAdapter$2;

.method <init>(Lcom/nd/teamfile/ui/FileListAdapter$2;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter$2$1/this$1 Lcom/nd/teamfile/ui/FileListAdapter$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 3
.limit stack 1
.end method
