.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Landroid/graphics/Bitmap;[B>;"

.field private final 'compressFormat' Landroid/graphics/Bitmap$CompressFormat;

.field private final 'quality' I

.method public <init>()V
aload 0
getstatic android/graphics/Bitmap$CompressFormat/JPEG Landroid/graphics/Bitmap$CompressFormat;
bipush 100
invokespecial com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/<init>(Landroid/graphics/Bitmap$CompressFormat;I)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
iload 2
putfield com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/quality I
return
.limit locals 3
.limit stack 2
.end method

.method public getId()Ljava/lang/String;
ldc "BitmapBytesTranscoder.com.bumptech.glide.load.resource.transcode"
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;)Lcom/bumptech/glide/load/engine/Resource<[B>;"
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 2
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
aload 0
getfield com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/compressFormat Landroid/graphics/Bitmap$CompressFormat;
aload 0
getfield com/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder/quality I
aload 2
invokevirtual android/graphics/Bitmap/compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
pop
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/recycle()V 0
new com/bumptech/glide/load/resource/bytes/BytesResource
dup
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
invokespecial com/bumptech/glide/load/resource/bytes/BytesResource/<init>([B)V
areturn
.limit locals 3
.limit stack 4
.end method
