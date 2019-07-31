.bytecode 50.0
.class synchronized com/common/android/utils/download/DownloadModule$2$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/common/android/utils/download/DownloadModule$2/handleMessage(Landroid/os/Message;)V
.inner class inner com/common/android/utils/download/DownloadModule$2
.inner class inner com/common/android/utils/download/DownloadModule$2$2

.field final synthetic 'this$1' Lcom/common/android/utils/download/DownloadModule$2;

.method <init>(Lcom/common/android/utils/download/DownloadModule$2;)V
aload 0
aload 1
putfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
aload 0
getfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
aload 0
getfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$300(Lcom/common/android/utils/download/DownloadModule;)Ljava/lang/String;
invokevirtual com/common/android/utils/download/DownloadModule/getURIType(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
aload 0
getfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$string/canot_identify_file_type I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$400(Lcom/common/android/utils/download/DownloadModule;)Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 3
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc_w 335544320
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 4
aload 3
aload 1
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/common/android/utils/download/DownloadModule$2$2/this$1 Lcom/common/android/utils/download/DownloadModule$2;
getfield com/common/android/utils/download/DownloadModule$2/this$0 Lcom/common/android/utils/download/DownloadModule;
invokestatic com/common/android/utils/download/DownloadModule/access$900(Lcom/common/android/utils/download/DownloadModule;)Landroid/content/Context;
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 3
.end method
