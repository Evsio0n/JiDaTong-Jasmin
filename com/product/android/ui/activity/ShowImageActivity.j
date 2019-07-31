.bytecode 50.0
.class public synchronized com/product/android/ui/activity/ShowImageActivity
.super com/product/android/ui/activity/BaseReceiveActivity
.inner class inner com/product/android/ui/activity/ShowImageActivity$1
.inner class inner com/product/android/ui/activity/ShowImageActivity$2

.field private final 'DISC_CACHE_SIZE_64MB' I

.field private final 'HEAD_DISC_CACHE_DIR' Ljava/lang/String;

.field private 'isNeedToSave' Ljava/lang/Boolean;

.field private 'mHolder' Lcom/product/android/ui/imageHolder/PictureHolder;

.field public 'mUserShowHeadOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mbUseThumbFirst' Z

.field private 'mbmThump' Landroid/graphics/Bitmap;

.field private 'screenWidth' I

.field protected 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/<init>()V
aload 0
sipush 800
putfield com/product/android/ui/activity/ShowImageActivity/screenWidth I
aload 0
aconst_null
putfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
ldc "head"
putfield com/product/android/ui/activity/ShowImageActivity/HEAD_DISC_CACHE_DIR Ljava/lang/String;
aload 0
ldc_w 67108864
putfield com/product/android/ui/activity/ShowImageActivity/DISC_CACHE_SIZE_64MB I
aload 0
iconst_0
putfield com/product/android/ui/activity/ShowImageActivity/mbUseThumbFirst Z
aload 0
aconst_null
putfield com/product/android/ui/activity/ShowImageActivity/isNeedToSave Ljava/lang/Boolean;
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/product/android/ui/activity/ShowImageActivity;)V
aload 0
invokespecial com/product/android/ui/activity/ShowImageActivity/doSave()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/activity/ShowImageActivity;)Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doSave()V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/isDownloading()Z
ifeq L0
getstatic com/nd/android/u/allcommon/R$string/save_error_downloading I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getstatic com/nd/android/u/allcommon/R$string/no_sdcard_for_download I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
new com/product/android/utils/SaveTweetImageTask
dup
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/url Ljava/lang/String;
aconst_null
aload 0
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/utils/SaveTweetImageTask/<init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iconst_0
anewarray java/lang/String
invokevirtual com/product/android/utils/SaveTweetImageTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method protected initComponent()V
aload 0
new com/product/android/ui/imageHolder/PictureHolder
dup
invokespecial com/product/android/ui/imageHolder/PictureHolder/<init>()V
putfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$layout/fragment_picture_flow_item I
invokevirtual com/product/android/ui/activity/ShowImageActivity/setContentView(I)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$id/rlProgress I
invokevirtual com/product/android/ui/activity/ShowImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/imageHolder/PictureHolder/rlProgress Landroid/widget/RelativeLayout;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$id/cpProgress I
invokevirtual com/product/android/ui/activity/ShowImageActivity/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/imageHolder/CircleProgress
putfield com/product/android/ui/imageHolder/PictureHolder/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$id/ivPicture I
invokevirtual com/product/android/ui/activity/ShowImageActivity/findViewById(I)Landroid/view/View;
checkcast uk/co/senab/photoview/PhotoView
putfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$id/leftBtn I
invokevirtual com/product/android/ui/activity/ShowImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
getstatic com/nd/android/u/allcommon/R$drawable/bottom_left_save I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/android/u/allcommon/R$id/rightBtn I
invokevirtual com/product/android/ui/activity/ShowImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/imageHolder/PictureHolder/rightBtn Landroid/widget/Button;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
new com/product/android/ui/activity/ShowImageActivity$1
dup
aload 0
invokespecial com/product/android/ui/activity/ShowImageActivity$1/<init>(Lcom/product/android/ui/activity/ShowImageActivity;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/isNeedToSave Ljava/lang/Boolean;
ifnull L0
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 5
.end method

.method protected initComponentValue()V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mbUseThumbFirst Z
ifeq L0
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mbmThump Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mbmThump Landroid/graphics/Bitmap;
invokevirtual uk/co/senab/photoview/PhotoView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/url Ljava/lang/String;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/product/android/ui/activity/ShowImageActivity$2
dup
aload 0
invokespecial com/product/android/ui/activity/ShowImageActivity$2/<init>(Lcom/product/android/ui/activity/ShowImageActivity;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 1
.limit stack 7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/product/android/ui/activity/ShowImageActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "url"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "url"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/ui/activity/ShowImageActivity/url Ljava/lang/String;
L0:
aload 1
ldc "MINE"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "MINE"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putfield com/product/android/ui/activity/ShowImageActivity/isNeedToSave Ljava/lang/Boolean;
L1:
aload 1
ldc "optionType"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 1
ldc "optionType"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
istore 2
iload 2
ifeq L3
iload 2
iconst_1
if_icmpne L4
L3:
aload 0
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L2:
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
ifnonnull L5
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/nd/android/u/allcommon/R$drawable/start I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/start I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/nd/android/u/allcommon/R$drawable/start I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
aload 0
ldc "head"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 67108864
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
L5:
aload 0
aload 1
ldc "bUseThumbFirst"
iconst_0
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield com/product/android/ui/activity/ShowImageActivity/mbUseThumbFirst Z
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mbUseThumbFirst Z
ifeq L6
aload 0
aload 1
ldc "thumb"
invokevirtual android/os/Bundle/getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/graphics/Bitmap
putfield com/product/android/ui/activity/ShowImageActivity/mbmThump Landroid/graphics/Bitmap;
L6:
aload 0
invokevirtual com/product/android/ui/activity/ShowImageActivity/getWindowManager()Landroid/view/WindowManager;
astore 1
aload 1
ifnull L7
aload 1
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 1
aload 1
ifnull L7
aload 0
aload 1
invokevirtual android/view/Display/getWidth()I
putfield com/product/android/ui/activity/ShowImageActivity/screenWidth I
L7:
aload 0
invokevirtual com/product/android/ui/activity/ShowImageActivity/initComponent()V
return
L4:
iload 2
iconst_2
if_icmpne L2
aload 0
getstatic com/product/android/business/headImage/HeadImageLoader/mShowDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/product/android/ui/activity/ShowImageActivity/mUserShowHeadOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
goto L2
.limit locals 3
.limit stack 6
.end method

.method protected onPause()V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/unRegisterEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
getfield com/product/android/ui/activity/ShowImageActivity/mHolder Lcom/product/android/ui/imageHolder/PictureHolder;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/registerEvent()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onResume()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onStart()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onStart()V
aload 0
invokevirtual com/product/android/ui/activity/ShowImageActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method
