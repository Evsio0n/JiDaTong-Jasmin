.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ProgressImageView
.super android/widget/ImageView

.field private 'mHeight' I

.field private 'mIsGif' Z

.field private 'mPaint' Landroid/graphics/Paint;

.field private 'mProgressString' Ljava/lang/String;

.field private 'mWidth' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mIsGif Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ProgressImageView/initParam(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mIsGif Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ProgressImageView/initParam(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mIsGif Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ProgressImageView/initParam(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method private initParam(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
ldc_w -14540254
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
aload 1
ldc_w 12.0F
invokestatic com/common/android/utils/DisplayUtil/dip2px(Landroid/content/Context;F)I
i2f
invokevirtual android/graphics/Paint/setTextSize(F)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/widget/ImageView/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
ifne L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mProgressString Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
i2f
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mProgressString Ljava/lang/String;
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
fsub
f2i
iconst_2
idiv
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
iconst_2
idiv
istore 3
aload 1
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mProgressString Ljava/lang/String;
iload 2
i2f
iload 3
i2f
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mIsGif Z
ifeq L0
getstatic com/nd/android/u/chatUiUtils/LocalImageManager/INSTANCE Lcom/nd/android/u/chatUiUtils/LocalImageManager;
invokevirtual com/nd/android/u/chatUiUtils/LocalImageManager/getGifFlagBitmap()Landroid/graphics/Bitmap;
astore 6
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
istore 2
aload 6
invokevirtual android/graphics/Bitmap/getWidth()I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
istore 4
aload 6
invokevirtual android/graphics/Bitmap/getHeight()I
istore 5
aload 1
aload 6
iload 2
iload 3
isub
i2f
iload 4
iload 5
isub
i2f
aload 0
getfield com/nd/android/u/ui/widge/ProgressImageView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
return
.limit locals 7
.limit stack 5
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
aload 1
invokespecial android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
putfield com/nd/android/u/ui/widge/ProgressImageView/mWidth I
aload 0
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
putfield com/nd/android/u/ui/widge/ProgressImageView/mHeight I
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setIsGif(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/ProgressImageView/mIsGif Z
aload 0
invokevirtual com/nd/android/u/ui/widge/ProgressImageView/postInvalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setProgress(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ProgressImageView/mProgressString Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/ui/widge/ProgressImageView/postInvalidate()V
return
.limit locals 2
.limit stack 2
.end method
