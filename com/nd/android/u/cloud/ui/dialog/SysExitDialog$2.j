.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/dialog/SysExitDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/ui/dialog/SysExitDialog/setEvent()V
.inner class inner com/nd/android/u/cloud/ui/dialog/SysExitDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;

.method <init>(Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/SysExitDialog$2/this$0 Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/SysExitDialog$2/this$0 Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;
invokestatic com/nd/android/u/cloud/ui/dialog/SysExitDialog/access$000(Lcom/nd/android/u/cloud/ui/dialog/SysExitDialog;)Landroid/content/Context;
invokestatic com/nd/android/u/cloud/helper/PubFunction/sysExit(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 1
.end method
