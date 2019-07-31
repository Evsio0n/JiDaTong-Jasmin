.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/ViewPropertyAnimationFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimationFactory
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"

.field private 'animation' Lcom/bumptech/glide/request/animation/ViewPropertyAnimation; signature "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation<TR;>;"

.field private final 'animator' Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

.method public <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/animator Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
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
getfield com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/animation Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
ifnonnull L2
aload 0
new com/bumptech/glide/request/animation/ViewPropertyAnimation
dup
aload 0
getfield com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/animator Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
invokespecial com/bumptech/glide/request/animation/ViewPropertyAnimation/<init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
putfield com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/animation Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
L2:
aload 0
getfield com/bumptech/glide/request/animation/ViewPropertyAnimationFactory/animation Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
areturn
.limit locals 3
.limit stack 4
.end method
