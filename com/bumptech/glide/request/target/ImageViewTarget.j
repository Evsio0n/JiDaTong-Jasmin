.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/request/target/ImageViewTarget
.super com/bumptech/glide/request/target/ViewTarget
.implements com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter
.signature "<Z:Ljava/lang/Object;>Lcom/bumptech/glide/request/target/ViewTarget<Landroid/widget/ImageView;TZ;>;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;"

.method public <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ViewTarget/<init>(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/bumptech/glide/request/target/ImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/bumptech/glide/request/target/ImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/bumptech/glide/request/target/ImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 2
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/bumptech/glide/request/target/ImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
.signature "(TZ;Lcom/bumptech/glide/request/animation/GlideAnimation<-TZ;>;)V"
aload 2
ifnull L0
aload 2
aload 1
aload 0
invokeinterface com/bumptech/glide/request/animation/GlideAnimation/animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z 2
ifne L1
L0:
aload 0
aload 1
invokevirtual com/bumptech/glide/request/target/ImageViewTarget/setResource(Ljava/lang/Object;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/bumptech/glide/request/target/ImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
.signature "(TZ;)V"
.end method
