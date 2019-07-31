.bytecode 50.0
.class public synchronized abstract com/nostra13/universalimageloader/cache/disc/LimitedDiscCache
.super com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache
.inner class inner com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1

.field private final 'cacheSize' Ljava/util/concurrent/atomic/AtomicInteger;

.field private final 'lastUsageDates' Ljava/util/Map; signature "Ljava/util/Map<Ljava/io/File;Ljava/lang/Long;>;"

.field private final 'sizeLimit' I

.method public <init>(Ljava/io/File;I)V
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
iload 2
invokespecial com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/<init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
aload 0
aload 1
aload 1
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createReserveDiskCacheDir(Ljava/io/File;)Ljava/io/File;
aload 2
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/<init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
aload 0
iload 3
putfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/sizeLimit I
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>()V
putfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/calculateCacheSizeAndFillUsageMap()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/io/File;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheDir Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
areturn
.limit locals 1
.limit stack 1
.end method

.method private calculateCacheSizeAndFillUsageMap()V
new java/lang/Thread
dup
new com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1
dup
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/LimitedDiscCache$1/<init>(Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method private removeNext()I
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
invokeinterface java/util/Map/isEmpty()Z 0
ifeq L14
iconst_0
istore 1
L15:
iload 1
ireturn
L14:
aconst_null
astore 4
aconst_null
astore 3
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
astore 5
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
astore 6
aload 6
monitorenter
L0:
aload 5
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 7
L1:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 6
monitorexit
L3:
aload 0
aload 3
invokevirtual com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/getSize(Ljava/io/File;)I
istore 2
iload 2
istore 1
aload 3
invokevirtual java/io/File/delete()Z
ifeq L15
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
aload 3
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
iload 2
ireturn
L4:
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 8
L5:
aload 3
ifnonnull L8
L6:
aload 8
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/io/File
astore 3
aload 8
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 4
L7:
goto L1
L8:
aload 8
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 5
aload 5
invokevirtual java/lang/Long/longValue()J
aload 4
invokevirtual java/lang/Long/longValue()J
lcmp
ifge L1
L9:
aload 5
astore 4
L10:
aload 8
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/io/File
astore 3
L11:
goto L1
L2:
astore 3
L12:
aload 6
monitorexit
L13:
aload 3
athrow
.limit locals 9
.limit stack 4
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iconst_0
invokevirtual java/util/concurrent/atomic/AtomicInteger/set(I)V
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/clear()V
return
.limit locals 1
.limit stack 2
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache/get(Ljava/lang/String;)Ljava/io/File;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 2
aload 1
aload 2
invokevirtual java/lang/Long/longValue()J
invokevirtual java/io/File/setLastModified(J)Z
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/getSize(Ljava/io/File;)I
istore 4
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/get()I
istore 3
L0:
iload 3
iload 4
iadd
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/sizeLimit I
if_icmpgt L1
L2:
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iload 4
invokevirtual java/util/concurrent/atomic/AtomicInteger/addAndGet(I)I
pop
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
astore 1
aload 2
aload 1
invokevirtual java/lang/Long/longValue()J
invokevirtual java/io/File/setLastModified(J)Z
pop
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/lastUsageDates Ljava/util/Map;
aload 2
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L1:
aload 0
invokespecial com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/removeNext()I
istore 3
iload 3
ifeq L2
aload 0
getfield com/nostra13/universalimageloader/cache/disc/LimitedDiscCache/cacheSize Ljava/util/concurrent/atomic/AtomicInteger;
iload 3
ineg
invokevirtual java/util/concurrent/atomic/AtomicInteger/addAndGet(I)I
istore 3
goto L0
.limit locals 5
.limit stack 3
.end method
