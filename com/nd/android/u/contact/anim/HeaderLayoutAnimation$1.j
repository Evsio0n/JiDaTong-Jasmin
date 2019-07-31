.bytecode 50.0
.class final synchronized com/nd/android/u/contact/anim/HeaderLayoutAnimation$1
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/nd/android/u/contact/anim/HeaderLayoutAnimation/hideHeader(Landroid/view/ViewGroup;)V
.inner class static final inner com/nd/android/u/contact/anim/HeaderLayoutAnimation$1

.field final synthetic 'val$headerLayout' Landroid/view/ViewGroup;

.method <init>(Landroid/view/ViewGroup;)V
aload 0
aload 1
putfield com/nd/android/u/contact/anim/HeaderLayoutAnimation$1/val$headerLayout Landroid/view/ViewGroup;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/contact/anim/HeaderLayoutAnimation$1/val$headerLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/anim/HeaderLayoutAnimation$1/val$headerLayout Landroid/view/ViewGroup;
invokevirtual android/view/ViewGroup/clearAnimation()V
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
