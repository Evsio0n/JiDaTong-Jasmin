.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/ViewAnimationFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimationFactory
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
.inner class private static ConcreteAnimationFactory inner com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory outer com/bumptech/glide/request/animation/ViewAnimationFactory
.inner class private static ResourceAnimationFactory inner com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory outer com/bumptech/glide/request/animation/ViewAnimationFactory

.field private final 'animationFactory' Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.field private 'glideAnimation' Lcom/bumptech/glide/request/animation/GlideAnimation; signature "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"

.method public <init>(Landroid/content/Context;I)V
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory
dup
aload 1
iload 2
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory$ResourceAnimationFactory/<init>(Landroid/content/Context;I)V
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Landroid/view/animation/Animation;)V
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory
dup
aload 1
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory$ConcreteAnimationFactory/<init>(Landroid/view/animation/Animation;)V
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
return
.limit locals 2
.limit stack 4
.end method

.method <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/ViewAnimationFactory/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
return
.limit locals 2
.limit stack 2
.end method

.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
.signature "(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
iload 1
ifne L0
iload 2
ifne L1
L0:
invokestatic com/bumptech/glide/request/animation/NoAnimation/get()Lcom/bumptech/glide/request/animation/GlideAnimation;
areturn
L1:
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory/glideAnimation Lcom/bumptech/glide/request/animation/GlideAnimation;
ifnonnull L2
aload 0
new com/bumptech/glide/request/animation/ViewAnimation
dup
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
invokespecial com/bumptech/glide/request/animation/ViewAnimation/<init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
putfield com/bumptech/glide/request/animation/ViewAnimationFactory/glideAnimation Lcom/bumptech/glide/request/animation/GlideAnimation;
L2:
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimationFactory/glideAnimation Lcom/bumptech/glide/request/animation/GlideAnimation;
areturn
.limit locals 3
.limit stack 4
.end method
