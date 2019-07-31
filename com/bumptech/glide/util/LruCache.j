.bytecode 50.0
.class public synchronized com/bumptech/glide/util/LruCache
.super java/lang/Object
.signature "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>Ljava/lang/Object;"

.field private final 'cache' Ljava/util/LinkedHashMap; signature "Ljava/util/LinkedHashMap<TT;TY;>;"

.field private 'currentSize' I

.field private final 'initialMaxSize' I

.field private 'maxSize' I

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/LinkedHashMap
dup
bipush 100
ldc_w 0.75F
iconst_1
invokespecial java/util/LinkedHashMap/<init>(IFZ)V
putfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 0
iconst_0
putfield com/bumptech/glide/util/LruCache/currentSize I
aload 0
iload 1
putfield com/bumptech/glide/util/LruCache/initialMaxSize I
aload 0
iload 1
putfield com/bumptech/glide/util/LruCache/maxSize I
return
.limit locals 2
.limit stack 6
.end method

.method private evict()V
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/maxSize I
invokevirtual com/bumptech/glide/util/LruCache/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public clearMemory()V
aload 0
iconst_0
invokevirtual com/bumptech/glide/util/LruCache/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public contains(Ljava/lang/Object;)Z
.signature "(TT;)Z"
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TT;)TY;"
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getCurrentSize()I
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxSize()I
aload 0
getfield com/bumptech/glide/util/LruCache/maxSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getSize(Ljava/lang/Object;)I
.signature "(TY;)I"
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
.signature "(TT;TY;)V"
return
.limit locals 3
.limit stack 0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TT;TY;)TY;"
aload 0
aload 2
invokevirtual com/bumptech/glide/util/LruCache/getSize(Ljava/lang/Object;)I
aload 0
getfield com/bumptech/glide/util/LruCache/maxSize I
if_icmplt L0
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/util/LruCache/onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
aconst_null
areturn
L0:
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 1
aload 2
invokevirtual java/util/LinkedHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 2
ifnull L1
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
aload 0
aload 2
invokevirtual com/bumptech/glide/util/LruCache/getSize(Ljava/lang/Object;)I
iadd
putfield com/bumptech/glide/util/LruCache/currentSize I
L1:
aload 1
ifnull L2
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
aload 0
aload 1
invokevirtual com/bumptech/glide/util/LruCache/getSize(Ljava/lang/Object;)I
isub
putfield com/bumptech/glide/util/LruCache/currentSize I
L2:
aload 0
invokespecial com/bumptech/glide/util/LruCache/evict()V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
.signature "(TT;)TY;"
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 1
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
aload 0
aload 1
invokevirtual com/bumptech/glide/util/LruCache/getSize(Ljava/lang/Object;)I
isub
putfield com/bumptech/glide/util/LruCache/currentSize I
L0:
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public setSizeMultiplier(F)V
fload 1
fconst_0
fcmpg
ifge L0
new java/lang/IllegalArgumentException
dup
ldc "Multiplier must be >= 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/initialMaxSize I
i2f
fload 1
fmul
invokestatic java/lang/Math/round(F)I
putfield com/bumptech/glide/util/LruCache/maxSize I
aload 0
invokespecial com/bumptech/glide/util/LruCache/evict()V
return
.limit locals 2
.limit stack 3
.end method

.method protected trimToSize(I)V
L0:
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
iload 1
if_icmple L1
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
invokevirtual java/util/LinkedHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
astore 2
aload 0
aload 0
getfield com/bumptech/glide/util/LruCache/currentSize I
aload 0
aload 2
invokevirtual com/bumptech/glide/util/LruCache/getSize(Ljava/lang/Object;)I
isub
putfield com/bumptech/glide/util/LruCache/currentSize I
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
astore 3
aload 0
getfield com/bumptech/glide/util/LruCache/cache Ljava/util/LinkedHashMap;
aload 3
invokevirtual java/util/LinkedHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
aload 3
aload 2
invokevirtual com/bumptech/glide/util/LruCache/onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method
