.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/utils/MemoryCacheUtils
.super java/lang/Object
.inner class inner com/nostra13/universalimageloader/utils/MemoryCacheUtils$1

.field private static final 'URI_AND_SIZE_SEPARATOR' Ljava/lang/String; = "_"

.field private static final 'WIDTH_AND_HEIGHT_SEPARATOR' Ljava/lang/String; = "x"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createFuzzyKeyComparator()Ljava/util/Comparator;
.signature "()Ljava/util/Comparator<Ljava/lang/String;>;"
new com/nostra13/universalimageloader/utils/MemoryCacheUtils$1
dup
invokespecial com/nostra13/universalimageloader/utils/MemoryCacheUtils$1/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method public static findCacheKeysForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List;
.signature "(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List<Ljava/lang/String;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 2
areturn
L1:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 3
aload 0
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
aload 2
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
.limit locals 4
.limit stack 2
.end method

.method public static findCachedBitmapsForImageUri(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List;
.signature "(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Ljava/util/List<Landroid/graphics/Bitmap;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 2
areturn
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
aload 0
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
aload 2
aload 1
aload 4
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
.limit locals 5
.limit stack 3
.end method

.method public static generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;
new java/lang/StringBuilder
dup
aload 0
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/keys()Ljava/util/Collection; 0
invokeinterface java/util/Collection/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L2:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L3
return
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 4
aload 0
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L0
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L3:
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
invokeinterface com/nostra13/universalimageloader/cache/memory/MemoryCache/remove(Ljava/lang/String;)Landroid/graphics/Bitmap; 1
pop
goto L2
.limit locals 5
.limit stack 2
.end method
