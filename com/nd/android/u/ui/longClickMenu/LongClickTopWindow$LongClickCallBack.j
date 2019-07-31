.bytecode 50.0
.class synchronized com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack
.super java/lang/Object
.implements com/nd/android/u/ui/longClickMenu/ILongClickCallBack
.inner class private LongClickCallBack inner com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack outer com/nd/android/u/ui/longClickMenu/LongClickTopWindow

.field final synthetic 'this$0' Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;

.method private <init>(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)V
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/<init>(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)V
return
.limit locals 3
.limit stack 2
.end method

.method public callback()V
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickTopWindow/access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickTopWindow/access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/LongClickTopWindow$LongClickCallBack/this$0 Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;
invokestatic com/nd/android/u/ui/longClickMenu/LongClickTopWindow/access$100(Lcom/nd/android/u/ui/longClickMenu/LongClickTopWindow;)Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method
