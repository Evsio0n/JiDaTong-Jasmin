.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker
.inner class private static ThrowingBitmapTracker inner com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker outer com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool

.field private final 'bitmaps' Ljava/util/Set; signature "Ljava/util/Set<Landroid/graphics/Bitmap;>;"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
invokestatic java/util/Collections/synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker/bitmaps Ljava/util/Set;
return
.limit locals 1
.limit stack 3
.end method

.method public add(Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker/bitmaps Ljava/util/Set;
aload 1
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Can't add already added bitmap: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker/bitmaps Ljava/util/Set;
aload 1
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 4
.end method

.method public remove(Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker/bitmaps Ljava/util/Set;
aload 1
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifne L0
new java/lang/IllegalStateException
dup
ldc "Cannot remove bitmap not in tracker"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker/bitmaps Ljava/util/Set;
aload 1
invokeinterface java/util/Set/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method
