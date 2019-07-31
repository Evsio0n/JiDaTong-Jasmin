.bytecode 50.0
.class synchronized com/nd/teamfile/ui/FileListActivity$OpenFileHandler
.super android/os/Handler
.inner class static OpenFileHandler inner com/nd/teamfile/ui/FileListActivity$OpenFileHandler outer com/nd/teamfile/ui/FileListActivity

.field private final 'mFileListActivity' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Lcom/nd/teamfile/ui/FileListActivity;>;"

.method public <init>(Lcom/nd/teamfile/ui/FileListActivity;)V
aload 0
invokespecial android/os/Handler/<init>()V
aload 0
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield com/nd/teamfile/ui/FileListActivity$OpenFileHandler/mFileListActivity Ljava/lang/ref/WeakReference;
return
.limit locals 2
.limit stack 4
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity$OpenFileHandler/mFileListActivity Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast com/nd/teamfile/ui/FileListActivity
astore 2
aload 2
ifnull L0
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L0
aload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/nd/teamfile/ui/FileListActivity/access$000(Lcom/nd/teamfile/ui/FileListActivity;Ljava/lang/String;)V
L0:
return
.limit locals 3
.limit stack 2
.end method
