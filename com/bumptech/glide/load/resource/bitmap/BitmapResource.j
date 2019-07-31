.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bitmap/BitmapResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"

.field private final 'bitmap' Landroid/graphics/Bitmap;

.field private final 'bitmapPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.method public <init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Bitmap must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 2
ifnonnull L1
new java/lang/NullPointerException
dup
ldc "BitmapPool must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmap Landroid/graphics/Bitmap;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
return
.limit locals 3
.limit stack 3
.end method

.method public static obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
aload 0
ifnonnull L0
aconst_null
areturn
L0:
new com/bumptech/glide/load/resource/bitmap/BitmapResource
dup
aload 0
aload 1
invokespecial com/bumptech/glide/load/resource/bitmap/BitmapResource/<init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public get()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic get()Ljava/lang/Object;
aload 0
invokevirtual com/bumptech/glide/load/resource/bitmap/BitmapResource/get()Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmap Landroid/graphics/Bitmap;
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmapPool Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmap Landroid/graphics/Bitmap;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
ifne L0
aload 0
getfield com/bumptech/glide/load/resource/bitmap/BitmapResource/bitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L0:
return
.limit locals 1
.limit stack 2
.end method
