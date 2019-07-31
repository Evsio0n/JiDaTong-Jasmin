.bytecode 50.0
.class synchronized com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/ViewAnimation$AnimationFactory
.inner class private static ResourceAnimationFactory inner com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory outer com/bumptech/glide/request/animation/ViewAnimationFactory

.field private final 'animationId' I

.field private final 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory/context Landroid/content/Context;
aload 0
iload 2
putfield com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory/animationId I
return
.limit locals 3
.limit stack 2
.end method

.method public build()Landroid/view/animation/Animation;
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory/context Landroid/content/Context;
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory/animationId I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 2
.end method
