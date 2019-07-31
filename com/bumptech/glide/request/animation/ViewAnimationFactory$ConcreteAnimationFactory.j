.bytecode 50.0
.class synchronized com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/ViewAnimation$AnimationFactory
.inner class private static ConcreteAnimationFactory inner com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory outer com/bumptech/glide/request/animation/ViewAnimationFactory

.field private final 'animation' Landroid/view/animation/Animation;

.method public <init>(Landroid/view/animation/Animation;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory/animation Landroid/view/animation/Animation;
return
.limit locals 2
.limit stack 2
.end method

.method public build()Landroid/view/animation/Animation;
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory/animation Landroid/view/animation/Animation;
areturn
.limit locals 1
.limit stack 1
.end method
