.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/NullResourceEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceEncoder
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceEncoder<TT;>;"

.field private static final 'NULL_ENCODER' Lcom/bumptech/glide/load/resource/NullResourceEncoder; signature "Lcom/bumptech/glide/load/resource/NullResourceEncoder<*>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/NullResourceEncoder
dup
invokespecial com/bumptech/glide/load/resource/NullResourceEncoder/<init>()V
putstatic com/bumptech/glide/load/resource/NullResourceEncoder/NULL_ENCODER Lcom/bumptech/glide/load/resource/NullResourceEncoder;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;
.signature "<T:Ljava/lang/Object;>()Lcom/bumptech/glide/load/resource/NullResourceEncoder<TT;>;"
getstatic com/bumptech/glide/load/resource/NullResourceEncoder/NULL_ENCODER Lcom/bumptech/glide/load/resource/NullResourceEncoder;
areturn
.limit locals 0
.limit stack 1
.end method

.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
.signature "(Lcom/bumptech/glide/load/engine/Resource<TT;>;Ljava/io/OutputStream;)Z"
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public volatile synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
aload 0
aload 1
checkcast com/bumptech/glide/load/engine/Resource
aload 2
invokevirtual com/bumptech/glide/load/resource/NullResourceEncoder/encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
