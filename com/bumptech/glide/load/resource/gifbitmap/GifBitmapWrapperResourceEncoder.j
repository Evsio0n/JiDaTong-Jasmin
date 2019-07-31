.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceEncoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"

.field private final 'bitmapEncoder' Lcom/bumptech/glide/load/ResourceEncoder; signature "Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;"

.field private final 'gifEncoder' Lcom/bumptech/glide/load/ResourceEncoder; signature "Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"

.field private 'id' Ljava/lang/String;

.method public <init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V
.signature "(Lcom/bumptech/glide/load/ResourceEncoder<Landroid/graphics/Bitmap;>;Lcom/bumptech/glide/load/ResourceEncoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/bitmapEncoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 0
aload 2
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/gifEncoder Lcom/bumptech/glide/load/ResourceEncoder;
return
.limit locals 3
.limit stack 2
.end method

.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;Ljava/io/OutputStream;)Z"
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper
astore 1
aload 1
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;
astore 3
aload 3
ifnull L0
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/bitmapEncoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 3
aload 2
invokeinterface com/bumptech/glide/load/ResourceEncoder/encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z 2
ireturn
L0:
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/gifEncoder Lcom/bumptech/glide/load/ResourceEncoder;
aload 1
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper/getGifResource()Lcom/bumptech/glide/load/engine/Resource;
aload 2
invokeinterface com/bumptech/glide/load/ResourceEncoder/encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z 2
ireturn
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/Resource
aload 2
invokevirtual com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/id Ljava/lang/String;
ifnonnull L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/bitmapEncoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/gifEncoder Lcom/bumptech/glide/load/ResourceEncoder;
invokeinterface com/bumptech/glide/load/ResourceEncoder/getId()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/id Ljava/lang/String;
L0:
aload 0
getfield com/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
