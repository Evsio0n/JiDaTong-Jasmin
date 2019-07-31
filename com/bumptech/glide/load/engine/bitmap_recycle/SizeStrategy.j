.bytecode 50.0
.class synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy
.annotation invisible Landroid/annotation/TargetApi;
value I = 19
.end annotation
.inner class static final Key inner com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy

.field private static final 'MAX_SIZE_MULTIPLE' I = 8


.field private final 'groupedMap' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;Landroid/graphics/Bitmap;>;"

.field private final 'keyPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private final 'sortedSizes' Ljava/util/TreeMap; signature "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/PrettyPrintTreeMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$100(I)Ljava/lang/String;
iload 0
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/getBitmapString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
aload 1
invokevirtual java/util/TreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
astore 2
aload 2
invokevirtual java/lang/Integer/intValue()I
iconst_1
if_icmpne L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
aload 1
invokevirtual java/util/TreeMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
return
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
aload 1
aload 2
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 3
.limit stack 4
.end method

.method private static getBitmapString(I)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 0
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/getBitmapString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
iload 1
iload 2
aload 3
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
istore 4
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
iload 4
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
astore 6
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeMap/ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
astore 7
aload 6
astore 5
aload 7
ifnull L0
aload 6
astore 5
aload 7
invokevirtual java/lang/Integer/intValue()I
iload 4
if_icmpeq L0
aload 6
astore 5
aload 7
invokevirtual java/lang/Integer/intValue()I
iload 4
bipush 8
imul
if_icmpgt L0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
aload 6
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
aload 7
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
astore 5
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 5
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 5
aload 5
ifnull L1
aload 5
iload 1
iload 2
aload 3
invokevirtual android/graphics/Bitmap/reconfigure(IILandroid/graphics/Bitmap$Config;)V
aload 0
aload 7
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/decrementBitmapOfSize(Ljava/lang/Integer;)V
L1:
aload 5
areturn
.limit locals 8
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
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/getBitmapString(I)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method public put(Landroid/graphics/Bitmap;)V
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
iload 2
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool/get(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
astore 4
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 4
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
aload 4
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/Integer
astore 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
astore 5
aload 4
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
istore 3
aload 1
ifnonnull L0
iconst_1
istore 2
L1:
aload 5
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
L0:
aload 1
invokevirtual java/lang/Integer/intValue()I
iconst_1
iadd
istore 2
goto L1
.limit locals 6
.limit stack 3
.end method

.method public removeLast()Landroid/graphics/Bitmap;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeLast()Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/decrementBitmapOfSize(Ljava/lang/Integer;)V
L0:
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SizeStrategy:\n  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "  SortedSizes"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy/sortedSizes Ljava/util/TreeMap;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method
