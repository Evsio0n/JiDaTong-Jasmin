.bytecode 50.0
.class public synchronized com/android/u/weibo/cropimage/ui/activity/CropImageActivity
.super android/app/Activity
.implements android/view/View$OnTouchListener
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1
.inner class LoadPictureTask inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask outer com/android/u/weibo/cropimage/ui/activity/CropImageActivity
.inner class ProcessPictureTask inner com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask outer com/android/u/weibo/cropimage/ui/activity/CropImageActivity

.field private static final 'DISTANCE_AT_LEAST' F = 10.0F


.field private static final 'DOUBLE_CLICK_TIME_SPACE' I = 250


.field private static final 'DRAG_IMAGE' I = 1


.field private static final 'NONE' I = 0


.field private static final 'OBTAIN_VIEW' I = 1


.field private static final 'ZOOM_IMAGE' I = 2


.field private 'isBigImg' Z

.field private 'isSavePhoto' Z

.field private 'mAvatarHeight' I

.field private 'mAvatarWidth' I

.field private 'mBigScale' F

.field private 'mBtnSave' Landroid/widget/Button;

.field private 'mCropView' Lcom/android/u/weibo/cropimage/ui/widget/CropView;

.field private 'mHandler' Landroid/os/Handler;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.end field

.field private 'mIvImg' Landroid/widget/ImageView;

.field private 'mLastClickTime' J

.field private 'mMatrix' Landroid/graphics/Matrix;

.field private 'mMode' I

.field private 'mMultiPoint' Landroid/graphics/PointF;

.field private 'mOldDistance' F

.field 'mOriginalUri' Landroid/net/Uri;

.field private 'mPrimaryBitmap' Landroid/graphics/Bitmap;

.field private 'mReturnBtn' Landroid/widget/ImageButton;

.field private 'mSaveMatrix' Landroid/graphics/Matrix;

.field private 'mScale' F

.field private 'mStartPoint' Landroid/graphics/PointF;

.field private 'mStatusBarHeight' I

.field private 'mSubX' F

.field private 'mSubY' F

.field private 'processTask' Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask;

.field private 'tvSaveAlbum' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
sipush 640
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarHeight I
aload 0
sipush 640
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarWidth I
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSaveMatrix Landroid/graphics/Matrix;
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStartPoint Landroid/graphics/PointF;
aload 0
new android/graphics/PointF
dup
invokespecial android/graphics/PointF/<init>()V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMultiPoint Landroid/graphics/PointF;
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isBigImg Z
aload 0
lconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mLastClickTime J
aload 0
ldc_w 3.0F
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isSavePhoto Z
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStatusBarHeight I
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOriginalUri Landroid/net/Uri;
aload 0
new com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1
dup
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity$1/<init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)V
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/init()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
aload 1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mIvImg Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
aload 0
aload 1
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)Landroid/graphics/Bitmap;
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getBitmap()Landroid/graphics/Bitmap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;)I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarWidth I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private changeSize(FF)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isBigImg Z
ifeq L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/reset()V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubX F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubY F
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isBigImg Z
return
L0:
aload 0
iconst_1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isBigImg Z
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
fconst_1
fsub
fload 1
fmul
fneg
fstore 1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
fconst_1
fsub
fload 2
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStatusBarHeight I
i2f
fsub
fmul
fneg
fstore 2
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
fload 1
fload 2
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
return
.limit locals 3
.limit stack 3
.end method

.method private decodeUriAsBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.catch java/io/FileNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getContentResolver()Landroid/content/ContentResolver;
aload 1
invokevirtual android/content/ContentResolver/openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
invokestatic android/graphics/BitmapFactory/decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/io/FileNotFoundException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method private getBarHeight()V
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 1
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
aload 1
invokevirtual android/view/View/getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
aload 0
aload 1
getfield android/graphics/Rect/top I
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStatusBarHeight I
return
.limit locals 2
.limit stack 2
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getBarHeight()V
aconst_null
astore 2
aconst_null
astore 1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
ifnull L0
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/takeScreenShot()Landroid/graphics/Bitmap;
astore 3
aload 3
ifnull L1
aload 3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
iconst_3
iadd
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStatusBarHeight I
iadd
iconst_3
iadd
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
bipush 6
isub
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
bipush 6
isub
invokestatic android/graphics/Bitmap/createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
astore 1
L1:
aload 1
astore 2
aload 1
aload 3
if_acmpeq L0
aload 1
astore 2
aload 3
ifnull L0
aload 1
astore 2
aload 3
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 3
invokevirtual android/graphics/Bitmap/recycle()V
invokestatic java/lang/System/gc()V
aload 1
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 6
.end method

.method private init()V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/iv_crop_image I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast com/android/u/weibo/cropimage/ui/widget/CropView
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
ifnonnull L0
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getWidth()I
istore 5
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getHeight()I
istore 6
iload 5
ifeq L1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mCropView Lcom/android/u/weibo/cropimage/ui/widget/CropView;
ifnonnull L2
L1:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mHandler Landroid/os/Handler;
invokevirtual android/os/Handler/obtainMessage()Landroid/os/Message;
astore 7
aload 7
iconst_1
putfield android/os/Message/what I
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mHandler Landroid/os/Handler;
aload 7
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fstore 3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fstore 4
iload 5
i2f
fload 3
fdiv
fstore 1
iload 6
i2f
fload 4
fdiv
fstore 2
fload 1
fload 2
fcmpg
ifge L3
L4:
aload 0
fload 1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
fconst_1
fcmpg
ifge L5
fconst_1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
fdiv
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
fcmpg
ifge L5
aload 0
fconst_1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
fdiv
f2d
ldc2_w 0.5D
dadd
d2f
fconst_2
fdiv
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBigScale F
L5:
aload 0
iload 5
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
fload 3
fmul
fsub
fconst_2
fdiv
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubX F
aload 0
iload 6
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
fload 4
fmul
fsub
fconst_2
fdiv
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubY F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mScale F
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubX F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSubY F
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mIvImg Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getBarHeight()V
return
L3:
fload 2
fstore 1
goto L4
.limit locals 8
.limit stack 5
.end method

.method private multidPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
fstore 3
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
fstore 4
aload 2
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
fstore 5
aload 2
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
fstore 6
aload 1
fload 3
fload 4
fadd
fconst_2
fdiv
fload 5
fload 6
fadd
fconst_2
fdiv
invokevirtual android/graphics/PointF/set(FF)V
return
.limit locals 7
.limit stack 4
.end method

.method private spacing(Landroid/view/MotionEvent;)F
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
fsub
fstore 2
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
fsub
fstore 3
fload 2
fload 2
fmul
fload 3
fload 3
fmul
fadd
f2d
invokestatic java/lang/Math/sqrt(D)D
d2f
freturn
.limit locals 4
.limit stack 3
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getDecorView()Landroid/view/View;
astore 1
aload 1
iconst_0
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
aload 1
iconst_1
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
aload 1
invokevirtual android/view/View/buildDrawingCache()V
aload 1
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/btn_crop_save I
if_icmpne L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/processTask Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask;
ifnull L1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/processTask Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask;
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
L2:
return
L1:
aload 0
new com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/wait I
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/<init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/content/Context;I)V
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/processTask Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/processTask Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity$ProcessPictureTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/imgBtn_portrait_return I
if_icmpne L3
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/finish()V
return
L3:
iload 2
getstatic com/android/u/weibo/R$id/tv_save_to_album I
if_icmpne L2
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isSavePhoto Z
ifne L4
iconst_1
istore 3
L5:
aload 0
iload 3
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isSavePhoto Z
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/isSavePhoto Z
ifeq L6
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/tvSaveAlbum Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/portrait_round_select I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
L4:
iconst_0
istore 3
goto L5
L6:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/tvSaveAlbum Landroid/widget/TextView;
getstatic com/android/u/weibo/R$drawable/portrait_round_no I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 4
.limit stack 6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/requestWindowFeature(I)Z
pop
aload 0
getstatic com/android/u/weibo/R$layout/activity_portrait_crop I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/tv_move_zoom I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokevirtual android/widget/TextView/getBackground()Landroid/graphics/drawable/Drawable;
bipush 77
invokevirtual android/graphics/drawable/Drawable/setAlpha(I)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tv_save_to_album I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/tvSaveAlbum Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/tvSaveAlbum Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/src_img I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mIvImg Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mIvImg Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/imgBtn_portrait_return I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mReturnBtn Landroid/widget/ImageButton;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mReturnBtn Landroid/widget/ImageButton;
invokevirtual android/widget/ImageButton/getBackground()Landroid/graphics/drawable/Drawable;
iconst_0
invokevirtual android/graphics/drawable/Drawable/setAlpha(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mReturnBtn Landroid/widget/ImageButton;
aload 0
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getIntent()Landroid/content/Intent;
ifnull L0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getIntent()Landroid/content/Intent;
ldc "mCropUri"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifne L1
L0:
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/portrait_no_picture I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/finish()V
L1:
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/getIntent()Landroid/content/Intent;
astore 1
aload 0
aload 1
ldc "mCropUri"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOriginalUri Landroid/net/Uri;
aload 0
aload 1
ldc "outputX"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarHeight I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarHeight I
aload 0
aload 1
ldc "outputY"
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarWidth I
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mAvatarWidth I
aload 0
aload 0
getstatic com/android/u/weibo/R$id/btn_crop_save I
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBtnSave Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mBtnSave Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
new com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask
dup
aload 0
aload 0
getstatic com/android/u/weibo/R$string/wait_for_loading_image I
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/<init>(Lcom/android/u/weibo/cropimage/ui/activity/CropImageActivity;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/cropimage/ui/activity/CropImageActivity$LoadPictureTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mPrimaryBitmap Landroid/graphics/Bitmap;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ClickableViewAccessibility" 
.end annotation
aload 1
checkcast android/widget/ImageView
astore 1
aload 2
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
tableswitch 0
L0
L1
L2
L3
L3
L4
L1
default : L3
L3:
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
iconst_1
ireturn
L0:
aload 2
invokevirtual android/view/MotionEvent/getEventTime()J
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mLastClickTime J
lsub
ldc2_w 250L
lcmp
ifge L5
aload 0
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/changeSize(FF)V
L6:
aload 0
aload 2
invokevirtual android/view/MotionEvent/getEventTime()J
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mLastClickTime J
goto L3
L5:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSaveMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStartPoint Landroid/graphics/PointF;
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 2
invokevirtual android/view/MotionEvent/getY()F
invokevirtual android/graphics/PointF/set(FF)V
aload 0
iconst_1
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
goto L6
L4:
aload 0
aload 0
aload 2
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/spacing(Landroid/view/MotionEvent;)F
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOldDistance F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOldDistance F
ldc_w 10.0F
fcmpl
ifle L3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSaveMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMultiPoint Landroid/graphics/PointF;
aload 2
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/multidPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
aload 0
iconst_2
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
goto L3
L1:
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
goto L3
L2:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
iconst_1
if_icmpne L7
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSaveMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 2
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStartPoint Landroid/graphics/PointF;
getfield android/graphics/PointF/x F
fsub
aload 2
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mStartPoint Landroid/graphics/PointF;
getfield android/graphics/PointF/y F
fsub
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
goto L3
L7:
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMode I
iconst_2
if_icmpne L3
aload 0
aload 2
invokespecial com/android/u/weibo/cropimage/ui/activity/CropImageActivity/spacing(Landroid/view/MotionEvent;)F
fstore 3
fload 3
ldc_w 10.0F
fcmpl
ifle L3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mSaveMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/set(Landroid/graphics/Matrix;)V
fload 3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mOldDistance F
fdiv
fstore 3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMatrix Landroid/graphics/Matrix;
fload 3
fload 3
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMultiPoint Landroid/graphics/PointF;
getfield android/graphics/PointF/x F
aload 0
getfield com/android/u/weibo/cropimage/ui/activity/CropImageActivity/mMultiPoint Landroid/graphics/PointF;
getfield android/graphics/PointF/y F
invokevirtual android/graphics/Matrix/postScale(FFFF)Z
pop
goto L3
.limit locals 4
.limit stack 5
.end method
