.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache
.super com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache

.field private static final 'INITIAL_CAPACITY' I = 10


.field private static final 'LOAD_FACTOR' F = 1.1F


.field private final 'lruCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"

.method public <init>(I)V
aload 0
iload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/<init>(I)V
aload 0
new java/util/LinkedHashMap
dup
bipush 10
ldc_w 1.1F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
return
.limit locals 2
.limit stack 6
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
.signature "(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
new java/lang/ref/WeakReference
dup
aload 1
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
aload 1
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
imul
ireturn
.limit locals 2
.limit stack 2
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aconst_null
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache/lruCache Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 1
aload 3
invokeinterface java/util/Iterator/remove()V 0
L3:
aload 2
monitorexit
L4:
aload 1
areturn
L2:
astore 1
L5:
aload 2
monitorexit
L6:
aload 1
athrow
.limit locals 4
.limit stack 1
.end method
