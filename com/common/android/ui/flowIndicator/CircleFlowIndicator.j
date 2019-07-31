.bytecode 50.0
.class public synchronized com/common/android/ui/flowIndicator/CircleFlowIndicator
.super android/view/View
.implements com/common/android/ui/flowIndicator/FlowIndicator

.field private 'currentScroll' I

.field private 'flowWidth' I

.field private final 'mPaintFill' Landroid/graphics/Paint;

.field private final 'mPaintStroke' Landroid/graphics/Paint;

.field private 'radius' I

.field private 'viewFlow' Lcom/common/android/ui/flowIndicator/ViewFlow;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
iconst_4
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/currentScroll I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
aload 0
ldc_w 13421772
ldc_w 3368601
invokespecial com/common/android/ui/flowIndicator/CircleFlowIndicator/initColors(II)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_4
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/currentScroll I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 1
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_fillColor I
ldc_w 13421772
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 3
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_strokeColor I
ldc_w 3368601
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 4
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_radius I
iconst_4
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
aload 0
iload 3
iload 4
invokespecial com/common/android/ui/flowIndicator/CircleFlowIndicator/initColors(II)V
return
.limit locals 5
.limit stack 4
.end method

.method private initColors(II)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
bipush 51
bipush 102
sipush 153
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
bipush 51
bipush 102
sipush 153
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/graphics/Paint/setColor(I)V
return
.limit locals 3
.limit stack 4
.end method

.method private measureHeight(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 2
iload 4
ldc_w 1073741824
if_icmpne L0
iload 2
istore 1
L1:
iload 1
ireturn
L0:
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iconst_2
imul
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingTop()I
iadd
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingBottom()I
iadd
iconst_1
iadd
istore 3
iload 3
istore 1
iload 4
ldc_w -2147483648
if_icmpne L1
iload 3
iload 2
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 5
.limit stack 2
.end method

.method private measureWidth(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 2
iload 4
ldc_w 1073741824
if_icmpne L0
iload 2
istore 1
L1:
iload 1
ireturn
L0:
iconst_3
istore 1
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
ifnull L2
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getViewsCount()I
istore 1
L2:
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingLeft()I
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingRight()I
iadd
iload 1
iconst_2
imul
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
imul
iadd
iload 1
iconst_1
isub
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
imul
iadd
iconst_1
iadd
istore 3
iload 3
istore 1
iload 4
ldc_w -2147483648
if_icmpne L1
iload 3
iload 2
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 5
.limit stack 3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
iconst_3
istore 2
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getViewsCount()I
istore 2
L0:
iconst_0
istore 3
L1:
iload 3
iload 2
if_icmpge L2
aload 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingLeft()I
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iconst_2
imul
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
iload 3
imul
iadd
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingTop()I
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
i2f
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
i2f
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
iload 3
iconst_1
iadd
istore 3
goto L1
L2:
iconst_0
istore 2
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
ifeq L3
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/currentScroll I
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iconst_2
imul
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
imul
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
idiv
istore 2
L3:
aload 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingLeft()I
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
iload 2
iadd
i2f
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/getPaddingTop()I
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
iadd
i2f
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/radius I
i2f
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
return
.limit locals 4
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/flowIndicator/CircleFlowIndicator/measureWidth(I)I
aload 0
iload 2
invokespecial com/common/android/ui/flowIndicator/CircleFlowIndicator/measureHeight(I)I
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/setMeasuredDimension(II)V
return
.limit locals 3
.limit stack 4
.end method

.method public onScrolled(IIII)V
aload 0
iload 1
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/currentScroll I
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/invalidate()V
return
.limit locals 5
.limit stack 2
.end method

.method public onSwitched(Landroid/view/View;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public setFillColor(I)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintFill Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setStrokeColor(I)V
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/mPaintStroke Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setViewFlow(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/CircleFlowIndicator/viewFlow Lcom/common/android/ui/flowIndicator/ViewFlow;
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
putfield com/common/android/ui/flowIndicator/CircleFlowIndicator/flowWidth I
aload 0
invokevirtual com/common/android/ui/flowIndicator/CircleFlowIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method
