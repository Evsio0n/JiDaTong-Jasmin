.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/DrawableImageViewTarget
.super com/bumptech/glide/request/target/ImageViewTarget
.signature "Lcom/bumptech/glide/request/target/ImageViewTarget<Landroid/graphics/drawable/Drawable;>;"

.method public <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ImageViewTarget/<init>(Landroid/widget/ImageView;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setResource(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/bumptech/glide/request/target/DrawableImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic setResource(Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/graphics/drawable/Drawable
invokevirtual com/bumptech/glide/request/target/DrawableImageViewTarget/setResource(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method
