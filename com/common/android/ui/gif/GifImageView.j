.bytecode 50.0
.class public synchronized com/common/android/ui/gif/GifImageView
.super android/widget/ImageView
.inner class static synthetic inner com/common/android/ui/gif/GifImageView$1
.inner class private DecodeThread inner com/common/android/ui/gif/GifImageView$DecodeThread outer com/common/android/ui/gif/GifImageView
.inner class inner com/common/android/ui/gif/GifImageView$DecodeThread$1
.inner class private static DrawHandler inner com/common/android/ui/gif/GifImageView$DrawHandler outer com/common/android/ui/gif/GifImageView

.field private static final 'TAG' Ljava/lang/String; = "GifImageView"

.field public static 'matrix' Landroid/graphics/Matrix;

.field private 'drawHandler' Landroid/os/Handler;

.field private 'isSaveFrames' Z

.field private 'mDecodeThread' Lcom/common/android/ui/gif/GifImageView$DecodeThread;

.field private 'mFile' Ljava/io/File;

.field private 'mKey' Ljava/lang/Object;

.field private 'mLastBitmap' Landroid/graphics/Bitmap;

.field private 'mResId' I

.field private 'mbIsScaled' Z

.method static <clinit>()V
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putstatic com/common/android/ui/gif/GifImageView/matrix Landroid/graphics/Matrix;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mResId I
aload 0
new com/common/android/ui/gif/GifImageView$DrawHandler
dup
aload 0
invokespecial com/common/android/ui/gif/GifImageView$DrawHandler/<init>(Lcom/common/android/ui/gif/GifImageView;)V
putfield com/common/android/ui/gif/GifImageView/drawHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mResId I
aload 0
new com/common/android/ui/gif/GifImageView$DrawHandler
dup
aload 0
invokespecial com/common/android/ui/gif/GifImageView$DrawHandler/<init>(Lcom/common/android/ui/gif/GifImageView;)V
putfield com/common/android/ui/gif/GifImageView/drawHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/mResId I
aload 0
new com/common/android/ui/gif/GifImageView$DrawHandler
dup
aload 0
invokespecial com/common/android/ui/gif/GifImageView$DrawHandler/<init>(Lcom/common/android/ui/gif/GifImageView;)V
putfield com/common/android/ui/gif/GifImageView/drawHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$100(Lcom/common/android/ui/gif/GifImageView;Landroid/graphics/Bitmap;)V
aload 0
aload 1
invokespecial com/common/android/ui/gif/GifImageView/drawImage(Landroid/graphics/Bitmap;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Landroid/widget/ImageView;)V
aload 0
invokestatic com/common/android/ui/gif/GifImageView/updateBaseMatrix(Landroid/widget/ImageView;)V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/ui/gif/GifImageView;)I
aload 0
getfield com/common/android/ui/gif/GifImageView/mResId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/ui/gif/GifImageView;)Ljava/io/File;
aload 0
getfield com/common/android/ui/gif/GifImageView/mFile Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/common/android/ui/gif/GifImageView;)Landroid/os/Handler;
aload 0
getfield com/common/android/ui/gif/GifImageView/drawHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/common/android/ui/gif/GifImageView;)Z
aload 0
getfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/common/android/ui/gif/GifImageView;Z)Z
aload 0
iload 1
putfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/common/android/ui/gif/GifImageView;)Ljava/lang/Object;
aload 0
getfield com/common/android/ui/gif/GifImageView/mKey Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkDuplicate()V
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "View can't be reused"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private drawImage(Landroid/graphics/Bitmap;)V
aload 1
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifeq L0
return
L0:
aload 0
aload 1
invokevirtual com/common/android/ui/gif/GifImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
aload 0
invokevirtual com/common/android/ui/gif/GifImageView/invalidate()V
aload 0
getfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
L1:
aload 0
aload 1
putfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
return
.limit locals 2
.limit stack 2
.end method

.method private getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
aload 0
getfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
ifne L0
aload 1
ifnonnull L1
L0:
aload 1
areturn
L1:
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
pop
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
pop
aload 1
aload 1
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
imul
aload 1
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
imul
iconst_1
invokestatic android/graphics/Bitmap/createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
areturn
.limit locals 2
.limit stack 4
.end method

.method private static updateBaseMatrix(Landroid/widget/ImageView;)V
aload 0
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual android/widget/ImageView/getDrawable()Landroid/graphics/drawable/Drawable;
astore 6
aload 6
ifnull L1
getstatic com/common/android/ui/gif/GifImageView/matrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/reset()V
aload 0
invokevirtual android/widget/ImageView/getWidth()I
i2f
fstore 1
aload 0
invokevirtual android/widget/ImageView/getHeight()I
i2f
fstore 2
aload 6
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
istore 4
aload 6
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
istore 5
fconst_2
fload 1
iload 4
i2f
fdiv
fload 2
iload 5
i2f
fdiv
invokestatic java/lang/Math/min(FF)F
invokestatic java/lang/Math/min(FF)F
fstore 3
getstatic com/common/android/ui/gif/GifImageView/matrix Landroid/graphics/Matrix;
fload 3
fload 3
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
getstatic com/common/android/ui/gif/GifImageView/matrix Landroid/graphics/Matrix;
fload 1
iload 4
i2f
fload 3
fmul
fsub
fconst_2
fdiv
fload 2
iload 5
i2f
fload 3
fmul
fsub
fconst_2
fdiv
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
getstatic com/common/android/ui/gif/GifImageView/matrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
return
.limit locals 7
.limit stack 5
.end method

.method public changeScale()V
aload 0
getfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
ifne L0
iconst_1
istore 1
L1:
aload 0
iload 1
putfield com/common/android/ui/gif/GifImageView/mbIsScaled Z
return
L0:
iconst_0
istore 1
goto L1
.limit locals 2
.limit stack 2
.end method

.method public quit()V
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
invokevirtual com/common/android/ui/gif/GifImageView$DecodeThread/quit()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public recycle()V
aload 0
getfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/recycle()V
aload 0
aconst_null
putfield com/common/android/ui/gif/GifImageView/mLastBitmap Landroid/graphics/Bitmap;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setGifImage(I)V
aload 0
invokespecial com/common/android/ui/gif/GifImageView/checkDuplicate()V
aload 0
iload 1
putfield com/common/android/ui/gif/GifImageView/mResId I
aload 0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
putfield com/common/android/ui/gif/GifImageView/mKey Ljava/lang/Object;
aload 0
invokevirtual com/common/android/ui/gif/GifImageView/startDecodeThread()V
return
.limit locals 2
.limit stack 2
.end method

.method public setGifImage(Ljava/lang/String;)V
.throws java/io/FileNotFoundException
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
aload 0
invokespecial com/common/android/ui/gif/GifImageView/checkDuplicate()V
aload 0
aload 1
putfield com/common/android/ui/gif/GifImageView/mKey Ljava/lang/Object;
aload 0
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield com/common/android/ui/gif/GifImageView/mFile Ljava/io/File;
aload 0
invokevirtual com/common/android/ui/gif/GifImageView/startDecodeThread()V
return
.limit locals 2
.limit stack 4
.end method

.method public setSaveFrames()V
aload 0
iconst_1
putfield com/common/android/ui/gif/GifImageView/isSaveFrames Z
return
.limit locals 1
.limit stack 2
.end method

.method public startDecodeThread()V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
ifnull L1
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
ifnull L3
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
getfield com/common/android/ui/gif/GifImageView$DecodeThread/mIsQuit Z
ifeq L3
L1:
aload 0
new com/common/android/ui/gif/GifImageView$DecodeThread
dup
aload 0
aconst_null
invokespecial com/common/android/ui/gif/GifImageView$DecodeThread/<init>(Lcom/common/android/ui/gif/GifImageView;Lcom/common/android/ui/gif/GifImageView$1;)V
putfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
aload 0
getfield com/common/android/ui/gif/GifImageView/mDecodeThread Lcom/common/android/ui/gif/GifImageView$DecodeThread;
invokevirtual com/common/android/ui/gif/GifImageView$DecodeThread/start()V
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 5
.end method
