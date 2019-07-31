.bytecode 50.0
.class public synchronized com/nd/album/data/ImageCacheOpt
.super java/lang/Object

.field private static 'ALBUM_DISC_CACHE_DIR' Ljava/lang/String;

.field private static 'DISC_CACHE_SIZE_64MB' I

.field private static 'mAlbumNoCacheOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mAlbumOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mAnimateFirstListener' Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.method static <clinit>()V
ldc "album"
putstatic com/nd/album/data/ImageCacheOpt/ALBUM_DISC_CACHE_DIR Ljava/lang/String;
ldc_w 67108864
putstatic com/nd/album/data/ImageCacheOpt/DISC_CACHE_SIZE_64MB I
aconst_null
putstatic com/nd/album/data/ImageCacheOpt/mAlbumOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/nd/album/data/ImageCacheOpt/mAlbumNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/nd/album/data/ImageCacheOpt/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAlbumCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/nd/album/data/ImageCacheOpt/mAlbumOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/album/R$drawable/card_album_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/album/R$drawable/card_album_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/album/R$drawable/card_album_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/nd/album/data/ImageCacheOpt/ALBUM_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
getstatic com/nd/album/data/ImageCacheOpt/DISC_CACHE_SIZE_64MB I
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/album/data/ImageCacheOpt/mAlbumOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/nd/album/data/ImageCacheOpt/mAlbumOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getAlbumNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/nd/album/data/ImageCacheOpt/mAlbumNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showThumbImage(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/nd/album/data/ImageCacheOpt/ALBUM_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
getstatic com/nd/album/data/ImageCacheOpt/DISC_CACHE_SIZE_64MB I
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/album/data/ImageCacheOpt/mAlbumNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/nd/album/data/ImageCacheOpt/mAlbumNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
getstatic com/nd/album/data/ImageCacheOpt/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
ifnonnull L0
new com/product/android/ui/anim/AnimateFirstDisplayListener
dup
invokespecial com/product/android/ui/anim/AnimateFirstDisplayListener/<init>()V
putstatic com/nd/album/data/ImageCacheOpt/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
L0:
getstatic com/nd/album/data/ImageCacheOpt/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
areturn
.limit locals 0
.limit stack 2
.end method
