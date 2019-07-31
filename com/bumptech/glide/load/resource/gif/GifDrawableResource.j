.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifDrawableResource
.super com/bumptech/glide/load/resource/drawable/DrawableResource
.signature "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.method public <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/DrawableResource/<init>(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 2
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getData()[B
arraylength
istore 1
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getFirstFrame()Landroid/graphics/Bitmap;
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
iload 1
iadd
ireturn
.limit locals 2
.limit stack 2
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/stop()V
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/recycle()V
return
.limit locals 1
.limit stack 1
.end method
