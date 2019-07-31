.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$8$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity$8/onAnimationEnd(Landroid/view/animation/Animation;)V
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$8
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$8$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$8$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$900(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)B
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$200(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/clearAnimation()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$8;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$8/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$300(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
invokevirtual com/product/android/ui/widget/PagingLoadListView/clearAnimation()V
return
.limit locals 1
.limit stack 1
.end method
