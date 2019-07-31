.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/ViewAnimation
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimation
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
.inner class static abstract interface AnimationFactory inner com/bumptech/glide/request/animation/ViewAnimation$AnimationFactory outer com/bumptech/glide/request/animation/ViewAnimation

.field private final 'animationFactory' Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;

.method <init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/ViewAnimation/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
return
.limit locals 2
.limit stack 2
.end method

.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
.signature "(TR;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z"
aload 2
invokeinterface com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter/getView()Landroid/view/View; 0
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/view/View/clearAnimation()V
aload 1
aload 0
getfield com/bumptech/glide/request/animation/ViewAnimation/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;
invokeinterface com/bumptech/glide/request/animation/ViewAnimation$AnimationFactory/build()Landroid/view/animation/Animation; 0
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
