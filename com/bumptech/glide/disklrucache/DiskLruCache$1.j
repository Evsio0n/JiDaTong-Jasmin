.bytecode 50.0
.class synchronized com/bumptech/glide/disklrucache/DiskLruCache$1
.super java/lang/Object
.implements java/util/concurrent/Callable
.signature "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
.enclosing method com/bumptech/glide/disklrucache/DiskLruCache
.inner class inner com/bumptech/glide/disklrucache/DiskLruCache$1

.field final synthetic 'this$0' Lcom/bumptech/glide/disklrucache/DiskLruCache;

.method <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
aload 0
aload 1
putfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic call()Ljava/lang/Object;
.throws java/lang/Exception
aload 0
invokevirtual com/bumptech/glide/disklrucache/DiskLruCache$1/call()Ljava/lang/Void;
areturn
.limit locals 1
.limit stack 1
.end method

.method public call()Ljava/lang/Void;
.throws java/lang/Exception
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
ifnonnull L3
aload 1
monitorexit
L1:
aconst_null
areturn
L3:
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
ifeq L4
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
aload 0
getfield com/bumptech/glide/disklrucache/DiskLruCache$1/this$0 Lcom/bumptech/glide/disklrucache/DiskLruCache;
iconst_0
invokestatic com/bumptech/glide/disklrucache/DiskLruCache/access$402(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I
pop
L4:
aload 1
monitorexit
L5:
aconst_null
areturn
L2:
astore 2
L6:
aload 1
monitorexit
L7:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method
