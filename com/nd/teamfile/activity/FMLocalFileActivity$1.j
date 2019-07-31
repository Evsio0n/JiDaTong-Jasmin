.bytecode 50.0
.class synchronized com/nd/teamfile/activity/FMLocalFileActivity$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/teamfile/activity/FMLocalFileActivity
.inner class inner com/nd/teamfile/activity/FMLocalFileActivity$1

.field final synthetic 'this$0' Lcom/nd/teamfile/activity/FMLocalFileActivity;

.method <init>(Lcom/nd/teamfile/activity/FMLocalFileActivity;)V
aload 0
aload 1
putfield com/nd/teamfile/activity/FMLocalFileActivity$1/this$0 Lcom/nd/teamfile/activity/FMLocalFileActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 1
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "CUR_PATH"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getFilepath()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity$1/this$0 Lcom/nd/teamfile/activity/FMLocalFileActivity;
ldc com/nd/teamfile/activity/FileExplorerActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/teamfile/activity/FMLocalFileActivity$1/this$0 Lcom/nd/teamfile/activity/FMLocalFileActivity;
aload 2
iconst_2
invokevirtual com/nd/teamfile/activity/FMLocalFileActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 6
.limit stack 3
.end method
