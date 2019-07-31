.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'data' Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

.method public <init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Data must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/data Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
return
.limit locals 2
.limit stack 3
.end method

.method public get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/data Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
areturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic get()Ljava/lang/Object;
aload 0
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/data Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getSize()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/data Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
L0:
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource/data Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getGifResource()Lcom/bumptech/glide/load/engine/Resource;
astore 1
aload 1
ifnull L1
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
L1:
return
.limit locals 2
.limit stack 1
.end method
