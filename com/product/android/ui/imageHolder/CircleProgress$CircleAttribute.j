.bytecode 50.0
.class synchronized com/product/android/ui/imageHolder/CircleProgress$CircleAttribute
.super java/lang/Object
.inner class CircleAttribute inner com/product/android/ui/imageHolder/CircleProgress$CircleAttribute outer com/product/android/ui/imageHolder/CircleProgress

.field public 'mBRoundPaintsFill' Z

.field public 'mBottomPaint' Landroid/graphics/Paint;

.field public 'mDrawPos' I

.field public 'mMainPaints' Landroid/graphics/Paint;

.field public 'mPaintColor' I

.field public 'mPaintWidth' I

.field public 'mRoundOval' Landroid/graphics/RectF;

.field public 'mSidePaintInterval' I

.field public 'mSubPaint' Landroid/graphics/Paint;

.field final synthetic 'this$0' Lcom/product/android/ui/imageHolder/CircleProgress;

.method public <init>(Lcom/product/android/ui/imageHolder/CircleProgress;)V
aload 0
aload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBRoundPaintsFill Z
aload 0
bipush 10
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
aload 0
iconst_0
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
aload 0
iconst_m1
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintColor I
aload 0
bipush -90
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mDrawPos I
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
ldc_w -7829368
invokevirtual android/graphics/Paint/setColor(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public autoFix(II)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
ifeq L0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
iadd
i2f
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
iadd
i2f
iload 1
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
isub
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
isub
i2f
iload 2
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
isub
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSidePaintInterval I
isub
i2f
invokevirtual android/graphics/RectF/set(FFFF)V
return
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokevirtual com/product/android/ui/imageHolder/CircleProgress/getPaddingLeft()I
istore 3
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokevirtual com/product/android/ui/imageHolder/CircleProgress/getPaddingRight()I
istore 4
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokevirtual com/product/android/ui/imageHolder/CircleProgress/getPaddingTop()I
istore 5
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/this$0 Lcom/product/android/ui/imageHolder/CircleProgress;
invokevirtual com/product/android/ui/imageHolder/CircleProgress/getPaddingBottom()I
istore 6
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mRoundOval Landroid/graphics/RectF;
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
iload 3
iadd
i2f
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
iload 5
iadd
i2f
iload 1
iload 4
isub
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
isub
i2f
iload 2
iload 6
isub
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mPaintWidth I
iconst_2
idiv
isub
i2f
invokevirtual android/graphics/RectF/set(FFFF)V
return
.limit locals 7
.limit stack 7
.end method

.method public setFill(Z)V
aload 0
iload 1
putfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBRoundPaintsFill Z
iload 1
ifeq L0
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
return
L0:
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setPaintColor(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
ldc_w 16777215
iload 1
iand
ldc_w 1711276032
ior
invokevirtual android/graphics/Paint/setColor(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setPaintWidth(I)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mMainPaints Landroid/graphics/Paint;
iload 1
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mSubPaint Landroid/graphics/Paint;
iload 1
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/product/android/ui/imageHolder/CircleProgress$CircleAttribute/mBottomPaint Landroid/graphics/Paint;
iload 1
i2f
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
return
.limit locals 2
.limit stack 2
.end method
