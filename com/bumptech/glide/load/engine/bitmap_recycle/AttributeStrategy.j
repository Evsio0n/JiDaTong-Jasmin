.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy
.inner class static Key inner com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy

.field private final 'groupedMap' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;Landroid/graphics/Bitmap;>;"

.field private final 'keyPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
iload 0
iload 1
aload 2
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method private static getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "], "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 2
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 0
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
invokevirtual android/graphics/Bitmap/getHeight()I
aload 0
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
iload 1
iload 2
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
astore 3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
areturn
.limit locals 4
.limit stack 4
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
iload 1
iload 2
aload 3
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public put(Landroid/graphics/Bitmap;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool/get(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
astore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 2
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method public removeLast()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeLast()Ljava/lang/Object;
checkcast android/graphics/Bitmap
areturn
.limit locals 1
.limit stack 1
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "AttributeStrategy:\n  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
