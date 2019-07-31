.bytecode 50.0
.class public synchronized com/bumptech/glide/load/resource/NullDecoder
.super java/lang/Object
.implements com/bumptech/glide/load/ResourceDecoder
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/ResourceDecoder<TT;TZ;>;"

.field private static final 'NULL_DECODER' Lcom/bumptech/glide/load/resource/NullDecoder; signature "Lcom/bumptech/glide/load/resource/NullDecoder<**>;"

.method static <clinit>()V
new com/bumptech/glide/load/resource/NullDecoder
dup
invokespecial com/bumptech/glide/load/resource/NullDecoder/<init>()V
putstatic com/bumptech/glide/load/resource/NullDecoder/NULL_DECODER Lcom/bumptech/glide/load/resource/NullDecoder;
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

.method public static get()Lcom/bumptech/glide/load/resource/NullDecoder;
.signature "<T:Ljava/lang/Object;Z:Ljava/lang/Object;>()Lcom/bumptech/glide/load/resource/NullDecoder<TT;TZ;>;"
getstatic com/bumptech/glide/load/resource/NullDecoder/NULL_DECODER Lcom/bumptech/glide/load/resource/NullDecoder;
areturn
.limit locals 0
.limit stack 1
.end method

.method public decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
.signature "(TT;II)Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
aconst_null
areturn
.limit locals 4
.limit stack 1
.end method

.method public getId()Ljava/lang/String;
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method
