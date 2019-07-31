.bytecode 50.0
.class public synchronized com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool
.super java/lang/Object
.implements com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool
.inner class static synthetic inner com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1
.inner class private static abstract interface BitmapTracker inner com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker outer com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool
.inner class private static NullBitmapTracker inner com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker outer com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool
.inner class private static ThrowingBitmapTracker inner com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker outer com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool

.field private static final 'DEFAULT_CONFIG' Landroid/graphics/Bitmap$Config;

.field private static final 'TAG' Ljava/lang/String; = "LruBitmapPool"

.field private final 'allowedConfigs' Ljava/util/Set; signature "Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"

.field private 'currentSize' I

.field private 'evictions' I

.field private 'hits' I

.field private final 'initialMaxSize' I

.field private 'maxSize' I

.field private 'misses' I

.field private 'puts' I

.field private final 'strategy' Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final 'tracker' Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

.method static <clinit>()V
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
putstatic com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/DEFAULT_CONFIG Landroid/graphics/Bitmap$Config;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(I)V
aload 0
iload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/getDefaultAllowedConfigs()Ljava/util/Set;
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/<init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
return
.limit locals 2
.limit stack 4
.end method

.method <init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
.signature "(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/initialMaxSize I
aload 0
iload 1
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
aload 0
aload 2
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 0
aload 3
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/allowedConfigs Ljava/util/Set;
aload 0
new com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker
dup
aconst_null
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker/<init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/tracker Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
return
.limit locals 4
.limit stack 4
.end method

.method public <init>(ILjava/util/Set;)V
.signature "(ILjava/util/Set<Landroid/graphics/Bitmap$Config;>;)V"
aload 0
iload 1
invokestatic com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 2
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/<init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
return
.limit locals 3
.limit stack 4
.end method

.method private dump()V
ldc "LruBitmapPool"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/dumpUnchecked()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private dumpUnchecked()V
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Hits="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/hits I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", misses="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/misses I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", puts="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/puts I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", evictions="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/evictions I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", currentSize="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", maxSize="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\nStrategy="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 3
.end method

.method private evict()V
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
.signature "()Ljava/util/Set<Landroid/graphics/Bitmap$Config;>;"
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 0
aload 0
invokestatic android/graphics/Bitmap$Config/values()[Landroid/graphics/Bitmap$Config;
invokestatic java/util/Arrays/asList([Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/Set/addAll(Ljava/util/Collection;)Z 1
pop
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L0
aload 0
aconst_null
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L0:
aload 0
invokestatic java/util/Collections/unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
areturn
.limit locals 1
.limit stack 2
.end method

.method private static getDefaultStrategy()Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 19
if_icmplt L0
new com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy/<init>()V
areturn
L0:
new com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy
dup
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy/<init>()V
areturn
.limit locals 0
.limit stack 2
.end method

.method private trimToSize(I)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
iload 1
if_icmple L5
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/removeLast()Landroid/graphics/Bitmap; 0
astore 2
L1:
aload 2
ifnonnull L6
L3:
ldc "LruBitmapPool"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
ldc "LruBitmapPool"
ldc "Size mismatch, resetting"
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/dumpUnchecked()V
L4:
aload 0
iconst_0
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
L5:
aload 0
monitorexit
return
L6:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/tracker Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
aload 2
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker/remove(Landroid/graphics/Bitmap;)V 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 2
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/getSize(Landroid/graphics/Bitmap;)I 1
isub
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/evictions I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/evictions I
ldc "LruBitmapPool"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Evicting bitmap="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 2
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/dump()V
L8:
goto L0
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method public clearMemory()V
ldc "LruBitmapPool"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "LruBitmapPool"
ldc "clearMemory"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 0
iconst_0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/trimToSize(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
iload 2
aload 3
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
astore 3
L1:
aload 3
ifnull L4
L3:
aload 3
iconst_0
invokevirtual android/graphics/Bitmap/eraseColor(I)V
L4:
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
.limit stack 4
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.annotation invisible Landroid/annotation/TargetApi;
value I = 12
.end annotation
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
astore 5
L1:
aload 3
ifnull L10
aload 3
astore 4
L3:
aload 5
iload 1
iload 2
aload 4
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
astore 4
L4:
aload 4
ifnonnull L12
L5:
ldc "LruBitmapPool"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Missing bitmap="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
iload 1
iload 2
aload 3
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String; 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/misses I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/misses I
L7:
ldc "LruBitmapPool"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L8
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Get bitmap="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
iload 1
iload 2
aload 3
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String; 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/dump()V
L9:
aload 0
monitorexit
aload 4
areturn
L10:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/DEFAULT_CONFIG Landroid/graphics/Bitmap$Config;
astore 4
L11:
goto L3
L12:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/hits I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/hits I
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 4
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/getSize(Landroid/graphics/Bitmap;)I 1
isub
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/tracker Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
aload 4
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker/remove(Landroid/graphics/Bitmap;)V 1
getstatic android/os/Build$VERSION/SDK_INT I
bipush 12
if_icmplt L7
aload 4
iconst_1
invokevirtual android/graphics/Bitmap/setHasAlpha(Z)V
L13:
goto L7
L2:
astore 3
aload 0
monitorexit
aload 3
athrow
.limit locals 6
.limit stack 6
.end method

.method public getMaxSize()I
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public put(Landroid/graphics/Bitmap;)Z
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
aload 0
monitorenter
aload 1
ifnonnull L2
L0:
new java/lang/NullPointerException
dup
ldc "Bitmap must not be null"
invokespecial java/lang/NullPointerException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 1
aload 0
monitorexit
aload 1
athrow
L2:
aload 1
invokevirtual android/graphics/Bitmap/isMutable()Z
ifeq L3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/getSize(Landroid/graphics/Bitmap;)I 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
if_icmpgt L3
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/allowedConfigs Ljava/util/Set;
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifne L5
L3:
ldc "LruBitmapPool"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L4
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Reject bitmap from pool, bitmap: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", is mutable: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/graphics/Bitmap/isMutable()Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", is allowed config: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/allowedConfigs Ljava/util/Set;
aload 1
invokevirtual android/graphics/Bitmap/getConfig()Landroid/graphics/Bitmap$Config;
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
iconst_0
istore 3
L8:
aload 0
monitorexit
iload 3
ireturn
L5:
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/getSize(Landroid/graphics/Bitmap;)I 1
istore 2
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/put(Landroid/graphics/Bitmap;)V 1
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/tracker Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker/add(Landroid/graphics/Bitmap;)V 1
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/puts I
iconst_1
iadd
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/puts I
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
iload 2
iadd
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/currentSize I
ldc "LruBitmapPool"
iconst_2
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L6
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Put bitmap in pool="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/strategy Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
aload 1
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy/logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String; 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/dump()V
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/evict()V
L7:
iconst_1
istore 3
goto L8
.limit locals 4
.limit stack 4
.end method

.method public setSizeMultiplier(F)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/initialMaxSize I
i2f
fload 1
fmul
invokestatic java/lang/Math/round(F)I
putfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
aload 0
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/evict()V
L1:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public trimMemory(I)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
ldc "LruBitmapPool"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L0
ldc "LruBitmapPool"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "trimMemory, level="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
iload 1
bipush 60
if_icmplt L1
aload 0
invokevirtual com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/clearMemory()V
L2:
return
L1:
iload 1
bipush 40
if_icmplt L2
aload 0
aload 0
getfield com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/maxSize I
iconst_2
idiv
invokespecial com/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool/trimToSize(I)V
return
.limit locals 2
.limit stack 3
.end method
