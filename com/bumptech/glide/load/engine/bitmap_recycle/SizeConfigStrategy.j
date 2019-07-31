.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy
.annotation invisible Landroid/annotation/TargetApi;
value I = 19
.end annotation
.inner class static synthetic inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1
.inner class static final Key inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key outer com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy
.inner class static KeyPool inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool outer com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy

.field private static final 'ALPHA_8_IN_CONFIGS' [Landroid/graphics/Bitmap$Config;

.field private static final 'ARGB_4444_IN_CONFIGS' [Landroid/graphics/Bitmap$Config;

.field private static final 'ARGB_8888_IN_CONFIGS' [Landroid/graphics/Bitmap$Config;

.field private static final 'MAX_SIZE_MULTIPLE' I = 8


.field private static final 'RGB_565_IN_CONFIGS' [Landroid/graphics/Bitmap$Config;

.field private final 'groupedMap' Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap; signature "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap<Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;Landroid/graphics/Bitmap;>;"

.field private final 'keyPool' Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final 'sortedSizes' Ljava/util/Map; signature "Ljava/util/Map<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"

.method static <clinit>()V
iconst_2
anewarray android/graphics/Bitmap$Config
dup
iconst_0
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
aastore
dup
iconst_1
aconst_null
aastore
putstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ARGB_8888_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
iconst_1
anewarray android/graphics/Bitmap$Config
dup
iconst_0
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
aastore
putstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/RGB_565_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
iconst_1
anewarray android/graphics/Bitmap$Config
dup
iconst_0
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
aastore
putstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ARGB_4444_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
iconst_1
anewarray android/graphics/Bitmap$Config
dup
iconst_0
getstatic android/graphics/Bitmap$Config/ALPHA_8 Landroid/graphics/Bitmap$Config;
aastore
putstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ALPHA_8_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/sortedSizes Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
iload 0
aload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
aload 0
aload 2
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
astore 2
aload 2
aload 1
invokeinterface java/util/NavigableMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 3
aload 3
invokevirtual java/lang/Integer/intValue()I
iconst_1
if_icmpne L0
aload 2
aload 1
invokeinterface java/util/NavigableMap/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
return
L0:
aload 2
aload 1
aload 3
invokevirtual java/lang/Integer/intValue()I
iconst_1
isub
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/NavigableMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 4
.limit stack 4
.end method

.method private findBestKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
aload 1
astore 6
aload 3
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
astore 8
aload 8
arraylength
istore 5
iconst_0
istore 4
L0:
aload 6
astore 7
iload 4
iload 5
if_icmpge L1
aload 8
iload 4
aaload
astore 9
aload 0
aload 9
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/NavigableMap/ceilingKey(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 10
aload 10
ifnull L2
aload 10
invokevirtual java/lang/Integer/intValue()I
iload 2
bipush 8
imul
if_icmpgt L2
aload 10
invokevirtual java/lang/Integer/intValue()I
iload 2
if_icmpne L3
aload 9
ifnonnull L4
aload 6
astore 7
aload 3
ifnull L1
L3:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
aload 10
invokevirtual java/lang/Integer/intValue()I
aload 9
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
astore 7
L1:
aload 7
areturn
L4:
aload 6
astore 7
aload 9
aload 3
invokevirtual android/graphics/Bitmap$Config/equals(Ljava/lang/Object;)Z
ifne L1
goto L3
L2:
iload 4
iconst_1
iadd
istore 4
goto L0
.limit locals 11
.limit stack 3
.end method

.method private static getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private static getInConfigs(Landroid/graphics/Bitmap$Config;)[Landroid/graphics/Bitmap$Config;
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
aload 0
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iaload
tableswitch 1
L0
L1
L2
L3
default : L4
L4:
iconst_1
anewarray android/graphics/Bitmap$Config
dup
iconst_0
aload 0
aastore
areturn
L0:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ARGB_8888_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
areturn
L1:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/RGB_565_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
areturn
L2:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ARGB_4444_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
areturn
L3:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/ALPHA_8_IN_CONFIGS [Landroid/graphics/Bitmap$Config;
areturn
.limit locals 1
.limit stack 4
.end method

.method private getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
.signature "(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/sortedSizes Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/NavigableMap
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new java/util/TreeMap
dup
invokespecial java/util/TreeMap/<init>()V
astore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/sortedSizes Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
iload 1
iload 2
aload 3
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I
istore 4
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
iload 4
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
iload 4
aload 3
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/findBestKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
astore 3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 5
aload 5
ifnull L0
aload 0
aload 5
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 5
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
aload 5
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
ifnull L1
aload 5
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
astore 3
L2:
aload 5
iload 1
iload 2
aload 3
invokevirtual android/graphics/Bitmap/reconfigure(IILandroid/graphics/Bitmap$Config;)V
L0:
aload 5
areturn
L1:
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
astore 3
goto L2
.limit locals 6
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
aload 3
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method public put(Landroid/graphics/Bitmap;)V
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/keyPool Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
iload 2
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool/get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
astore 4
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
aload 4
aload 1
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V
aload 0
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
astore 1
aload 1
aload 4
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/NavigableMap/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Integer
astore 5
aload 4
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key/access$000(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;)I
istore 3
aload 5
ifnonnull L0
iconst_1
istore 2
L1:
aload 1
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/NavigableMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
L0:
aload 5
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
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap/removeLast()Ljava/lang/Object;
checkcast android/graphics/Bitmap
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokestatic com/bumptech/glide/util/Util/getBitmapByteSize(Landroid/graphics/Bitmap;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "SizeConfigStrategy{groupedMap="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/groupedMap Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ", sortedSizes=("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/sortedSizes Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
bipush 91
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "], "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L1:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/sortedSizes Ljava/util/Map;
invokeinterface java/util/Map/isEmpty()Z 0
ifne L2
aload 1
aload 1
invokevirtual java/lang/StringBuilder/length()I
iconst_2
isub
aload 1
invokevirtual java/lang/StringBuilder/length()I
ldc ""
invokevirtual java/lang/StringBuilder/replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
pop
L2:
aload 1
ldc ")}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 4
.end method
