.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/dialog/CopyTextDialog
.inner class inner com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/CopyTextDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Landroid/text/ClipboardManager;
ifnonnull L0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/CopyTextDialog/access$100(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Landroid/content/Context;
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
invokestatic com/nd/android/u/cloud/ui/dialog/CopyTextDialog/access$002(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/CopyTextDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Landroid/text/ClipboardManager;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/CopyTextDialog$1/this$0 Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/CopyTextDialog/access$200(Lcom/nd/android/u/cloud/ui/dialog/CopyTextDialog;)Ljava/lang/String;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method
