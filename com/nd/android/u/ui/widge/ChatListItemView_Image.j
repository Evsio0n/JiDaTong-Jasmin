.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ChatListItemView_Image
.super android/widget/RelativeLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Image$1
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Image$2
.inner class inner com/nd/android/u/ui/widge/ChatListItemView_Image$3

.field public static final 'HIGHER_METRICS' I = 440


.field public static final 'LOWER_METRICS' I = 120


.field public static final 'PIC_GIF' I = 0


.field public static final 'PIC_NORMAL' I = 1


.field 'gifHandler' Landroid/os/Handler;

.field 'handler' Landroid/os/Handler;

.field protected 'imgGif' Lpl/droidsonroids/gif/GifImageView;

.field protected 'imgGifIcon' Landroid/widget/ImageView;

.field protected 'imgNormal' Landroid/widget/ImageView;

.field private 'loadingListener' Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field protected 'mContext' Landroid/content/Context;

.field protected 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/loadingListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$3/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/handler Landroid/os/Handler;
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$1/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/loadingListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$2
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$2/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/gifHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/ui/widge/ChatListItemView_Image$3
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image$3/<init>(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;)V
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/handler Landroid/os/Handler;
aload 0
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/widge/ChatListItemView_Image;Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/getGif(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getGif(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
.catch java/lang/Exception from L0 to L1 using L2
L0:
new pl/droidsonroids/gif/GifDrawable
dup
aload 1
invokespecial pl/droidsonroids/gif/GifDrawable/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method private setAlreadyDownloadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "CHAT"
ldc "setDownloadImage fail:null url"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/failed I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
iconst_1
ireturn
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
iconst_0
ireturn
L1:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/getGif(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
astore 2
aload 2
ifnonnull L2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mContext Landroid/content/Context;
aload 1
invokevirtual com/nd/android/u/chatUiUtils/LocalImageManager/get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 1
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
iconst_0
invokevirtual pl/droidsonroids/gif/GifImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 2
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setGifSize(Lpl/droidsonroids/gif/GifImageView;Ljava/lang/String;)V
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method private setCatGif(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
.catch java/io/IOException from L4 to L5 using L2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
astore 1
aload 1
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L6
aload 1
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
astore 1
aload 1
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L6
aload 1
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 1
aload 1
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 257
if_icmpne L6
aload 1
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
iload 2
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmiley(I)Lcom/common/android/utils/smiley/Smiley;
astore 1
L0:
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/changeVisible(Z)V
new pl/droidsonroids/gif/GifDrawable
dup
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mContext Landroid/content/Context;
invokevirtual android/content/Context/getAssets()Landroid/content/res/AssetManager;
aload 1
getfield com/common/android/utils/smiley/Smiley/gifName Ljava/lang/String;
invokespecial pl/droidsonroids/gif/GifDrawable/<init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
astore 4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 4
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
invokevirtual pl/droidsonroids/gif/GifImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
L1:
aload 3
astore 1
aload 3
ifnonnull L4
L3:
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 1
L4:
aload 1
aload 4
invokevirtual pl/droidsonroids/gif/GifDrawable/getIntrinsicHeight()I
putfield android/view/ViewGroup$LayoutParams/height I
aload 1
aload 4
invokevirtual pl/droidsonroids/gif/GifDrawable/getIntrinsicWidth()I
putfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 1
invokevirtual pl/droidsonroids/gif/GifImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L5:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual java/io/IOException/printStackTrace()V
L6:
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method

.method private setDownloadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/setCatGif(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L0
return
L0:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/setAlreadyDownloadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ifeq L1
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setAlreadyDownloadImage:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L1:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
astore 2
aload 2
invokestatic ims/utils/CommUtil/isGifPicture(Ljava/lang/String;)Z
ifeq L2
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "set gif :url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/setNormalGif(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
ldc "CHAT"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "set normal :url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getThumbnailUrl()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
ldc "CHAT"
ldc "setDownloadImage fail:null url"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/failed I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L3:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 1
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 2
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
L4:
aload 0
aload 2
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/getGif(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
astore 3
aload 3
ifnonnull L5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/loadingListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
iconst_0
invokevirtual pl/droidsonroids/gif/GifImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 3
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 2
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 5
.end method

.method private setNormalGif(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
astore 1
ldc "CHAT"
ldc "setNormalGif null path,start download"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
invokevirtual com/nd/android/u/chatUiUtils/LocalImageManager/getStartBitmap()Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/loadingListener Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method private setUploadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/getGif(Ljava/lang/String;)Lpl/droidsonroids/gif/GifDrawable;
astore 1
aload 1
ifnull L0
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/changeVisible(Z)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setGifSize(Lpl/droidsonroids/gif/GifImageView;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 1
invokevirtual pl/droidsonroids/gif/GifImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
L0:
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/changeVisible(Z)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getThumbnailPath()Ljava/lang/String; 0
astore 2
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 1
L1:
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mContext Landroid/content/Context;
aload 1
invokevirtual com/nd/android/u/chatUiUtils/LocalImageManager/get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
astore 2
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 1
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 3
.limit stack 3
.end method

.method public changeVisible(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
iconst_0
invokevirtual pl/droidsonroids/gif/GifImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getThumbnailUrl()Ljava/lang/String; 0
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/getDiscCacheFileAbsPath(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 2
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/resetImageViewParams(Landroid/view/View;Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
bipush 8
invokevirtual pl/droidsonroids/gif/GifImageView/setVisibility(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/mContext Landroid/content/Context;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/chat_list_item_image I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/gifpic I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/findViewById(I)Landroid/view/View;
checkcast pl/droidsonroids/gif/GifImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/norpic I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/defaultgif I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
return
.limit locals 2
.limit stack 4
.end method

.method public recycle()V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
aconst_null
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
return
.limit locals 1
.limit stack 2
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ChatListItemView_Image/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGif Lpl/droidsonroids/gif/GifImageView;
bipush 8
invokevirtual pl/droidsonroids/gif/GifImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgNormal Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ChatListItemView_Image/imgGifIcon Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nd/android/u/allCommonUtils/SdCardUtils/isSdCardExist()Z
ifne L0
aload 0
getstatic com/nd/android/u/chat/R$drawable/failed I
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setBackgroundResource(I)V
return
L0:
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ChatListItemView_Image/setBackgroundResource(I)V
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L1
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/setUploadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
L1:
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ChatListItemView_Image/setDownloadImage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setGifSize(Lpl/droidsonroids/gif/GifImageView;Ljava/lang/String;)V
aload 1
invokevirtual pl/droidsonroids/gif/GifImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 3
new android/graphics/BitmapFactory$Options
dup
invokespecial android/graphics/BitmapFactory$Options/<init>()V
astore 4
aload 4
iconst_1
putfield android/graphics/BitmapFactory$Options/inJustDecodeBounds Z
aload 2
aload 4
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
pop
aload 3
astore 1
aload 3
ifnonnull L0
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 1
L0:
aload 1
aload 4
getfield android/graphics/BitmapFactory$Options/outWidth I
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
aload 4
getfield android/graphics/BitmapFactory$Options/outHeight I
putfield android/view/ViewGroup$LayoutParams/height I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
sipush 1000
if_icmpge L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/displayMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
sipush 1000
if_icmplt L2
L1:
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
sipush 440
if_icmpgt L3
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
sipush 440
if_icmple L4
L3:
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
if_icmple L5
aload 1
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
sipush 440
imul
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
idiv
putfield android/view/ViewGroup$LayoutParams/height I
aload 1
sipush 440
putfield android/view/ViewGroup$LayoutParams/width I
L4:
return
L5:
aload 1
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
sipush 440
imul
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
idiv
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
sipush 440
putfield android/view/ViewGroup$LayoutParams/height I
return
L2:
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
bipush 120
if_icmpgt L6
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
bipush 120
if_icmple L4
L6:
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
if_icmple L7
aload 1
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
bipush 120
imul
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
idiv
putfield android/view/ViewGroup$LayoutParams/height I
aload 1
bipush 120
putfield android/view/ViewGroup$LayoutParams/width I
return
L7:
aload 1
aload 1
getfield android/view/ViewGroup$LayoutParams/width I
bipush 120
imul
aload 1
getfield android/view/ViewGroup$LayoutParams/height I
idiv
putfield android/view/ViewGroup$LayoutParams/width I
aload 1
bipush 120
putfield android/view/ViewGroup$LayoutParams/height I
return
.limit locals 5
.limit stack 4
.end method
