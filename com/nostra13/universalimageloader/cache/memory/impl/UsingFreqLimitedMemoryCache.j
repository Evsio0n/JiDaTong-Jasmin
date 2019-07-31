.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache
.super com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache

.field private final 'usingCounts' Ljava/util/Map; signature "Ljava/util/Map<Landroid/graphics/Bitmap;Ljava/lang/Integer;>;"

.method public <init>(I)V
aload 0
iload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/<init>(I)V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
return
.limit locals 2
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
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
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
aload 1
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 2
aload 2
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
aload 1
aload 2
invokevirtual java/lang/Integer/intValue()I
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
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
iconst_0
istore 3
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
ifeq L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
aload 2
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
istore 3
L0:
iload 3
ireturn
.limit locals 4
.limit stack 3
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
aload 2
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L0:
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
areturn
.limit locals 3
.limit stack 2
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aconst_null
astore 2
aconst_null
astore 1
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
astore 3
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
astore 4
aload 4
monitorenter
L0:
aload 3
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L4
aload 4
monitorexit
L3:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache/usingCounts Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 1
areturn
L4:
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 6
L5:
aload 1
ifnonnull L8
L6:
aload 6
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 1
aload 6
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 2
L7:
goto L1
L8:
aload 6
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 3
aload 3
invokevirtual java/lang/Integer/intValue()I
aload 2
invokevirtual java/lang/Integer/intValue()I
if_icmpge L1
L9:
aload 3
astore 2
L10:
aload 6
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 1
L11:
goto L1
L2:
astore 1
L12:
aload 4
monitorexit
L13:
aload 1
athrow
.limit locals 7
.limit stack 2
.end method
