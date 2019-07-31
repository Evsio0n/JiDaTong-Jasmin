.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$1
.inner class private static ViewHolder inner com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder outer com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter

.field private 'mContext' Landroid/content/Context;

.field protected 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'mImgExtroInfo' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/business/bean/ImageExtraInfo;>;"

.field private 'mImgHeight' I

.field private 'mImgWidth' I

.field private 'mIsLocalImg' Z

.field private 'mThumbnail' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgExtroInfo Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mIsLocalImg Z
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$layout/tweet_image_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder
dup
aconst_null
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/android/u/weibo/R$id/album_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/android/u/weibo/R$id/gif_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgWidth I
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgHeight I
putfield android/view/ViewGroup$LayoutParams/height I
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgExtroInfo Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ImageExtraInfo
invokevirtual com/android/u/weibo/weibo/business/bean/ImageExtraInfo/getImageExt()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokestatic com/common/android/utils/ImageUtils/isGifForWeibo(Ljava/lang/String;Ljava/lang/String;)Z
ifeq L2
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/gif_sign I
invokevirtual android/widget/ImageView/setImageResource(I)V
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mIsLocalImg Z
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder
astore 4
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgWidth I
if_icmpne L5
aload 4
astore 3
aload 4
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgHeight I
if_icmpeq L1
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$layout/tweet_image_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder
dup
aconst_null
invokespecial com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/<init>(Lcom/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/android/u/weibo/R$id/album_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgExtroInfo Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/ImageExtraInfo
invokevirtual com/android/u/weibo/weibo/business/bean/ImageExtraInfo/getImageType()I
iconst_1
if_icmpne L6
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
getstatic com/android/u/weibo/R$drawable/pic360_sign I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L3
L6:
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
aload 3
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getWeiboCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 2
areturn
.limit locals 5
.limit stack 5
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;Ljava/util/ArrayList<Lcom/android/u/weibo/weibo/business/bean/ImageExtraInfo;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mThumbnail Ljava/util/ArrayList;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgExtroInfo Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 2
.end method

.method public setImgSize(II)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgWidth I
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mImgHeight I
return
.limit locals 3
.limit stack 2
.end method

.method public setIsLocalImg(Z)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetImageAdapter/mIsLocalImg Z
return
.limit locals 2
.limit stack 2
.end method
