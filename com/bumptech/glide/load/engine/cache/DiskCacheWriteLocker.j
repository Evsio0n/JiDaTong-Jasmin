.bytecode 50.0
.class final synchronized com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker
.super java/lang/Object
.inner class static synthetic inner com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1
.inner class private static WriteLock inner com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock outer com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker
.inner class private static WriteLockPool inner com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool outer com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker

.field private final 'locks' Ljava/util/Map; signature "Ljava/util/Map<Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;>;"

.field private final 'writeLockPool' Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/locks Ljava/util/Map;
aload 0
new com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/<init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/writeLockPool Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
return
.limit locals 1
.limit stack 4
.end method

.method acquire(Lcom/bumptech/glide/load/Key;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/locks Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
astore 3
L1:
aload 3
astore 2
aload 3
ifnonnull L4
L3:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/writeLockPool Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/obtain()Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/locks Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L4:
aload 2
aload 2
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
aload 0
monitorexit
L5:
aload 2
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/lock Ljava/util/concurrent/locks/Lock;
invokeinterface java/util/concurrent/locks/Lock/lock()V 0
return
L2:
astore 1
L6:
aload 0
monitorexit
L7:
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method release(Lcom/bumptech/glide/load/Key;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L2 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L14 to L15 using L2
.catch all from L15 to L16 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/locks Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
ifgt L11
L4:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot release a lock that is not held, key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", interestedThreads: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
L5:
aload 3
ifnonnull L9
iconst_0
istore 2
L6:
new java/lang/IllegalArgumentException
dup
aload 1
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 1
L7:
aload 0
monitorexit
L8:
aload 1
athrow
L9:
aload 3
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
istore 2
L10:
goto L6
L11:
aload 3
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
iconst_1
isub
istore 2
aload 3
iload 2
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/interestedThreads I
L12:
iload 2
ifne L15
L13:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/locks Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
astore 4
aload 4
aload 3
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L14
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Removed the wrong lock, expected to remove: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", but actually removed: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", key: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L14:
aload 0
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker/writeLockPool Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
aload 4
invokevirtual com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool/offer(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
L15:
aload 0
monitorexit
L16:
aload 3
getfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/lock Ljava/util/concurrent/locks/Lock;
invokeinterface java/util/concurrent/locks/Lock/unlock()V 0
return
.limit locals 5
.limit stack 4
.end method
