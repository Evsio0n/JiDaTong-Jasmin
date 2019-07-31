.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/ModelLoader
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"
.inner class public static Factory inner com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory outer com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader

.field private final 'modelCache' Lcom/bumptech/glide/load/model/ModelCache; signature "Lcom/bumptech/glide/load/model/ModelCache<Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/model/GlideUrl;>;"

.method public <init>()V
aload 0
aconst_null
invokespecial com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/<init>(Lcom/bumptech/glide/load/model/ModelCache;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Lcom/bumptech/glide/load/model/ModelCache;)V
.signature "(Lcom/bumptech/glide/load/model/ModelCache<Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/load/model/GlideUrl;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
return
.limit locals 2
.limit stack 2
.end method

.method public getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
aload 1
astore 4
aload 0
getfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
aload 1
iconst_0
iconst_0
invokevirtual com/bumptech/glide/load/model/ModelCache/get(Ljava/lang/Object;II)Ljava/lang/Object;
checkcast com/bumptech/glide/load/model/GlideUrl
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
aload 0
getfield com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
aload 1
iconst_0
iconst_0
aload 1
invokevirtual com/bumptech/glide/load/model/ModelCache/put(Ljava/lang/Object;IILjava/lang/Object;)V
aload 1
astore 4
L0:
new com/bumptech/glide/load/data/HttpUrlFetcher
dup
aload 4
invokespecial com/bumptech/glide/load/data/HttpUrlFetcher/<init>(Lcom/bumptech/glide/load/model/GlideUrl;)V
areturn
.limit locals 6
.limit stack 5
.end method

.method public volatile synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
aload 0
aload 1
checkcast com/bumptech/glide/load/model/GlideUrl
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader/getResourceFetcher(Lcom/bumptech/glide/load/model/GlideUrl;II)Lcom/bumptech/glide/load/data/DataFetcher;
areturn
.limit locals 4
.limit stack 4
.end method
