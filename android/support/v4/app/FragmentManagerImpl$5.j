.bytecode 50.0
.class synchronized android/support/v4/app/FragmentManagerImpl$5
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
.inner class inner android/support/v4/app/FragmentManagerImpl$5

.field final synthetic 'this$0' Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic 'val$fragment' Landroid/support/v4/app/Fragment;

.method <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V
aload 0
aload 1
putfield android/support/v4/app/FragmentManagerImpl$5/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
aload 2
putfield android/support/v4/app/FragmentManagerImpl$5/val$fragment Landroid/support/v4/app/Fragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl$5/val$fragment Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl$5/val$fragment Landroid/support/v4/app/Fragment;
aconst_null
putfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$5/this$0 Landroid/support/v4/app/FragmentManagerImpl;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$5/val$fragment Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentManagerImpl$5/val$fragment Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mStateAfterAnimating I
iconst_0
iconst_0
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
L0:
return
.limit locals 2
.limit stack 6
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
