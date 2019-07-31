.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity$2
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/nd/android/u/cloud/activity/guide/VerificationActivity/initEvent()V
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$2/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
invokestatic com/nd/android/u/cloud/activity/guide/VerificationActivity/access$000(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
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
