.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/StreamFileLoader$Factory
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoaderFactory
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoaderFactory<Ljava/io/File;Ljava/io/InputStream;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/StreamFileLoader$Factory outer com/bumptech/glide/load/model/stream/StreamFileLoader

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader<Ljava/io/File;Ljava/io/InputStream;>;"
new com/bumptech/glide/load/model/stream/StreamFileLoader
dup
aload 2
ldc android/net/Uri
ldc java/io/InputStream
invokevirtual com/bumptech/glide/load/model/GenericLoaderFactory/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
invokespecial com/bumptech/glide/load/model/stream/StreamFileLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
areturn
.limit locals 3
.limit stack 5
.end method

.method public teardown()V
return
.limit locals 1
.limit stack 0
.end method
