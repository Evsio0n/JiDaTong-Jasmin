.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/CircleProgressView
.super android/view/View

.field private final 'ANGLE_360' I

.field private final 'BEIGIN_ANGLE' I

.field private final 'DEFAULT_MAX' I

.field private final 'DEFAULT_OFFSET' I

.field private final 'DEFAULT_TEXT_SIZE' I

.field private final 'DRAW_DURATION' I

.field private final 'FIVE' I

.field private final 'LOWEST_PROGRSS_OFFSET' I

.field private final 'OFFSET_MULTI' F

.field private final 'SECOND_VALUE' I

.field private final 'SIX' I

.field private 'boundsRect' Landroid/graphics/Rect;

.field private 'clipRectF' Landroid/graphics/RectF;

.field private 'delayOffset' I

.field private 'isAnimationRun' Z

.field private 'mBeginPointBitmap' Landroid/graphics/Bitmap;

.field private 'mBgBitmap' Landroid/graphics/Bitmap;

.field private 'mCircleProgressPath' Landroid/graphics/Path;

.field private 'mContent' Ljava/lang/String;

.field private 'mDeltaAdd' I

.field private 'mFinishBitmap' Landroid/graphics/Bitmap;

.field private 'mMax' I

.field private 'mMode' Landroid/graphics/PorterDuffXfermode;

.field private 'mPointBitmap' Landroid/graphics/Bitmap;

.field private 'mPointWidth' F

.field private 'mProgress' I

.field private 'mProgressUpdateTo' I

.field private 'mTextSize' F

.field private 'ovalRectF' Landroid/graphics/RectF;

.field private 'paint' Landroid/graphics/Paint;

.field private 'pathMeasure' Landroid/graphics/PathMeasure;

.field private 'textColor' I

.field private 'textSmallSize' F

.field private 'width' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/main/widget/CircleProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/tast/main/widget/CircleProgressView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
bipush 20
putfield com/nd/android/u/tast/main/widget/CircleProgressView/DEFAULT_TEXT_SIZE I
aload 0
bipush 100
putfield com/nd/android/u/tast/main/widget/CircleProgressView/DEFAULT_MAX I
aload 0
bipush 20
putfield com/nd/android/u/tast/main/widget/CircleProgressView/LOWEST_PROGRSS_OFFSET I
aload 0
sipush 1000
putfield com/nd/android/u/tast/main/widget/CircleProgressView/SECOND_VALUE I
aload 0
sipush 360
putfield com/nd/android/u/tast/main/widget/CircleProgressView/ANGLE_360 I
aload 0
bipush 90
putfield com/nd/android/u/tast/main/widget/CircleProgressView/BEIGIN_ANGLE I
aload 0
bipush 50
putfield com/nd/android/u/tast/main/widget/CircleProgressView/DEFAULT_OFFSET I
aload 0
bipush 20
putfield com/nd/android/u/tast/main/widget/CircleProgressView/DRAW_DURATION I
aload 0
iconst_5
putfield com/nd/android/u/tast/main/widget/CircleProgressView/FIVE I
aload 0
bipush 6
putfield com/nd/android/u/tast/main/widget/CircleProgressView/SIX I
aload 0
ldc_w 1.5F
putfield com/nd/android/u/tast/main/widget/CircleProgressView/OFFSET_MULTI F
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleProgressView/isAnimationRun Z
aload 0
bipush 30
putfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mDeltaAdd I
aload 0
new android/graphics/PorterDuffXfermode
dup
getstatic android/graphics/PorterDuff$Mode/DST_OUT Landroid/graphics/PorterDuff$Mode;
invokespecial android/graphics/PorterDuffXfermode/<init>(Landroid/graphics/PorterDuff$Mode;)V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mMode Landroid/graphics/PorterDuffXfermode;
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/clipRectF Landroid/graphics/RectF;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mCircleProgressPath Landroid/graphics/Path;
aload 0
new android/graphics/PathMeasure
dup
invokespecial android/graphics/PathMeasure/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/pathMeasure Landroid/graphics/PathMeasure;
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/ovalRectF Landroid/graphics/RectF;
aload 0
iconst_m1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
aload 1
aload 2
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_android_textColor I
ldc_w -16711936
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleProgressView/textColor I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_android_textSize I
ldc_w 20.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mTextSize F
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_android_text I
invokevirtual android/content/res/TypedArray/getString(I)Ljava/lang/String;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
ifnonnull L0
aload 0
ldc "\u4eca\u65e5\u8fdb\u5ea6"
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
L0:
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_android_max I
bipush 100
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_android_progress I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
aload 0
invokespecial com/nd/android/u/tast/main/widget/CircleProgressView/setDelayOffset()V
aload 0
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_textSmallSize I
ldc_w 20.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/nd/android/u/tast/main/widget/CircleProgressView/textSmallSize F
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_pointDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L1
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
L2:
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_beginPointDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L3
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
L4:
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_backgroundDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L5
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
L6:
aload 1
getstatic com/nd/android/u/tasklib/R$styleable/CircleProgressAttr_finishDrawable I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L7
aload 0
aload 2
invokestatic com/common/android/utils/ImageUtils/drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mFinishBitmap Landroid/graphics/Bitmap;
L8:
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
return
L1:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/point I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
goto L2
L3:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/begin_point I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
goto L4
L5:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/pro_0 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
goto L6
L7:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/pro_100 I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mFinishBitmap Landroid/graphics/Bitmap;
goto L8
.limit locals 4
.limit stack 5
.end method

.method private setDelayOffset()V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
ifeq L0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
isub
istore 1
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mDeltaAdd I
idiv
bipush 20
if_icmple L1
aload 0
iload 1
i2f
ldc_w 20.0F
fdiv
f2d
invokestatic java/lang/Math/ceil(D)D
d2i
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mDeltaAdd I
aload 0
sipush 1000
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mDeltaAdd I
idiv
idiv
bipush 20
isub
putfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
ifge L0
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
L0:
return
L1:
aload 0
bipush 30
putfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
return
.limit locals 2
.limit stack 4
.end method

.method public getMax()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
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
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
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

.method public getTextColor()I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/textColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextSize()F
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mTextSize F
freturn
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
iconst_m1
if_icmpne L0
aload 0
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/getWidth()I
putfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fdiv
fstore 2
aload 7
fload 2
fload 2
invokevirtual android/graphics/Matrix/postScale(FF)Z
pop
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 2
fmul
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
aload 7
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
aload 7
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mFinishBitmap Landroid/graphics/Bitmap;
aload 7
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mFinishBitmap Landroid/graphics/Bitmap;
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
aload 7
invokestatic com/common/android/utils/ImageUtils/zoomImage(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/ovalRectF Landroid/graphics/RectF;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
fconst_2
fdiv
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
fconst_2
fdiv
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
fconst_2
fdiv
fsub
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
fconst_2
fdiv
fsub
invokevirtual android/graphics/RectF/set(FFFF)V
L0:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBgBitmap Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 1
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
i2f
aconst_null
bipush 31
invokevirtual android/graphics/Canvas/saveLayer(FFFFLandroid/graphics/Paint;I)I
istore 3
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mFinishBitmap Landroid/graphics/Bitmap;
fconst_0
fconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
sipush 360
imul
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
idiv
i2f
fstore 2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMode Landroid/graphics/PorterDuffXfermode;
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/clipRectF Landroid/graphics/RectF;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
ineg
iconst_5
idiv
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
ineg
iconst_5
idiv
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
bipush 6
imul
iconst_5
idiv
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
bipush 6
imul
iconst_5
idiv
i2f
invokevirtual android/graphics/RectF/set(FFFF)V
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/clipRectF Landroid/graphics/RectF;
ldc_w 90.0F
fload 2
fadd
ldc_w 360.0F
frem
ldc_w 360.0F
fload 2
fsub
iconst_1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aconst_null
invokevirtual android/graphics/Paint/setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
pop
aload 1
iload 3
invokevirtual android/graphics/Canvas/restoreToCount(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
fconst_0
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/textColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mTextSize F
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Cap/ROUND Landroid/graphics/Paint$Cap;
invokevirtual android/graphics/Paint/setStrokeCap(Landroid/graphics/Paint$Cap;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
getstatic android/graphics/Typeface/DEFAULT_BOLD Landroid/graphics/Typeface;
invokevirtual android/graphics/Paint/setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
pop
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/width I
iconst_2
idiv
istore 3
iload 3
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointWidth F
fconst_2
fdiv
fsub
f2i
istore 4
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
i2f
fdiv
ldc_w 100.0F
fmul
f2i
istore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
iconst_m1
if_icmpne L1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/textSmallSize F
invokevirtual android/graphics/Paint/setTextSize(F)V
ldc "__  __"
astore 7
L1:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 7
iconst_0
aload 7
invokevirtual java/lang/String/length()I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
pop
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 7
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
istore 5
aload 1
aload 7
iload 3
iload 5
iconst_2
idiv
isub
i2f
iload 3
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/textSmallSize F
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
ldc "%"
iconst_0
iconst_1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
ldc_w 1.5F
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
i2f
fmul
f2i
istore 6
aload 1
ldc "%"
iload 5
iconst_2
idiv
iload 3
iadd
iconst_5
iadd
i2f
iload 3
iload 6
isub
iconst_5
iadd
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
iconst_0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
invokevirtual java/lang/String/length()I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/width()I
istore 5
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/boundsRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/height()I
istore 6
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mContent Ljava/lang/String;
iload 3
iload 5
iconst_2
idiv
isub
i2f
iload 6
iload 4
iadd
iconst_2
idiv
iload 3
iadd
i2f
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/paint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
if_icmpeq L2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
ifle L2
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mCircleProgressPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/reset()V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mCircleProgressPath Landroid/graphics/Path;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/ovalRectF Landroid/graphics/RectF;
ldc_w 90.0F
fload 2
invokevirtual android/graphics/Path/addArc(Landroid/graphics/RectF;FF)V
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/pathMeasure Landroid/graphics/PathMeasure;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mCircleProgressPath Landroid/graphics/Path;
iconst_0
invokevirtual android/graphics/PathMeasure/setPath(Landroid/graphics/Path;Z)V
iconst_2
newarray float
astore 7
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/pathMeasure Landroid/graphics/PathMeasure;
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/pathMeasure Landroid/graphics/PathMeasure;
invokevirtual android/graphics/PathMeasure/getLength()F
aload 7
aconst_null
invokevirtual android/graphics/PathMeasure/getPosTan(F[F[F)Z
ifeq L3
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
aload 7
iconst_0
faload
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
idiv
i2f
fsub
aload 7
iconst_1
faload
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
i2f
fsub
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L3:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
ifeq L2
aload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
iload 3
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
iconst_2
idiv
isub
iconst_1
isub
i2f
iload 3
iconst_2
imul
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
isub
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mBeginPointBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
iconst_2
idiv
isub
iconst_1
isub
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L2:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/isAnimationRun Z
ifeq L4
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
if_icmpge L5
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mDeltaAdd I
iadd
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
if_icmple L6
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
L6:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
ifeq L7
aload 0
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/delayOffset I
i2l
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/postInvalidateDelayed(J)V
L4:
return
L7:
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/postInvalidate()V
return
L5:
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleProgressView/isAnimationRun Z
return
.limit locals 8
.limit stack 7
.end method

.method public setMax(I)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
aload 0
monitorenter
iload 1
ifge L2
L0:
new java/lang/IllegalArgumentException
dup
ldc "max not less than 0"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 2
aload 0
monitorexit
aload 2
athrow
L2:
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
L3:
aload 0
monitorexit
return
.limit locals 3
.limit stack 3
.end method

.method public setProgress(I)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
aload 0
monitorenter
iload 1
ifge L8
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
L8:
iload 1
istore 2
L2:
iload 1
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
if_icmple L3
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mMax I
istore 2
L3:
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
istore 1
L4:
iload 1
iload 2
if_icmpne L5
L9:
aload 0
monitorexit
return
L5:
aload 0
iload 2
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgressUpdateTo I
aload 0
getfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
ifge L6
aload 0
iconst_0
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mProgress I
L6:
aload 0
invokespecial com/nd/android/u/tast/main/widget/CircleProgressView/setDelayOffset()V
aload 0
iconst_1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/isAnimationRun Z
aload 0
invokevirtual com/nd/android/u/tast/main/widget/CircleProgressView/postInvalidate()V
L7:
goto L9
.limit locals 4
.limit stack 3
.end method

.method public setTextColor(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/textColor I
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(F)V
aload 0
fload 1
putfield com/nd/android/u/tast/main/widget/CircleProgressView/mTextSize F
return
.limit locals 2
.limit stack 2
.end method
