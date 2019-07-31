.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gif/GifDrawableTransformation
.super java/lang/Object
.implements com/bumptech/glide/load/Transformation
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final 'wrapped' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"

.method public <init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
.signature "(Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/wrapped Lcom/bumptech/glide/load/Transformation;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 3
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/wrapped Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;II)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
astore 4
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getFirstFrame()Landroid/graphics/Bitmap;
astore 5
new com/bumptech/glide/load/resource/bitmap/BitmapResource
dup
aload 5
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapResource/<init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
astore 6
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/wrapped Lcom/bumptech/glide/load/Transformation;
aload 6
iload 2
iload 3
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 6
aload 6
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L0
new com/bumptech/glide/load/resource/gif/GifDrawableResource
dup
new com/bumptech/glide/load/resource/gif/GifDrawable
dup
aload 4
aload 6
aload 0
getfield com/bumptech/glide/load/resource/gif/GifDrawableTransformation/wrapped Lcom/bumptech/glide/load/Transformation;
invokespecial com/bumptech/glide/load/resource/gif/GifDrawable/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;)V
invokespecial com/bumptech/glide/load/resource/gif/GifDrawableResource/<init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
astore 1
L0:
aload 1
areturn
.limit locals 7
.limit stack 7
.end method
