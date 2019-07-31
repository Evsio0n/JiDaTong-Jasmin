.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/model/stream/BaseGlideUrlLoader
.super java/lang/Object
.implements com/bumptech/glide/load/model/stream/StreamModelLoader
.signature "<T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/load/model/stream/StreamModelLoader<TT;>;"

.field private final 'concreteLoader' Lcom/bumptech/glide/load/model/ModelLoader; signature "Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;"

.field private final 'modelCache' Lcom/bumptech/glide/load/model/ModelCache; signature "Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/<init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache;)V
.signature "(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;)V"
aload 0
ldc com/bumptech/glide/load/model/GlideUrl
ldc java/io/InputStream
aload 1
invokestatic com/bumptech/glide/Glide/buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
aload 2
invokespecial com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;)V"
aload 0
aload 1
aconst_null
invokespecial com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/<init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelCache;)V
.signature "(Lcom/bumptech/glide/load/model/ModelLoader<Lcom/bumptech/glide/load/model/GlideUrl;Ljava/io/InputStream;>;Lcom/bumptech/glide/load/model/ModelCache<TT;Lcom/bumptech/glide/load/model/GlideUrl;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/concreteLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 0
aload 2
putfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
return
.limit locals 3
.limit stack 2
.end method

.method protected getHeaders(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/Headers;
.signature "(TT;II)Lcom/bumptech/glide/load/model/Headers;"
getstatic com/bumptech/glide/load/model/Headers/DEFAULT Lcom/bumptech/glide/load/model/Headers;
areturn
.limit locals 4
.limit stack 1
.end method

.method public getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
.signature "(TT;II)Lcom/bumptech/glide/load/data/DataFetcher<Ljava/io/InputStream;>;"
aconst_null
astore 4
aload 0
getfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
ifnull L0
aload 0
getfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
aload 1
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/ModelCache/get(Ljava/lang/Object;II)Ljava/lang/Object;
checkcast com/bumptech/glide/load/model/GlideUrl
astore 4
L0:
aload 4
astore 5
aload 4
ifnonnull L1
aload 0
aload 1
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/getUrl(Ljava/lang/Object;II)Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aconst_null
areturn
L2:
new com/bumptech/glide/load/model/GlideUrl
dup
aload 4
aload 0
aload 1
iload 2
iload 3
invokevirtual com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/getHeaders(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/Headers;
invokespecial com/bumptech/glide/load/model/GlideUrl/<init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V
astore 4
aload 4
astore 5
aload 0
getfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
ifnull L1
aload 0
getfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/modelCache Lcom/bumptech/glide/load/model/ModelCache;
aload 1
iload 2
iload 3
aload 4
invokevirtual com/bumptech/glide/load/model/ModelCache/put(Ljava/lang/Object;IILjava/lang/Object;)V
aload 4
astore 5
L1:
aload 0
getfield com/bumptech/glide/load/model/stream/BaseGlideUrlLoader/concreteLoader Lcom/bumptech/glide/load/model/ModelLoader;
aload 5
iload 2
iload 3
invokeinterface com/bumptech/glide/load/model/ModelLoader/getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher; 3
areturn
.limit locals 6
.limit stack 7
.end method

.method protected abstract getUrl(Ljava/lang/Object;II)Ljava/lang/String;
.signature "(TT;II)Ljava/lang/String;"
.end method
