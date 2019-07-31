.bytecode 50.0
.class public abstract interface com/bumptech/glide/request/target/Target
.super java/lang/Object
.implements com/bumptech/glide/manager/LifecycleListener
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/manager/LifecycleListener;"

.field public static final 'SIZE_ORIGINAL' I = -2147483648


.method public abstract getRequest()Lcom/bumptech/glide/request/Request;
.end method

.method public abstract getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
.end method

.method public abstract onLoadCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onLoadStarted(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(TR;Lcom/bumptech/glide/request/animation/GlideAnimation<-TR;>;)V"
.end method

.method public abstract setRequest(Lcom/bumptech/glide/request/Request;)V
.end method
