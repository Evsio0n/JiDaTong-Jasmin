.bytecode 50.0
.class public synchronized abstract com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache
.super com/nostra13/universalimageloader/cache/memory/BaseMemoryCache

.field private static final 'MAX_NORMAL_CACHE_SIZE' I = 16777216


.field private static final 'MAX_NORMAL_CACHE_SIZE_IN_MB' I = 16


.field private final 'cacheSize' Ljava/util/concurrent/atomic/AtomicInteger;

.field private final 'hardCache' Ljava/util/List; signature "Ljava/util/List<Landroid/graphics/Bitmap;>;"

.field private final 'sizeLimit' I

.method public <init>(I)V
aload 0
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/<init>()V
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
invokestatic java/util/Collections/synchronizedList(Ljava/util/List;)Ljava/util/List;
putfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/hardCache Ljava/util/List;
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/sizeLimit I
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>()V
putfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iload 1
ldc_w 16777216
if_icmple L0
ldc "You set too large memory cache size (more than %1$d Mb)"
iconst_1
anewarray java/lang/Object
dup
iconst_0
bipush 16
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/hardCache Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iconst_0
invokevirtual java/util/concurrent/atomic/AtomicInteger/set(I)V
aload 0
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/clear()V
return
.limit locals 1
.limit stack 2
.end method

.method protected abstract getSize(Landroid/graphics/Bitmap;)I
.end method

.method protected getSizeLimit()I
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/sizeLimit I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
iconst_0
istore 6
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/getSize(Landroid/graphics/Bitmap;)I
istore 4
aload 0
invokevirtual com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/getSizeLimit()I
istore 5
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/get()I
istore 3
iload 4
iload 5
if_icmpge L0
L1:
iload 3
iload 4
iadd
iload 5
if_icmpgt L2
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/hardCache Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iload 4
invokevirtual java/util/concurrent/atomic/AtomicInteger/addAndGet(I)I
pop
iconst_1
istore 6
L0:
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
pop
iload 6
ireturn
L2:
aload 0
invokevirtual com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/removeNext()Landroid/graphics/Bitmap;
astore 7
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/hardCache Ljava/util/List;
aload 7
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
aload 7
invokevirtual com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/getSize(Landroid/graphics/Bitmap;)I
ineg
invokevirtual java/util/concurrent/atomic/AtomicInteger/addAndGet(I)I
istore 3
goto L1
.limit locals 8
.limit stack 3
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/hardCache Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/getSize(Landroid/graphics/Bitmap;)I
ineg
invokevirtual java/util/concurrent/atomic/AtomicInteger/addAndGet(I)I
pop
L0:
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract removeNext()Landroid/graphics/Bitmap;
.end method
