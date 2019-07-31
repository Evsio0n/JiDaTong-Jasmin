.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/anim/HeaderLayoutAnimation
.super java/lang/Object
.inner class static final inner com/nd/android/u/contact/anim/HeaderLayoutAnimation$1
.inner class static final inner com/nd/android/u/contact/anim/HeaderLayoutAnimation$2

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static hideHeader(Landroid/view/ViewGroup;)V
aload 0
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual android/view/ViewGroup/getVisibility()I
ifne L1
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
invokevirtual android/view/ViewGroup/getHeight()I
ineg
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
new android/view/animation/AccelerateInterpolator
dup
invokespecial android/view/animation/AccelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 1
ldc2_w 400L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
aload 1
invokevirtual android/view/ViewGroup/startAnimation(Landroid/view/animation/Animation;)V
aload 1
new com/nd/android/u/contact/anim/HeaderLayoutAnimation$1
dup
aload 0
invokespecial com/nd/android/u/contact/anim/HeaderLayoutAnimation$1/<init>(Landroid/view/ViewGroup;)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return
.limit locals 2
.limit stack 6
.end method

.method public static showHeader(Landroid/view/ViewGroup;)V
aload 0
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual android/view/ViewGroup/getVisibility()I
bipush 8
if_icmpne L1
aload 0
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
aload 0
invokevirtual android/view/ViewGroup/getHeight()I
ineg
i2f
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
new android/view/animation/AccelerateInterpolator
dup
invokespecial android/view/animation/AccelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 1
ldc2_w 400L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 1
new com/nd/android/u/contact/anim/HeaderLayoutAnimation$2
dup
aload 0
invokespecial com/nd/android/u/contact/anim/HeaderLayoutAnimation$2/<init>(Landroid/view/ViewGroup;)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual android/view/ViewGroup/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 6
.end method
