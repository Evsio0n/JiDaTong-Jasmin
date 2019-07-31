.bytecode 50.0
.class public synchronized com/android/u/weibo/cropimage/ui/widget/CropView
.super android/view/View
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "DrawAllocation" 
.end annotation

.field private static final 'CROP_VIEW' I = 1728053248


.field private static final 'LINE_COLOR' I = -1


.field public final 'finallength' I

.field private 'isFirst' Z

.field private final 'mDMetrics' Landroid/util/DisplayMetrics;

.field private 'mHeight' I

.field private 'mLinePaint' Landroid/graphics/Paint;

.field private 'mPaint' Landroid/graphics/Paint;

.field private 'mViewHeight' I

.field private 'mViewWidth' I

.field private 'mWidth' I

.field public 'requestHeight' I

.field public 'requestWidth' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
if_icmpge L0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
istore 2
L1:
aload 0
iload 2
putfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
aload 0
iconst_1
putfield com/android/u/weibo/cropimage/ui/widget/CropView/isFirst Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
istore 2
goto L1
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
if_icmpge L0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
istore 3
L1:
aload 0
iload 3
putfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
aload 0
iconst_1
putfield com/android/u/weibo/cropimage/ui/widget/CropView/isFirst Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
istore 3
goto L1
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/widthPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mDMetrics Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/heightPixels I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
if_icmpge L0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
istore 3
L1:
aload 0
iload 3
putfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
aload 0
iconst_1
putfield com/android/u/weibo/cropimage/ui/widget/CropView/isFirst Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
return
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
istore 3
goto L1
.limit locals 4
.limit stack 4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/isFirst Z
ifeq L0
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getWidth()I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewWidth I
aload 0
aload 0
invokevirtual com/android/u/weibo/cropimage/ui/widget/CropView/getHeight()I
putfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
isub
ifge L1
iconst_0
istore 2
L2:
aload 0
iload 2
putfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
isub
ifge L3
iconst_0
istore 2
L4:
aload 0
iload 2
putfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
iconst_0
putfield com/android/u/weibo/cropimage/ui/widget/CropView/isFirst Z
L0:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
ldc_w 1728053248
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
fconst_0
fconst_0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 1
fconst_0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 1
fconst_0
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
iconst_m1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
ldc_w 3.0F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
aload 1
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/requestHeight I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iadd
i2f
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mLinePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawLine(FFFFLandroid/graphics/Paint;)V
return
L1:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewWidth I
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
isub
iconst_2
idiv
istore 2
goto L2
L3:
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/mViewHeight I
iconst_2
idiv
aload 0
getfield com/android/u/weibo/cropimage/ui/widget/CropView/finallength I
iconst_2
idiv
isub
istore 2
goto L4
.limit locals 3
.limit stack 6
.end method
