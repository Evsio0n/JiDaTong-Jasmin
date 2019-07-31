.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PhotoWallActivity$7$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/activity/PhotoWallActivity$7/onAnimationEnd(Landroid/view/animation/Animation;)V
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7
.inner class inner com/nd/android/u/contact/activity/PhotoWallActivity$7$1

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;

.method <init>(Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PhotoWallActivity$7$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7/val$visibility I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
iconst_0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/clearAnimation()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7$1/this$1 Lcom/nd/android/u/contact/activity/PhotoWallActivity$7;
getfield com/nd/android/u/contact/activity/PhotoWallActivity$7/this$0 Lcom/nd/android/u/contact/activity/PhotoWallActivity;
invokestatic com/nd/android/u/contact/activity/PhotoWallActivity/access$000(Lcom/nd/android/u/contact/activity/PhotoWallActivity;)Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
bipush 8
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/setVisibility(I)V
goto L1
.limit locals 1
.limit stack 2
.end method
