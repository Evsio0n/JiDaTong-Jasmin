.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/bytes/BytesResource
.super java/lang/Object
.implements com/bumptech/glide/load/engine/Resource
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/engine/Resource<[B>;"

.field private final 'bytes' [B

.method public <init>([B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
ifnonnull L0
new java/lang/NullPointerException
dup
ldc "Bytes must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/bumptech/glide/load/resource/bytes/BytesResource/bytes [B
return
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic get()Ljava/lang/Object;
aload 0
invokevirtual com/bumptech/glide/load/resource/bytes/BytesResource/get()[B
areturn
.limit locals 1
.limit stack 1
.end method

.method public get()[B
aload 0
getfield com/bumptech/glide/load/resource/bytes/BytesResource/bytes [B
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSize()I
aload 0
getfield com/bumptech/glide/load/resource/bytes/BytesResource/bytes [B
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
return
.limit locals 1
.limit stack 0
.end method
