.bytecode 50.0
.class public final synchronized com/nostra13/universalimageloader/core/DisplayImageOptions
.super java/lang/Object
.inner class public static Builder inner com/nostra13/universalimageloader/core/DisplayImageOptions$Builder outer com/nostra13/universalimageloader/core/DisplayImageOptions

.field private final 'cacheInMemory' Z

.field private final 'cacheOnDisk' Z

.field private final 'considerExifParams' Z

.field private final 'decodingOptions' Landroid/graphics/BitmapFactory$Options;

.field private final 'delayBeforeLoading' I

.field final 'discCache' Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

.field private final 'displayer' Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final 'extraForDownloader' Ljava/lang/Object;

.field private final 'handler' Landroid/os/Handler;

.field private final 'imageForEmptyUri' Landroid/graphics/drawable/Drawable;

.field private final 'imageOnFail' Landroid/graphics/drawable/Drawable;

.field private final 'imageOnLoading' Landroid/graphics/drawable/Drawable;

.field private final 'imageResForEmptyUri' I

.field private final 'imageResOnFail' I

.field private final 'imageResOnLoading' I

.field private final 'imageScaleType' Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field final 'isShowThumb' Z

.field private final 'isSyncLoading' Z

.field private final 'needCheckExpired' Z

.field private final 'postProcessor' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final 'preProcessor' Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private final 'resetViewBeforeLoading' Z

.field private final 'writeLog' Z

.method private <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$0(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnLoading I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$1(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResForEmptyUri I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$2(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnFail I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$3(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnLoading Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$4(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageForEmptyUri Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$5(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/drawable/Drawable;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnFail Landroid/graphics/drawable/Drawable;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$6(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/resetViewBeforeLoading Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$7(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheInMemory Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$8(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheOnDisk Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$9(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$10(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/graphics/BitmapFactory$Options;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/decodingOptions Landroid/graphics/BitmapFactory$Options;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$11(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)I
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/delayBeforeLoading I
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$12(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/considerExifParams Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$13(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Ljava/lang/Object;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/extraForDownloader Ljava/lang/Object;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$14(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$15(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$16(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$17(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Landroid/os/Handler;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/handler Landroid/os/Handler;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$18(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$19(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/needCheckExpired Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$20(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/isShowThumb Z
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$21(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/discCache Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
aload 0
aload 1
invokestatic com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/access$22(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)Z
putfield com/nostra13/universalimageloader/core/DisplayImageOptions/writeLog Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
aload 1
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions/<init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$0(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnLoading I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResForEmptyUri I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/BitmapFactory$Options;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/decodingOptions Landroid/graphics/BitmapFactory$Options;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$11(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/delayBeforeLoading I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$12(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/considerExifParams Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$13(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/extraForDownloader Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$14(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$15(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$16(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$17(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$18(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$19(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/writeLog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnFail I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnLoading Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageForEmptyUri Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$5(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnFail Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/resetViewBeforeLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$7(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheInMemory Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheOnDisk Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$9(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 0
.limit stack 2
.end method

.method public getDecodingOptions()Landroid/graphics/BitmapFactory$Options;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/decodingOptions Landroid/graphics/BitmapFactory$Options;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDelayBeforeLoading()I
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/delayBeforeLoading I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/displayer Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExtraForDownloader()Ljava/lang/Object;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/extraForDownloader Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getHandler()Landroid/os/Handler;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResForEmptyUri I
ifeq L0
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResForEmptyUri I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
areturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageForEmptyUri Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnFail I
ifeq L0
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnFail I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
areturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnFail Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnLoading I
ifeq L0
aload 1
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnLoading I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
areturn
L0:
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnLoading Landroid/graphics/drawable/Drawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageScaleType Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isCacheInMemory()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheInMemory Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isCacheOnDisk()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/cacheOnDisk Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isConsiderExifParams()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/considerExifParams Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isNeedCheckExpired()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/needCheckExpired Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isResetViewBeforeLoading()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/resetViewBeforeLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method isSyncLoading()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/isSyncLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isWriteLog()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/writeLog Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldDelayBeforeLoading()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/delayBeforeLoading I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldPostProcess()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/postProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldPreProcess()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/preProcessor Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldShowImageForEmptyUri()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageForEmptyUri Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResForEmptyUri I
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldShowImageOnFail()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnFail Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnFail I
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldShowImageOnLoading()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageOnLoading Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/imageResOnLoading I
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public shouldShowThumbImage()Z
aload 0
getfield com/nostra13/universalimageloader/core/DisplayImageOptions/isShowThumb Z
ireturn
.limit locals 1
.limit stack 1
.end method
