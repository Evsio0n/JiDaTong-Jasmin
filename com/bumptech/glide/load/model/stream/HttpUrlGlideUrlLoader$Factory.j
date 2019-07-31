.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoaderFactory
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoaderFactory<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory outer com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader

.field private final 'modelCache' Lcom/bumptech/glide/load/model/ModelCache; signature "Lcom/bumptech/glide/load/model/ModelCache<Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/model/GlideUrl;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/model/ModelCache
dup
sipush 500
invokespecial com/bumptech/glide/load/model/ModelCache/<init>(I)V
putfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory/modelCache Lcom/bumptech/glide/load/model/ModelCache;
return
.limit locals 1
.limit stack 4
.end method

.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
new com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader
dup
aload 0
getfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory/modelCache Lcom/bumptech/glide/load/model/ModelCache;
invokespecial com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/<init>(Lcom/bumptech/glide/load/model/ModelCache;)V
areturn
.limit locals 3
.limit stack 3
.end method

.method public teardown()V
return
.limit locals 1
.limit stack 0
.end method
