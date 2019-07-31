.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/decode/BaseImageDecoder
.super java/lang/Object
.implements com/nostra13/universalimageloader/core/decode/ImageDecoder
.inner class protected static ExifInfo inner com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo outer com/nostra13/universalimageloader/core/decode/BaseImageDecoder
.inner class protected static ImageFileInfo inner com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo outer com/nostra13/universalimageloader/core/decode/BaseImageDecoder

.field protected static final 'ERROR_CANT_DECODE_IMAGE' Ljava/lang/String; = "Image can't be decoded [%s]"

.field protected static final 'ERROR_NO_IMAGE_STREAM' Ljava/lang/String; = "No stream for image [%s]"

.field protected static final 'LOG_FLIP_IMAGE' Ljava/lang/String; = "Flip image horizontally [%s]"

.field protected static final 'LOG_ROTATE_IMAGE' Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"

.field protected static final 'LOG_SCALE_IMAGE' Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

.field protected static final 'LOG_SUBSAMPLE_IMAGE' Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

.field protected final 'loggingEnabled' Z

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder/loggingEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method private canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
ldc "image/jpeg"
aload 2
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L0
aload 1
invokestatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/ofUri(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 7
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
astore 8
aload 8
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpeq L0
aload 8
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY_STRETCHED Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpne L1
L0:
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iload 3
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(III)V
astore 9
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
astore 10
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
astore 11
aload 8
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY_STRETCHED Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpne L2
iconst_1
istore 6
L3:
aload 9
aload 10
aload 11
iload 6
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
fstore 5
fload 5
fconst_1
invokestatic java/lang/Float/compare(FF)I
ifeq L1
aload 7
fload 5
fload 5
invokevirtual android/graphics/Matrix/setScale(FF)V
aload 0
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder/loggingEnabled Z
ifeq L1
ldc "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 9
aastore
dup
iconst_1
aload 9
fload 5
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/scale(F)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aastore
dup
iconst_2
fload 5
invokestatic java/lang/Float/valueOf(F)Ljava/lang/Float;
aastore
dup
iconst_3
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L1:
iload 4
ifeq L4
aload 7
ldc_w -1.0F
fconst_1
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder/loggingEnabled Z
ifeq L4
ldc "Flip image horizontally [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L4:
iload 3
ifeq L5
aload 7
iload 3
i2f
invokevirtual android/graphics/Matrix/postRotate(F)Z
pop
aload 0
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder/loggingEnabled Z
ifeq L5
ldc "Rotate image on %1$d\u00b0 [%2$s]"
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L5:
aload 1
iconst_0
iconst_0
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
aload 7
iconst_1
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
astore 2
aload 2
aload 1
if_acmpeq L6
aload 1
invokevirtual android/graphics/Bitmap/recycle()V
L6:
aload 2
areturn
L2:
iconst_0
istore 6
goto L3
.limit locals 12
.limit stack 7
.end method

.method public decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
astore 3
aload 3
ifnonnull L7
ldc "No stream for image [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
aconst_null
areturn
L7:
aload 3
astore 2
L0:
aload 0
aload 3
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
astore 4
L1:
aload 3
astore 2
L3:
aload 0
aload 3
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
astore 3
L4:
aload 3
astore 2
L5:
aload 3
aconst_null
aload 0
aload 4
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/imageSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
astore 5
L6:
aload 3
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 5
ifnonnull L8
ldc "Image can't be decoded [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/e(Ljava/lang/String;[Ljava/lang/Object;)V
aload 5
areturn
L2:
astore 1
aload 2
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 1
athrow
L8:
aload 0
aload 5
aload 1
aload 4
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/exif Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/rotation I
aload 4
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/exif Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/flipHorizontal Z
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/considerExactScaleAndOrientatiton(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
areturn
.limit locals 6
.limit stack 5
.end method

.method protected defineExifOrientation(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
.catch java/io/IOException from L0 to L1 using L2
iconst_0
istore 2
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
iconst_0
istore 8
L0:
new android/media/ExifInterface
dup
getstatic com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/FILE Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
aload 1
invokevirtual com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme/crop(Ljava/lang/String;)Ljava/lang/String;
invokespecial android/media/ExifInterface/<init>(Ljava/lang/String;)V
ldc "Orientation"
iconst_1
invokevirtual android/media/ExifInterface/getAttributeInt(Ljava/lang/String;I)I
istore 3
L1:
iload 3
tableswitch 1
L3
L4
L5
L6
L7
L8
L9
L10
default : L11
L11:
iload 8
istore 4
L12:
new com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo
dup
iload 2
iload 4
invokespecial com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/<init>(IZ)V
areturn
L4:
iconst_1
istore 4
L3:
iconst_0
istore 2
goto L12
L9:
iconst_1
istore 5
L8:
bipush 90
istore 2
iload 5
istore 4
goto L12
L6:
iconst_1
istore 6
L5:
sipush 180
istore 2
iload 6
istore 4
goto L12
L7:
iconst_1
istore 7
L10:
sipush 270
istore 2
iload 7
istore 4
goto L12
L2:
astore 9
ldc "Can't read EXIF tags from file [%s]"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokestatic com/nostra13/universalimageloader/utils/L/w(Ljava/lang/String;[Ljava/lang/Object;)V
iload 8
istore 4
goto L12
.limit locals 10
.limit stack 5
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.throws java/io/IOException
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 3
aload 3
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 1
aconst_null
aload 3
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageUri()Ljava/lang/String;
astore 1
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/shouldConsiderExifParams()Z
ifeq L0
aload 0
aload 1
aload 3
getfield android/graphics/BitmapFactory$Options/outMimeType Ljava/lang/String;
invokespecial com/nostra13/universalimageloader/core/decode/BaseImageDecoder/canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/defineExifOrientation(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;
astore 1
L1:
new com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo
dup
new com/nostra13/universalimageloader/core/assist/ImageSize
dup
aload 3
getfield android/graphics/BitmapFactory$Options/outWidth I
aload 3
getfield android/graphics/BitmapFactory$Options/outHeight I
aload 1
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/rotation I
invokespecial com/nostra13/universalimageloader/core/assist/ImageSize/<init>(III)V
aload 1
invokespecial com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo/<init>(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
areturn
L0:
new com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo
dup
invokespecial com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo/<init>()V
astore 1
goto L1
.limit locals 4
.limit stack 7
.end method

.method protected getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
.throws java/io/IOException
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageUri()Ljava/lang/String;
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getExtraForDownloader()Ljava/lang/Object;
aload 1
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getmRequestPropertyHashMap()Ljava/util/HashMap;
invokeinterface com/nostra13/universalimageloader/core/download/ImageDownloader/getStream(Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/io/InputStream; 3
areturn
.limit locals 2
.limit stack 4
.end method

.method protected prepareDecodingOptions(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
astore 5
aload 5
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpne L0
iconst_1
istore 3
L1:
iload 3
iconst_1
if_icmple L2
aload 0
getfield com/nostra13/universalimageloader/core/decode/BaseImageDecoder/loggingEnabled Z
ifeq L2
ldc "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 1
iload 3
invokevirtual com/nostra13/universalimageloader/core/assist/ImageSize/scaleDown(I)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aastore
dup
iconst_2
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_3
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getImageKey()Ljava/lang/String;
aastore
invokestatic com/nostra13/universalimageloader/utils/L/d(Ljava/lang/String;[Ljava/lang/Object;)V
L2:
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
astore 1
aload 1
iload 3
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 1
areturn
L0:
aload 5
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpne L3
aload 1
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)I
istore 3
goto L1
L3:
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
astore 6
aload 5
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_POWER_OF_2 Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
if_acmpne L4
iconst_1
istore 4
L5:
aload 1
aload 6
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
iload 4
invokestatic com/nostra13/universalimageloader/utils/ImageSizeUtils/computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
istore 3
goto L1
L4:
iconst_0
istore 4
goto L5
.limit locals 7
.limit stack 6
.end method

.method protected resetStream(Ljava/io/InputStream;Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
.throws java/io/IOException
.catch java/io/IOException from L0 to L1 using L2
L0:
aload 1
invokevirtual java/io/InputStream/reset()V
L1:
aload 1
areturn
L2:
astore 3
aload 1
invokestatic com/nostra13/universalimageloader/utils/IoUtils/closeSilently(Ljava/io/Closeable;)V
aload 0
aload 2
invokevirtual com/nostra13/universalimageloader/core/decode/BaseImageDecoder/getImageStream(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
areturn
.limit locals 4
.limit stack 2
.end method
