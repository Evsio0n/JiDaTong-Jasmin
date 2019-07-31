.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/NullEncoder
.super java/lang/Object
.implements com/bumptech/glide/load/Encoder
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/Encoder<TT;>;"

.field private static final 'NULL_ENCODER' Lcom/bumptech/glide/load/resource/NullEncoder; signature "Lcom/bumptech/glide/load/resource/NullEncoder<*>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/NullEncoder
dup
invokespecial com/bumptech/glide/load/resource/NullEncoder/<init>()V
putstatic com/bumptech/glide/load/resource/NullEncoder/NULL_ENCODER Lcom/bumptech/glide/load/resource/NullEncoder;
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

.method public static get()Lcom/bumptech/glide/load/Encoder;
.signature "<T:Ljava/lang/Object;>()Lcom/bumptech/glide/load/Encoder<TT;>;"
getstatic com/bumptech/glide/load/resource/NullEncoder/NULL_ENCODER Lcom/bumptech/glide/load/resource/NullEncoder;
areturn
.limit locals 0
.limit stack 1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
.signature "(TT;Ljava/io/OutputStream;)Z"
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
