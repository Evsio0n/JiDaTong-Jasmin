.bytecode 50.0
.class public synchronized com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
.super java/lang/Object
.inner class public static Builder inner com/nostra13/universalimageloader/core/DisplayImageOptions$Builder outer com/nostra13/universalimageloader/core/DisplayImageOptions

.field private 'cacheInMemory' Z

.field private 'cacheOnDisk' Z

.field private 'considerExifParams' Z

.field private 'decodingOptions' Landroid/graphics/BitmapFactory$Options;

.field private 'delayBeforeLoading' I

.field private 'diskCache' Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field private 'displayer' Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private 'extraForDownloader' Ljava/lang/Object;

.field private 'handler' Landroid/os/Handler;

.field private 'imageForEmptyUri' Landroid/graphics/drawable/Drawable;

.field private 'imageOnFail' Landroid/graphics/drawable/Drawable;

.field private 'imageOnLoading' Landroid/graphics/drawable/Drawable;

.field private 'imageResForEmptyUri' I

.field private 'imageResOnFail' I

.field private 'imageResOnLoading' I

.field private 'imageScaleType' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private 'isShowThumb' Z

.field private 'isSyncLoading' Z

.field private 'needCheckExpired' Z

.field private 'postProcessor' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private 'preProcessor' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private 'resetViewBeforeLoading' Z

.field private 'writeLog' Z

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnLoading I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResForEmptyUri I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnFail I
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnLoading Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageForEmptyUri Landroid/graphics/drawable/Drawable;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnFail Landroid/graphics/drawable/Drawable;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk Z
aload 0
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/IN_SAMPLE_POWER_OF_2 Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/delayBeforeLoading I
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/considerExifParams Z
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/extraForDownloader Ljava/lang/Object;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
invokestatic com/nostra13/universalimageloader/core/DefaultConfigurationFactory/createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/handler Landroid/os/Handler;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isSyncLoading Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isShowThumb Z
aload 0
aconst_null
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/writeLog Z
aload 0
iconst_0
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/needCheckExpired Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
iconst_1
putfield android/graphics/BitmapFactory$Options/inPurgeable Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
iconst_1
putfield android/graphics/BitmapFactory$Options/inInputShareable Z
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnLoading I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResForEmptyUri I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$11(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/delayBeforeLoading I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$12(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/considerExifParams Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$13(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/extraForDownloader Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$14(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$15(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$16(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$17(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$18(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isSyncLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$19(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/needCheckExpired Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnFail I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$20(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isShowThumb Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$21(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$22(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/writeLog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnLoading Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageForEmptyUri Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnFail Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$7(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$9(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "bitmapConfig can't be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 1
putfield android/graphics/BitmapFactory$Options/inPreferredConfig Landroid/graphics/Bitmap$Config;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions
dup
aload 0
aconst_null
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions/<init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
areturn
.limit locals 1
.limit stack 2
.end method

.method public cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iload 1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
areturn
.limit locals 2
.limit stack 2
.end method

.method public cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$0(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnLoading I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$1(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResForEmptyUri I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$2(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnFail I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$3(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnLoading Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$4(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageForEmptyUri Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$5(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnFail Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$6(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$7(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$8(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$9(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$10(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$11(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/delayBeforeLoading I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$12(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/considerExifParams Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$13(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/extraForDownloader Ljava/lang/Object;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$14(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$15(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$16(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$17(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/handler Landroid/os/Handler;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$18(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isSyncLoading Z
aload 0
aload 1
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/isShowThumb Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isShowThumb Z
aload 0
aload 1
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions/access$19(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/writeLog Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/considerExifParams Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public decodingOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "decodingOptions can't be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/delayBeforeLoading I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/diskCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
ldc "displayer can't be null"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public extraForDownloader(Ljava/lang/Object;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/extraForDownloader Ljava/lang/Object;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public handler(Landroid/os/Handler;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/handler Landroid/os/Handler;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public preProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iconst_1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setNeedCheckExpired(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/needCheckExpired Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResForEmptyUri I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageForEmptyUri Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnFail I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageOnFail(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnFail Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnLoading I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
aload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageOnLoading Landroid/graphics/drawable/Drawable;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageResOnLoading I
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public showThumbImage(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isShowThumb Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method syncLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/isSyncLoading Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public writeLog(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
aload 0
iload 1
putfield com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/writeLog Z
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
