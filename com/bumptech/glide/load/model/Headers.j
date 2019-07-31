.bytecode 50.0
.class public abstract interface com/bumptech/glide/load/model/Headers
.super java/lang/Object
.inner class static final inner com/bumptech/glide/load/model/Headers$1

.field public static final 'DEFAULT' Lcom/bumptech/glide/load/model/Headers;

.field public static final 'NONE' Lcom/bumptech/glide/load/model/Headers;
.annotation visible Ljava/lang/Deprecated;
.end annotation
.end field

.method static <clinit>()V
new com/bumptech/glide/load/model/Headers$1
dup
invokespecial com/bumptech/glide/load/model/Headers$1/<init>()V
putstatic com/bumptech/glide/load/model/Headers/NONE Lcom/bumptech/glide/load/model/Headers;
new com/bumptech/glide/load/model/LazyHeaders$Builder
dup
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/<init>()V
invokevirtual com/bumptech/glide/load/model/LazyHeaders$Builder/build()Lcom/bumptech/glide/load/model/LazyHeaders;
putstatic com/bumptech/glide/load/model/Headers/DEFAULT Lcom/bumptech/glide/load/model/Headers;
return
.limit locals 0
.limit stack 2
.end method

.method public abstract getHeaders()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
.end method
