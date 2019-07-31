.bytecode 50.0
.class public synchronized com/nd/android/u/news/NewsGlobalSetting
.super java/lang/Object

.field private static final 'DISC_CACHE_SIZE_128MB' I = 134217728


.field public static final 'LAST_GET_NEWS_TIME' Ljava/lang/String; = "last_get_news_time"

.field public static final 'NEWS_DEBUG' Z = 1


.field private static 'NEWS_DISC_CACHE_DIR' Ljava/lang/String;

.field private static 'mContext' Landroid/content/Context;

.field private static 'mNewsCacheOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mNewsNoCacheOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
putstatic com/nd/android/u/news/NewsGlobalSetting/mContext Landroid/content/Context;
ldc "news"
putstatic com/nd/android/u/news/NewsGlobalSetting/NEWS_DISC_CACHE_DIR Ljava/lang/String;
aconst_null
putstatic com/nd/android/u/news/NewsGlobalSetting/mNewsCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/nd/android/u/news/NewsGlobalSetting/mNewsNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
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

.method public static getNewsCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/nd/android/u/news/NewsGlobalSetting/mNewsCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/news/R$drawable/bg_news_default_pic I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/news/R$drawable/bg_news_default_pic I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/news/R$drawable/bg_news_default_pic I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/nd/android/u/news/NewsGlobalSetting/NEWS_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 134217728
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/android/u/news/NewsGlobalSetting/mNewsCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/nd/android/u/news/NewsGlobalSetting/mNewsCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getNewsNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/nd/android/u/news/NewsGlobalSetting/mNewsNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/news/R$drawable/bg_news_default_pic I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showThumbImage(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/nd/android/u/news/NewsGlobalSetting/NEWS_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 134217728
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/nd/android/u/news/NewsGlobalSetting/mNewsNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/nd/android/u/news/NewsGlobalSetting/mNewsNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getSid(Landroid/content/Context;)Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
areturn
L0:
ldc ""
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lreturn
.limit locals 0
.limit stack 2
.end method

.method public static getmContext()Landroid/content/Context;
getstatic com/nd/android/u/news/NewsGlobalSetting/mContext Landroid/content/Context;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static setmContext(Landroid/content/Context;)V
aload 0
putstatic com/nd/android/u/news/NewsGlobalSetting/mContext Landroid/content/Context;
return
.limit locals 1
.limit stack 1
.end method
