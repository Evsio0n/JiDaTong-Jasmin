.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoaderFactory
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoaderFactory<[BLjava/io/InputStream;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory outer com/bumptech/glide/load/model/stream/StreamByteArrayLoader

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader<[BLjava/io/InputStream;>;"
new com/bumptech/glide/load/model/stream/StreamByteArrayLoader
dup
invokespecial com/bumptech/glide/load/model/stream/StreamByteArrayLoader/<init>()V
areturn
.limit locals 3
.limit stack 2
.end method

.method public teardown()V
return
.limit locals 1
.limit stack 0
.end method
