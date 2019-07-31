.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$1
.inner class private static ViewHolder inner com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder outer com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter

.field private final 'LOCAL_FILE_PREFIX' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field protected 'mImageLoader' Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private 'mImgHeight' I

.field private 'mImgWidth' I

.field private 'mIsLocalImg' Z

.field private 'mThumbnail' [Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mIsLocalImg Z
aload 0
ldc "file://"
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/LOCAL_FILE_PREFIX Ljava/lang/String;
aload 0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
aload 1
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
iload 1
aaload
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
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mContext Landroid/content/Context;
getstatic com/nd/schoollife/R$layout/post_image_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_post_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_post_sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgWidth I
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgHeight I
putfield android/view/ViewGroup$LayoutParams/height I
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
iload 1
aaload
invokestatic com/nd/schoollife/ui/common/util/PostUtils/isGifPicture(Ljava/lang/String;)Z
ifeq L2
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L3:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mIsLocalImg Z
ifeq L4
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
iload 1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder
astore 4
aload 4
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/width I
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgWidth I
if_icmpne L5
aload 4
astore 3
aload 4
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgHeight I
if_icmpeq L1
L5:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mContext Landroid/content/Context;
getstatic com/nd/schoollife/R$layout/post_image_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder
dup
aconst_null
invokespecial com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/<init>(Lcom/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$1;)V
astore 3
aload 3
aload 2
getstatic com/nd/schoollife/R$id/iv_post_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L2:
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/ivGifSign Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
L4:
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImageLoader Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
iload 1
aaload
aload 3
getfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter$ViewHolder/albumIv Landroid/widget/ImageView;
getstatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/imgLoaderOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
.limit locals 5
.limit stack 4
.end method

.method public setData([Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mThumbnail [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setImgSize(II)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgWidth I
aload 0
iload 2
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mImgHeight I
return
.limit locals 3
.limit stack 2
.end method

.method public setIsLocalImg(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/adapter/PostDetailImageAdapter/mIsLocalImg Z
return
.limit locals 2
.limit stack 2
.end method
