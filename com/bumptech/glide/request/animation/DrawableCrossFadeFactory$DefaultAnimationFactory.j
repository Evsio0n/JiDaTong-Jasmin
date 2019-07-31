.bytecode 50.0
.class synchronized com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/ViewAnimation$AnimationFactory
.inner class private static DefaultAnimationFactory inner com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory outer com/bumptech/glide/request/animation/DrawableCrossFadeFactory

.field private final 'duration' I

.method <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory/duration I
return
.limit locals 2
.limit stack 2
.end method

.method public build()Landroid/view/animation/Animation;
new android/view/animation/AlphaAnimation
dup
fconst_0
fconst_1
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 1
aload 1
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory/duration I
i2l
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method
