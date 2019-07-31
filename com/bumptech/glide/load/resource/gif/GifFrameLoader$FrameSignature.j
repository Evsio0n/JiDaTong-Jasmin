.bytecode 50.0
.class synchronized com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature
.super java/lang/Object
.implements com/bumptech/glide/load/Key
.inner class static FrameSignature inner com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature outer com/bumptech/glide/load/resource/gif/GifFrameLoader

.field private final 'uuid' Ljava/util/UUID;

.method public <init>()V
aload 0
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokespecial com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/<init>(Ljava/util/UUID;)V
return
.limit locals 1
.limit stack 2
.end method

.method <init>(Ljava/util/UUID;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/uuid Ljava/util/UUID;
return
.limit locals 2
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature
ifeq L0
aload 1
checkcast com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/uuid Ljava/util/UUID;
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/uuid Ljava/util/UUID;
invokevirtual java/util/UUID/equals(Ljava/lang/Object;)Z
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/bumptech/glide/load/resource/gif/GifFrameLoader$FrameSignature/uuid Ljava/util/UUID;
invokevirtual java/util/UUID/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
.throws java/io/UnsupportedEncodingException
new java/lang/UnsupportedOperationException
dup
ldc "Not implemented"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method
