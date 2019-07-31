.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/decode/ImageDecodingInfo
.super java/lang/Object

.field private final 'considerExifParams' Z

.field private final 'decodingOptions' Landroid/graphics/BitmapFactory$Options;

.field private final 'downloader' Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final 'extraForDownloader' Ljava/lang/Object;

.field private final 'imageKey' Ljava/lang/String;

.field private final 'imageScaleType' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final 'imageUri' Ljava/lang/String;

.field private 'mRequestPropertyHashMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private final 'originalImageUri' Ljava/lang/String;

.field private final 'targetSize' Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private final 'viewScaleType' Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

.method public <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/HashMap;)V
.signature "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageKey Ljava/lang/String;
aload 0
aload 2
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageUri Ljava/lang/String;
aload 0
aload 3
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/originalImageUri Ljava/lang/String;
aload 0
aload 4
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
aload 7
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
aload 5
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/viewScaleType Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aload 0
aload 6
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
aload 7
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getExtraForDownloader()Ljava/lang/Object;
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/extraForDownloader Ljava/lang/Object;
aload 0
aload 8
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/mRequestPropertyHashMap Ljava/util/HashMap;
aload 0
aload 7
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/isConsiderExifParams()Z
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/considerExifParams Z
aload 0
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 0
aload 7
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions/getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/decodingOptions Landroid/graphics/BitmapFactory$Options;
invokespecial com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
return
.limit locals 9
.limit stack 3
.end method

.method private copyOptions(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inDensity I
putfield android/graphics/BitmapFactory$Options/inDensity I
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inDither Z
putfield android/graphics/BitmapFactory$Options/inDither Z
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inInputShareable Z
putfield android/graphics/BitmapFactory$Options/inInputShareable Z
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inPurgeable Z
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inSampleSize I
putfield android/graphics/BitmapFactory$Options/inSampleSize I
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inScaled Z
putfield android/graphics/BitmapFactory$Options/inScaled Z
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inScreenDensity I
putfield android/graphics/BitmapFactory$Options/inScreenDensity I
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inTargetDensity I
putfield android/graphics/BitmapFactory$Options/inTargetDensity I
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inTempStorage [B
putfield android/graphics/BitmapFactory$Options/inTempStorage [B
getstatic android/os/Build$VERSION/SDK_INT I
bipush 10
if_icmplt L0
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L1
aload 0
aload 1
aload 2
invokespecial com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method private copyOptions10(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 10
.end annotation
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inPreferQualityOverSpeed Z
putfield android/graphics/BitmapFactory$Options/inPreferQualityOverSpeed Z
return
.limit locals 3
.limit stack 2
.end method

.method private copyOptions11(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/BitmapFactory$Options;)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inBitmap Landroid/graphics/Bitmap;
putfield android/graphics/BitmapFactory$Options/inBitmap Landroid/graphics/Bitmap;
aload 2
aload 1
getfield android/graphics/BitmapFactory$Options/inMutable Z
putfield android/graphics/BitmapFactory$Options/inMutable Z
return
.limit locals 3
.limit stack 2
.end method

.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/decodingOptions Landroid/graphics/BitmapFactory$Options;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/downloader Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/extraForDownloader Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImageKey()Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageKey Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImageUri()Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/imageUri Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getOriginalImageUri()Ljava/lang/String;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/originalImageUri Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTargetSize()Lcom/nostra13/universalimageloader/core/assist/ImageSize;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/targetSize Lcom/nostra13/universalimageloader/core/assist/ImageSize;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getViewScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/viewScaleType Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getmRequestPropertyHashMap()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/mRequestPropertyHashMap Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setmRequestPropertyHashMap(Ljava/util/HashMap;)V
.signature "(Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/mRequestPropertyHashMap Ljava/util/HashMap;
return
.limit locals 2
.limit stack 2
.end method

.method public shouldConsiderExifParams()Z
aload 0
getfield com/nostra13/universalimageloader/core/decode/ImageDecodingInfo/considerExifParams Z
ireturn
.limit locals 1
.limit stack 1
.end method
