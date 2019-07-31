.bytecode 50.0
.class public synchronized abstract com/nostra13/universalimageloader/cache/memory/BaseMemoryCache
.super java/lang/Object
.implements com/nostra13/universalimageloader/cache/memory/MemoryCache

.field private final 'softMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
invokestatic java/util/Collections/synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
putfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method protected abstract createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
.signature "(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
aconst_null
astore 2
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/ref/Reference
astore 3
aload 2
astore 1
aload 3
ifnull L0
aload 3
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
L0:
aload 1
areturn
.limit locals 4
.limit stack 2
.end method

.method public keys()Ljava/util/Collection;
.signature "()Ljava/util/Collection<Ljava/lang/String;>;"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
astore 1
aload 1
monitorenter
L0:
new java/util/HashSet
dup
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokespecial java/util/HashSet/<init>(Ljava/util/Collection;)V
astore 2
aload 1
monitorexit
L1:
aload 2
areturn
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
aload 1
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
aload 0
getfield com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/softMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/ref/Reference
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
invokevirtual java/lang/ref/Reference/get()Ljava/lang/Object;
checkcast android/graphics/Bitmap
areturn
.limit locals 2
.limit stack 2
.end method
