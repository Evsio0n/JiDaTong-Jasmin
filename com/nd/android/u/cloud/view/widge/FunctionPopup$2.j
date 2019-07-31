.bytecode 50.0
.class synchronized com/nd/android/u/cloud/view/widge/FunctionPopup$2
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/android/u/cloud/view/widge/FunctionPopup/initView()V
.inner class inner com/nd/android/u/cloud/view/widge/FunctionPopup$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/view/widge/FunctionPopup;

.method <init>(Lcom/nd/android/u/cloud/view/widge/FunctionPopup;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/FunctionPopup$2/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
iload 2
bipush 82
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$2/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/view/widge/FunctionPopup$2/this$0 Lcom/nd/android/u/cloud/view/widge/FunctionPopup;
getfield com/nd/android/u/cloud/view/widge/FunctionPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
