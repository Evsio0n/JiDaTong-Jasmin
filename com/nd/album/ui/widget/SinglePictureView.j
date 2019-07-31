.bytecode 50.0
.class public synchronized com/nd/album/ui/widget/SinglePictureView
.super com/nd/album/ui/widget/BaseSingleView
.implements android/view/View$OnClickListener
.inner class inner com/nd/album/ui/widget/SinglePictureView$1
.inner class inner com/nd/album/ui/widget/SinglePictureView$10
.inner class inner com/nd/album/ui/widget/SinglePictureView$2
.inner class inner com/nd/album/ui/widget/SinglePictureView$3
.inner class inner com/nd/album/ui/widget/SinglePictureView$4
.inner class inner com/nd/album/ui/widget/SinglePictureView$5
.inner class inner com/nd/album/ui/widget/SinglePictureView$6
.inner class inner com/nd/album/ui/widget/SinglePictureView$7
.inner class inner com/nd/album/ui/widget/SinglePictureView$8
.inner class inner com/nd/album/ui/widget/SinglePictureView$9
.inner class private DelGPhotoTask inner com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask outer com/nd/album/ui/widget/SinglePictureView
.inner class NewPhotoViewAttacher inner com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher outer com/nd/album/ui/widget/SinglePictureView
.inner class private ShareTask inner com/nd/album/ui/widget/SinglePictureView$ShareTask outer com/nd/album/ui/widget/SinglePictureView
.inner class UpdateAvatarTask inner com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask outer com/nd/album/ui/widget/SinglePictureView
.inner class UpdateShowTask inner com/nd/album/ui/widget/SinglePictureView$UpdateShowTask outer com/nd/album/ui/widget/SinglePictureView

.field public static final 'COUNT' I = 5


.field public static 'CROP_PHOTO_WITH_DATA' I = 0


.field public static 'SIZE_FOR_MY_AVATAR' I = 0


.field public static final 'TAG' Ljava/lang/String; = "SinglePictureView"

.field public static 'UPDATE_IMAGEINFO' I

.field private 'browsenum' Landroid/widget/TextView;

.field private 'delGPhotoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'delPhotoTask' Lcom/nd/album/ui/task/DelPhotoTask;

.field private 'delteCallBack' Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;

.field private 'edit' Landroid/widget/TextView;

.field private 'height' I

.field private 'ivTitleBtnLeft' Landroid/widget/ImageView;

.field private 'layoutComment' Landroid/view/View;

.field private 'likeCallBack' Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;

.field private 'mBitmap' Ljava/lang/ref/SoftReference; signature "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"

.field private 'mCategory' I

.field private 'mCropUri' Landroid/net/Uri;

.field private 'mDelGPhotoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mDelPhotoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mImageList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mLikeTask' Lcom/nd/album/ui/task/LikePhotoTask;

.field private 'mMyAvatar' Landroid/graphics/Bitmap;

.field private 'mMyShowAvatar' Landroid/graphics/Bitmap;

.field private 'mPhoto' Lcom/product/android/commonInterface/album/Image;

.field private 'mPicHolder' Lcom/product/android/ui/imageHolder/PictureHolder;

.field private 'mPopWindow' Landroid/widget/PopupWindow;

.field private 'mQid' J

.field private 'mShareTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mUpdateAvatarTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mUpdateShowTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_bToast' Z

.field protected 'm_dialog' Landroid/app/ProgressDialog;

.field private 'misMy' Z

.field public 'oap_id' J

.field private 'savePhotoTask' Lcom/nd/album/ui/task/SavePhotoTask;

.field private 'tvIndex' Landroid/widget/TextView;

.field private 'tvMore' Landroid/widget/ImageView;

.field private 'tvPriase' Landroid/widget/TextView;

.field private 'tvReply' Landroid/widget/TextView;

.field private 'tvShare' Landroid/widget/ImageView;

.field private 'updateAvatarTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'updateShowTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.method static <clinit>()V
sipush 640
putstatic com/nd/album/ui/widget/SinglePictureView/SIZE_FOR_MY_AVATAR I
iconst_1
putstatic com/nd/album/ui/widget/SinglePictureView/CROP_PHOTO_WITH_DATA I
iconst_2
putstatic com/nd/album/ui/widget/SinglePictureView/UPDATE_IMAGEINFO I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/app/Activity;Lcom/product/android/commonInterface/album/Image;ILjava/util/ArrayList;ZJIJ)V
.signature "(Landroid/app/Activity;Lcom/product/android/commonInterface/album/Image;ILjava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;ZJIJ)V"
aload 0
aload 1
invokespecial com/nd/album/ui/widget/BaseSingleView/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/album/ui/widget/SinglePictureView/mMyAvatar Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/nd/album/ui/widget/SinglePictureView/mMyShowAvatar Landroid/graphics/Bitmap;
aload 0
iconst_1
putfield com/nd/album/ui/widget/SinglePictureView/m_bToast Z
aload 0
iconst_0
putfield com/nd/album/ui/widget/SinglePictureView/height I
aload 0
lconst_0
putfield com/nd/album/ui/widget/SinglePictureView/mQid J
aload 0
new com/nd/album/ui/widget/SinglePictureView$3
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$3/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/mDelPhotoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/album/ui/widget/SinglePictureView$4
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$4/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/mDelGPhotoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/album/ui/widget/SinglePictureView$7
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$7/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/delteCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
new com/nd/album/ui/widget/SinglePictureView$8
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$8/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/likeCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
aload 0
new com/nd/album/ui/widget/SinglePictureView$9
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$9/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/mUpdateShowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/album/ui/widget/SinglePictureView$10
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$10/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/mUpdateAvatarTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
aload 0
iload 3
putfield com/nd/album/ui/widget/SinglePictureView/mNum I
aload 0
aload 4
putfield com/nd/album/ui/widget/SinglePictureView/mImageList Ljava/util/ArrayList;
aload 0
iload 5
putfield com/nd/album/ui/widget/SinglePictureView/misMy Z
aload 0
lload 6
putfield com/nd/album/ui/widget/SinglePictureView/oap_id J
aload 0
iload 8
putfield com/nd/album/ui/widget/SinglePictureView/mCategory I
aload 0
lload 9
putfield com/nd/album/ui/widget/SinglePictureView/mQid J
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/initView()V
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/initViewValue()V
return
.limit locals 11
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/updateLikeDrawable()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/album/ui/widget/SinglePictureView;Z)V
aload 0
iload 1
invokespecial com/nd/album/ui/widget/SinglePictureView/setPraiseEnable(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1300(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/graphics/Bitmap;
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/getBitmap()Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mMyShowAvatar Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1402(Lcom/nd/album/ui/widget/SinglePictureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
putfield com/nd/album/ui/widget/SinglePictureView/mMyShowAvatar Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mMyAvatar Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/album/ui/widget/SinglePictureView;)Z
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/m_bToast Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/album/ui/widget/SinglePictureView;)J
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mQid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/album/ui/widget/SinglePictureView;)I
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mCategory I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/product/android/commonInterface/album/Image;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/nd/album/ui/task/DelPhotoTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/album/ui/widget/SinglePictureView;)Ljava/util/ArrayList;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mImageList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/album/ui/widget/SinglePictureView;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/album/ui/widget/SinglePictureView;)V
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/showDialog()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/album/ui/widget/SinglePictureView;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doLike()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mLikeTask Lcom/nd/album/ui/task/LikePhotoTask;
ifnull L0
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mLikeTask Lcom/nd/album/ui/task/LikePhotoTask;
invokevirtual com/nd/album/ui/task/LikePhotoTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/album/ui/task/LikePhotoTask
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
iconst_0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/likeCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
invokespecial com/nd/album/ui/task/LikePhotoTask/<init>(Lcom/product/android/commonInterface/album/Image;ILcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;)V
putfield com/nd/album/ui/widget/SinglePictureView/mLikeTask Lcom/nd/album/ui/task/LikePhotoTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mLikeTask Lcom/nd/album/ui/task/LikePhotoTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/album/ui/task/LikePhotoTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 1
.limit stack 6
.end method

.method private doShare()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mShareTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mShareTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/wait_for_share_pic I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
new com/nd/album/ui/widget/SinglePictureView$ShareTask
dup
aload 0
aconst_null
invokespecial com/nd/album/ui/widget/SinglePictureView$ShareTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;Lcom/nd/album/ui/widget/SinglePictureView$1;)V
putfield com/nd/album/ui/widget/SinglePictureView/mShareTask Lcom/common/android/utils/task/genericTask/GenericTask;
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mShareTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mBitmap Ljava/lang/ref/SoftReference;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mBitmap Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
ifnonnull L1
L0:
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/isImageExist()Z
ifeq L1
aload 0
new java/lang/ref/SoftReference
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokestatic android/graphics/BitmapFactory/decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
putfield com/nd/album/ui/widget/SinglePictureView/mBitmap Ljava/lang/ref/SoftReference;
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mBitmap Ljava/lang/ref/SoftReference;
ifnull L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mBitmap Ljava/lang/ref/SoftReference;
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast android/graphics/Bitmap
areturn
L2:
aconst_null
areturn
.limit locals 1
.limit stack 4
.end method

.method private initPicView()V
aload 0
new com/product/android/ui/imageHolder/PictureHolder
dup
invokespecial com/product/android/ui/imageHolder/PictureHolder/<init>()V
putfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mNum I
putfield com/product/android/ui/imageHolder/PictureHolder/pos I
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/album/R$id/rllProgress I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/product/android/ui/imageHolder/PictureHolder/rlProgress Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/album/R$id/cpProgress I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/imageHolder/CircleProgress
putfield com/product/android/ui/imageHolder/PictureHolder/cpProgress Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getstatic com/nd/album/R$id/ivPicture I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast uk/co/senab/photoview/PhotoView
putfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
new com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher
dup
aload 0
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getContext()Landroid/content/Context;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
invokespecial com/nd/album/ui/widget/SinglePictureView$NewPhotoViewAttacher/<init>(Lcom/nd/album/ui/widget/SinglePictureView;Landroid/content/Context;Landroid/widget/ImageView;)V
invokevirtual uk/co/senab/photoview/PhotoView/setAttacher(Luk/co/senab/photoview/PhotoViewAttacher;)V
return
.limit locals 1
.limit stack 6
.end method

.method private initView()V
aload 0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
ldc "layout_inflater"
invokevirtual android/app/Activity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/album/ui/widget/SinglePictureView/mInflater Landroid/view/LayoutInflater;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/image_switcher I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/album/R$id/vsndbottom I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/album/R$id/pic_index I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/tvIndex Landroid/widget/TextView;
L1:
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/initPicView()V
aload 0
aload 0
getstatic com/nd/album/R$id/layoutTop I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/album/ui/widget/SinglePictureView/layoutTop Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/album/R$id/browse_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/browsenum Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/album/R$id/tvPraise I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/album/R$id/tvReply I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/tvReply Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/album/R$id/edit I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/edit Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/album/R$id/layoutComment I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
aload 0
aload 0
getstatic com/nd/album/R$id/ivBack I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/widget/SinglePictureView/ivTitleBtnLeft Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/album/R$id/ivShare I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/widget/SinglePictureView/tvShare Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/album/R$id/ivMore I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/widget/SinglePictureView/tvMore Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/misMy Z
ifne L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvShare Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/showMenu()V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
pop
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 1
aload 0
aload 1
getfield android/util/DisplayMetrics/widthPixels I
putfield com/nd/album/ui/widget/SinglePictureView/mScreenWidth I
aload 0
aload 1
getfield android/util/DisplayMetrics/heightPixels I
putfield com/nd/album/ui/widget/SinglePictureView/mScreenHeight I
aload 0
aload 1
getfield android/util/DisplayMetrics/density F
ldc_w 73.0F
fmul
f2i
putfield com/nd/album/ui/widget/SinglePictureView/height I
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/setEventListeners()V
return
L0:
aload 0
getstatic com/nd/album/R$id/vsxybottom I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewStub
invokevirtual android/view/ViewStub/inflate()Landroid/view/View;
astore 1
aload 0
aload 0
getstatic com/nd/album/R$id/ivTitleName I
invokevirtual com/nd/album/ui/widget/SinglePictureView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/widget/SinglePictureView/tvIndex Landroid/widget/TextView;
goto L1
.limit locals 2
.limit stack 3
.end method

.method private initViewValue()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/misMy Z
ifeq L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvMore Landroid/widget/ImageView;
getstatic com/nd/album/R$drawable/bt_more I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvIndex Landroid/widget/TextView;
ldc "%d / %d"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mNum I
iconst_1
iadd
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mImageList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
ifnull L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/browsenum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getNav_cnt()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/updateLikeDrawable()V
L3:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
ifnull L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
ifnull L4
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getUrl_480()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/product/android/ui/imageHolder/PictureHolder/showImage(Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L4:
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvMore Landroid/widget/ImageView;
getstatic com/nd/album/R$drawable/bt_download I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
L2:
aload 0
iconst_0
invokevirtual com/nd/album/ui/widget/SinglePictureView/setButtonEnable(Z)V
goto L3
.limit locals 1
.limit stack 7
.end method

.method private isImageExist()Z
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
new java/io/File
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method private setPraiseEnable(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private showDialog()V
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/album/R$string/sure_delete_this_pic I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/album/R$string/ok I
new com/nd/album/ui/widget/SinglePictureView$1
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$1/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/album/R$string/cancel I
new com/nd/album/ui/widget/SinglePictureView$2
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$2/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 5
.end method

.method private updateLikeDrawable()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
ifnonnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$drawable/like I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/isMyPraise()I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$drawable/praise_over I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
L2:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
ifeq L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getPraisecnt()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$drawable/praise_normal I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
aconst_null
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L2
L3:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 5
.end method

.method protected begin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/album/ui/widget/SinglePictureView/m_dialog Landroid/app/ProgressDialog;
return
.limit locals 3
.limit stack 5
.end method

.method protected doDelPhoto()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
lconst_0
lcmp
ifle L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
L2:
return
L1:
aload 0
new com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask
dup
aload 0
aconst_null
invokespecial com/nd/album/ui/widget/SinglePictureView$DelGPhotoTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;Lcom/nd/album/ui/widget/SinglePictureView$1;)V
putfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mDelGPhotoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 1
ldc "pid"
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getImageId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 1
ldc "gid"
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual com/product/android/commonInterface/album/Image/getGid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delGPhotoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
ifnull L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
invokevirtual com/nd/album/ui/task/DelPhotoTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L2
L3:
aload 0
new com/nd/album/ui/task/DelPhotoTask
dup
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getContext()Landroid/content/Context;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
iconst_0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delteCallBack Lcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;
invokespecial com/nd/album/ui/task/DelPhotoTask/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/album/Image;ILcom/nd/album/ui/task/DelPhotoTask$ImageActionCallBack;)V
putfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/album/ui/task/DelPhotoTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 7
.end method

.method protected doSave()V
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/no_sdcard_for_download I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/isImageExist()Z
ifeq L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/savePhotoTask Lcom/nd/album/ui/task/SavePhotoTask;
ifnull L3
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/savePhotoTask Lcom/nd/album/ui/task/SavePhotoTask;
invokevirtual com/nd/album/ui/task/SavePhotoTask/getStatus()Landroid/os/AsyncTask$Status;
if_acmpeq L1
L3:
aload 0
new com/nd/album/ui/task/SavePhotoTask
dup
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getContext()Landroid/content/Context;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokespecial com/nd/album/ui/task/SavePhotoTask/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/album/Image;)V
putfield com/nd/album/ui/widget/SinglePictureView/savePhotoTask Lcom/nd/album/ui/task/SavePhotoTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/savePhotoTask Lcom/nd/album/ui/task/SavePhotoTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/album/ui/task/SavePhotoTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/try_again_after_pic_download I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
.catch java/io/FileNotFoundException from L0 to L1 using L2
iload 1
getstatic com/nd/album/ui/widget/SinglePictureView/CROP_PHOTO_WITH_DATA I
if_icmpne L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
ifnonnull L4
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/get_pic_file_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L3:
return
L4:
aload 3
ldc "mCropUri"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifne L5
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/get_pic_file_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 0
aload 3
ldc "mCropUri"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
ifnull L1
L0:
aload 0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
putfield com/nd/album/ui/widget/SinglePictureView/mMyAvatar Landroid/graphics/Bitmap;
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
ifnull L3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L6
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpeq L3
L6:
aload 0
new com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$UpdateAvatarTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mUpdateAvatarTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 3
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L2:
astore 3
aload 3
invokevirtual java/io/FileNotFoundException/printStackTrace()V
return
.limit locals 4
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/album/R$id/ivBack I
if_icmpne L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L0:
iload 2
getstatic com/nd/album/R$id/tvPraise I
if_icmpne L1
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/doLike()V
return
L1:
iload 2
getstatic com/nd/album/R$id/tvReply I
if_icmpeq L2
iload 2
getstatic com/nd/album/R$id/edit I
if_icmpeq L2
iload 2
getstatic com/nd/album/R$id/layoutComment I
if_icmpne L3
L2:
new android/content/Intent
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
ldc com/nd/album/ui/activity/PhotoCommentActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "Image"
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPhoto Lcom/product/android/commonInterface/album/Image;
invokevirtual android/os/Bundle/putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
aload 3
ldc "oap_id"
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/oap_id J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
ldc "index"
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mNum I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
aload 1
getstatic com/nd/album/ui/widget/SinglePictureView/UPDATE_IMAGEINFO I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L3:
iload 2
getstatic com/nd/album/R$id/ivMore I
if_icmpne L4
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/misMy Z
ifeq L5
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/cancelHandHideMenu()V
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/showMorePopupWindow()V
return
L5:
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/doSave()V
return
L4:
iload 2
getstatic com/nd/album/R$id/ivShare I
if_icmpne L6
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/isImageExist()Z
ifeq L7
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/doShare()V
return
L7:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/try_again_after_pic_download I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/switchMenu()V
return
.limit locals 4
.limit stack 4
.end method

.method public releaseBitmap()V
return
.limit locals 1
.limit stack 0
.end method

.method public setButtonEnable(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setEnabled(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setClickable(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvReply Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setEnabled(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvReply Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setClickable(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
iload 1
invokevirtual android/view/View/setEnabled(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
iload 1
invokevirtual android/view/View/setClickable(Z)V
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/edit Landroid/widget/TextView;
ifnull L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/edit Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setEnabled(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/edit Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setClickable(Z)V
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public setEventListeners()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/ivTitleBtnLeft Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvMore Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvShare Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutTop Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/tvPriase Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/layoutComment Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public showMorePopupWindow()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
ifnonnull L0
new android/widget/ListView
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
astore 2
aload 2
getstatic com/nd/album/R$color/white I
invokevirtual android/widget/ListView/setBackgroundResource(I)V
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 3
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 3
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
new android/widget/ArrayAdapter
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$layout/more_opera I
getstatic com/nd/album/R$id/tvContent I
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/save I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/set_be_header_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/set_be_show_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_3
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/delete_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;II[Ljava/lang/Object;)V
astore 1
aload 2
new com/nd/album/ui/widget/SinglePictureView$5
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$5/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
L2:
aload 2
aload 1
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
new android/widget/PopupWindow
dup
aload 2
aload 3
getfield android/util/DisplayMetrics/widthPixels I
iconst_2
idiv
bipush 10
isub
bipush -2
iconst_1
invokespecial android/widget/PopupWindow/<init>(Landroid/view/View;IIZ)V
putfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
new android/graphics/drawable/BitmapDrawable
dup
invokespecial android/graphics/drawable/BitmapDrawable/<init>()V
invokevirtual android/widget/PopupWindow/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setFocusable(Z)V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
iconst_1
invokevirtual android/widget/PopupWindow/setOutsideTouchable(Z)V
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPopWindow Landroid/widget/PopupWindow;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/ivPicture Luk/co/senab/photoview/PhotoView;
bipush 53
iconst_0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/height I
invokevirtual android/widget/PopupWindow/showAtLocation(Landroid/view/View;III)V
return
L1:
new android/widget/ArrayAdapter
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$layout/more_opera I
getstatic com/nd/album/R$id/tvContent I
iconst_2
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/save I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/album/ui/widget/SinglePictureView/getResources()Landroid/content/res/Resources;
getstatic com/nd/album/R$string/delete_pic I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;II[Ljava/lang/Object;)V
astore 1
aload 2
new com/nd/album/ui/widget/SinglePictureView$6
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$6/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
goto L2
.limit locals 4
.limit stack 10
.end method

.method public stopTask()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
invokevirtual com/nd/album/ui/task/DelPhotoTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/delPhotoTask Lcom/nd/album/ui/task/DelPhotoTask;
iconst_1
invokevirtual com/nd/album/ui/task/DelPhotoTask/cancel(Z)Z
pop
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateAvatarTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
return
.limit locals 1
.limit stack 2
.end method

.method public updateAvatar()V
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView/isImageExist()Z
ifeq L0
aload 0
new java/io/File
dup
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mPicHolder Lcom/product/android/ui/imageHolder/PictureHolder;
getfield com/product/android/ui/imageHolder/PictureHolder/absPath Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
putfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mCropUri Landroid/net/Uri;
invokevirtual android/net/Uri/toString()Ljava/lang/String;
getstatic com/nd/album/ui/widget/SinglePictureView/SIZE_FOR_MY_AVATAR I
getstatic com/nd/album/ui/widget/SinglePictureView/SIZE_FOR_MY_AVATAR I
getstatic com/nd/album/ui/widget/SinglePictureView/CROP_PHOTO_WITH_DATA I
invokestatic com/nd/android/u/AlbumCallOtherModel/doCropImage(Landroid/content/Context;Ljava/lang/String;III)V
return
L0:
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
getstatic com/nd/album/R$string/get_pic_file_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 5
.end method

.method public updateShow()V
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mActivity Landroid/app/Activity;
ifnull L0
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
L0:
return
L1:
aload 0
new com/nd/album/ui/widget/SinglePictureView$UpdateShowTask
dup
aload 0
invokespecial com/nd/album/ui/widget/SinglePictureView$UpdateShowTask/<init>(Lcom/nd/album/ui/widget/SinglePictureView;)V
putfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/mUpdateShowTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/album/ui/widget/SinglePictureView/updateShowTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
