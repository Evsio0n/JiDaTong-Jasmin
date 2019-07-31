.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/DrawableCrossFadeFactory
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimationFactory
.signature "<T:Landroid/graphics/drawable/Drawable;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TT;>;"
.inner class private static DefaultAnimationFactory inner com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory outer com/bumptech/glide/request/animation/DrawableCrossFadeFactory

.field private static final 'DEFAULT_DURATION_MS' I = 300


.field private final 'animationFactory' Lcom/bumptech/glide/request/animation/ViewAnimationFactory; signature "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;"

.field private final 'duration' I

.field private 'firstResourceAnimation' Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation; signature "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"

.field private 'secondResourceAnimation' Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation; signature "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<TT;>;"

.method public <init>()V
aload 0
sipush 300
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory
dup
new com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory
dup
iload 1
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory/<init>(I)V
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V
iload 1
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
return
.limit locals 2
.limit stack 6
.end method

.method public <init>(Landroid/content/Context;II)V
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory
dup
aload 1
iload 2
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Landroid/content/Context;I)V
iload 3
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public <init>(Landroid/view/animation/Animation;I)V
aload 0
new com/bumptech/glide/request/animation/ViewAnimationFactory
dup
aload 1
invokespecial com/bumptech/glide/request/animation/ViewAnimationFactory/<init>(Landroid/view/animation/Animation;)V
iload 2
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/<init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
return
.limit locals 3
.limit stack 4
.end method

.method <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
.signature "(Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;I)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
aload 0
iload 2
putfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/duration I
return
.limit locals 3
.limit stack 2
.end method

.method private getFirstResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
.signature "()Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/firstResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
ifnonnull L0
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation
dup
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
iconst_0
iconst_1
invokevirtual com/bumptech/glide/request/animation/ViewAnimationFactory/build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/duration I
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/<init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
putfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/firstResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
L0:
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/firstResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
areturn
.limit locals 1
.limit stack 6
.end method

.method private getSecondResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
.signature "()Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/secondResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
ifnonnull L0
aload 0
new com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation
dup
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/animationFactory Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
iconst_0
iconst_0
invokevirtual com/bumptech/glide/request/animation/ViewAnimationFactory/build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/duration I
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/<init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
putfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/secondResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
L0:
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeFactory/secondResourceAnimation Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
areturn
.limit locals 1
.limit stack 6
.end method

.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
.signature "(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
iload 1
ifeq L0
invokestatic com/bumptech/glide/request/animation/NoAnimation/get()Lcom/bumptech/glide/request/animation/GlideAnimation;
areturn
L0:
iload 2
ifeq L1
aload 0
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/getFirstResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
areturn
L1:
aload 0
invokespecial com/bumptech/glide/request/animation/DrawableCrossFadeFactory/getSecondResourceAnimation()Lcom/bumptech/glide/request/animation/GlideAnimation;
areturn
.limit locals 3
.limit stack 1
.end method
