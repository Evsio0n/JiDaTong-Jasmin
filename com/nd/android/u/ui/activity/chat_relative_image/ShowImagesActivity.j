.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity
.super com/product/android/ui/activity/BaseReceiveActivity
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3
.inner class private GifSimpleOnGestureListener inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener outer com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity
.inner class private ImageListener inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener outer com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity

.field private 'currentPosition' I

.field private 'mGifImageViews' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/common/android/ui/gif/GifImageView;>;"

.field private 'mIsFromChat' Z

.field private 'mSaveButton' Landroid/widget/ImageButton;

.field private 'mThumbList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mThumbnail' Landroid/graphics/Bitmap;

.field private 'tvPosition' Landroid/widget/TextView;

.field private 'urlList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'viewPager' Lcom/common/android/ui/widget/CompatibleViewPager;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mIsFromChat Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mGifImageViews Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/currentPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/currentPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/doSave(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mThumbList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Z
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mIsFromChat Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mGifImageViews Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mThumbnail Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mThumbnail Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/tvPosition Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doSave(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 2
aload 2
invokestatic com/common/android/utils/UrlUtils/isUrl(Ljava/lang/String;)Z
ifeq L0
new com/product/android/utils/SaveTweetImageTask
dup
aload 2
aconst_null
aload 0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokespecial com/product/android/utils/SaveTweetImageTask/<init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
iconst_0
anewarray java/lang/String
invokevirtual com/product/android/utils/SaveTweetImageTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 0
aload 0
getstatic com/nd/android/u/chat/R$string/image_save_local_error I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 7
.end method

.method private initComponent()V
aload 0
getstatic com/nd/android/u/chat/R$layout/activity_show_images I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/viewpager I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/ibtn_save I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mSaveButton Landroid/widget/ImageButton;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mSaveButton Landroid/widget/ImageButton;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)V
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/tv_position I
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/tvPosition Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/tvPosition Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "1/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/tvPosition Landroid/widget/TextView;
astore 2
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmple L0
iconst_0
istore 1
L1:
aload 2
iload 1
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)V
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$3/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)V
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/registerEvent()V
return
L0:
bipush 8
istore 1
goto L1
.limit locals 3
.limit stack 4
.end method

.method private registerEvent()V
.catch de/greenrobot/event/EventBusException from L0 to L1 using L2
L0:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 2
.end method

.method private unRegisterEvent()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "urlList"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
ldc "urlList"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/urlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L2
L1:
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/finish()V
return
L2:
aload 1
ldc "THUMB_LIST"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "THUMB_LIST"
invokevirtual android/os/Bundle/getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mThumbList Ljava/util/ArrayList;
L3:
aload 0
aload 1
ldc "chat"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mIsFromChat Z
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/initComponent()V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onDestroy()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mGifImageViews Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mGifImageViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/gif/GifImageView
invokevirtual com/common/android/ui/gif/GifImageView/recycle()V
goto L1
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public onEventMainThread(Ljava/lang/Object;)V
aload 1
instanceof com/product/android/ui/imageHolder/Picture$DownloadProgress
ifeq L0
aload 1
checkcast com/product/android/ui/imageHolder/Picture$DownloadProgress
getfield com/product/android/ui/imageHolder/Picture$DownloadProgress/mPercentage I
bipush 100
if_icmplt L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mSaveButton Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onPause()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getChildCount()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
iload 1
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 3
aload 3
ifnull L2
aload 3
instanceof com/product/android/ui/imageHolder/PictureHolder
ifeq L2
aload 3
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
astore 3
aload 3
ifnull L2
aload 3
invokevirtual com/common/android/ui/gif/GifImageView/quit()V
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 0
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/unRegisterEvent()V
return
.limit locals 4
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/BaseReceiveActivity/onResume()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/viewPager Lcom/common/android/ui/widget/CompatibleViewPager;
iconst_0
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
astore 1
aload 1
ifnull L0
aload 1
instanceof com/product/android/ui/imageHolder/PictureHolder
ifeq L0
aload 1
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/common/android/ui/gif/GifImageView/startDecodeThread()V
L1:
aload 1
checkcast com/product/android/ui/imageHolder/PictureHolder
invokevirtual com/product/android/ui/imageHolder/PictureHolder/isDownloading()Z
ifne L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/mSaveButton Landroid/widget/ImageButton;
iconst_0
invokevirtual android/widget/ImageButton/setVisibility(I)V
L0:
return
.limit locals 3
.limit stack 2
.end method
