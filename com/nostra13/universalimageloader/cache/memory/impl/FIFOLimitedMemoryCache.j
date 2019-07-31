.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache
.super com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache

.field private final 'queue' Ljava/util/List; signature "Ljava/util/List<Landroid/graphics/Bitmap;>;"

.method public <init>(I)V
aload 0
iload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/<init>(I)V
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
invokestatic java/util/Collections/synchronizedList(Ljava/util/List;)Ljava/util/List;
putfield com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache/queue Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public clear()V
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache/queue Ljava/util/List;
invokeinterface java/util/List/clear()V 0
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
getfield com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache/queue Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
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
aload 1
invokespecial com/nostra13/universalimageloader/cache/memory/LimitedMemoryCache/get(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 2
aload 2
ifnull L0
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache/queue Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
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
aload 0
getfield com/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache/queue Ljava/util/List;
iconst_0
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
checkcast android/graphics/Bitmap
areturn
.limit locals 1
.limit stack 2
.end method
