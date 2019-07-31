.bytecode 50.0
.class public synchronized com/product/android/ui/imageHolder/CircleProgress
.super android/view/View
.inner class CartoomEngine inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine outer com/product/android/ui/imageHolder/CircleProgress
.inner class inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$1
.inner class MyTimerTask inner com/product/android/ui/imageHolder/CircleProgress$CartoomEngine$MyTimerTask outer com/product/android/ui/imageHolder/CircleProgress
.inner class CircleAttribute inner com/product/android/ui/imageHolder/CircleProgress$CircleAttribute outer com/product/android/ui/imageHolder/CircleProgress

.field private static final 'DEFAULT_FILL_MODE' Z = 0


.field private static final 'DEFAULT_INSIDE_VALUE' I = 10


.field public static final 'DEFAULT_MAX_VALUE' I = 100


.field private static final 'DEFAULT_PAINT_COLOR' I = -1


.field private static final 'DEFAULT_PAINT_WIDTH' I = 10


.field private 'mBackgroundPicture' Landroid/graphics/drawable/Drawable;

.field private 'mCartoomEngine' Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;

.field private 'mCircleAttribute' Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;

.field private 'mMainCurProgress' I

.field private 'mMaxProgress' I

.field private 'mSubCurProgress' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/product/android/ui/imageHolder/CircleProgress/defaultParam()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokespecial com/product/android/ui/imageHolder/CircleProgress/defaultParam()V
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar_max I
bipush 100
invokevirtual android/content/res/TypedArray/getInteger(II)I
putfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar_fill I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
istore 4
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar_Paint_Width I
bipush 10
invokevirtual android/content/res/TypedArray/getInt(II)I
istore 3
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
iload 4
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/setFill(Z)V
iload 4
ifne L0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
iload 3
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/setPaintWidth(I)V
L0:
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar_Paint_Color I
iconst_m1
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 3
ldc ""
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "paintColor = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/i(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
iload 3
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/setPaintColor(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleProgressBar_Inside_Interval I
bipush 10
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$100(Lcom/product/android/ui/imageHolder/CircleProgress;)I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/product/android/ui/imageHolder/CircleProgress;I)I
aload 0
iload 1
putfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private defaultParam()V
aload 0
new com/product/android/ui/imageHolder/CircleProgress$CircleAttribute
dup
aload 0
invokespecial com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/<init>(Lcom/product/android/ui/imageHolder/CircleProgress;)V
putfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
aload 0
new com/product/android/ui/imageHolder/CircleProgress$CartoomEngine
dup
aload 0
invokespecial com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/<init>(Lcom/product/android/ui/imageHolder/CircleProgress;)V
putfield com/product/android/ui/imageHolder/CircleProgress/mCartoomEngine Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
aload 0
bipush 100
putfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
return
.limit locals 1
.limit stack 4
.end method

.method public getMainProgress()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
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

.method public getMaxProgress()I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSubProgress()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
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

.method public onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mBackgroundPicture Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
fconst_0
ldc_w 360.0F
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBRoundPaintsFill Z
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
i2f
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
i2f
fdiv
fstore 2
aload 1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mDrawPos I
i2f
ldc_w 360.0F
fload 2
fmul
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBRoundPaintsFill Z
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
i2f
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
i2f
fdiv
fstore 2
aload 1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mDrawPos I
i2f
ldc_w 360.0F
fload 2
fmul
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBRoundPaintsFill Z
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
return
.limit locals 3
.limit stack 6
.end method

.method protected onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 3
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
pop
aload 0
aload 0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/getBackground()Landroid/graphics/drawable/Drawable;
putfield com/product/android/ui/imageHolder/CircleProgress/mBackgroundPicture Landroid/graphics/drawable/Drawable;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mBackgroundPicture Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mBackgroundPicture Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getMinimumWidth()I
istore 3
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mBackgroundPicture Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getMinimumHeight()I
pop
L0:
aload 0
iload 3
iload 1
invokestatic com/product/android/ui/imageHolder/CircleProgress/resolveSize(II)I
iload 3
iload 2
invokestatic com/product/android/ui/imageHolder/CircleProgress/resolveSize(II)I
invokevirtual com/product/android/ui/imageHolder/CircleProgress/setMeasuredDimension(II)V
return
.limit locals 4
.limit stack 4
.end method

.method protected onSizeChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/view/View/onSizeChanged(IIII)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCircleAttribute Lcom/product/android/ui/imageHolder/CircleProgress$CircleAttribute;
iload 1
iload 2
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/autoFix(II)V
return
.limit locals 5
.limit stack 5
.end method

.method public setMainProgress(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
putfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
ifge L1
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
L1:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
if_icmple L3
aload 0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
putfield com/product/android/ui/imageHolder/CircleProgress/mMainCurProgress I
L3:
aload 0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/invalidate()V
L4:
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
.limit stack 2
.end method

.method public setSubProgress(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
putfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
ifge L1
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
L1:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
if_icmple L3
aload 0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mMaxProgress I
putfield com/product/android/ui/imageHolder/CircleProgress/mSubCurProgress I
L3:
aload 0
invokevirtual com/product/android/ui/imageHolder/CircleProgress/invalidate()V
L4:
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
.limit stack 2
.end method

.method public startCartoom(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCartoomEngine Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
iload 1
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/startCartoom(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public stopCartoom()V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress/mCartoomEngine Lcom/product/android/ui/imageHolder/CircleProgress$CartoomEngine;
invokevirtual com/product/android/ui/imageHolder/CircleProgress$CartoomEngine/stopCartoom()V
return
.limit locals 1
.limit stack 1
.end method
