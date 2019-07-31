.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/BetterPopupWindow$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/nd/android/u/contact/view/BetterPopupWindow/<init>(Landroid/view/View;)V
.inner class inner com/nd/android/u/contact/view/BetterPopupWindow$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/BetterPopupWindow;

.method <init>(Lcom/nd/android/u/contact/view/BetterPopupWindow;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/BetterPopupWindow$1/this$0 Lcom/nd/android/u/contact/view/BetterPopupWindow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
iconst_4
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/view/BetterPopupWindow$1/this$0 Lcom/nd/android/u/contact/view/BetterPopupWindow;
invokestatic com/nd/android/u/contact/view/BetterPopupWindow/access$000(Lcom/nd/android/u/contact/view/BetterPopupWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
