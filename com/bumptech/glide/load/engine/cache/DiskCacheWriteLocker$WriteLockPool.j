.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool
.super java/lang/Object
.inner class private static WriteLockPool inner com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool outer com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker

.field private static final 'MAX_POOL_SIZE' I = 10


.field private final 'pool' Ljava/util/Queue; signature "Ljava/util/Queue<Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayDeque
dup
invokespecial java/util/ArrayDeque/<init>()V
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
return
.limit locals 1
.limit stack 3
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/<init>()V
return
.limit locals 2
.limit stack 1
.end method

.method obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
astore 2
aload 1
monitorexit
L1:
aload 2
astore 1
aload 2
ifnonnull L5
new com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/<init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
astore 1
L5:
aload 1
areturn
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
invokeinterface java/util/Queue/size()I 0
bipush 10
if_icmpge L1
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/pool Ljava/util/Queue;
aload 1
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
L1:
aload 2
monitorexit
L3:
return
L2:
astore 1
L4:
aload 2
monitorexit
L5:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method
