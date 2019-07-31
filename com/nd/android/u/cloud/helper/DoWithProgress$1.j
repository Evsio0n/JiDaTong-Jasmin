.bytecode 50.0
.class synchronized com/nd/android/u/cloud/helper/DoWithProgress$1
.super java/lang/Object
.implements android/content/DialogInterface$OnKeyListener
.enclosing method com/nd/android/u/cloud/helper/DoWithProgress/doInit()V
.inner class inner com/nd/android/u/cloud/helper/DoWithProgress$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/helper/DoWithProgress;

.method <init>(Lcom/nd/android/u/cloud/helper/DoWithProgress;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/DoWithProgress$1/this$0 Lcom/nd/android/u/cloud/helper/DoWithProgress;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
aload 3
invokevirtual android/view/KeyEvent/getKeyCode()I
bipush 84
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
