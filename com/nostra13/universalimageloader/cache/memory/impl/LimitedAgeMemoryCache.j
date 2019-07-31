.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/memory/MemoryCache

.field private final 'cache' Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private final 'loadingDates' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"

.field private final 'maxAge' J

.method public <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;J)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
ldc2_w 1000L
lload 2
lmul
putfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/maxAge J
return
.limit locals 4
.limit stack 5
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/clear()V 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Long
astore 2
aload 2
ifnull L0
invokestatic java/lang/System/currentTimeMillis()J
aload 2
invokevirtual java/lang/Long/longValue()J
lsub
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/maxAge J
lcmp
ifle L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
pop
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public keys()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/String;>;"
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
aload 2
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z 2
istore 3
iload 3
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
aload 1
invokestatic java/lang/System/currentTimeMillis()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
iload 3
ireturn
.limit locals 4
.limit stack 4
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/loadingDates Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LimitedAgeMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
areturn
.limit locals 2
.limit stack 2
.end method
