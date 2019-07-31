.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/DropDownPopWindow$1
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/android/u/cloud/view/widge/DropDownPopWindow/registerOnKeyListener()V
.inner class inner com/nd/android/u/cloud/view/widge/DropDownPopWindow$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;

.method <init>(Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/DropDownPopWindow$1/this$0 Lcom/nd/android/u/cloud/view/widge/DropDownPopWindow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
aload 3
invokevirtual android/view/KeyEvent/getAction()I
ifne L0
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 1
.end method
