.bytecode 50.0
.class public final synchronized enum com/nd/android/u/chatUiUtils/LocalImageManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/chatUiUtils/LocalImageManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/chatUiUtils/LocalImageManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/chatUiUtils/LocalImageManager;

.field private static final 'MAX_WIDTH' I = 120


.field private 'mBitmapMaps' Ljava/util/Map; signature "Ljava/util/Map<Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"

.field private 'mGifFlagBitmap' Landroid/graphics/Bitmap;

.field private 'mStartBitmap' Landroid/graphics/Bitmap;

.method static <clinit>()V
new com/nd/android/u/chatUiUtils/LocalImageManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/chatUiUtils/LocalImageManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
iconst_1
anewarray com/nd/android/u/chatUiUtils/LocalImageManager
dup
iconst_0
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
aastore
putstatic com/nd/android/u/chatUiUtils/LocalImageManager/$VALUES [Lcom/nd/android/u/chatUiUtils/LocalImageManager;
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
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
return
.limit locals 3
.limit stack 3
.end method

.method private getThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 4
aload 4
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 4
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
aload 4
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
ldc_w 120.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
istore 3
aload 4
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 4
getfield android/graphics/BitmapFactory$Options/outWidth I
invokestatic java/lang/Math/max(II)I
istore 2
L0:
iload 2
iload 3
if_icmple L1
aload 4
aload 4
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_2
imul
putfield android/graphics/BitmapFactory$Options/inSampleSize I
iload 2
iconst_2
ishr
istore 2
goto L0
L1:
aload 4
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
aload 4
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 5
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/chatUiUtils/LocalImageManager;
ldc com/nd/android/u/chatUiUtils/LocalImageManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/chatUiUtils/LocalImageManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/chatUiUtils/LocalImageManager;
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/$VALUES [Lcom/nd/android/u/chatUiUtils/LocalImageManager;
invokevirtual [Lcom/nd/android/u/chatUiUtils/LocalImageManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/chatUiUtils/LocalImageManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
invokeinterface java/util/Map/isEmpty()Z 0
ifne L0
aload 1
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast android/content/Context
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/util/concurrent/ConcurrentHashMap
invokevirtual java/util/concurrent/ConcurrentHashMap/entrySet()Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 4
aload 4
ifnull L5
aload 4
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L5
aload 4
invokestatic com/common/android/utils/ImageUtils/recycleBitmap(Landroid/graphics/Bitmap;)V
L5:
aload 3
invokeinterface java/util/Iterator/remove()V 0
goto L3
L4:
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L2
.limit locals 5
.limit stack 2
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 1
ifnonnull L6
L5:
aconst_null
areturn
L6:
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/concurrent/ConcurrentHashMap
astore 4
aload 4
astore 3
aload 4
ifnonnull L7
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
astore 3
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
aload 1
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L7:
aload 3
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/containsKey(Ljava/lang/Object;)Z
ifeq L0
aload 3
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/graphics/Bitmap
areturn
L0:
aload 0
aload 2
invokespecial com/nd/android/u/chatUiUtils/LocalImageManager/getThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
ifnull L4
L3:
aload 3
aload 2
aload 1
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L4:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public getGifFlagBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mGifFlagBitmap Landroid/graphics/Bitmap;
ifnonnull L0
aload 0
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$drawable/icon_gif I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/chatUiUtils/LocalImageManager/mGifFlagBitmap Landroid/graphics/Bitmap;
L0:
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mGifFlagBitmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getStartBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mStartBitmap Landroid/graphics/Bitmap;
ifnonnull L0
aload 0
getstatic ims/IMSdkEntry/INSTANCE Lims/IMSdkEntry;
getfield ims/IMSdkEntry/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$drawable/start I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/chatUiUtils/LocalImageManager/mStartBitmap Landroid/graphics/Bitmap;
L0:
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mStartBitmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 3
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/concurrent/ConcurrentHashMap
aload 2
aload 3
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
L0:
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
astore 4
aload 4
aload 2
aload 3
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/android/u/chatUiUtils/LocalImageManager/mBitmapMaps Ljava/util/Map;
aload 1
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 5
.limit stack 3
.end method
