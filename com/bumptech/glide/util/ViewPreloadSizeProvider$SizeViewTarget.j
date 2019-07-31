.bytecode 50.0
.class final synchronized com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget
.super com/bumptech/glide/request/target/ViewTarget
.signature "Lcom/bumptech/glide/request/target/ViewTarget<Landroid/view/View;Ljava/lang/Object;>;"
.inner class private static final SizeViewTarget inner com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget outer com/bumptech/glide/util/ViewPreloadSizeProvider

.method public <init>(Landroid/view/View;Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ViewTarget/<init>(Landroid/view/View;)V
aload 0
aload 2
invokevirtual com/bumptech/glide/util/ViewPreloadSizeProvider$SizeViewTarget/getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
return
.limit locals 3
.limit stack 0
.end method
