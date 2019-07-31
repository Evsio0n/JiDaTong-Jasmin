.bytecode 50.0
.class final synchronized com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.inner class private final DisplayNextView inner com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView outer com/nd/android/u/contact/activity/PhotoWallActivity

.field private final 'mPosition' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 2
putfield com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/mPosition I
return
.limit locals 3
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;ILcom/nd/android/u/contact/activity/PhotoWallActivity$1;)V
aload 0
aload 1
iload 2
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
return
.limit locals 4
.limit stack 3
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
getfield com/nd/android/u/contact/activity/PhotoWallActivity/mContainer Landroid/view/ViewGroup;
new com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews
dup
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$DisplayNextView/mPosition I
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$SwapViews/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
invokevirtual android/view/ViewGroup/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method
