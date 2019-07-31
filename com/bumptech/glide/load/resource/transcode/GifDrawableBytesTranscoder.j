.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder
.super java/lang/Object
.implements com/bumptech/glide/load/resource/transcode/ResourceTranscoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lcom/bumptech/glide/load/resource/gif/GifDrawable;[B>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
ldc "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode"
areturn
.limit locals 1
.limit stack 1
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
.signature "(Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;)Lcom/bumptech/glide/load/engine/Resource<[B>;"
new com/bumptech/glide/load/resource/bytes/BytesResource
dup
aload 1
invokeinterface com/bumptech/glide/load/engine/Resource/get()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/resource/gif/GifDrawable
invokevirtual com/bumptech/glide/load/resource/gif/GifDrawable/getData()[B
invokespecial com/bumptech/glide/load/resource/bytes/BytesResource/<init>([B)V
areturn
.limit locals 2
.limit stack 3
.end method
