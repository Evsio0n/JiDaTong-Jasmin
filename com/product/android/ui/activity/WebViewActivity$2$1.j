.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$2$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/product/android/ui/activity/WebViewActivity$2/onAnimPlaying(I)V
.inner class inner com/product/android/ui/activity/WebViewActivity$2
.inner class inner com/product/android/ui/activity/WebViewActivity$2$1

.field final synthetic 'this$1' Lcom/product/android/ui/activity/WebViewActivity$2;

.field final synthetic 'val$current' I

.method <init>(Lcom/product/android/ui/activity/WebViewActivity$2;I)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$2$1/this$1 Lcom/product/android/ui/activity/WebViewActivity$2;
aload 0
iload 2
putfield com/product/android/ui/activity/WebViewActivity$2$1/val$current I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2$1/this$1 Lcom/product/android/ui/activity/WebViewActivity$2;
getfield com/product/android/ui/activity/WebViewActivity$2/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$800(Lcom/product/android/ui/activity/WebViewActivity;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$2$1/val$current I
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
return
.limit locals 1
.limit stack 2
.end method
