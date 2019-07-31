.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamByteArrayLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/stream/StreamModelLoader
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/stream/StreamModelLoader<[B>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory outer com/bumptech/glide/load/model/stream/StreamByteArrayLoader

.field private final 'id' Ljava/lang/String;

.method public <init>()V
aload 0
ldc ""
invokespecial com/bumptech/glide/load/model/stream/StreamByteArrayLoader/<init>(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/stream/StreamByteArrayLoader/id Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast [B
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/stream/StreamByteArrayLoader/getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method

.method public getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "([BII)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
new com/bumptech/glide/load/data/ByteArrayFetcher
dup
aload 1
aload 0
getfield com/bumptech/glide/load/model/stream/StreamByteArrayLoader/id Ljava/lang/String;
invokespecial com/bumptech/glide/load/data/ByteArrayFetcher/<init>([BLjava/lang/String;)V
areturn
.limit locals 4
.limit stack 4
.end method
