.bytecode 50.0
.class final synchronized com/product/android/utils/UserIdentityDialog$3
.super java/lang/Object
.implements android/content/DialogInterface$OnKeyListener
.enclosing method com/product/android/utils/UserIdentityDialog/dialogIdentityExpired(Landroid/app/Activity;)V
.inner class static final inner com/product/android/utils/UserIdentityDialog$3

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
iload 2
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
