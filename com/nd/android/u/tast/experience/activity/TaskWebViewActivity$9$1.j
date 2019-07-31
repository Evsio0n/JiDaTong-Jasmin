.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/onAnimPlaying(I)V
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1

.field final synthetic 'this$1' Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$9;

.field final synthetic 'val$current' I

.method <init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$9;I)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1/this$1 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$9;
aload 0
iload 2
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1/val$current I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1/this$1 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity$9;
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$1400(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Lcom/product/android/ui/widget/AnimImageView;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$9$1/val$current I
invokevirtual com/product/android/ui/widget/AnimImageView/showState(I)V
return
.limit locals 1
.limit stack 2
.end method
