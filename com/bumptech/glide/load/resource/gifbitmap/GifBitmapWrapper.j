.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
.super java/lang/Object

.field private final 'bitmapResource' Lcom/bumptech/glide/load/engine/Resource; signature "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"

.field private final 'gifResource' Lcom/bumptech/glide/load/engine/Resource; signature "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.method public <init>(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/engine/Resource;)V
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnull L0
aload 2
ifnull L0
new java/lang/IllegalArgumentException
dup
ldc "Can only contain either a bitmap resource or a gif resource, not both"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
ifnonnull L1
aload 2
ifnonnull L1
new java/lang/IllegalArgumentException
dup
ldc "Must contain either a bitmap resource or a gif resource"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/bitmapResource Lcom/bumptech/glide/load/engine/Resource;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/gifResource Lcom/bumptech/glide/load/engine/Resource;
return
.limit locals 3
.limit stack 3
.end method

.method public getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/bitmapResource Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getGifResource()Lcom/bumptech/glide/load/engine/Resource;
.signature "()Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/gifResource Lcom/bumptech/glide/load/engine/Resource;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/bitmapResource Lcom/bumptech/glide/load/engine/Resource;
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/bitmapResource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/getSize()I 0
ireturn
L0:
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/gifResource Lcom/bumptech/glide/load/engine/Resource;
invokeinterface com/bumptech/glide/load/engine/Resource/getSize()I 0
ireturn
.limit locals 1
.limit stack 1
.end method
