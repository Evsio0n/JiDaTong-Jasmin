.bytecode 50.0
.class public synchronized abstract com/bumptech/glide/load/resource/bitmap/Downsampler
.super java/lang/Object
.implements com/bumptech/glide/load/resource/bitmap/BitmapDecoder
.signature "Ljava/lang/Object;Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder<Ljava/io/InputStream;>;"
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$1
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$2
.inner class static final inner com/bumptech/glide/load/resource/bitmap/Downsampler$3

.field public static final 'AT_LEAST' Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final 'AT_MOST' Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final 'MARK_POSITION' I = 5242880


.field public static final 'NONE' Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final 'OPTIONS_QUEUE' Ljava/util/Queue; signature "Ljava/util/Queue<Landroid/graphics/BitmapFactory$Options;>;"

.field private static final 'TAG' Ljava/lang/String; = "Downsampler"

.field private static final 'TYPES_THAT_USE_POOL' Ljava/util/Set; signature "Ljava/util/Set<Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;>;"

.method static <clinit>()V
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/JPEG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG_A Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
getstatic com/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType/PNG Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
invokestatic java/util/EnumSet/of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
putstatic com/bumptech/glide/load/resource/bitmap/Downsampler/TYPES_THAT_USE_POOL Ljava/util/Set;
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putstatic com/bumptech/glide/load/resource/bitmap/Downsampler/OPTIONS_QUEUE Ljava/util/Queue;
new com/bumptech/glide/load/resource/bitmap/Downsampler$1
dup
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler$1/<init>()V
putstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_LEAST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
new com/bumptech/glide/load/resource/bitmap/Downsampler$2
dup
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler$2/<init>()V
putstatic com/bumptech/glide/load/resource/bitmap/Downsampler/AT_MOST Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
new com/bumptech/glide/load/resource/bitmap/Downsampler$3
dup
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler$3/<init>()V
putstatic com/bumptech/glide/load/resource/bitmap/Downsampler/NONE Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
return
.limit locals 0
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.catch java/io/IOException from L0 to L1 using L2
aload 2
getfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
ifeq L3
aload 0
ldc_w 5242880
invokevirtual com/bumptech/glide/util/MarkEnforcingInputStream/mark(I)V
L4:
aload 0
aconst_null
aload 2
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 1
L0:
aload 2
getfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
ifeq L1
aload 0
invokevirtual com/bumptech/glide/util/MarkEnforcingInputStream/reset()V
L1:
aload 1
areturn
L3:
aload 1
invokevirtual com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/fixMarkLimit()V
goto L4
L2:
astore 0
ldc "Downsampler"
bipush 6
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L1
ldc "Downsampler"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Exception loading inDecodeBounds="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc " sample="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield android/graphics/BitmapFactory$Options/inSampleSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
aload 1
aload 8
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
astore 8
aload 3
iload 7
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 3
aload 8
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 3
getfield android/graphics/BitmapFactory$Options/inSampleSize I
iconst_1
if_icmpeq L0
bipush 19
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L1
L0:
aload 1
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/shouldUsePool(Ljava/io/InputStream;)Z
ifeq L1
aload 3
aload 4
iload 5
i2d
iload 7
i2d
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
iload 6
i2d
iload 7
i2d
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
aload 8
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap; 3
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
L1:
aload 1
aload 2
aload 3
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
areturn
.limit locals 9
.limit stack 7
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L4 to L5 using L6
.catch all from L7 to L8 using L3
.catch java/io/IOException from L8 to L9 using L10
.catch java/io/IOException from L11 to L12 using L13
aload 1
getstatic com/bumptech/glide/load/DecodeFormat/ALWAYS_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
if_acmpeq L14
aload 1
getstatic com/bumptech/glide/load/DecodeFormat/PREFER_ARGB_8888 Lcom/bumptech/glide/load/DecodeFormat;
if_acmpeq L14
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmpne L15
L14:
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
areturn
L15:
iconst_0
istore 3
aload 0
sipush 1024
invokevirtual java/io/InputStream/mark(I)V
L0:
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
dup
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/<init>(Ljava/io/InputStream;)V
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/hasAlpha()Z
istore 2
L1:
iload 2
istore 3
L4:
aload 0
invokevirtual java/io/InputStream/reset()V
L5:
iload 3
istore 2
L16:
iload 2
ifeq L17
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
areturn
L6:
astore 0
iload 3
istore 2
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L16
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
iload 3
istore 2
goto L16
L2:
astore 4
L7:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L8
ldc "Downsampler"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Cannot determine whether the image has alpha or not from header for format "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 4
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L8:
aload 0
invokevirtual java/io/InputStream/reset()V
L9:
iload 3
istore 2
goto L16
L10:
astore 0
iload 3
istore 2
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L16
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
iload 3
istore 2
goto L16
L3:
astore 1
L11:
aload 0
invokevirtual java/io/InputStream/reset()V
L12:
aload 1
athrow
L13:
astore 0
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L12
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L12
L17:
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
areturn
.limit locals 5
.limit stack 3
.end method

.method private static getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L4
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L4
.catch all from L8 to L2 using L2
ldc com/bumptech/glide/load/resource/bitmap/Downsampler
monitorenter
L0:
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/OPTIONS_QUEUE Ljava/util/Queue;
astore 0
aload 0
monitorenter
L1:
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/OPTIONS_QUEUE Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast android/graphics/BitmapFactory$Options
astore 1
aload 0
monitorexit
L3:
aload 1
astore 0
aload 1
ifnonnull L6
L5:
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 0
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/resetOptions(Landroid/graphics/BitmapFactory$Options;)V
L6:
ldc com/bumptech/glide/load/resource/bitmap/Downsampler
monitorexit
aload 0
areturn
L4:
astore 1
L7:
aload 0
monitorexit
L8:
aload 1
athrow
L2:
astore 0
ldc com/bumptech/glide/load/resource/bitmap/Downsampler
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method private getRoundedSampleSize(IIIII)I
iload 5
ldc_w -2147483648
if_icmpne L0
iload 3
istore 5
L1:
iload 4
ldc_w -2147483648
if_icmpne L2
iload 2
istore 4
L3:
iload 1
bipush 90
if_icmpeq L4
iload 1
sipush 270
if_icmpne L5
L4:
aload 0
iload 3
iload 2
iload 4
iload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/getSampleSize(IIII)I
istore 1
L6:
iload 1
ifne L7
iconst_0
istore 1
L8:
iconst_1
iload 1
invokestatic java/lang/Math/max(II)I
ireturn
L0:
goto L1
L2:
goto L3
L5:
aload 0
iload 2
iload 3
iload 4
iload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/getSampleSize(IIII)I
istore 1
goto L6
L7:
iload 1
invokestatic java/lang/Integer/highestOneBit(I)I
istore 1
goto L8
.limit locals 6
.limit stack 5
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/resetOptions(Landroid/graphics/BitmapFactory$Options;)V
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/OPTIONS_QUEUE Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/OPTIONS_QUEUE Ljava/util/Queue;
aload 0
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
aload 1
monitorexit
L1:
return
L2:
astore 0
L3:
aload 1
monitorexit
L4:
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
aconst_null
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/inScaled Z
aload 0
iconst_1
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 0
aconst_null
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/outWidth I
aload 0
iconst_0
putfield android/graphics/BitmapFactory$Options/outHeight I
aload 0
aconst_null
putfield android/graphics/BitmapFactory$Options/outMimeType Ljava/lang/String;
bipush 11
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L0
aload 0
aconst_null
putfield android/graphics/BitmapFactory$Options/inBitmap Landroid/graphics/Bitmap;
aload 0
iconst_1
putfield android/graphics/BitmapFactory$Options/inMutable Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
bipush 11
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L0
aload 0
aload 1
putfield android/graphics/BitmapFactory$Options/inBitmap Landroid/graphics/Bitmap;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/io/IOException from L1 to L4 using L5
.catch all from L6 to L7 using L3
.catch java/io/IOException from L7 to L8 using L9
.catch java/io/IOException from L10 to L11 using L12
bipush 19
getstatic android/os/Build$VERSION/SDK_INT I
if_icmpgt L13
iconst_1
istore 1
L14:
iload 1
ireturn
L13:
aload 0
sipush 1024
invokevirtual java/io/InputStream/mark(I)V
L0:
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
dup
aload 0
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/<init>(Ljava/io/InputStream;)V
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
astore 3
getstatic com/bumptech/glide/load/resource/bitmap/Downsampler/TYPES_THAT_USE_POOL Ljava/util/Set;
aload 3
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
istore 2
L1:
aload 0
invokevirtual java/io/InputStream/reset()V
L4:
iload 2
ireturn
L5:
astore 0
iload 2
istore 1
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L14
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
iload 2
ireturn
L2:
astore 3
L6:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L7
ldc "Downsampler"
ldc "Cannot determine the image type from header"
aload 3
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L7:
aload 0
invokevirtual java/io/InputStream/reset()V
L8:
iconst_0
ireturn
L9:
astore 0
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L8
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L8
L3:
astore 3
L10:
aload 0
invokevirtual java/io/InputStream/reset()V
L11:
aload 3
athrow
L12:
astore 0
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L11
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 0
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L11
.limit locals 4
.limit stack 3
.end method

.method public decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
.catch all from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/io/IOException from L7 to L8 using L9
.catch all from L7 to L8 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L14 to L2 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L6
.catch java/io/IOException from L18 to L19 using L20
.catch all from L18 to L19 using L2
.catch all from L21 to L22 using L2
.catch java/io/IOException from L23 to L24 using L25
.catch all from L23 to L24 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
invokestatic com/bumptech/glide/util/ByteArrayPool/get()Lcom/bumptech/glide/util/ByteArrayPool;
astore 9
aload 9
invokevirtual com/bumptech/glide/util/ByteArrayPool/getBytes()[B
astore 10
aload 9
invokevirtual com/bumptech/glide/util/ByteArrayPool/getBytes()[B
astore 11
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
astore 12
new com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
dup
aload 1
aload 11
invokespecial com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream/<init>(Ljava/io/InputStream;[B)V
astore 1
aload 1
invokestatic com/bumptech/glide/util/ExceptionCatchingInputStream/obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
astore 13
new com/bumptech/glide/util/MarkEnforcingInputStream
dup
aload 13
invokespecial com/bumptech/glide/util/MarkEnforcingInputStream/<init>(Ljava/io/InputStream;)V
astore 14
L0:
aload 13
ldc_w 5242880
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/mark(I)V
L1:
iconst_0
istore 7
L3:
new com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
dup
aload 13
invokespecial com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/<init>(Ljava/io/InputStream;)V
invokevirtual com/bumptech/glide/load/resource/bitmap/ImageHeaderParser/getOrientation()I
istore 6
L4:
iload 6
istore 7
L7:
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/reset()V
L8:
iload 7
istore 6
L10:
aload 12
aload 10
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
aload 0
aload 14
aload 1
aload 12
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
astore 15
L11:
aload 15
iconst_0
iaload
istore 7
aload 15
iconst_1
iaload
istore 8
L12:
aload 0
aload 14
aload 1
aload 12
aload 2
iload 7
iload 8
aload 0
iload 6
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/getExifOrientationDegrees(I)I
iload 7
iload 8
iload 3
iload 4
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler/getRoundedSampleSize(IIIII)I
aload 5
invokespecial com/bumptech/glide/load/resource/bitmap/Downsampler/downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
astore 14
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/getException()Ljava/io/IOException;
astore 1
L13:
aload 1
ifnull L34
L14:
new java/lang/RuntimeException
dup
aload 1
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/Throwable;)V
athrow
L2:
astore 1
aload 9
aload 10
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 9
aload 11
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/release()V
aload 12
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
aload 1
athrow
L9:
astore 15
iload 7
istore 6
L15:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L10
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 15
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L16:
iload 7
istore 6
goto L10
L5:
astore 15
L17:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L18
ldc "Downsampler"
ldc "Cannot determine the image orientation from header"
aload 15
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L18:
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/reset()V
L19:
iload 7
istore 6
goto L10
L20:
astore 15
iload 7
istore 6
L21:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L10
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 15
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L22:
iload 7
istore 6
goto L10
L6:
astore 1
L23:
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/reset()V
L24:
aload 1
athrow
L25:
astore 2
L26:
ldc "Downsampler"
iconst_5
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L24
ldc "Downsampler"
ldc "Cannot reset the input stream"
aload 2
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
L27:
goto L24
L34:
aconst_null
astore 1
aload 14
ifnull L35
L28:
aload 14
aload 2
iload 6
invokestatic com/bumptech/glide/load/resource/bitmap/TransformationUtils/rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;
astore 5
L29:
aload 5
astore 1
L30:
aload 14
aload 5
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifne L35
L31:
aload 5
astore 1
L32:
aload 2
aload 14
invokeinterface com/bumptech/glide/load/engine/bitmap_recycle/BitmapPool/put(Landroid/graphics/Bitmap;)Z 1
ifne L35
aload 14
invokevirtual android/graphics/Bitmap/recycle()V
L33:
aload 5
astore 1
L35:
aload 9
aload 10
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 9
aload 11
invokevirtual com/bumptech/glide/util/ByteArrayPool/releaseBytes([B)Z
pop
aload 13
invokevirtual com/bumptech/glide/util/ExceptionCatchingInputStream/release()V
aload 12
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
aload 1
areturn
.limit locals 16
.limit stack 13
.end method

.method public volatile synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
.throws java/lang/Exception
aload 0
aload 1
checkcast java/io/InputStream
aload 2
iload 3
iload 4
aload 5
invokevirtual com/bumptech/glide/load/resource/bitmap/Downsampler/decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
areturn
.limit locals 6
.limit stack 6
.end method

.method public getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
aload 2
aload 3
invokestatic com/bumptech/glide/load/resource/bitmap/Downsampler/decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 3
iconst_0
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
iconst_2
newarray int
dup
iconst_0
aload 3
getfield android/graphics/BitmapFactory$Options/outWidth I
iastore
dup
iconst_1
aload 3
getfield android/graphics/BitmapFactory$Options/outHeight I
iastore
areturn
.limit locals 4
.limit stack 4
.end method

.method protected abstract getSampleSize(IIII)I
.end method
