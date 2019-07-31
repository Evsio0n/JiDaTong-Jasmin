.bytecode 50.0
.class public synchronized com/bumptech/glide/load/model/ModelCache
.super java/lang/Object
.signature "<A:Ljava/lang/Object;B:Ljava/lang/Object;>Ljava/lang/Object;"
.inner class inner com/bumptech/glide/load/model/ModelCache$1
.inner class static final ModelKey inner com/bumptech/glide/load/model/ModelCache$ModelKey outer com/bumptech/glide/load/model/ModelCache

.field private static final 'DEFAULT_SIZE' I = 250


.field private final 'cache' Lcom/bumptech/glide/util/LruCache; signature "Lcom/bumptech/glide/util/LruCache<Lcom/bumptech/glide/load/model/ModelCache$ModelKey<TA;>;TB;>;"

.method public <init>()V
aload 0
sipush 250
invokespecial com/bumptech/glide/load/model/ModelCache/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/model/ModelCache$1
dup
aload 0
iload 1
invokespecial com/bumptech/glide/load/model/ModelCache$1/<init>(Lcom/bumptech/glide/load/model/ModelCache;I)V
putfield com/bumptech/glide/load/model/ModelCache/cache Lcom/bumptech/glide/util/LruCache;
return
.limit locals 2
.limit stack 5
.end method

.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
.signature "(TA;II)TB;"
aload 1
iload 2
iload 3
invokestatic com/bumptech/glide/load/model/ModelCache$ModelKey/get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
astore 1
aload 0
getfield com/bumptech/glide/load/model/ModelCache/cache Lcom/bumptech/glide/util/LruCache;
aload 1
invokevirtual com/bumptech/glide/util/LruCache/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 4
aload 1
invokevirtual com/bumptech/glide/load/model/ModelCache$ModelKey/release()V
aload 4
areturn
.limit locals 5
.limit stack 3
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
.signature "(TA;IITB;)V"
aload 1
iload 2
iload 3
invokestatic com/bumptech/glide/load/model/ModelCache$ModelKey/get(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/ModelCache$ModelKey;
astore 1
aload 0
getfield com/bumptech/glide/load/model/ModelCache/cache Lcom/bumptech/glide/util/LruCache;
aload 1
aload 4
invokevirtual com/bumptech/glide/util/LruCache/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 5
.limit stack 3
.end method
