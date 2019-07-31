.bytecode 50.0
.class public synchronized com/product/android/ui/showImage/FlowImageAdapter
.super android/support/v4/view/PagerAdapter
.implements android/view/View$OnClickListener

.field private 'mContext' Landroid/content/Context;

.field private 'mDisplayImageOpt' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private 'mHolderList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/ui/imageHolder/PictureHolder;>;"

.field private 'mImgList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/ui/showImage/CommonImage;>;"

.field private 'mIsLocalUri' Z

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;ZLcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/product/android/ui/showImage/CommonImage;>;ZLcom/nostra13/universalimageloader/core/DisplayImageOptions;)V"
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageAdapter/mImgList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/product/android/ui/showImage/FlowImageAdapter/mIsLocalUri Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/showImage/FlowImageAdapter/mHolderList Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageAdapter/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/product/android/ui/showImage/FlowImageAdapter/mDisplayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aload 0
aload 1
putfield com/product/android/ui/showImage/FlowImageAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/product/android/ui/showImage/FlowImageAdapter/mImgList Ljava/util/ArrayList;
aload 0
iload 3
putfield com/product/android/ui/showImage/FlowImageAdapter/mIsLocalUri Z
aload 0
aload 4
putfield com/product/android/ui/showImage/FlowImageAdapter/mDisplayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 5
.limit stack 3
.end method

.method public Destroy()V
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mHolderList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/recycle()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 3
instanceof android/view/View
ifeq L0
aload 3
checkcast android/view/View
astore 3
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
instanceof com/product/android/ui/imageHolder/PictureHolder
ifeq L1
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/quit()V
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/recycle()V
L1:
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mHolderList Ljava/util/ArrayList;
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 1
aload 3
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mImgList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
iload 1
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mImgList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mImgList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
aload 0
iload 2
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/ui/showImage/CommonImage
astore 5
new com/product/android/ui/imageHolder/PictureHolder
dup
invokespecial com/product/android/ui/imageHolder/PictureHolder/<init>()V
astore 3
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mContext Landroid/content/Context;
getstatic com/nd/android/u/allcommon/R$layout/picture_flow_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 4
getstatic com/nd/android/u/allcommon/R$id/fragment_pic_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
iload 2
putfield com/product/android/ui/imageHolder/PictureHolder/pos I
aload 3
aload 4
getstatic com/nd/android/u/allcommon/R$id/rlProgress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/imageHolder/PictureHolder/rlProgress Landroid/widget/RelativeLayout;
aload 3
aload 4
getstatic com/nd/android/u/allcommon/R$id/cpProgress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/imageHolder/CircleProgress
putfield com/product/android/ui/imageHolder/PictureHolder/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 3
aload 4
getstatic com/nd/android/u/allcommon/R$id/ivPicture I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast uk/co/senab/photoview/PhotoView
putfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 3
aload 4
getstatic com/nd/android/u/allcommon/R$id/gifPicture I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/gif/GifImageView
putfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 3
aload 5
getfield com/product/android/ui/showImage/CommonImage/image_ext Ljava/lang/String;
putfield com/product/android/ui/imageHolder/PictureHolder/image_ext Ljava/lang/String;
aload 3
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mIsLocalUri Z
putfield com/product/android/ui/imageHolder/PictureHolder/isLocalUrl Z
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mIsLocalUri Z
ifne L3
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
getstatic android/widget/ImageView$ScaleType/CENTER_CROP Landroid/widget/ImageView$ScaleType;
invokevirtual uk/co/senab/photoview/PhotoView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
L4:
aload 4
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mHolderList Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L0:
aload 3
aload 5
getfield com/product/android/ui/showImage/CommonImage/image_thumb Ljava/lang/String;
aload 5
getfield com/product/android/ui/showImage/CommonImage/image_original Ljava/lang/String;
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mDisplayImageOpt Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L1:
aload 3
invokevirtual com/product/android/ui/imageHolder/PictureHolder/isGif()Z
ifeq L5
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 0
invokevirtual com/common/android/ui/gif/GifImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
L5:
aload 1
aload 4
iconst_m1
iconst_m1
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;II)V
aload 4
areturn
L3:
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
getstatic android/widget/ImageView$ScaleType/FIT_CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual uk/co/senab/photoview/PhotoView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
goto L4
L2:
astore 5
aload 5
invokevirtual java/lang/OutOfMemoryError/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public volatile synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
aload 0
aload 1
iload 2
invokevirtual com/product/android/ui/showImage/FlowImageAdapter/instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
areturn
.limit locals 3
.limit stack 3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public justQuit()V
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mHolderList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/ui/imageHolder/PictureHolder
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/quit()V
goto L0
L1:
return
.limit locals 2
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/allcommon/R$id/gifPicture I
if_icmpeq L0
iload 2
getstatic com/nd/android/u/allcommon/R$id/fragment_pic_layout I
if_icmpne L1
L0:
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mContext Landroid/content/Context;
instanceof android/app/Activity
ifeq L1
aload 0
getfield com/product/android/ui/showImage/FlowImageAdapter/mContext Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
L1:
return
.limit locals 3
.limit stack 2
.end method
