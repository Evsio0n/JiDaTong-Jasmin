.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
.super com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$1
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$3
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$4
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$6
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7
.inner class private SendTask inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
.inner class private TextLengthWatcher inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
.inner class UploadImageAdapter inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity

.field private static final 'ALBUM_PICKED_WITH_DATA' I = 101


.field private static final 'ALBUM_SHOW' I = 105


.field private static final 'AT_FRIEND_WITH_NAME' I = 103


.field private static final 'BIND_WEIBO' I = 104


.field private static final 'CAMERA_PICKED_WITH_DATA' I = 100


.field public static final 'IMGS_LIST' Ljava/lang/String; = "imgs_list"

.field private static final 'LOCATION_PICKED_WITH_DATA' I = 102


.field private static final 'MAX_POST_SIZE_OF_RETWEET' I = 255


.field private static final 'MAX_SIZE_OF_RETWEET' I = 140


.field private static final 'MAX_SIZE_OF_TWEET' I = 2000


.field private static final 'PHOTO_FILE_PATH' Ljava/lang/String; = "tempPhotoFilePath"

.field private static final 'TO_CONFIRM_PIC' I = 106


.field public final 'MAX_360PIC_NUM' I

.field public final 'MAX_NORMALPIC_NUM' I

.field private 'composeMore' Landroid/widget/CheckBox;

.field private 'isOnlySina' Z

.field private 'isSend360Pic' Z

.field private 'mAdapter' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;

.field public 'mAvoidOOMOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mContent' Ljava/lang/String;

.field private 'mEdtContent' Lcom/common/android/ui/widget/SpenEditText;

.field private 'mGridView' Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;

.field private 'mMaxSelectCount' I

.field private 'mRetweetId' J

.field private 'mScrollView' Landroid/widget/ScrollView;

.field private 'mSmileyView' Lcom/common/android/utils/smiley/SmileyView;

.field private 'mUploadImgPaths' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mWbAtView' Lcom/product/android/utils/wbAtUtils/WbAtView;

.field private 'mWords' Landroid/widget/TextView;

.field private 'max_content_length' I

.field private 'sendTask' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask;

.field private 'tempPhotoFile' Ljava/io/File;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/MAX_360PIC_NUM I
aload 0
bipush 9
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/MAX_NORMALPIC_NUM I
aload 0
bipush 9
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mMaxSelectCount I
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/android/u/weibo/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/local_image_default I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nostra13/universalimageloader/core/assist/ImageScaleType/EXACTLY Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/resetViewBeforeLoading()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/process/RotateBitmapProcessor
dup
invokespecial com/nostra13/universalimageloader/core/process/RotateBitmapProcessor/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/postProcessor(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWords Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mRetweetId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/CheckBox;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/composeMore Landroid/widget/CheckBox;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setTextAfterReplace(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1600(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startPickFromCamera()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mMaxSelectCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Z)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startPickFromAlbum(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Ljava/util/ArrayList;I)V
aload 0
aload 1
iload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startTweetFlowImageActivity(Ljava/util/ArrayList;I)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)Landroid/widget/ScrollView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mScrollView Landroid/widget/ScrollView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/max_content_length I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private afterCameraPick()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 1
.limit stack 3
.end method

.method private atFriend()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/ContactListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
bipush 103
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method

.method private getCameraTmpFile()Ljava/io/File;
new java/io/File
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getSotrePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
areturn
.limit locals 1
.limit stack 3
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

.method private initComponent()V
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/initHeadComponent(I)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/android/u/weibo/R$drawable/xy_btn_ensure_bg I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setRightButtonBackground(I)V
L1:
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setRightButtonVisibility(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/content I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/SpenEditText
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/scroll_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ScrollView
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mScrollView Landroid/widget/ScrollView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
invokevirtual com/common/android/ui/widget/SpenEditText/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual com/common/android/ui/widget/SpenEditText/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/word_length I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWords Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/composeMore I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/composeMore Landroid/widget/CheckBox;
aload 0
getstatic com/android/u/weibo/R$id/at I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/smiley I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/commentSmileyView I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/utils/smiley/SmileyView
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/setParam(Landroid/widget/EditText;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_4
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_3
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_2
invokevirtual com/common/android/utils/smiley/SmileyView/hideCatagory(I)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_1
invokevirtual com/common/android/utils/smiley/SmileyView/showSelection(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mScrollView Landroid/widget/ScrollView;
new com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokespecial com/android/u/weibo/weibo/utils/WeiboUtil$ShowInputTouchListener/<init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
invokevirtual android/widget/ScrollView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/img_grid_view I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/weibo/ui/widget/WrapContentGridView
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$2/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
getstatic com/android/u/weibo/R$string/send I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setRightButtonText(I)V
goto L1
.limit locals 1
.limit stack 6
.end method

.method private initValue()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
ifnull L0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/max_content_length I
ldc_w -16777216
ldc_w -65536
getstatic com/android/u/weibo/R$string/words_limit I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWords Landroid/widget/TextView;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/judgeLengthIsOutOfRang(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/TextView;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
bipush 32
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/resolveSmiley(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/requestFocus()Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mRetweetId J
lconst_0
lcmp
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
invokeinterface android/text/Editable/length()I 0
invokevirtual com/common/android/ui/widget/SpenEditText/setSelection(I)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
ifnonnull L3
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter
dup
aload 0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mScrollView Landroid/widget/ScrollView;
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$3
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$3/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual android/widget/ScrollView/post(Ljava/lang/Runnable;)Z
pop
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
iconst_0
invokevirtual com/common/android/ui/widget/SpenEditText/setSelection(I)V
goto L0
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/notifyDataSetChanged()V
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
return
.limit locals 1
.limit stack 7
.end method

.method private isSinaBinded()Z
aload 0
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getOauth2AccessToken(Landroid/content/Context;)Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private photoPick(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
if_icmpeq L0
aload 0
ldc "\u5168\u666f\u56fe\u548c\u666e\u901a\u56fe\u53ea\u80fd\u9009\u4e00\u79cd"
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
iload 1
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mMaxSelectCount I
if_icmplt L2
L1:
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startPickFromAlbum(Z)V
return
L2:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/take_photo I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/get_photo_from_album I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 3
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 4
aload 4
getstatic com/android/u/weibo/R$string/pic I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
astore 5
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$4
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$4/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
astore 6
aload 5
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 3
aastore
aload 6
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 4
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 7
.limit stack 5
.end method

.method private setIs360Pic(Z)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
iload 1
ifeq L0
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mMaxSelectCount I
return
L0:
aload 0
bipush 9
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mMaxSelectCount I
return
.limit locals 2
.limit stack 2
.end method

.method private setTextAfterReplace(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
aload 1
invokevirtual com/common/android/ui/widget/SpenEditText/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getEditableText()Landroid/text/Editable;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getTextSize()F
f2i
invokestatic com/product/android/utils/wbAtUtils/WbAtView/setSpanAtName(Landroid/content/Context;Landroid/text/Editable;I)V
return
.limit locals 2
.limit stack 3
.end method

.method private showBindSinaHint()V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
getstatic com/android/u/weibo/R$string/not_bind_xina_weibo I
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
getstatic com/android/u/weibo/R$string/yes I
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$7/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
getstatic com/android/u/weibo/R$string/no I
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$6
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$6/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 1
.limit stack 5
.end method

.method private startPickFromAlbum(Z)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getCurrentFocus()Landroid/view/View;
ifnull L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
ifnull L0
aload 0
ldc "input_method"
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
aload 0
ldc com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
ldc "imagePaths"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
iload 1
ifeq L1
aload 2
ldc "isCameraEnable"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "cameraUnableHintId"
getstatic com/android/u/weibo/R$string/camera_360_limit I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "maxSelectCount"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "isLimitImageSize"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
ldc "maxImageSize"
ldc_w 31457280
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "limitImageSizeHintId"
getstatic com/android/u/weibo/R$string/limit_360_size I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L1:
aload 0
aload 2
bipush 101
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 3
.limit stack 3
.end method

.method private startPickFromCamera()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getCameraTmpFile()Ljava/io/File;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
aload 1
ldc "output"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.extra.videoQuality"
bipush 50
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
aload 1
bipush 100
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 3
.end method

.method private startTweetFlowImageActivity(Ljava/util/ArrayList;I)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;I)V"
aload 1
ifnonnull L0
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
ldc com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 3
ldc "position"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "urls"
aload 1
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 1
invokevirtual java/util/ArrayList/size()I
newarray float
astore 4
iconst_0
istore 2
L1:
iload 2
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 4
iload 2
fconst_1
fastore
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 3
ldc "scales"
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
pop
aload 0
aload 3
bipush 105
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 5
.limit stack 3
.end method

.method protected handleBackButtonClick()V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setResult(I)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected handleRightButtonClick()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/hideSoftInput(Landroid/content/Context;Landroid/view/View;)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/wait I
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;I)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/sendTask Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$SendTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 2
ifeq L0
iload 1
bipush 101
if_icmpeq L1
iload 1
bipush 100
if_icmpne L2
L1:
iconst_1
istore 4
L3:
iload 2
iconst_m1
if_icmpeq L4
iload 4
ifeq L4
aload 0
getstatic com/android/u/weibo/R$string/get_pic_file_fail I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L0:
return
L2:
iconst_0
istore 4
goto L3
L4:
iload 2
iconst_m1
if_icmpeq L5
iload 1
bipush 102
if_icmpne L5
aload 0
getstatic com/android/u/weibo/R$string/canot_get_location I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L5:
iload 1
bipush 106
if_icmpne L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L7
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
L8:
aload 3
ldc "path"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
ifnull L9
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setIs360Pic(Z)V
L10:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
ifnonnull L11
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter
dup
aload 0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
return
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
goto L8
L9:
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setIs360Pic(Z)V
goto L10
L11:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/notifyDataSetChanged()V
return
L6:
iload 1
bipush 101
if_icmpeq L12
iload 1
bipush 105
if_icmpne L13
L12:
aload 3
ldc "SELECTED_IMG"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L14
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
L15:
aload 3
ifnull L16
aload 3
invokevirtual java/util/ArrayList/size()I
ifne L17
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setIs360Pic(Z)V
L16:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L18
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
ifnonnull L19
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter
dup
aload 0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
L20:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mScrollView Landroid/widget/ScrollView;
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$5/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)V
invokevirtual android/widget/ScrollView/post(Ljava/lang/Runnable;)Z
pop
return
L14:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
goto L15
L17:
iload 1
bipush 101
if_icmpne L21
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
ifeq L21
new android/content/Intent
dup
aload 0
ldc com/android/u/weibo/weibo/ui/activity/SendImageConfirmActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 5
ldc "path"
aload 3
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 5
bipush 106
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/startActivityForResult(Landroid/content/Intent;I)V
return
L21:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSend360Pic Z
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setIs360Pic(Z)V
aload 3
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L22:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L16
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 5
new java/io/File
dup
aload 5
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 6
aload 5
invokestatic com/common/android/utils/ImageUtils/isGifPicture(Ljava/lang/String;)Z
ifeq L23
aload 6
invokevirtual java/io/File/length()J
ldc2_w 5242880L
lcmp
ifle L23
aload 0
getstatic com/android/u/weibo/R$string/gif_file_exceed_limit I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L22
L23:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L22
L19:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/notifyDataSetChanged()V
goto L20
L18:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
return
L13:
iload 1
bipush 100
if_icmpne L24
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/afterCameraPick()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnull L25
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L25
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setIs360Pic(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
iconst_0
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
ifnonnull L26
aload 0
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter
dup
aload 0
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setAdapter(Landroid/widget/ListAdapter;)V
return
L26:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/setData(Ljava/util/ArrayList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAdapter Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/notifyDataSetChanged()V
return
L25:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mGridView Lcom/android/u/weibo/weibo/ui/widget/WrapContentGridView;
bipush 8
invokevirtual com/android/u/weibo/weibo/ui/widget/WrapContentGridView/setVisibility(I)V
return
L24:
iload 1
bipush 103
if_icmpne L27
aload 3
ifnull L27
aload 3
ldc "name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/product/android/utils/wbAtUtils/WbAtView/insertAtName(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)V
return
L27:
iload 1
bipush 104
if_icmpne L0
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina_selected I
invokevirtual android/widget/ImageButton/setImageResource(I)V
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
return
.limit locals 7
.limit stack 6
.end method

.method public onClick(Landroid/view/View;)V
iconst_1
istore 3
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/at I
if_icmpne L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/atFriend()V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/content I
if_icmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L2:
iload 2
getstatic com/android/u/weibo/R$id/smiley I
if_icmpne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/getVisibility()I
bipush 8
if_icmpne L4
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getWindowToken()Landroid/os/IBinder;
invokestatic com/common/android/utils/InputMethodUtils/collapseSoftInputMethod(Landroid/content/Context;Landroid/os/IBinder;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
bipush 8
invokevirtual com/common/android/utils/smiley/SmileyView/setVisibility(I)V
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/photo I
if_icmpne L5
aload 0
iconst_0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/photoPick(Z)V
return
L5:
iload 2
getstatic com/android/u/weibo/R$id/photo360 I
if_icmpne L6
aload 0
iconst_1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/photoPick(Z)V
return
L6:
iload 2
getstatic com/android/u/weibo/R$id/sync_sina I
if_icmpne L1
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L7
getstatic com/android/u/weibo/R$string/not_support_sina I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L7:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSinaBinded()Z
ifeq L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
ifne L9
L10:
aload 0
iload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
ifeq L11
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina_selected I
invokevirtual android/widget/ImageButton/setImageResource(I)V
return
L9:
iconst_0
istore 3
goto L10
L11:
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina I
invokevirtual android/widget/ImageButton/setImageResource(I)V
return
L8:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/showBindSinaHint()V
return
.limit locals 4
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/tweet_compose I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setContentView(I)V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/initComponent()V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getIntent()Landroid/content/Intent;
astore 3
aload 0
aload 3
ldc "retweet_id"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mRetweetId J
aload 0
aload 3
ldc "is_only_sina"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mRetweetId J
lconst_0
lcmp
ifle L0
aload 0
sipush 140
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/max_content_length I
aload 0
getstatic com/android/u/weibo/R$string/repost_new_tweet I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setHeadTitle(I)V
aload 0
getstatic com/android/u/weibo/R$id/photo I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/photo360 I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 3
ldc "owner"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/compose_more_comment I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/composeMore Landroid/widget/CheckBox;
aload 2
invokevirtual android/widget/CheckBox/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWords Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/max_content_length I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
new com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$TextLengthWatcher/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity$1;)V
invokevirtual com/common/android/ui/widget/SpenEditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
new com/product/android/utils/wbAtUtils/WbAtView
dup
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokespecial com/product/android/utils/wbAtUtils/WbAtView/<init>(Landroid/content/Context;Landroid/widget/EditText;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWbAtView Lcom/product/android/utils/wbAtUtils/WbAtView;
aload 1
ifnonnull L4
ldc "android.intent.action.SEND"
aload 3
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 0
aload 3
ldc "android.intent.extra.TEXT"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
aload 3
ldc "android.intent.extra.STREAM"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/net/Uri
astore 1
aload 1
ifnull L6
aload 0
aload 1
invokestatic com/common/android/utils/ImageUtils/getImgLocalPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
ifnonnull L7
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L6:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/initValue()V
L4:
return
L1:
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/compose_more_comment I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
ldc "\u4f5c\u8005"
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
goto L2
L0:
aload 0
sipush 2000
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/max_content_length I
aload 0
getstatic com/android/u/weibo/R$string/post_new_tweet I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/setHeadTitle(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/composeMore Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/photo I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/mIsShow3D Z
ifeq L8
aload 0
getstatic com/android/u/weibo/R$id/photo360 I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/android/u/weibo/R$id/photo360 I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L8:
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isSinaBinded()Z
ifeq L9
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina_selected I
invokevirtual android/widget/ImageButton/setImageResource(I)V
goto L3
L9:
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/isOnlySina Z
aload 0
getstatic com/android/u/weibo/R$id/sync_sina I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
getstatic com/android/u/weibo/R$drawable/btn_sync_sina I
invokevirtual android/widget/ImageButton/setImageResource(I)V
goto L3
L5:
aload 0
aload 3
ldc "content"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/processLongTweet(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
goto L6
.limit locals 4
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mWbAtView Lcom/product/android/utils/wbAtUtils/WbAtView;
invokevirtual com/product/android/utils/wbAtUtils/WbAtView/onDestroy()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onPause()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
iconst_0
invokevirtual com/common/android/utils/smiley/SmileyView/setShow(Z)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
ifnonnull L0
aload 0
new java/io/File
dup
aload 1
ldc "tempPhotoFilePath"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
L0:
aload 0
aload 1
ldc "imgs_list"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mContent Ljava/lang/String;
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/initValue()V
return
.limit locals 2
.limit stack 5
.end method

.method protected onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onResume()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mSmileyView Lcom/common/android/utils/smiley/SmileyView;
invokevirtual com/common/android/utils/smiley/SmileyView/isShowing()Z
ifne L1
L0:
aload 0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mEdtContent Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/common/android/utils/InputMethodUtils/showSoftInputMethod(Landroid/content/Context;Landroid/view/View;)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
ifnonnull L0
aload 0
new java/io/File
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/getSotrePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
L0:
aload 1
ldc "tempPhotoFilePath"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/tempPhotoFile Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "imgs_list"
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mUploadImgPaths Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/PanoramaBaseFragmentAcitvity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 4
.end method
