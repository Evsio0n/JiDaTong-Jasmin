.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/UserAdapter$1$3
.super java/lang/Object
.implements android/content/DialogInterface$OnKeyListener
.enclosing method com/nd/rj/common/login/view/UserAdapter$1/onClick(Landroid/view/View;)V
.inner class inner com/nd/rj/common/login/view/UserAdapter$1
.inner class inner com/nd/rj/common/login/view/UserAdapter$1$3

.field final synthetic 'this$1' Lcom/nd/rj/common/login/view/UserAdapter$1;

.method <init>(Lcom/nd/rj/common/login/view/UserAdapter$1;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/UserAdapter$1$3/this$1 Lcom/nd/rj/common/login/view/UserAdapter$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
iload 2
bipush 84
if_icmpne L0
iconst_1
ireturn
L0:
iload 2
iconst_4
if_icmpne L1
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
