.bytecode 50.0
.class synchronized com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1
.super java/lang/Object
.implements java/util/concurrent/Callable
.signature "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
.enclosing method com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache
.inner class inner com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1

.field final synthetic 'this$0' Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

.method <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic call()Ljava/lang/Object;
.throws java/lang/Exception
aload 0
invokevirtual com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/call()Ljava/lang/Void;
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
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$0(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;
ifnonnull L3
aload 1
monitorexit
L1:
aconst_null
areturn
L3:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$1(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$2(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$3(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)Z
ifeq L4
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$4(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;)V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1/this$0 Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
iconst_0
invokestatic com/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache/access$5(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;I)V
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
