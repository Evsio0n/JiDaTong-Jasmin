.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock
.super java/lang/Object
.inner class private static WriteLock inner com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock outer com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker

.field 'interestedThreads' I

.field final 'lock' Ljava/util/concurrent/locks/Lock;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/locks/ReentrantLock
dup
invokespecial java/util/concurrent/locks/ReentrantLock/<init>()V
putfield com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/lock Ljava/util/concurrent/locks/Lock;
return
.limit locals 1
.limit stack 3
.end method

.method synthetic <init>(Lcom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
aload 0
invokespecial com/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock/<init>()V
return
.limit locals 2
.limit stack 1
.end method
