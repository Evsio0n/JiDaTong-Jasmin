.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/view/PostOperatorPanelView$3
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/nd/schoollife/ui/post/view/PostOperatorPanelView/showPraiseIvAnim()V
.inner class inner com/nd/schoollife/ui/post/view/PostOperatorPanelView$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;

.method <init>(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$3/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
new android/view/animation/ScaleAnimation
dup
ldc_w 1.2F
fconst_1
ldc_w 1.2F
fconst_1
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
astore 1
aload 1
ldc2_w 100L
invokevirtual android/view/animation/ScaleAnimation/setDuration(J)V
aload 0
getfield com/nd/schoollife/ui/post/view/PostOperatorPanelView$3/this$0 Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;
invokestatic com/nd/schoollife/ui/post/view/PostOperatorPanelView/access$500(Lcom/nd/schoollife/ui/post/view/PostOperatorPanelView;)Landroid/widget/ImageView;
aload 1
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 10
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
