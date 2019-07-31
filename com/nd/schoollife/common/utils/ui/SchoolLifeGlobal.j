.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/SchoolLifeGlobal
.super java/lang/Object

.field public static final 'IMG_CACHE_FOLDER_NAME' Ljava/lang/String; = "schoollife"

.field public static 'imgLoaderOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'instance' Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;

.field public static final 'isDebug' Z = 0


.field public static final 'isMaster' Z = 1


.field private 'curActivity' Landroid/app/Activity;

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/instance Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
ifnonnull L0
new com/nd/schoollife/common/utils/ui/SchoolLifeGlobal
dup
invokespecial com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/<init>()V
putstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/instance Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
L0:
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/instance Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
areturn
.limit locals 0
.limit stack 2
.end method

.method private initImgloaderCfg(Landroid/content/Context;)V
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/schoollife/R$drawable/ic_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/schoollife/R$drawable/ic_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/schoollife/R$drawable/ic_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache
dup
aload 1
ldc "schoollife"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
return
.limit locals 2
.limit stack 5
.end method

.method public getCurActivity()Landroid/app/Activity;
aload 0
getfield com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/curActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/initImgloaderCfg(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public isActivityRunning(Ljava/lang/String;)Z
iconst_0
istore 3
iload 3
istore 2
aload 0
getfield com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/curActivity Landroid/app/Activity;
ifnull L0
iload 3
istore 2
aload 0
getfield com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/curActivity Landroid/app/Activity;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public setCurActivity(Landroid/app/Activity;)V
aload 0
aload 1
putfield com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/curActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method
