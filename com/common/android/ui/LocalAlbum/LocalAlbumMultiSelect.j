.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.super com/product/android/ui/activity/HeaderActivity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/view/View$OnClickListener
.implements java/util/Observer
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1$1
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$3
.inner class inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4
.inner class public AlbumListAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class public final ViewHolder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class HeadGridViewAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class Holder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter$Holder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class SelectMoreGridViewAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class Holder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter$Holder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect

.field private static final 'FOOT_COLUMN_HIGHT' I = 40


.field private static final 'FOOT_COLUMN_WIDTH' I = 40


.field private static final 'FOOT_IMAGEVIEW_ID' I = 0


.field private static final 'FOOT_PHOTO_MARING' I = 4


.field public static final 'KEY_CAMERA_UNABLE_HINT_ID' Ljava/lang/String; = "cameraUnableHintId"

.field public static final 'KEY_IMAGE_PATH' Ljava/lang/String; = "imagePaths"

.field public static final 'KEY_IS_CAMERA_ENABLE' Ljava/lang/String; = "isCameraEnable"

.field public static final 'KEY_IS_LIMIT_IMAGE_SIZE' Ljava/lang/String; = "isLimitImageSize"

.field private static final 'KEY_LIST_SELECT' Ljava/lang/String; = "list_select"

.field public static final 'KEY_MAX_IMAGE_SIZE' Ljava/lang/String; = "maxImageSize"

.field public static final 'KEY_MAX_SELECT_COUNT' Ljava/lang/String; = "maxSelectCount"

.field public static final 'KE_LIMIT_IMAGE_SIZE_HINT_ID' Ljava/lang/String; = "limitImageSizeHintId"

.field private static final 'MAX_NORMAL_IMAGE_SIZE' I = 5242880


.field private static final 'MAX_NORMAL_SELECT_COUNT' I = 9


.field private static final 'MAX_RECENT_COUNT' I = 8


.field private static final 'TAG' Ljava/lang/String; = "LocalAlbumMultiSelect"

.field 'layoutSelectedPreview' Landroid/widget/LinearLayout;

.field 'listFootImageView' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Landroid/widget/ImageView;>;>;"

.field public 'mAvoidOOMOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mCameraFile' Ljava/io/File;

.field private 'mCameraUnableHintId' I

.field 'mFootScrollView' Landroid/widget/HorizontalScrollView;

.field private 'mGridViewRecent' Landroid/widget/GridView;

.field private 'mGridViewSelectMore' Landroid/widget/GridView;

.field private 'mHeadGridViewAdapter' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;

.field private 'mIntentService' Landroid/content/Intent;

.field private 'mIsCameraEnable' Z

.field private 'mIsLimitImageSize' Z

.field private 'mLayoutLocalAlubm' Landroid/widget/LinearLayout;

.field private 'mLayoutSelectMore' Landroid/widget/LinearLayout;

.field protected 'mLeftBtn' Landroid/widget/Button;

.field private 'mLimitImageSizeHintId' I

.field private 'mListAlbum' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"

.field private 'mListRecent' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"

.field private 'mListSelectMore' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"

.field private 'mMapRecent' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Landroid/view/View;>;"

.field private 'mMapSelectMore' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Integer;Landroid/view/View;>;"

.field private 'mMaxImageSize' I

.field private 'mMaxSelectCount' I

.field protected 'mScreenWidth' I

.field private 'mSelectMoreGridViewAdapter' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;

.field private 'mUpdateUI' Ljava/util/concurrent/ExecutorService;

.field private 'm_alAdapter' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;

.field private 'm_btnFinish' Landroid/widget/Button;

.field private 'm_lvLocalAlbum' Landroid/widget/ListView;

.field private 'mlistSelectedFile' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/LocalAlbum/FileInfo;>;"

.field private 'mllHead' Landroid/widget/LinearLayout;

.field private 'mmapAlbumList' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;"

.field private 'photoUri' Landroid/net/Uri;

.field private 'scrollListener' Landroid/widget/AbsListView$OnScrollListener;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
aconst_null
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/photoUri Landroid/net/Uri;
aload 0
aconst_null
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
aload 0
invokestatic java/util/concurrent/Executors/newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mUpdateUI Ljava/util/concurrent/ExecutorService;
aload 0
aconst_null
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIntentService Landroid/content/Intent;
aload 0
iconst_0
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsLimitImageSize Z
aload 0
ldc_w 5242880
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxImageSize I
aload 0
getstatic com/nd/android/u/allcommon/R$string/limit_image_size I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLimitImageSizeHintId I
aload 0
iconst_1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsCameraEnable Z
aload 0
getstatic com/nd/android/u/allcommon/R$string/camera_unable_hint I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraUnableHintId I
aload 0
bipush 9
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$3
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$3/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/scrollListener Landroid/widget/AbsListView$OnScrollListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getRecentList(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/io/File;Z)Z
aload 0
aload 1
iload 2
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/isInValid(Ljava/io/File;Z)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMapRecent Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/addFootPhoto(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/removeSeletedImg(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/delFootPhoto(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Landroid/widget/GridView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewSelectMore Landroid/widget/GridView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/Map;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMapSelectMore Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getSelectMoreList(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2000(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/startServiceToSearch()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2100(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/HashMap;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mmapAlbumList Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListAlbum Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Ljava/util/ArrayList;)Ljava/util/ArrayList;
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListAlbum Ljava/util/ArrayList;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_alAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/updateFootPhoto()V
return
.limit locals 1
.limit stack 1
.end method

.method private addFootPhoto(Ljava/lang/String;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" "UseValueOf" 
.end annotation
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setFinishBtnText()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
new android/widget/ImageView
dup
aload 0
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 2
aload 2
iconst_0
invokevirtual android/widget/ImageView/setId(I)V
new android/widget/LinearLayout$LayoutParams
dup
aload 0
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
aload 0
ldc_w 40.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 3
aload 2
aload 3
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 2
aload 1
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 3
iconst_4
iconst_0
iconst_4
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 2
iconst_1
invokevirtual android/widget/ImageView/setAdjustViewBounds(Z)V
aload 2
getstatic android/widget/ImageView$ScaleType/CENTER_CROP Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 2
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/layoutSelectedPreview Landroid/widget/LinearLayout;
aload 2
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$2/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 3
aload 1
aload 2
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method private clickRecent(I)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
iload 1
ifne L7
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsCameraEnable Z
ifne L3
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraUnableHintId I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L3:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpne L5
aload 0
getstatic com/nd/android/u/allcommon/R$string/tweet_upload_images_limit I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L4:
return
L2:
astore 2
ldc "LocalAlbumMultiSelect"
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L5:
aload 0
new java/io/File
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getSotrePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/photoUri Landroid/net/Uri;
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "output"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/photoUri Landroid/net/Uri;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.extra.videoQuality"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 2
iconst_0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/startActivityForResult(Landroid/content/Intent;I)V
L6:
return
L7:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
iload 1
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/setSelect(I)V
return
.limit locals 3
.limit stack 4
.end method

.method private clickToSelectMore(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListAlbum Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
iload 1
iflt L0
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
if_icmple L1
L0:
return
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListAlbum Ljava/util/ArrayList;
iload 1
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 3
aload 3
ifnull L0
aload 0
aload 3
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getDirName()Ljava/lang/String;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setActivityTitle(Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLeftBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutLocalAlubm Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 3
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesList()Ljava/util/ArrayList;
astore 3
aload 3
ifnull L2
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L2:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
iload 1
iconst_1
isub
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/setCurrentAlbumPosi(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/initSelectState()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
iconst_1
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/setDisplay(Z)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/notifyDataSetChanged()V
return
.limit locals 5
.limit stack 3
.end method

.method private delFootPhoto(Ljava/lang/String;)V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setFinishBtnText()V
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
aload 1
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/layoutSelectedPreview Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
aload 1
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
L1:
return
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 3
.limit stack 3
.end method

.method private disselectFoot(Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/access$800(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;)[Z
iload 2
baload
ifeq L3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
iload 2
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/setSelect(I)V
return
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
bipush 8
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
if_icmpne L2
iconst_1
istore 2
L4:
iload 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L5
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/access$900(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;)[Z
iload 2
baload
ifeq L5
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
iload 2
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/setSelect(I)V
return
L5:
iload 2
iconst_1
iadd
istore 2
goto L4
L2:
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/removeSeletedImg(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/delFootPhoto(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method private doFinish()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
ldc "SELECTED_IMG"
aload 1
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 2
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/finish()V
return
.limit locals 3
.limit stack 3
.end method

.method private getRecentList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;)V"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 2
aload 2
ifnull L2
aload 2
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesList()Ljava/util/ArrayList;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
bipush 8
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpne L4
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/initSelectState()V
return
L3:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/initSelectState()V
return
.limit locals 4
.limit stack 3
.end method

.method private getSelectMoreList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/common/android/ui/LocalAlbum/SortedMediaFiles;>;)V"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 1
invokeinterface java/util/List/size()I 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListAlbum Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpne L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
ifnull L0
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/getCurrentAlbumPosi()I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesList()Ljava/util/ArrayList;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/initSelectState()V
goto L2
.limit locals 3
.limit stack 2
.end method

.method private getSotrePath()Ljava/lang/String;
new android/text/format/Time
dup
invokespecial android/text/format/Time/<init>()V
astore 1
aload 1
invokevirtual android/text/format/Time/setToNow()V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/DCIM/Camera/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/io/File
dup
aload 2
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 3
aload 3
invokevirtual java/io/File/isDirectory()Z
ifne L0
aload 3
invokevirtual java/io/File/mkdirs()Z
pop
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "IMG_"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
ldc "%Y%m%d_%H%M%S"
invokevirtual android/text/format/Time/format(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".jpg"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method private isInValid(Ljava/io/File;Z)Z
iload 2
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpgt L2
aload 0
getstatic com/nd/android/u/allcommon/R$string/tweet_upload_images_limit I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_1
ireturn
L2:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsLimitImageSize Z
ifeq L1
aload 1
invokevirtual java/io/File/length()J
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxImageSize I
i2l
lcmp
ifle L1
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLimitImageSizeHintId I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
iconst_0
istore 4
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
bipush 30
invokevirtual android/app/ActivityManager/getRunningServices(I)Ljava/util/List;
astore 0
aload 0
invokeinterface java/util/List/size()I 0
ifgt L0
iconst_0
ireturn
L0:
iconst_0
istore 2
L1:
iload 4
istore 3
iload 2
aload 0
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 0
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/app/ActivityManager$RunningServiceInfo
getfield android/app/ActivityManager$RunningServiceInfo/service Landroid/content/ComponentName;
invokevirtual android/content/ComponentName/getClassName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
iconst_1
if_icmpne L3
iconst_1
istore 3
L2:
iload 3
ireturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 5
.limit stack 2
.end method

.method private removeSeletedImg(Ljava/lang/String;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/LocalAlbum/FileInfo
astore 3
aload 3
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 1
invokevirtual java/lang/String/compareToIgnoreCase(Ljava/lang/String;)I
ifne L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L1:
return
.limit locals 4
.limit stack 2
.end method

.method private startServiceToSearch()V
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
ldc com/common/android/ui/LocalAlbum/ImageSearchService
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
ifeq L1
return
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIntentService Landroid/content/Intent;
ifnonnull L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/common/android/ui/LocalAlbum/ImageSearchService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIntentService Landroid/content/Intent;
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIntentService Landroid/content/Intent;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
L2:
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIntentService Landroid/content/Intent;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
L0:
aload 0
getstatic com/nd/android/u/allcommon/R$string/no_sd_card I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 1
.limit stack 5
.end method

.method private updateFootPhoto()V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
invokevirtual java/util/HashMap/keySet()Ljava/util/Set;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
ldc "\\["
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
iconst_1
aaload
ldc "\\]"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 3
iload 1
istore 2
new java/io/File
dup
aload 3
iconst_0
aaload
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/layoutSelectedPreview Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/util/HashMap
aload 3
iconst_0
aaload
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/widget/LinearLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
aload 3
iconst_0
aaload
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/removeSeletedImg(Ljava/lang/String;)V
iload 1
iconst_1
isub
istore 2
L2:
iload 2
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method private updateUI()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mUpdateUI Ljava/util/concurrent/ExecutorService;
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$1/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
invokeinterface java/util/concurrent/ExecutorService/submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future; 1
pop
return
.limit locals 1
.limit stack 4
.end method

.method protected initComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "UseSparseArrays" 
.end annotation
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mScreenWidth I
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/header_btn_left I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLeftBtn Landroid/widget/Button;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMapRecent Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMapSelectMore Ljava/util/Map;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mmapAlbumList Ljava/util/HashMap;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_local_album I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutLocalAlubm Landroid/widget/LinearLayout;
aload 0
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListRecent Ljava/util/ArrayList;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$layout/local_album_recent_grid I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mllHead Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mllHead Landroid/widget/LinearLayout;
getstatic com/nd/android/u/allcommon/R$id/grid_recent I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewRecent Landroid/widget/GridView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewRecent Landroid/widget/GridView;
invokevirtual android/widget/GridView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/LinearLayout$LayoutParams
astore 1
aload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mScreenWidth I
iconst_2
idiv
iconst_5
iadd
putfield android/widget/LinearLayout$LayoutParams/height I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewRecent Landroid/widget/GridView;
aload 1
invokevirtual android/widget/GridView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/lv_local_album I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_select_more I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/grid_select_more I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewSelectMore Landroid/widget/GridView;
aload 0
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/h_scroll_view I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/HorizontalScrollView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mFootScrollView Landroid/widget/HorizontalScrollView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/layout_selected_preview I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/layoutSelectedPreview Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/btn_finish I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_btnFinish Landroid/widget/Button;
return
.limit locals 2
.limit stack 4
.end method

.method protected initComponentValue()V
aload 0
getstatic com/nd/android/u/allcommon/R$string/local_image_lib I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setActivityTitle(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewRecent Landroid/widget/GridView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mllHead Landroid/widget/LinearLayout;
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;)V
aload 0
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter
dup
aload 0
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Landroid/content/Context;)V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_alAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_alAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/scrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewSelectMore Landroid/widget/GridView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewSelectMore Landroid/widget/GridView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/scrollListener Landroid/widget/AbsListView$OnScrollListener;
invokevirtual android/widget/GridView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/FileInfo
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/addFootPhoto(Ljava/lang/String;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLeftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_btnFinish Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_lvLocalAlbum Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewRecent Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mGridViewSelectMore Landroid/widget/GridView;
aload 0
invokevirtual android/widget/GridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
.catch java/lang/Exception from L0 to L1 using L2
iload 1
ifne L3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/photoUri Landroid/net/Uri;
ifnonnull L0
L3:
return
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L3
new android/content/Intent
dup
ldc "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/sendBroadcast(Landroid/content/Intent;)V
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 3
aload 3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraFile Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/doFinish()V
L1:
return
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 4
.limit stack 3
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/allcommon/R$id/header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/switchView()Z
pop
L1:
return
L0:
iload 2
getstatic com/nd/android/u/allcommon/R$id/btn_finish I
if_icmpne L2
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/doFinish()V
return
L2:
iload 2
ifne L1
aload 0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/String
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/disselectFoot(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/requestWindowFeature(I)Z
pop
aload 0
getstatic com/nd/android/u/allcommon/R$layout/local_album_multi_select I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setContentView(I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/listFootImageView Ljava/util/ArrayList;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
aload 1
ifnull L0
aload 0
aload 1
ldc "list_select"
invokevirtual android/os/Bundle/getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
aload 0
aload 1
ldc "isLimitImageSize"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsLimitImageSize Z
aload 0
aload 1
ldc "isCameraEnable"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsCameraEnable Z
aload 0
aload 1
ldc "maxSelectCount"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
aload 0
aload 1
ldc "maxImageSize"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxImageSize I
aload 0
aload 1
ldc "limitImageSizeHintId"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLimitImageSizeHintId I
aload 0
aload 1
ldc "cameraUnableHintId"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraUnableHintId I
L1:
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/initComponent()V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/initComponentValue()V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/initEvent()V
return
L0:
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getIntent()Landroid/content/Intent;
astore 2
aconst_null
astore 1
aload 2
ifnull L2
aload 2
ldc "imagePaths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 1
aload 0
aload 2
ldc "isLimitImageSize"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsLimitImageSize Z
aload 0
aload 2
ldc "isCameraEnable"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsCameraEnable Z
aload 0
aload 2
ldc "maxSelectCount"
bipush 9
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
aload 0
aload 2
ldc "maxImageSize"
ldc_w 5242880
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxImageSize I
aload 0
aload 2
ldc "limitImageSizeHintId"
getstatic com/nd/android/u/allcommon/R$string/limit_image_size I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLimitImageSizeHintId I
aload 0
aload 2
ldc "cameraUnableHintId"
getstatic com/nd/android/u/allcommon/R$string/camera_unable_hint I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraUnableHintId I
L2:
aload 1
ifnull L1
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L1
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 2
new com/common/android/ui/LocalAlbum/FileInfo
dup
invokespecial com/common/android/ui/LocalAlbum/FileInfo/<init>()V
astore 3
aload 3
aload 2
putfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
.limit locals 4
.limit stack 4
.end method

.method public onDestroy()V
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/clearLocalMedia()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getId()I
istore 6
iload 6
getstatic com/nd/android/u/allcommon/R$id/grid_recent I
if_icmpne L0
aload 0
iload 3
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/clickRecent(I)V
L1:
return
L0:
iload 6
getstatic com/nd/android/u/allcommon/R$id/lv_local_album I
if_icmpne L2
aload 0
iload 3
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/clickToSelectMore(I)V
return
L2:
iload 6
getstatic com/nd/android/u/allcommon/R$id/grid_select_more I
if_icmpne L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mSelectMoreGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter;
iload 3
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$SelectMoreGridViewAdapter/setSelect(I)V
return
.limit locals 7
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iconst_1
istore 3
iload 1
tableswitch 4
L0
default : L1
L1:
iload 3
ifeq L2
aload 0
iload 1
aload 2
invokespecial com/product/android/ui/activity/HeaderActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/switchView()Z
istore 3
goto L1
L2:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected onPause()V
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/delObserver(Ljava/util/Observer;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onPause()V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
invokestatic com/common/android/ui/LocalAlbum/LocalImageController/getInstance()Lcom/common/android/ui/LocalAlbum/LocalImageController;
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalImageController/addObserver(Ljava/util/Observer;)V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "list_select"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "isLimitImageSize"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsLimitImageSize Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "isCameraEnable"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mIsCameraEnable Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "maxSelectCount"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "maxImageSize"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxImageSize I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "limitImageSizeHintId"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLimitImageSizeHintId I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "cameraUnableHintId"
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mCameraUnableHintId I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onStart()V
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4
dup
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$string/loading I
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$4/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/common/android/utils/task/progressTask/ProgressTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onStart()V
return
.limit locals 1
.limit stack 5
.end method

.method public setFinishBtnText()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_btnFinish Landroid/widget/Button;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getstatic com/nd/android/u/allcommon/R$string/confirm_selection I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mMaxSelectCount I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_btnFinish Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/bt_header_rights_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
L0:
return
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_btnFinish Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/btn_confirm_press I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public switchView()Z
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mListSelectMore Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
ifne L0
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutLocalAlubm Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/initSelectState()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mHeadGridViewAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$HeadGridViewAdapter/notifyDataSetChanged()V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/m_alAdapter Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;
iconst_1
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/setDisplay(Z)V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$string/local_image_lib I
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getString(I)Ljava/lang/String;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/setActivityTitle(Ljava/lang/String;)V
L1:
iconst_0
ireturn
L0:
bipush 8
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mLayoutSelectMore Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getVisibility()I
if_icmpne L1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mlistSelectedFile Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/finish()V
iconst_1
ireturn
.limit locals 1
.limit stack 3
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/updateUI()V
return
.limit locals 3
.limit stack 1
.end method
