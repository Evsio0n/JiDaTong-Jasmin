.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$7
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity/slideRankListView(I)V
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PhotoWallActivity;

.field final synthetic 'val$visibility' I

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$7/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
aload 0
iload 2
putfield com/nd/android/u/contact/activity/PhotoWallActivity$7/val$visibility I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/contact/activity/PhotoWallActivity$7$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/PhotoWallActivity$7$1/<init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 4
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
