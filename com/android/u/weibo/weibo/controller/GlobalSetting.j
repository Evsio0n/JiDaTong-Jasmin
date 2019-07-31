.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/controller/GlobalSetting
.super java/lang/Object

.field public static final 'COMPRESS_QUALITY' I = 80


.field private static 'DISC_CACHE_SIZE_128MB' I = 0


.field public static final 'NO_WIFI_HEIGHT' I = 600


.field public static final 'NO_WIFI_WIDTH' I = 640


.field public static final 'RANK_WEIBO_ID' J = 1111222201L


.field private static 'WEIBO_DISC_CACHE_DIR' Ljava/lang/String;

.field public static final 'WIFI_HEIGHT' I = 1024


.field public static final 'WIFI_WIDTH' I = 1920


.field public static 'accessTokenSina' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.field public static 'defaultGroupName' Ljava/lang/String;

.field public static 'flowerNum' I

.field public static 'gIsNeedAlbum' Z

.field public static 'gIsNeedContactInfo' Z

.field public static 'gIsNeedLottery' Z

.field public static 'gIsNeedSecretLove' Z

.field private static 'mAnimateFirstListener' Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field public static 'mIsShow3D' Z

.field public static 'mMyTweetRefresh' Z

.field private static 'mWeiboCacheOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static 'mWeiboNoCacheOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
aconst_null
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ldc "weibo"
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/WEIBO_DISC_CACHE_DIR Ljava/lang/String;
ldc_w 134217728
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/DISC_CACHE_SIZE_128MB I
aconst_null
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
iconst_1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
iconst_1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedAlbum Z
iconst_1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedContactInfo Z
iconst_1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedSecretLove Z
iconst_1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mIsShow3D Z
iconst_0
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
iconst_0
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mMyTweetRefresh Z
ldc ""
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/defaultGroupName Ljava/lang/String;
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

.method public static deleteOauth2AccessToken(Landroid/content/Context;)V
aload 0
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/deleteSinaToken(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aconst_null
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
return
.limit locals 1
.limit stack 2
.end method

.method public static getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
ifnonnull L0
new com/product/android/ui/anim/AnimateFirstDisplayListener
dup
invokespecial com/product/android/ui/anim/AnimateFirstDisplayListener/<init>()V
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
L0:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mAnimateFirstListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
areturn
.limit locals 0
.limit stack 2
.end method

.method public static getMxTagId()I
sipush 777
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnonnull L0
aload 0
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getSinaBind()Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
L0:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
areturn
.limit locals 1
.limit stack 1
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
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lreturn
L0:
lconst_0
lreturn
.limit locals 0
.limit stack 2
.end method

.method public static getWeiboCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/android/u/weibo/R$drawable/image_bg I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/image_bg I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/image_bg I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/WEIBO_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/DISC_CACHE_SIZE_128MB I
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static getWeiboNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showThumbImage(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE_SAFE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/WEIBO_DISC_CACHE_DIR Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/DISC_CACHE_SIZE_128MB I
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L0:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mWeiboNoCacheOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
areturn
.limit locals 1
.limit stack 5
.end method

.method public static setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
aload 1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/accessTokenSina Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/setSinaBind(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
return
.limit locals 2
.limit stack 2
.end method
