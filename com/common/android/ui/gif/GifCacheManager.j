.bytecode 50.0
.class public final synchronized enum com/common/android/ui/gif/GifCacheManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/common/android/ui/gif/GifCacheManager;>;"
.inner class private runDecode inner com/common/android/ui/gif/GifCacheManager$runDecode outer com/common/android/ui/gif/GifCacheManager

.field private static final synthetic '$VALUES' [Lcom/common/android/ui/gif/GifCacheManager;

.field private static final 'DIR' Ljava/lang/String; = "gifcache"

.field public static final enum 'INSTANCE' Lcom/common/android/ui/gif/GifCacheManager;

.field private static final 'MAX_MEM' J = 4194304L


.field private static final 'MAX_THREAD_COUNT' I = 10


.field private static final 'MAX_WIDTH' I = 120


.field private static final 'MIN_CACHE_COUNT' I = 5


.field private static final 'MIN_WIDTH' I = 30


.field private 'mBrokenGifList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'mCheckUsingKeyInterfaces' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/gif/ICheckUsingKeyInterface;>;"

.field private 'mDecodingGifList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private 'mExecutorService' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mFutures' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/concurrent/Future<*>;>;"

.field private 'mInuseKeys' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field private volatile 'mIsActive' Z

.field private volatile 'mIsClearing' Z

.field private 'mLocalBitmaps' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Landroid/graphics/Bitmap;>;"

.field private 'mMaps' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Object;Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;>;"

.field private 'mMaxWidth' I

.field private 'mMinWidth' I

.field private 'mNowSize' J

.method static <clinit>()V
new com/common/android/ui/gif/GifCacheManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/common/android/ui/gif/GifCacheManager/<init>(Ljava/lang/String;I)V
putstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
iconst_1
anewarray com/common/android/ui/gif/GifCacheManager
dup
iconst_0
getstatic com/common/android/ui/gif/GifCacheManager/INSTANCE Lcom/common/android/ui/gif/GifCacheManager;
aastore
putstatic com/common/android/ui/gif/GifCacheManager/$VALUES [Lcom/common/android/ui/gif/GifCacheManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mCheckUsingKeyInterfaces Ljava/util/ArrayList;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 0
lconst_0
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mBrokenGifList Ljava/util/ArrayList;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/GifCacheManager/mFutures Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mMinWidth I
aload 0
bipush 10
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/common/android/ui/gif/GifCacheManager/mExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 30.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/common/android/ui/gif/GifCacheManager/mMinWidth I
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc_w 120.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
putfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/common/android/ui/gif/GifCacheManager;Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector;
aload 0
aload 1
aload 2
invokespecial com/common/android/ui/gif/GifCacheManager/decodeStream(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector;
areturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$100(Lcom/common/android/ui/gif/GifCacheManager;)Z
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/ui/gif/GifCacheManager;)Ljava/util/Map;
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/ui/gif/GifCacheManager;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mBrokenGifList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method private clearFrames(Ljava/util/Vector;)V
.signature "(Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;)V"
aload 1
ifnull L0
aload 1
invokevirtual java/util/Vector/isEmpty()Z
ifne L0
aload 1
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/GifFrame
astore 2
aload 2
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L2
aload 2
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L2
aload 2
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L2:
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 2
getfield com/common/android/ui/gif/GifFrame/size J
lsub
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
goto L1
L0:
return
.limit locals 3
.limit stack 5
.end method

.method private decodeStream(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector;
.signature "(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;"
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L5
.catch all from L7 to L8 using L6
new com/common/android/ui/gif/GifDecoder
dup
invokespecial com/common/android/ui/gif/GifDecoder/<init>()V
astore 7
aconst_null
astore 5
aconst_null
astore 6
iconst_1
istore 3
L0:
aload 7
aload 2
invokevirtual com/common/android/ui/gif/GifDecoder/read(Ljava/io/InputStream;)I
istore 4
L1:
iload 4
istore 3
L9:
aload 6
astore 2
iload 3
ifne L10
aload 5
astore 2
L3:
aload 7
invokevirtual com/common/android/ui/gif/GifDecoder/getFrames()Ljava/util/Vector;
astore 5
L4:
aload 5
astore 2
aload 5
ifnull L10
aload 5
astore 2
L7:
aload 5
invokevirtual java/util/Vector/size()I
istore 3
L8:
aload 5
astore 2
iload 3
ifne L10
L10:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 2
areturn
L5:
astore 5
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 2
areturn
L6:
astore 2
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 2
athrow
L2:
astore 2
goto L9
.limit locals 8
.limit stack 2
.end method

.method private getDiskCacheDir(Ljava/lang/Object;)Ljava/io/File;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc "gifcache"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
astore 2
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/MD5ArithmeticUtils/getMd5(Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/separatorChar C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifne L0
aload 1
invokevirtual java/io/File/mkdirs()Z
pop
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method private reCaculateCacheSize()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
astore 1
aload 1
monitorenter
L0:
aload 0
lconst_0
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
L3:
aload 3
ifnonnull L6
L4:
aload 1
monitorexit
L5:
return
L6:
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/util/Vector
astore 3
L7:
aload 3
ifnull L1
L8:
aload 3
invokevirtual java/util/Vector/isEmpty()Z
ifne L1
aload 3
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/GifFrame
astore 4
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L9
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L9
aload 4
getfield com/common/android/ui/gif/GifFrame/size J
lconst_0
lcmp
ifne L10
aload 4
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
imul
i2l
putfield com/common/android/ui/gif/GifFrame/size J
L10:
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 4
getfield com/common/android/ui/gif/GifFrame/size J
ladd
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
L11:
goto L9
L2:
astore 2
L12:
aload 1
monitorexit
L13:
aload 2
athrow
.limit locals 5
.limit stack 5
.end method

.method private removeUnusedFrames()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpgt L0
L1:
return
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
astore 4
iconst_0
istore 2
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mCheckUsingKeyInterfaces Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L4:
iload 2
istore 1
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/ICheckUsingKeyInterface
aload 4
invokeinterface com/common/android/ui/gif/ICheckUsingKeyInterface/isKeyUsing(Ljava/lang/Object;)Z 1
ifeq L4
iconst_1
istore 1
L5:
iload 1
ifne L2
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Vector
invokespecial com/common/android/ui/gif/GifCacheManager/clearFrames(Ljava/util/Vector;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
pop
goto L3
L6:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
ldc2_w 4194304L
lcmp
ifle L1
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
iconst_5
if_icmplt L1
aload 0
invokespecial com/common/android/ui/gif/GifCacheManager/removeUnusedFrames()V
return
.limit locals 6
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/common/android/ui/gif/GifCacheManager;
ldc com/common/android/ui/gif/GifCacheManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/common/android/ui/gif/GifCacheManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/common/android/ui/gif/GifCacheManager;
getstatic com/common/android/ui/gif/GifCacheManager/$VALUES [Lcom/common/android/ui/gif/GifCacheManager;
invokevirtual [Lcom/common/android/ui/gif/GifCacheManager;/clone()Ljava/lang/Object;
checkcast [Lcom/common/android/ui/gif/GifCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L8
.catch all from L7 to L9 using L8
.catch all from L10 to L11 using L8
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L8
.catch all from L18 to L19 using L8
.catch all from L20 to L21 using L8
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
ifeq L22
ldc "gifview"
ldc "cache still in use,can't be clear"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L22:
ldc "gifview"
ldc "start clear cache"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
iconst_1
putfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mBrokenGifList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
L3:
aload 3
ifnonnull L12
L4:
aload 1
monitorexit
L5:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
astore 1
aload 1
monitorenter
L6:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
L9:
aload 3
ifnonnull L16
L10:
aload 1
monitorexit
L11:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
lconst_0
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
return
L12:
aload 0
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/util/Vector
invokespecial com/common/android/ui/gif/GifCacheManager/clearFrames(Ljava/util/Vector;)V
L13:
goto L1
L2:
astore 2
L14:
aload 1
monitorexit
L15:
aload 2
athrow
L16:
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 3
L17:
aload 3
ifnull L7
L18:
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
aload 2
invokeinterface java/util/Iterator/remove()V 0
L19:
goto L7
L8:
astore 2
L20:
aload 1
monitorexit
L21:
aload 2
athrow
.limit locals 4
.limit stack 3
.end method

.method public clearInUseList()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 1
.limit stack 1
.end method

.method public createNewFutureTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.signature "(Ljava/lang/Runnable;)Ljava/util/concurrent/Future<*>;"
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 1
invokeinterface java/util/concurrent/ScheduledExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public deActive()V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
ldc "gifview"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "deActive:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 1
.limit stack 3
.end method

.method public debug()V
ldc "gif"
ldc "=========inuse keys below"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_0
istore 1
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
L0:
iload 1
iload 2
if_icmpge L1
ldc "gif"
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public decodeGif(Ljava/lang/String;Ljava/lang/Object;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
istore 3
L1:
iload 3
ifeq L3
L5:
aload 0
monitorexit
return
L3:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mBrokenGifList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L5
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mExecutorService Ljava/util/concurrent/ScheduledExecutorService;
new com/common/android/ui/gif/GifCacheManager$runDecode
dup
aload 0
aload 1
aload 2
invokespecial com/common/android/ui/gif/GifCacheManager$runDecode/<init>(Lcom/common/android/ui/gif/GifCacheManager;Ljava/lang/String;Ljava/lang/Object;)V
invokeinterface java/util/concurrent/ScheduledExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
pop
L4:
goto L5
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 4
.limit stack 6
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Vector;
.signature "(Ljava/lang/Object;)Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
iconst_1
putfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
ldc "gifview"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "get:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsActive Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ifnull L4
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ifeq L5
L4:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ifeq L6
ldc "gifview"
ldc "get while isClearing"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L6:
aconst_null
astore 4
L7:
aload 4
areturn
L5:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Vector
astore 5
iconst_0
istore 3
iload 3
istore 2
aload 5
ifnull L8
aload 5
invokevirtual java/util/Vector/isEmpty()Z
ifeq L9
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
iload 3
istore 2
L8:
aload 5
astore 4
iload 2
ifeq L7
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mBrokenGifList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mDecodingGifList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
aload 1
invokespecial com/common/android/ui/gif/GifCacheManager/getDiskCacheDir(Ljava/lang/Object;)Ljava/io/File;
astore 1
aload 1
ifnull L10
aload 1
invokevirtual java/io/File/exists()Z
ifeq L10
aload 1
invokevirtual java/io/File/delete()Z
pop
L10:
aload 5
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L11:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/GifFrame
astore 4
aload 4
ifnull L11
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L11
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L11
aload 4
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 4
aconst_null
putfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
goto L11
L9:
aload 5
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 4
L13:
iload 3
istore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/GifFrame
astore 6
aload 6
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
ifnull L14
aload 6
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L13
L14:
aload 6
getfield com/common/android/ui/gif/GifFrame/path Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "gifview"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "frames path:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
aload 6
invokevirtual java/util/Vector/indexOf(Ljava/lang/Object;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
istore 2
goto L8
L0:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 7
aload 6
getfield com/common/android/ui/gif/GifFrame/path Ljava/lang/String;
aload 7
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 7
getfield android/graphics/BitmapFactory$Options/outHeight I
ifle L1
aload 7
getfield android/graphics/BitmapFactory$Options/outWidth I
ifgt L13
L1:
ldc "gifview"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "bitmap invalid:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
aload 6
invokevirtual java/util/Vector/indexOf(Ljava/lang/Object;)I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
iconst_1
istore 2
goto L8
L2:
astore 4
iconst_1
istore 2
goto L8
L12:
aconst_null
areturn
.limit locals 8
.limit stack 4
.end method

.method public getLocalBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/Vector
astore 3
aload 3
ifnull L0
aload 3
iconst_0
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
invokevirtual com/common/android/ui/gif/GifFrame/getBitmap()Landroid/graphics/Bitmap;
areturn
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast android/graphics/Bitmap
areturn
L1:
aconst_null
astore 3
aload 1
instanceof java/lang/String
ifeq L2
aload 1
checkcast java/lang/String
astore 3
aload 3
ldc "smiley/smily_cat"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L3
aload 3
ldc "smiley/smily_cos"
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L4
L3:
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 3
invokevirtual com/common/android/utils/smiley/Smileyhelper/getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 4
L5:
aload 4
invokevirtual android/graphics/Bitmap/getWidth()I
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
if_icmpgt L6
aload 4
astore 3
aload 4
invokevirtual android/graphics/Bitmap/getHeight()I
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
if_icmple L7
L6:
aload 4
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
invokestatic com/common/android/ui/gif/BitmapToolkit/resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 3
L7:
aload 3
ifnull L8
aload 3
invokevirtual android/graphics/Bitmap/getRowBytes()I
istore 2
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 3
invokevirtual android/graphics/Bitmap/getHeight()I
iload 2
imul
i2l
ladd
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mLocalBitmaps Ljava/util/Map;
aload 1
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L8:
aload 3
areturn
L4:
aload 3
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 4
goto L5
L2:
aload 1
instanceof java/lang/Integer
ifeq L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
astore 3
goto L7
.limit locals 5
.limit stack 5
.end method

.method public notifyDeocdeResult(Ljava/lang/Object;Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ifeq L0
return
L0:
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 1
instanceof java/lang/String
ifeq L1
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
L2:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20069
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L1:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "*"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
goto L2
.limit locals 4
.limit stack 4
.end method

.method public put(Ljava/lang/Object;Ljava/util/Vector;)V
.signature "(Ljava/lang/Object;Ljava/util/Vector<Lcom/common/android/ui/gif/GifFrame;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L9
.catch all from L10 to L11 using L9
.catch all from L12 to L13 using L9
.catch all from L14 to L15 using L9
.catch all from L16 to L17 using L9
.catch java/lang/Exception from L17 to L18 using L19
.catch all from L17 to L18 using L9
.catch java/lang/Exception from L18 to L20 using L19
.catch all from L18 to L20 using L9
.catch all from L21 to L22 using L9
.catch all from L23 to L24 using L9
.catch java/lang/Exception from L25 to L26 using L19
.catch all from L25 to L26 using L9
.catch all from L27 to L28 using L9
aload 2
ifnull L29
aload 2
invokevirtual java/util/Vector/isEmpty()Z
ifeq L30
L29:
return
L30:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L29
aload 0
invokespecial com/common/android/ui/gif/GifCacheManager/reCaculateCacheSize()V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
ldc2_w 4194304L
lcmp
iflt L31
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
iconst_5
if_icmplt L31
aload 0
invokespecial com/common/android/ui/gif/GifCacheManager/removeUnusedFrames()V
L31:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ifne L29
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
astore 5
aload 5
monitorenter
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mIsClearing Z
ifeq L5
aload 5
monitorexit
L1:
return
L2:
astore 1
L3:
aload 5
monitorexit
L4:
aload 1
athrow
L5:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 5
monitorexit
L6:
aload 2
monitorenter
L7:
aload 0
aload 1
invokespecial com/common/android/ui/gif/GifCacheManager/getDiskCacheDir(Ljava/lang/Object;)Ljava/io/File;
astore 1
L8:
iconst_0
istore 3
L10:
aload 2
invokevirtual java/util/Vector/size()I
istore 4
L11:
iload 3
iload 4
if_icmpge L27
L12:
aload 2
iload 3
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
astore 5
L13:
aload 5
ifnull L32
L14:
aload 5
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L16
L15:
goto L32
L16:
aload 5
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaxWidth I
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMinWidth I
invokestatic com/common/android/ui/gif/BitmapToolkit/zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
astore 6
aload 2
iload 3
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
aload 6
putfield com/common/android/ui/gif/GifFrame/image Landroid/graphics/Bitmap;
aload 2
iload 3
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
aload 6
invokevirtual android/graphics/Bitmap/getRowBytes()I
aload 6
invokevirtual android/graphics/Bitmap/getHeight()I
imul
i2l
putfield com/common/android/ui/gif/GifFrame/size J
aload 0
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mNowSize J
aload 2
iload 3
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
getfield com/common/android/ui/gif/GifFrame/size J
ladd
putfield com/common/android/ui/gif/GifCacheManager/mNowSize J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/config/Configuration/separatorChar C
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
new java/io/File
dup
aload 7
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 5
L17:
aload 5
invokevirtual java/io/File/exists()Z
ifne L25
aload 5
invokevirtual java/io/File/createNewFile()Z
pop
aload 5
aload 6
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
invokestatic com/common/android/ui/gif/BitmapToolkit/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
pop
L18:
aload 2
iload 3
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/gif/GifFrame
aload 7
putfield com/common/android/ui/gif/GifFrame/path Ljava/lang/String;
L20:
goto L32
L19:
astore 6
L21:
aload 5
invokevirtual java/io/File/exists()Z
ifeq L32
aload 5
invokevirtual java/io/File/delete()Z
pop
L22:
goto L32
L9:
astore 1
L23:
aload 2
monitorexit
L24:
aload 1
athrow
L25:
aload 5
invokevirtual java/io/File/length()J
lconst_0
lcmp
ifne L18
aload 5
invokevirtual java/io/File/delete()Z
pop
aload 5
aload 6
getstatic android/graphics/Bitmap$CompressFormat/PNG Landroid/graphics/Bitmap$CompressFormat;
invokestatic com/common/android/ui/gif/BitmapToolkit/saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z
pop
L26:
goto L18
L27:
aload 2
monitorexit
L28:
return
L32:
iload 3
iconst_1
iadd
istore 3
goto L11
.limit locals 8
.limit stack 5
.end method

.method public registCheckUsingKeyInterface(Lcom/common/android/ui/gif/ICheckUsingKeyInterface;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mCheckUsingKeyInterfaces Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L0
return
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mCheckUsingKeyInterfaces Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public setInuse(Ljava/lang/Object;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
aload 1
ifnonnull L6
return
L6:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mInuseKeys Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
aload 2
monitorexit
L3:
return
L2:
astore 1
L4:
aload 2
monitorexit
L5:
aload 1
athrow
.limit locals 3
.limit stack 2
.end method

.method public unregistCheckUsingKeyInterface(Lcom/common/android/ui/gif/ICheckUsingKeyInterface;)V
aload 0
getfield com/common/android/ui/gif/GifCacheManager/mCheckUsingKeyInterfaces Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method
