.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation
.super java/lang/Object
.implements com/bumptech/glide/load/Transformation
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'bitmapTransformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;"

.field private final 'gifDataTransformation' Lcom/bumptech/glide/load/Transformation; signature "Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.method <init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V
.signature "(Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/Transformation<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/bitmapTransformation Lcom/bumptech/glide/load/Transformation;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/gifDataTransformation Lcom/bumptech/glide/load/Transformation;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V
.signature "(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation<Landroid/graphics/Bitmap;>;)V"
aload 0
aload 2
new com/bumptech/glide/load/resource/gif/GifDrawableTransformation
dup
aload 2
aload 1
invokespecial com/bumptech/glide/load/resource/gif/GifDrawableTransformation/<init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/<init>(Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/Transformation;)V
return
.limit locals 3
.limit stack 6
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/bitmapTransformation Lcom/bumptech/glide/load/Transformation;
invokeinterface com/bumptech/glide/load/Transformation/getId()Ljava/lang/String; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;II)Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
astore 5
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getGifResource()Lcom/bumptech/glide/load/engine/Resource;
astore 6
aload 5
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/bitmapTransformation Lcom/bumptech/glide/load/Transformation;
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/bitmapTransformation Lcom/bumptech/glide/load/Transformation;
aload 5
iload 2
iload 3
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 6
aload 1
astore 4
aload 5
aload 6
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource
dup
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
dup
aload 6
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getGifResource()Lcom/bumptech/glide/load/engine/Resource;
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/<init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/<init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
astore 4
L1:
aload 4
areturn
L0:
aload 1
astore 4
aload 6
ifnull L1
aload 1
astore 4
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/gifDataTransformation Lcom/bumptech/glide/load/Transformation;
ifnull L1
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation/gifDataTransformation Lcom/bumptech/glide/load/Transformation;
aload 6
iload 2
iload 3
invokeinterface com/bumptech/glide/load/Transformation/transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource; 3
astore 5
aload 1
astore 4
aload 6
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L1
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource
dup
new com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
dup
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
aload 5
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/<init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
invokespecial com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/<init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
areturn
.limit locals 7
.limit stack 6
.end method
