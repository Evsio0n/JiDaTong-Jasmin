.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/NoAnimation
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimation
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
.inner class public static NoAnimationFactory inner com/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory outer com/bumptech/glide/request/animation/NoAnimation

.field private static final 'NO_ANIMATION' Lcom/bumptech/glide/request/animation/NoAnimation; signature "Lcom/bumptech/glide/request/animation/NoAnimation<*>;"

.field private static final 'NO_ANIMATION_FACTORY' Lcom/bumptech/glide/request/animation/GlideAnimationFactory; signature "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<*>;"

.method static <clinit>()V
new com/bumptech/glide/request/animation/NoAnimation
dup
invokespecial com/bumptech/glide/request/animation/NoAnimation/<init>()V
putstatic com/bumptech/glide/request/animation/NoAnimation/NO_ANIMATION Lcom/bumptech/glide/request/animation/NoAnimation;
new com/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory
dup
invokespecial com/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory/<init>()V
putstatic com/bumptech/glide/request/animation/NoAnimation/NO_ANIMATION_FACTORY Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Lcom/bumptech/glide/request/animation/NoAnimation;
getstatic com/bumptech/glide/request/animation/NoAnimation/NO_ANIMATION Lcom/bumptech/glide/request/animation/NoAnimation;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static get()Lcom/bumptech/glide/request/animation/GlideAnimation;
.signature "<R:Ljava/lang/Object;>()Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
getstatic com/bumptech/glide/request/animation/NoAnimation/NO_ANIMATION Lcom/bumptech/glide/request/animation/NoAnimation;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
.signature "<R:Ljava/lang/Object;>()Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
getstatic com/bumptech/glide/request/animation/NoAnimation/NO_ANIMATION_FACTORY Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
areturn
.limit locals 0
.limit stack 1
.end method

.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method
