.bytecode 50.0
.class public synchronized com/bumptech/glide/request/target/BitmapImageViewTarget
.super com/bumptech/glide/request/target/ImageViewTarget
.signature "Lcom/bumptech/glide/request/target/ImageViewTarget<Landroid/graphics/Bitmap;>;"

.method public <init>(Landroid/widget/ImageView;)V
aload 0
aload 1
invokespecial com/bumptech/glide/request/target/ImageViewTarget/<init>(Landroid/widget/ImageView;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected setResource(Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/request/target/BitmapImageViewTarget/view Landroid/view/View;
checkcast android/widget/ImageView
aload 1
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic setResource(Ljava/lang/Object;)V
aload 0
aload 1
checkcast android/graphics/Bitmap
invokevirtual com/bumptech/glide/request/target/BitmapImageViewTarget/setResource(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method
