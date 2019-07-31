.bytecode 50.0
.class synchronized com/product/android/ui/widget/TopRankView$3
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/product/android/ui/widget/TopRankView
.inner class inner com/product/android/ui/widget/TopRankView$3

.field final synthetic 'this$0' Lcom/product/android/ui/widget/TopRankView;

.method <init>(Lcom/product/android/ui/widget/TopRankView;)V
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankView$3/this$0 Lcom/product/android/ui/widget/TopRankView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/product/android/ui/widget/TopRankView$3/this$0 Lcom/product/android/ui/widget/TopRankView;
iconst_0
invokestatic com/product/android/ui/widget/TopRankView/access$1502(Lcom/product/android/ui/widget/TopRankView;Z)Z
pop
aload 0
getfield com/product/android/ui/widget/TopRankView$3/this$0 Lcom/product/android/ui/widget/TopRankView;
invokestatic com/product/android/ui/widget/TopRankView/access$1400(Lcom/product/android/ui/widget/TopRankView;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
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
