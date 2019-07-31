.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/HorizontalProgressView
.super android/view/View
.inner class private static MyHandler inner com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler outer com/nd/android/u/tast/main/widget/HorizontalProgressView
.inner class private MyTimerTask inner com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask outer com/nd/android/u/tast/main/widget/HorizontalProgressView
.inner class public static abstract interface OnLevelUpdateListener inner com/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener outer com/nd/android/u/tast/main/widget/HorizontalProgressView

.field private static final 'DEFAULT_PERIOD' I = 50


.field private static final 'MSG_UPDATE_LEVEL' I = 1


.field private static final 'MSG_UPDATE_PROGRESS' I = 0


.field private final 'DEFAULT_MAX' I

.field private final 'DEFAULT_PROGRESS' I

.field private final 'DEFAULT_TEXT_COLOR' I

.field private final 'DEFAULT_TEXT_SIZE' I

.field private final 'MAX_ADD_COUNT' I

.field private final 'SECOND_VALUE' I

.field private 'cellAdd' I

.field private 'contentRect' Landroid/graphics/Rect;

.field private 'handler' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;

.field private 'height' I

.field private 'mBeginBitmap' Landroid/graphics/Bitmap;

.field private 'mCallback' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;

.field private 'mFinishBitmap' Landroid/graphics/Bitmap;

.field private 'mIsShowProgressText' Z

.field private 'mMax' I

.field private 'mMode' Landroid/graphics/PorterDuffXfermode;

.field private 'mPaint' Landroid/graphics/Paint;

.field private 'mProgress' I

.field private 'mTextColor' I

.field private 'mTextSize' F

.field private 'task' Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask;

.field private 'timer' Ljava/util/Timer;

.field private 'width' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/main/widget/HorizontalProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/tast/main/widget/HorizontalProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
bipush 100
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/DEFAULT_MAX I
aload 0
bipush 20
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/DEFAULT_TEXT_SIZE I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/DEFAULT_TEXT_COLOR I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/DEFAULT_PROGRESS I
aload 0
sipush 1000
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/SECOND_VALUE I
aload 0
iconst_5
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/MAX_ADD_COUNT I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mIsShowProgressText Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/contentRect Landroid/graphics/Rect;
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/height I
aload 0
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/SRC_IN Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMode Landroid/graphics/PorterDuffXfermode;
aload 1
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_android_textColor I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mTextColor I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_android_textSize I
ldc_w 20.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mTextSize F
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_android_max I
bipush 100
invokevirtual android/content/res/TypedArray/getInt(II)I
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setMax(I)V
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_android_progress I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_isShowProgressText I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mIsShowProgressText Z
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_backgroundDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L0
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
L1:
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/HorizontalProgressAttr_finishDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L2
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
L3:
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
new com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler
dup
aload 0
invokespecial com/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler/<init>(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/handler Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
return
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/progress_0_horizal I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
goto L1
L2:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/progress_100_horizal I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
goto L3
.limit locals 4
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mCallback Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/handler Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyHandler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;)Ljava/util/Timer;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/timer Ljava/util/Timer;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMax()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public getProgress()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
iconst_m1
if_icmpne L0
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/getWidth()I
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/getHeight()I
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/height I
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 6
aload 6
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/height I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
i2f
fdiv
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
aload 6
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
aload 6
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mTextSize F
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mBeginBitmap Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
ifne L1
fconst_0
fstore 2
L2:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
i2f
ldc_w 100.0F
fdiv
fstore 3
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
i2f
fstore 4
aload 1
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/height I
i2f
aconst_null
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(FFFFLandroid/graphics/Paint;I)I
istore 5
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
fload 2
fload 3
fmul
ldc_w 100.0F
fmul
fload 4
fsub
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMode Landroid/graphics/PorterDuffXfermode;
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mFinishBitmap Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aconst_null
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
iload 5
invokevirtual android/graphics/Canvas/restoreToCount(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mIsShowProgressText Z
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mTextColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
aload 6
iconst_0
aload 6
invokevirtual java/lang/String/length()I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/contentRect Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 1
aload 6
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/width I
iconst_2
idiv
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/contentRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/width()I
iconst_2
idiv
isub
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/height I
iconst_2
idiv
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/contentRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
iconst_2
idiv
iadd
iconst_1
isub
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
L3:
return
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
i2f
fdiv
fstore 2
goto L2
.limit locals 7
.limit stack 7
.end method

.method public setMax(I)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
bipush 100
idiv
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
iconst_1
if_icmpge L1
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
L1:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public setOnLevelUpdateListener(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mCallback Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$OnLevelUpdateListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setProgress(I)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
aload 0
monitorenter
iload 1
ifge L5
L0:
new java/lang/IllegalArgumentException
dup
ldc "mProgress not less than 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 3
aload 0
monitorexit
aload 3
athrow
L5:
iload 1
istore 2
L2:
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
if_icmple L3
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
istore 2
L3:
aload 0
iload 2
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/postInvalidate()V
L4:
aload 0
monitorexit
return
.limit locals 4
.limit stack 3
.end method

.method public setValue(II)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
aload 0
monitorenter
iload 1
ifge L7
L0:
new java/lang/IllegalArgumentException
dup
ldc "mProgress not less than 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 3
aload 0
monitorexit
aload 3
athrow
L7:
iload 2
ifge L3
L2:
new java/lang/IllegalArgumentException
dup
ldc "max not less than 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 2
iload 1
if_icmpge L5
L4:
new java/lang/IllegalArgumentException
dup
ldc "max not less than progress"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L5:
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
aload 0
iload 2
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setMax(I)V
aload 0
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/postInvalidate()V
L6:
aload 0
monitorexit
return
.limit locals 4
.limit stack 3
.end method

.method public upToProgress(I)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/upToProgress(II)V
L1:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public upToProgress(II)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/timer Ljava/util/Timer;
ifnull L1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/timer Ljava/util/Timer;
invokevirtual java/util/Timer/cancel()V
L1:
iload 2
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
if_icmplt L11
iload 2
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
if_icmpne L4
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
istore 3
L3:
iload 1
iload 3
if_icmpgt L4
L11:
aload 0
monitorexit
return
L4:
aload 0
new com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask
dup
aload 0
iload 1
iload 2
invokespecial com/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask/<init>(Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;II)V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/task Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask;
aload 0
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
putfield com/nd/android/u/tast/main/widget/HorizontalProgressView/timer Ljava/util/Timer;
iload 2
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
if_icmple L9
iload 1
bipush 100
imul
iload 2
idiv
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mMax I
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
isub
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
idiv
iadd
istore 1
L5:
ldc2_w 50L
lstore 4
iload 1
iconst_5
if_icmple L7
L6:
sipush 1000
iload 1
idiv
i2l
lstore 4
L7:
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/timer Ljava/util/Timer;
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/task Lcom/nd/android/u/tast/main/widget/HorizontalProgressView$MyTimerTask;
lconst_0
lload 4
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;JJ)V
L8:
goto L11
L2:
astore 6
aload 0
monitorexit
aload 6
athrow
L9:
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/mProgress I
isub
aload 0
getfield com/nd/android/u/tast/main/widget/HorizontalProgressView/cellAdd I
idiv
istore 1
L10:
iconst_0
iload 1
iadd
istore 1
goto L5
.limit locals 7
.limit stack 6
.end method
