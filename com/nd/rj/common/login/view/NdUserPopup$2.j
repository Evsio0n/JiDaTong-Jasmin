.bytecode 50.0
.class synchronized com/nd/rj/common/login/view/NdUserPopup$2
.super java/lang/Object
.implements android/view/View$OnKeyListener
.enclosing method com/nd/rj/common/login/view/NdUserPopup/initView()V
.inner class inner com/nd/rj/common/login/view/NdUserPopup$2

.field final synthetic 'this$0' Lcom/nd/rj/common/login/view/NdUserPopup;

.method <init>(Lcom/nd/rj/common/login/view/NdUserPopup;)V
aload 0
aload 1
putfield com/nd/rj/common/login/view/NdUserPopup$2/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
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
getfield com/nd/rj/common/login/view/NdUserPopup$2/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
getfield com/nd/rj/common/login/view/NdUserPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/rj/common/login/view/NdUserPopup$2/this$0 Lcom/nd/rj/common/login/view/NdUserPopup;
getfield com/nd/rj/common/login/view/NdUserPopup/window Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
