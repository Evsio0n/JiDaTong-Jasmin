.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/cache/memory/impl/SoftMemoryCache
.super com/nostra13/universalimageloader/cache/memory/BaseMemoryCache

.method public <init>()V
aload 0
invokespecial com/nostra13/universalimageloader/cache/memory/BaseMemoryCache/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
.signature "(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference<Landroid/graphics/Bitmap;>;"
new java/lang/ref/SoftReference
dup
aload 1
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
areturn
.limit locals 2
.limit stack 3
.end method
