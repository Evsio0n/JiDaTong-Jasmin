.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/teamfile/ui/FileListAdapter
.inner class inner com/nd/teamfile/ui/FileListAdapter$1

.field final synthetic 'this$0' Lcom/nd/teamfile/ui/FileListAdapter;

.method <init>(Lcom/nd/teamfile/ui/FileListAdapter;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
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
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$100(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloaded()Z
ifne L0
getstatic com/nd/teamfile/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L1:
return
L0:
aload 1
ifnonnull L2
ldc "FileListAdapter"
ldc "click down fileInfo is null"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L2:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloading()Z
ifeq L3
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$100(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/content/Context;
getstatic com/nd/teamfile/R$string/teamfile_file_downloading I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L3:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloaded()Z
ifeq L4
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$200(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/os/Handler;
ifnull L1
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
iconst_1
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
invokestatic com/nd/teamfile/ui/FileListAdapter/access$200(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L4:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter$1/this$0 Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
invokestatic com/nd/teamfile/ui/FileListAdapter/access$300(Lcom/nd/teamfile/ui/FileListAdapter;Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 3
.limit stack 3
.end method
