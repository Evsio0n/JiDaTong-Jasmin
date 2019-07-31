.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/memory/MemoryCache

.field private final 'map' Ljava/util/LinkedHashMap; signature "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"

.field private final 'maxSize' I

.field private 'size' I

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
iload 1
ifgt L0
new java/lang/IllegalArgumentException
dup
ldc "maxSize <= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/maxSize I
aload 0
new java/util/LinkedHashMap
dup
iconst_0
ldc_w 0.75F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
return
.limit locals 2
.limit stack 6
.end method

.method private sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
aload 2
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 2
invokevirtual android/graphics/Bitmap/getHeight()I
imul
ireturn
.limit locals 3
.limit stack 2
.end method

.method private trimToSize(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L2 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
L14:
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
iflt L1
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/isEmpty()Z
ifeq L5
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
ifeq L5
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".sizeOf() is reporting inconsistent results!"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 2
L3:
aload 0
monitorexit
L4:
aload 2
athrow
L5:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
iload 1
if_icmple L6
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/isEmpty()Z
ifeq L8
L6:
aload 0
monitorexit
L7:
return
L8:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
L9:
aload 3
ifnonnull L12
L10:
aload 0
monitorexit
L11:
return
L12:
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 2
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 3
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
aload 2
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
aload 2
aload 3
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
isub
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
monitorexit
L13:
goto L14
.limit locals 4
.limit stack 5
.end method

.method public clear()V
aload 0
iconst_m1
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
ifnonnull L5
new java/lang/NullPointerException
dup
ldc "key == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
aload 0
monitorexit
L1:
aload 1
areturn
L2:
astore 1
L3:
aload 0
monitorexit
L4:
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public keys()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
new java/util/HashSet
dup
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/keySet()Ljava/util/Set;
invokespecial java/util/HashSet/<init>(Ljava/util/Collection;)V
astore 1
aload 0
monitorexit
L1:
aload 1
areturn
L2:
astore 1
L3:
aload 0
monitorexit
L4:
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
ifnull L8
aload 2
ifnonnull L9
L8:
new java/lang/NullPointerException
dup
ldc "key == null || value == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L9:
aload 0
monitorenter
L0:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
iadd
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
aload 1
aload 2
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 2
L1:
aload 2
ifnull L4
L3:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
isub
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
L4:
aload 0
monitorexit
L5:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/maxSize I
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/trimToSize(I)V
iconst_1
ireturn
L2:
astore 1
L6:
aload 0
monitorexit
L7:
aload 1
athrow
.limit locals 3
.limit stack 5
.end method

.method public final remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
ifnonnull L8
new java/lang/NullPointerException
dup
ldc "key == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L8:
aload 0
monitorenter
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/map Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 2
L1:
aload 2
ifnull L4
L3:
aload 0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
isub
putfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/size I
L4:
aload 0
monitorexit
L5:
aload 2
areturn
L2:
astore 1
L6:
aload 0
monitorexit
L7:
aload 1
athrow
.limit locals 3
.limit stack 5
.end method

.method public final toString()Ljava/lang/String;
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
ldc "LruCache[maxSize=%d]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache/maxSize I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 5
.end method
