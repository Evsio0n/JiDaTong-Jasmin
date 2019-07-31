.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2
.super android/support/v4/view/PagerAdapter
.enclosing method com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/initComponent()V
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1
.inner class inner com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
ldc "showImagesActivity"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "destroyItem "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/i(Ljava/lang/String;Ljava/lang/String;)V
aload 3
checkcast android/view/View
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/product/android/ui/imageHolder/PictureHolder
astore 4
aload 4
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
ifnull L0
aload 4
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/quit()V
L0:
aload 4
invokevirtual com/product/android/ui/imageHolder/PictureHolder/unRegisterEvent()V
aload 1
aload 3
checkcast android/view/View
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
new com/product/android/ui/imageHolder/PictureHolder
dup
invokespecial com/product/android/ui/imageHolder/PictureHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokevirtual com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/fragment_picture_flow_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/rlProgress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/imageHolder/PictureHolder/rlProgress Landroid/widget/RelativeLayout;
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/cpProgress I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/imageHolder/CircleProgress
putfield com/product/android/ui/imageHolder/PictureHolder/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/gifPicture I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/gif/GifImageView
putfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/ivPicture I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast uk/co/senab/photoview/PhotoView
putfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/leftBtn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/bottom_left_save I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/Button/setCompoundDrawablesWithIntrinsicBounds(IIII)V
aload 3
aload 4
getstatic com/nd/android/u/chat/R$id/rightBtn I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/product/android/ui/imageHolder/PictureHolder/rightBtn Landroid/widget/Button;
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/leftBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 3
invokevirtual com/product/android/ui/imageHolder/PictureHolder/registerEvent()V
aload 4
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$200(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 5
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual com/common/android/ui/gif/GifImageView/setSaveFrames()V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$300(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$300(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
astore 6
aload 5
invokestatic com/common/android/utils/UrlUtils/isUrl(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Z
ifeq L2
aload 5
invokestatic com/common/android/utils/ImageUtils/isGifPicture(Ljava/lang/String;)Z
ifeq L2
aload 3
aload 6
aload 5
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
aload 1
aload 4
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
new android/view/GestureDetector
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$GifSimpleOnGestureListener/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Lcom/common/android/ui/gif/GifImageView;)V
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
astore 1
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$1/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2;Landroid/view/GestureDetector;)V
invokevirtual com/common/android/ui/gif/GifImageView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 4
getstatic com/nd/android/u/chat/R$id/fragment_pic_layout I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2$2/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2;Landroid/view/GestureDetector;)V
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 4
areturn
L2:
aload 3
aload 6
aload 5
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
goto L3
L1:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 6
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/findCachedBitmapForImageUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
ifnonnull L4
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 6
bipush 7
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$602(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
pop
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$600(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Landroid/graphics/Bitmap;
ifnull L5
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$600(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Landroid/graphics/Bitmap;
invokevirtual uk/co/senab/photoview/PhotoView/setImageBitmap(Landroid/graphics/Bitmap;)V
L5:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 3
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Lcom/product/android/ui/imageHolder/PictureHolder;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
goto L3
L4:
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 6
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/findCachedBitmapForImageUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
invokevirtual uk/co/senab/photoview/PhotoView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L5
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$400(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Z
ifeq L6
aload 5
invokestatic com/common/android/utils/ImageUtils/isGifPicture(Ljava/lang/String;)Z
ifeq L6
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&thumb=120"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 5
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
invokestatic com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity/access$500(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;)Ljava/util/ArrayList;
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/gifPicture Lcom/common/android/ui/gif/GifImageView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L6:
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 3
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
new com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener
dup
aload 0
getfield com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$2/this$0 Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;
aload 3
invokespecial com/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity$ImageListener/<init>(Lcom/nd/android/u/ui/activity/chat_relative_image/ShowImagesActivity;Lcom/product/android/ui/imageHolder/PictureHolder;)V
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
goto L3
.limit locals 7
.limit stack 8
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

.method public saveState()Landroid/os/Parcelable;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method
