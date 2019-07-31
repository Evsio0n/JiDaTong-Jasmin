.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/OapApplication
.super android/app/Application
.implements com/nd/rj/common/incrementalupdates/ExitSoftwareInterface
.inner class inner com/nd/android/u/cloud/OapApplication$1
.inner class inner com/nd/android/u/cloud/OapApplication$2
.inner class inner com/nd/android/u/cloud/OapApplication$3
.inner class inner com/nd/android/u/cloud/OapApplication$4

.field private static 'mInstance' Lcom/nd/android/u/cloud/OapApplication;

.field private static 'mProfileUserShowImageCacheManager' Lcom/nd/android/u/image/ProfileUserShowImageCacheManager;

.field private final 'CHAT_DISC_CACHE_DIR' Ljava/lang/String;

.field private final 'DISC_CACHE_SIZE_64MB' I

.field private final 'PRACTISE_DISC_CACHE_DIR' Ljava/lang/String;

.field public 'mPractiseOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial android/app/Application/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/OapApplication/mPractiseOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
ldc "practise"
putfield com/nd/android/u/cloud/OapApplication/PRACTISE_DISC_CACHE_DIR Ljava/lang/String;
aload 0
ldc "chat"
putfield com/nd/android/u/cloud/OapApplication/CHAT_DISC_CACHE_DIR Ljava/lang/String;
aload 0
ldc_w 67108864
putfield com/nd/android/u/cloud/OapApplication/DISC_CACHE_SIZE_64MB I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/OapApplication;)V
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/initClineInfo()V
return
.limit locals 1
.limit stack 1
.end method

.method private checkInitLastUser()Z
invokestatic com/product/android/business/login/LoginFlag/getLoginFlag()Lcom/product/android/business/login/LoginFlag;
getstatic com/product/android/business/login/LoginFlag/DEFAULT Lcom/product/android/business/login/LoginFlag;
if_acmpeq L0
aload 0
invokestatic com/nd/rj/common/login/LoginInterfaceManager/getIUser(Landroid/content/Context;)Lcom/product/android/business/login/IGetUserInfo;
astore 1
aload 1
ifnull L0
aload 0
aload 1
iconst_0
invokestatic com/nd/android/u/cloud/helper/Utils/hasUnit(Landroid/content/Context;Lcom/product/android/business/login/IGetUserInfo;Z)Z
ifeq L1
aload 1
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_m1
if_icmpne L2
invokestatic com/product/android/business/login/LoginFlag/saveDEFAULTEnumType()V
L0:
iconst_0
ireturn
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 1
invokevirtual com/product/android/business/ApplicationVariable/setIUser(Lcom/product/android/business/login/IGetUserInfo;)V
iconst_1
ireturn
L1:
invokestatic com/product/android/business/login/LoginFlag/saveDEFAULTEnumType()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getmProfileUserShowImageCacheManager()Lcom/nd/android/u/image/ProfileUserShowImageCacheManager;
getstatic com/nd/android/u/cloud/OapApplication/mProfileUserShowImageCacheManager Lcom/nd/android/u/image/ProfileUserShowImageCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method private init()V
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/initChat()V
new com/nd/android/u/image/ProfileUserShowImageCacheManager
dup
invokespecial com/nd/android/u/image/ProfileUserShowImageCacheManager/<init>()V
putstatic com/nd/android/u/cloud/OapApplication/mProfileUserShowImageCacheManager Lcom/nd/android/u/image/ProfileUserShowImageCacheManager;
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/registerModel()V
invokestatic com/nd/android/u/contact/business/GroupCacheManager/getInstance()Lcom/nd/android/u/contact/business/GroupCacheManager;
pop
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
new com/nd/android/u/cloud/bean/BackpackDiffImpl
dup
invokespecial com/nd/android/u/cloud/bean/BackpackDiffImpl/<init>()V
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 11
ldc_w 112005
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
ldc_w 2130838608
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
ldc_w 2130838608
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
ldc_w 2130838608
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
getstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
ldc "practise"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 67108864
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/cloud/OapApplication/mPractiseOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/initImageLoader(Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/initForumSDK()V
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/checkInitLastUser()Z
istore 1
iload 1
ifeq L0
new java/lang/Thread
dup
new com/nd/android/u/cloud/OapApplication$2
dup
aload 0
invokespecial com/nd/android/u/cloud/OapApplication$2/<init>(Lcom/nd/android/u/cloud/OapApplication;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L0:
new com/nd/android/u/cloud/OapApplication$3
dup
aload 0
iload 1
invokespecial com/nd/android/u/cloud/OapApplication$3/<init>(Lcom/nd/android/u/cloud/OapApplication;Z)V
invokevirtual com/nd/android/u/cloud/OapApplication$3/start()V
return
.limit locals 3
.limit stack 6
.end method

.method private initChat()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
new com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI
dup
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_UI/<init>()V
putfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
new com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business
dup
invokespecial com/nd/android/u/commonInterfaceImpl/ChatCallOtherModelImpl_Business/<init>()V
putfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
aload 0
invokevirtual com/nd/android/u/ChatEntry/init(Landroid/content/Context;)V
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
new com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl
dup
invokespecial com/nd/android/u/commonInterfaceImpl/XYMessagePreProccessImpl/<init>()V
putfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/preProccess Lcom/nd/android/u/controller/outInterface/IMessagePreProccess;
new com/nd/android/u/cloud/plugin/publicnumber/PublicGroupImpl
dup
invokespecial com/nd/android/u/cloud/plugin/publicnumber/PublicGroupImpl/<init>()V
invokestatic com/nd/android/u/publicNumber/PublicNumberMain/setGroupInterface(Lcom/nd/android/u/publicNumber/controller/outInterface/IPublicGroup;)V
new com/nd/android/u/cloud/customapplication/CustomAppCreator
dup
invokespecial com/nd/android/u/cloud/customapplication/CustomAppCreator/<init>()V
pop
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
new com/nd/android/u/image/HeaderBitmapCallbackImpl
dup
invokespecial com/nd/android/u/image/HeaderBitmapCallbackImpl/<init>()V
putfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/headerBitmapInterface Lcom/nd/android/u/controller/outInterface/HeaderBitmapCallbackInterface;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
ldc_w 2130839613
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
ldc_w 2130838717
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
ldc_w 2130838717
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
iconst_1
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showThumbImage(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/NONE Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
getstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
ldc "chat"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 67108864
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
new com/nd/android/u/ui/chatInterfaceImpl/ChatCommonInterImpl
dup
invokespecial com/nd/android/u/ui/chatInterfaceImpl/ChatCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
invokestatic com/nd/android/u/publicNumber/PublicNumberMain/init()V
return
.limit locals 1
.limit stack 6
.end method

.method private initClineInfo()V
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L8
.catch java/lang/Exception from L9 to L10 using L8
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
getstatic com/product/android/business/config/Configuration/MYAPPID I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/rj/common/login/entity/ClientInfo/setAppid(Ljava/lang/String;)V
L0:
aload 0
invokevirtual com/nd/android/u/cloud/OapApplication/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual com/nd/android/u/cloud/OapApplication/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 2
L1:
aload 2
ifnull L11
aload 2
astore 1
L3:
aload 2
invokevirtual java/lang/String/length()I
ifgt L5
L4:
goto L11
L5:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
aload 1
invokevirtual com/nd/rj/common/login/entity/ClientInfo/setPlatformver(Ljava/lang/String;)V
L6:
aload 0
ldc "phone"
invokevirtual com/nd/android/u/cloud/OapApplication/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/telephony/TelephonyManager
invokevirtual android/telephony/TelephonyManager/getDeviceId()Ljava/lang/String;
astore 2
L7:
aload 2
astore 1
aload 2
ifnonnull L9
ldc "000000000000000"
astore 1
L9:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
aload 1
invokevirtual com/nd/rj/common/login/entity/ClientInfo/setDeviceId(Ljava/lang/String;)V
L10:
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
getstatic android/os/Build/MODEL Ljava/lang/String;
invokevirtual com/nd/rj/common/login/entity/ClientInfo/setDeviceType(Ljava/lang/String;)V
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
getfield com/nd/android/u/cloud/data/GlobalVariable/mClientInfo Lcom/nd/rj/common/login/entity/ClientInfo;
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual com/nd/rj/common/login/entity/ClientInfo/setSysVerion(Ljava/lang/String;)V
return
L2:
astore 1
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
goto L6
L8:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L10
L11:
ldc ""
astore 1
goto L5
.limit locals 3
.limit stack 3
.end method

.method private initForumSDK()V
invokestatic com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/getInstance()Lcom/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory;
getstatic com/nd/android/u/cloud/XYExtentConfig/FORUM_FILE_STORAGE_URL Ljava/lang/String;
ldc ""
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual com/nd/android/u/filestoragesystem/externalInterface/FileUtilFactory/initizlieConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
getstatic com/nd/android/u/cloud/XYExtentConfig/FORUM_SERVER_URL Ljava/lang/String;
new com/nd/android/u/cloud/OapApplication$4
dup
aload 0
invokespecial com/nd/android/u/cloud/OapApplication$4/<init>(Lcom/nd/android/u/cloud/OapApplication;)V
invokestatic com/nd/android/forumsdk/ForumFactory/init(Ljava/lang/String;Lcom/nd/android/forumsdk/business/com/httptool/IGetConfig;)V
return
.limit locals 1
.limit stack 4
.end method

.method public static initImageLoader(Landroid/content/Context;)V
new com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder
dup
aload 0
invokespecial com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/<init>(Landroid/content/Context;)V
iconst_3
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
new com/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator
dup
invokespecial com/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator/<init>()V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
new com/nostra13/universalimageloader/cache/memory/impl/SoftMemoryCache
dup
invokespecial com/nostra13/universalimageloader/cache/memory/impl/SoftMemoryCache/<init>()V
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
getstatic com/nostra13/universalimageloader/core/assist/QueueProcessingType/LIFO Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
invokevirtual com/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder/build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
astore 1
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
aload 0
invokestatic com/product/android/business/headImage/HeadImageLoader/init(Landroid/content/Context;)V
new com/nd/android/u/cloud/business/IGetShowUrlImpl
dup
invokespecial com/nd/android/u/cloud/business/IGetShowUrlImpl/<init>()V
invokestatic com/product/android/business/headImage/HeadImageLoader/setmIGetShowUrlImp(Lcom/product/android/business/headImage/appAdapter/IGetHeadUrl;)V
return
.limit locals 2
.limit stack 3
.end method

.method private initRealPackageName()V
getstatic com/nd/address/utils/AddressUtil/INSTANCE Lcom/nd/address/utils/AddressUtil;
ldc "com.nd.android.u.oap.jmedu"
invokevirtual com/nd/address/utils/AddressUtil/setPackageName(Ljava/lang/String;)V
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
ldc "com.nd.android.u.oap.jmedu"
invokevirtual com/common/android/utils/AllComPkgNameUtils/setPackageName(Ljava/lang/String;)V
getstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/INSTANCE Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
ldc "com.nd.android.u.oap.jmedu"
invokevirtual com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/setPackageName(Ljava/lang/String;)V
getstatic com/handmark/pulltorefresh/library/PullPackageName/INSTANCE Lcom/handmark/pulltorefresh/library/PullPackageName;
ldc "com.nd.android.u.oap.jmedu"
invokevirtual com/handmark/pulltorefresh/library/PullPackageName/setPackageName(Ljava/lang/String;)V
getstatic com/huewu/pla/lib/MultiColumnListViewPackageName/INSTANCE Lcom/huewu/pla/lib/MultiColumnListViewPackageName;
ldc "com.nd.android.u.oap.jmedu"
invokevirtual com/huewu/pla/lib/MultiColumnListViewPackageName/setPackageName(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method private registerModel()V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl
dup
getstatic com/nd/android/u/cloud/XYExtentConfig/WEIBO_NEED_SECRETLOVE Z
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/<init>(Z)V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_3
new com/android/u/weibo/weiboInterfaceImpl/WeiboCommonInterImpl
dup
getstatic com/nd/android/u/cloud/XYExtentConfig/TASK_NEED_LOTTERT Z
getstatic com/nd/android/u/cloud/XYExtentConfig/WEIBO_NEED_ALBUM Z
getstatic com/nd/android/u/cloud/XYExtentConfig/WEIBO_NEED_CONTACTINFO Z
iconst_0
getstatic com/nd/android/u/cloud/XYExtentConfig/WEIBO_NEED_SECRETLOVE Z
invokespecial com/android/u/weibo/weiboInterfaceImpl/WeiboCommonInterImpl/<init>(ZZZZZ)V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_4
new com/nd/rj/common/login/commonInterfaceImpl/NDCommonInterImpl
dup
invokespecial com/nd/rj/common/login/commonInterfaceImpl/NDCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 7
new com/nd/android/u/AlbumCommonInterImpl
dup
invokespecial com/nd/android/u/AlbumCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 8
new com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl
dup
getstatic com/nd/android/u/cloud/XYExtentConfig/TASK_NEED_LOTTERT Z
getstatic com/nd/android/u/cloud/XYExtentConfig/TASK_CUSTOMER_SERVICE_UID J
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/<init>(ZJ)V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
new com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl
dup
invokespecial com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 11
new com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCommonInterImpl
dup
invokespecial com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCommonInterImpl/<init>()V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 15
new com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl
dup
aload 0
invokespecial com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl/<init>(Landroid/content/Context;)V
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/registStateObserver(ILcom/product/android/commonInterface/ICommonInterObserver;)V
return
.limit locals 1
.limit stack 9
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/Application/attachBaseContext(Landroid/content/Context;)V
aload 0
invokestatic android/support/multidex/MultiDex/install(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public exitSoftware()V
aload 0
invokestatic com/nd/android/u/cloud/helper/PubFunction/sysExit(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 1
.end method

.method public initCrashCollection()V
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_CRASH_APPID I
invokestatic com/nd/crashcollection/lib/UploadCrashInfoService/setAppCode(I)V
invokestatic com/nd/crashcollection/lib/CrashHandler/getInstance()Lcom/nd/crashcollection/lib/CrashHandler;
aload 0
invokevirtual com/nd/android/u/cloud/OapApplication/getApplicationContext()Landroid/content/Context;
invokevirtual com/nd/crashcollection/lib/CrashHandler/init(Landroid/content/Context;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onCreate()V
aload 0
invokespecial android/app/Application/onCreate()V
aload 0
putstatic com/nd/android/u/cloud/OapApplication/mInstance Lcom/nd/android/u/cloud/OapApplication;
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/initRealPackageName()V
aload 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/allowLaunchApp(Landroid/content/Context;)Z
ifne L0
return
L0:
aload 0
invokestatic com/nd/android/u/cloud/helper/InitDiffProductUtils/initConfigContent(Landroid/content/Context;)V
new com/nd/android/u/cloud/XYConfigOuter
dup
invokespecial com/nd/android/u/cloud/XYConfigOuter/<init>()V
pop
getstatic com/nd/rj/common/administrativeregions/lib/SQLiteHandle/INSTANCE Lcom/nd/rj/common/administrativeregions/lib/SQLiteHandle;
aload 0
invokevirtual com/nd/rj/common/administrativeregions/lib/SQLiteHandle/openDatabase(Landroid/content/Context;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 0
putfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
aload 0
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
aload 0
invokestatic com/nd/rj/common/incrementalupdates/UpgradeManager/setExitSoftInterface(Lcom/nd/rj/common/incrementalupdates/ExitSoftwareInterface;)V
aload 0
invokespecial com/nd/android/u/cloud/OapApplication/init()V
invokestatic java/util/concurrent/Executors/newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
new com/nd/android/u/cloud/OapApplication$1
dup
aload 0
invokespecial com/nd/android/u/cloud/OapApplication$1/<init>(Lcom/nd/android/u/cloud/OapApplication;)V
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 4
pop
return
.limit locals 1
.limit stack 5
.end method

.method public onTerminate()V
lconst_0
invokestatic com/common/android/utils/concurrent/NdExecutors/awaitQuit(J)Z
pop
aload 0
invokespecial android/app/Application/onTerminate()V
return
.limit locals 1
.limit stack 2
.end method
