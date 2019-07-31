.bytecode 50.0
.class public synchronized android/support/v4/util/LruCache
.super java/lang/Object
.signature "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"

.field private 'createCount' I

.field private 'evictionCount' I

.field private 'hitCount' I

.field private final 'map' Ljava/util/LinkedHashMap; signature "Ljava/util/LinkedHashMap<TK;TV;>;"

.field private 'maxSize' I

.field private 'missCount' I

.field private 'putCount' I

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
putfield android/support/v4/util/LruCache/maxSize I
aload 0
new java/util/LinkedHashMap
dup
iconst_0
ldc_w 0.75F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
putfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
return
.limit locals 2
.limit stack 6
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
.signature "(TK;TV;)I"
aload 0
aload 1
aload 2
invokevirtual android/support/v4/util/LruCache/sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
istore 3
iload 3
ifge L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Negative size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 3
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;)TV;"
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public final createCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/createCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.signature "(ZTK;TV;TV;)V"
return
.limit locals 5
.limit stack 0
.end method

.method public final evictAll()V
aload 0
iconst_m1
invokevirtual android/support/v4/util/LruCache/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final evictionCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/evictionCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;)TV;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L11
.catch all from L12 to L13 using L11
.catch all from L13 to L14 using L11
.catch all from L15 to L16 using L11
.catch all from L17 to L18 using L11
aload 1
ifnonnull L19
new java/lang/NullPointerException
dup
ldc "key == null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L19:
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L1:
aload 2
ifnull L5
L3:
aload 0
aload 0
getfield android/support/v4/util/LruCache/hitCount I
iconst_1
iadd
putfield android/support/v4/util/LruCache/hitCount I
aload 0
monitorexit
L4:
aload 2
areturn
L5:
aload 0
aload 0
getfield android/support/v4/util/LruCache/missCount I
iconst_1
iadd
putfield android/support/v4/util/LruCache/missCount I
aload 0
monitorexit
L6:
aload 0
aload 1
invokevirtual android/support/v4/util/LruCache/create(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
aload 2
ifnonnull L20
aconst_null
areturn
L2:
astore 1
L7:
aload 0
monitorexit
L8:
aload 1
athrow
L20:
aload 0
monitorenter
L9:
aload 0
aload 0
getfield android/support/v4/util/LruCache/createCount I
iconst_1
iadd
putfield android/support/v4/util/LruCache/createCount I
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 1
aload 2
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
astore 3
L10:
aload 3
ifnull L15
L12:
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 1
aload 3
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L13:
aload 0
monitorexit
L14:
aload 3
ifnull L21
aload 0
iconst_0
aload 1
aload 2
aload 3
invokevirtual android/support/v4/util/LruCache/entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
aload 3
areturn
L15:
aload 0
aload 0
getfield android/support/v4/util/LruCache/size I
aload 0
aload 1
aload 2
invokespecial android/support/v4/util/LruCache/safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
iadd
putfield android/support/v4/util/LruCache/size I
L16:
goto L13
L11:
astore 1
L17:
aload 0
monitorexit
L18:
aload 1
athrow
L21:
aload 0
aload 0
getfield android/support/v4/util/LruCache/maxSize I
invokevirtual android/support/v4/util/LruCache/trimToSize(I)V
aload 2
areturn
.limit locals 4
.limit stack 5
.end method

.method public final hitCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/hitCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final maxSize()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/maxSize I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final missCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/missCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;TV;)TV;"
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
getfield android/support/v4/util/LruCache/putCount I
iconst_1
iadd
putfield android/support/v4/util/LruCache/putCount I
aload 0
aload 0
getfield android/support/v4/util/LruCache/size I
aload 0
aload 1
aload 2
invokespecial android/support/v4/util/LruCache/safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
iadd
putfield android/support/v4/util/LruCache/size I
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 1
aload 2
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 0
aload 0
getfield android/support/v4/util/LruCache/size I
aload 0
aload 1
aload 3
invokespecial android/support/v4/util/LruCache/safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
isub
putfield android/support/v4/util/LruCache/size I
L4:
aload 0
monitorexit
L5:
aload 3
ifnull L10
aload 0
iconst_0
aload 1
aload 3
aload 2
invokevirtual android/support/v4/util/LruCache/entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
L10:
aload 0
aload 0
getfield android/support/v4/util/LruCache/maxSize I
invokevirtual android/support/v4/util/LruCache/trimToSize(I)V
aload 3
areturn
L2:
astore 1
L6:
aload 0
monitorexit
L7:
aload 1
athrow
.limit locals 4
.limit stack 5
.end method

.method public final putCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/putCount I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TK;)TV;"
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
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
astore 2
L1:
aload 2
ifnull L4
L3:
aload 0
aload 0
getfield android/support/v4/util/LruCache/size I
aload 0
aload 1
aload 2
invokespecial android/support/v4/util/LruCache/safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
isub
putfield android/support/v4/util/LruCache/size I
L4:
aload 0
monitorexit
L5:
aload 2
ifnull L9
aload 0
iconst_0
aload 1
aload 2
aconst_null
invokevirtual android/support/v4/util/LruCache/entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
L9:
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

.method public final size()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/size I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
.signature "(TK;TV;)I"
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public final snapshot()Ljava/util/Map;
.signature "()Ljava/util/Map<TK;TV;>;"
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
new java/util/LinkedHashMap
dup
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
invokespecial java/util/LinkedHashMap/<init>(Ljava/util/Map;)V
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
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
iconst_0
istore 1
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/hitCount I
aload 0
getfield android/support/v4/util/LruCache/missCount I
iadd
istore 2
L1:
iload 2
ifeq L4
L3:
aload 0
getfield android/support/v4/util/LruCache/hitCount I
bipush 100
imul
iload 2
idiv
istore 1
L4:
ldc "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield android/support/v4/util/LruCache/maxSize I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield android/support/v4/util/LruCache/hitCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 0
getfield android/support/v4/util/LruCache/missCount I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 3
L5:
aload 0
monitorexit
aload 3
areturn
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 4
.limit stack 5
.end method

.method public trimToSize(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L2 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
L10:
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/util/LruCache/size I
iflt L1
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/isEmpty()Z
ifeq L5
aload 0
getfield android/support/v4/util/LruCache/size I
ifeq L5
L1:
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
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
getfield android/support/v4/util/LruCache/size I
iload 1
if_icmple L6
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/isEmpty()Z
ifeq L8
L6:
aload 0
monitorexit
L7:
return
L8:
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
astore 2
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 3
aload 0
getfield android/support/v4/util/LruCache/map Ljava/util/LinkedHashMap;
aload 2
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 0
getfield android/support/v4/util/LruCache/size I
aload 0
aload 2
aload 3
invokespecial android/support/v4/util/LruCache/safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
isub
putfield android/support/v4/util/LruCache/size I
aload 0
aload 0
getfield android/support/v4/util/LruCache/evictionCount I
iconst_1
iadd
putfield android/support/v4/util/LruCache/evictionCount I
aload 0
monitorexit
L9:
aload 0
iconst_1
aload 2
aload 3
aconst_null
invokevirtual android/support/v4/util/LruCache/entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
goto L10
.limit locals 4
.limit stack 5
.end method
