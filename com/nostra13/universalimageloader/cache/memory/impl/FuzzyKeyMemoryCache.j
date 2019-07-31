.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/memory/MemoryCache

.field private final 'cache' Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private final 'keyComparator' Ljava/util/Comparator; signature "Ljava/util/Comparator<Ljava/lang/String;>;"

.method public <init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V
.signature "(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator<Ljava/lang/String;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 0
aload 2
putfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/keyComparator Ljava/util/Comparator;
return
.limit locals 3
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public keys()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/String;>;"
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
astore 5
aload 5
monitorenter
aconst_null
astore 3
L0:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 6
L1:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L7
L3:
aload 3
ifnull L5
L4:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 3
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
pop
L5:
aload 5
monitorexit
L6:
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
aload 2
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z 2
ireturn
L7:
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/keyComparator Ljava/util/Comparator;
aload 1
aload 4
invokeinterface java/util/Comparator/compare(Ljava/lang/Object;Ljava/lang/Object;)I 2
ifne L1
L8:
aload 4
astore 3
goto L3
L2:
astore 1
L9:
aload 5
monitorexit
L10:
aload 1
athrow
.limit locals 7
.limit stack 3
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache/cache Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
areturn
.limit locals 2
.limit stack 2
.end method
