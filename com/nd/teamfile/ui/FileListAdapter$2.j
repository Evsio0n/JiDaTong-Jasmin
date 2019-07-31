.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/teamfile/ui/FileListAdapter
.inner class inner com/nd/teamfile/ui/FileListAdapter$2
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$1
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$2

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListAdapter;

.method <init>(Lcom/nd/teamfile/ui/FileListAdapter;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter$2/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 1
aload 1
ifnonnull L0
ldc "FileListAdapter"
ldc "click share fileInfo is null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
return
L0:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloaded()Z
ifne L2
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$2/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$100(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/content/Context;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
getstatic com/nd/teamfile/R$string/share_remind I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/nd/teamfile/R$string/share_after_download I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/nd/teamfile/R$string/cancel I
new com/nd/teamfile/ui/FileListAdapter$2$1
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListAdapter$2$1/<init>(Lcom/nd/teamfile/ui/FileListAdapter$2;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
getstatic com/nd/teamfile/R$string/download I
new com/nd/teamfile/ui/FileListAdapter$2$2
dup
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListAdapter$2$2/<init>(Lcom/nd/teamfile/ui/FileListAdapter$2;Lcom/nd/teamfile/sdk/type/FileInfo;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L2:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$2/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$200(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/os/Handler;
ifnull L1
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
iconst_0
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$2/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$200(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 6
.end method
