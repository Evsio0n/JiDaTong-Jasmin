.bytecode 50.0
.class public synchronized com/bumptech/glide/load/data/ByteArrayFetcher
.super java/lang/Object
.implements com/bumptech/glide/load/data/DataFetcher
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"

.field private final 'bytes' [B

.field private final 'id' Ljava/lang/String;

.method public <init>([BLjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/data/ByteArrayFetcher/bytes [B
aload 0
aload 2
putfield com/bumptech/glide/load/data/ByteArrayFetcher/id Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public cancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public cleanup()V
return
.limit locals 1
.limit stack 0
.end method

.method public getId()Ljava/lang/String;
aload 0
getfield com/bumptech/glide/load/data/ByteArrayFetcher/id Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
new java/io/ByteArrayInputStream
dup
aload 0
getfield com/bumptech/glide/load/data/ByteArrayFetcher/bytes [B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public volatile synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
.throws java/lang/Exception
aload 0
aload 1
invokevirtual com/bumptech/glide/load/data/ByteArrayFetcher/loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
areturn
.limit locals 2
.limit stack 2
.end method
