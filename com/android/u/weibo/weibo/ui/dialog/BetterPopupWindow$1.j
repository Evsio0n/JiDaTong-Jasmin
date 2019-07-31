.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow$1
.super java/lang/Object
.implements android/view/View$OnTouchListener
.enclosing method com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow/<init>(Landroid/view/View;)V
.inner class inner com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/dialog/BetterPopupWindow;

.method <init>(Lcom/android/u/weibo/weibo/ui/dialog/BetterPopupWindow;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow$1/this$0 Lcom/android/u/weibo/weibo/ui/dialog/BetterPopupWindow;
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
getfield com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow$1/this$0 Lcom/android/u/weibo/weibo/ui/dialog/BetterPopupWindow;
invokestatic com/android/u/weibo/weibo/ui/dialog/BetterPopupWindow/access$000(Lcom/android/u/weibo/weibo/ui/dialog/BetterPopupWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
