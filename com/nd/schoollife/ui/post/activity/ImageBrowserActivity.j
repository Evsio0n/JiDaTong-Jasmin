.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/activity/ImageBrowserActivity
.super com/product/android/ui/showImage/FlowImageActivity
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback
.inner class inner com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1
.inner class inner com/nd/schoollife/ui/post/activity/ImageBrowserActivity$2

.field public static final 'RESULT_PRAISE' I = 103


.field public static final 'SAVE_IMAGE_LIST' Ljava/lang/String; = "save_images"

.field private 'mHavePraise' Z

.field private 'mImgDelBtn' Landroid/widget/ImageButton;

.field private 'mImgIndexTv' Landroid/widget/TextView;

.field private 'mImgSaveBtn' Landroid/widget/ImageButton;

.field private 'mImgs' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mIsPraise' I

.field private 'mIsPraiseProcessing' Z

.field private 'mOperateView' Landroid/widget/RelativeLayout;

.field private 'mPostId' J

.field private 'mPraiseBtn' Landroid/widget/Button;

.field private 'mPraiseChangeReceiver' Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;

.field private 'mPraiseNum' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/<init>()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
aload 0
lconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraiseProcessing Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mHavePraise Z
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
aconst_null
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$002(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)J
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initPraiseView()V
return
.limit locals 1
.limit stack 1
.end method

.method private doLike()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
ifne L0
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
iconst_1
iadd
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
new com/nd/schoollife/ui/post/task/PostPraiseProcessTask
dup
aload 0
bipush 6
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostPraiseProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
dup
iconst_1
ldc "12"
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostPraiseProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L1:
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initPraiseView()V
return
L0:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
ifle L2
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
iconst_1
isub
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
L2:
new com/nd/schoollife/ui/post/task/PostPraiseProcessTask
dup
aload 0
bipush 7
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_SUBMIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/post/task/PostPraiseProcessTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/post/task/PostPraiseProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
goto L1
.limit locals 1
.limit stack 6
.end method

.method private doSave(Ljava/lang/String;Ljava/lang/String;)V
new com/product/android/utils/SaveTweetImageTask
dup
aload 1
aload 2
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/utils/SaveTweetImageTask/<init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iconst_0
anewarray java/lang/String
invokevirtual com/product/android/utils/SaveTweetImageTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 6
.end method

.method private initData(Landroid/os/Bundle;)V
aload 1
ifnull L0
aload 0
aload 1
ldc "save_images"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
aload 0
aload 1
ldc "IS_PRAISE"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
L1:
aload 0
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
aload 0
ldc "schoollife"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
invokespecial com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache/<init>(Ljava/io/File;)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/displayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "isLocalUri"
iconst_0
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/isLocalUri Z
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "IS_HAVE_PRAISE"
iconst_1
invokevirtual android/content/Intent/getBooleanExtra(Ljava/lang/String;Z)Z
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mHavePraise Z
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "position"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "PRAISE_NUM"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "IS_PRAISE"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "INT_POST_ID"
ldc2_w -1L
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
ifnull L2
iconst_0
istore 2
L3:
iload 2
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
new com/product/android/ui/showImage/CommonImage
dup
invokespecial com/product/android/ui/showImage/CommonImage/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
aload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
putfield com/product/android/ui/showImage/CommonImage/image_thumb Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L3
L0:
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getIntent()Landroid/content/Intent;
ldc "ImageList"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
goto L1
L2:
return
.limit locals 3
.limit stack 6
.end method

.method private initEvent()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
new com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity$1/<init>(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)V
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
new com/nd/schoollife/common/receiver/PraiseChangeReceiver
dup
new com/nd/schoollife/ui/post/activity/ImageBrowserActivity$2
dup
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity$2/<init>(Lcom/nd/schoollife/ui/post/activity/ImageBrowserActivity;)V
invokespecial com/nd/schoollife/common/receiver/PraiseChangeReceiver/<init>(Lcom/nd/schoollife/ui/common/process/PraiseListener;)V
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
new android/content/IntentFilter
dup
invokespecial android/content/IntentFilter/<init>()V
astore 1
aload 1
ldc "com.nd.schoollife.praisechange"
invokevirtual android/content/IntentFilter/addAction(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
aload 1
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
pop
return
.limit locals 2
.limit stack 6
.end method

.method private initPraiseView()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseNum I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
getstatic com/nd/schoollife/R$drawable/praise_normal I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
getstatic com/nd/schoollife/R$drawable/praise_press I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 1
.limit stack 5
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/activity_image_browser I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/rel_image_bottom Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/RelativeLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/ib_image_delete I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
checkcast android/widget/ImageButton
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgDelBtn Landroid/widget/ImageButton;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/tv_image_index I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/ib_image_save_pic I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
checkcast android/widget/ImageButton
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgSaveBtn Landroid/widget/ImageButton;
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mOperateView Landroid/widget/RelativeLayout;
getstatic com/nd/schoollife/R$id/btn_image_praise_num I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
checkcast android/widget/Button
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/isLocalUri Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgDelBtn Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgSaveBtn Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mHavePraise Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initPraiseView()V
return
.limit locals 1
.limit stack 6
.end method

.method private sendPraiseResult(ZI)V
new android/content/Intent
dup
ldc "com.nd.schoollife.praisechange"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "BOOL_PRAISE_IS_SUCCESS"
iload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 3
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_OR_CANCEL"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 3
ldc "PRAISE_TYPE"
getstatic com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/BROWSER Lcom/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE;
invokevirtual com/nd/schoollife/ui/common/process/PraiseListener$PRAISE_TYPE/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/sendBroadcast(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 4
.end method

.method public finish()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 3
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 2
ldc "SELECTED_IMG"
aload 3
invokevirtual android/content/Intent/putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
pop
aload 2
ldc "INT_POST_ID"
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPostId J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
iconst_m1
aload 2
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/finish()V
return
.limit locals 4
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
i2l
lstore 3
getstatic com/nd/schoollife/R$id/ib_image_delete I
i2l
lload 3
lcmp
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
aload 0
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/finish()V
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/adapter Lcom/product/android/ui/showImage/FlowImageAdapter;
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmple L3
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L4:
aload 0
iload 2
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgIndexTv Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
iconst_1
iadd
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
istore 2
goto L4
L0:
getstatic com/nd/schoollife/R$id/ib_image_save_pic I
i2l
lload 3
lcmp
ifne L5
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/imageList Ljava/util/ArrayList;
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/position I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
astore 1
aload 0
aload 1
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
aload 1
getfield com/product/android/ui/showImage/CommonImage/image_ext Ljava/lang/String;
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/doSave(Ljava/lang/String;Ljava/lang/String;)V
return
L5:
getstatic com/nd/schoollife/R$id/btn_image_praise_num I
i2l
lload 3
lcmp
ifne L2
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraiseProcessing Z
ifne L2
aload 0
iconst_1
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraiseProcessing Z
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/doLike()V
return
.limit locals 5
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
aload 1
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initData(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/showImage/FlowImageActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initView()V
aload 0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/initEvent()V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mPraiseChangeReceiver Lcom/nd/schoollife/common/receiver/PraiseChangeReceiver;
invokevirtual com/nd/schoollife/ui/post/activity/ImageBrowserActivity/unregisterReceiver(Landroid/content/BroadcastReceiver;)V
L0:
aload 0
invokespecial com/product/android/ui/showImage/FlowImageActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/showImage/FlowImageActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "save_images"
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mImgs Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
aload 1
ldc "IS_PRAISE"
aload 0
getfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraise I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 3
ifnull L0
aload 3
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 3
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L0
iconst_1
istore 4
L1:
iload 1
bipush 6
if_icmpne L2
aload 0
iload 4
iconst_1
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/sendPraiseResult(ZI)V
L3:
aload 0
iconst_0
putfield com/nd/schoollife/ui/post/activity/ImageBrowserActivity/mIsPraiseProcessing Z
return
L0:
iconst_0
istore 4
goto L1
L2:
iload 1
bipush 7
if_icmpne L3
aload 0
iload 4
iconst_0
invokespecial com/nd/schoollife/ui/post/activity/ImageBrowserActivity/sendPraiseResult(ZI)V
goto L3
.limit locals 5
.limit stack 3
.end method
