.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/BitmapDrawableResource
.super com/bumptech/glide/load/resource/drawable/DrawableResource
.signature "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<Landroid/graphics/drawable/BitmapDrawable;>;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.method public <init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/drawable/DrawableResource/<init>(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/BitmapDrawableResource/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 3
.limit stack 2
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapDrawableResource/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapDrawableResource/drawable Landroid/graphics/drawable/Drawable;
checkcast android/graphics/drawable/BitmapDrawable
invokevirtual android/graphics/drawable/BitmapDrawable/getBitmap()Landroid/graphics/Bitmap;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
pop
return
.limit locals 1
.limit stack 2
.end method
