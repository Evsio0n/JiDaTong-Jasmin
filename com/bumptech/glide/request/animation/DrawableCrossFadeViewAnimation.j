.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimation
.signature "<T:Landroid/graphics/drawable/Drawable;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"

.field private final 'defaultAnimation' Lcom/bumptech/glide/request/animation/GlideAnimation; signature "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"

.field private final 'duration' I

.method public <init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
.signature "(Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;I)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/defaultAnimation Lcom/bumptech/glide/request/animation/GlideAnimation;
aload 0
iload 2
putfield com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/duration I
return
.limit locals 3
.limit stack 2
.end method

.method public animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
.signature "(TT;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z"
aload 2
invokeinterface com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter/getCurrentDrawable()Landroid/graphics/drawable/Drawable; 0
astore 3
aload 3
ifnull L0
new android/graphics/drawable/TransitionDrawable
dup
iconst_2
anewarray android/graphics/drawable/Drawable
dup
iconst_0
aload 3
aastore
dup
iconst_1
aload 1
aastore
invokespecial android/graphics/drawable/TransitionDrawable/<init>([Landroid/graphics/drawable/Drawable;)V
astore 1
aload 1
iconst_1
invokevirtual android/graphics/drawable/TransitionDrawable/setCrossFadeEnabled(Z)V
aload 1
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/duration I
invokevirtual android/graphics/drawable/TransitionDrawable/startTransition(I)V
aload 2
aload 1
invokeinterface com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter/setDrawable(Landroid/graphics/drawable/Drawable;)V 1
iconst_1
ireturn
L0:
aload 0
getfield com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/defaultAnimation Lcom/bumptech/glide/request/animation/GlideAnimation;
aload 1
aload 2
invokeinterface com/bumptech/glide/request/animation/GlideAnimation/animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z 2
pop
iconst_0
ireturn
.limit locals 4
.limit stack 6
.end method

.method public volatile synthetic animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
aload 0
aload 1
checkcast android/graphics/drawable/Drawable
aload 2
invokevirtual com/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation/animate(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
