.bytecode 50.0
.class public synchronized com/slidingmenu/lib/CustomViewBehind
.super android/view/ViewGroup

.field private static final 'MARGIN_THRESHOLD' I = 48


.field private static final 'TAG' Ljava/lang/String; = "CustomViewBehind"

.field private 'mChildrenEnabled' Z

.field private 'mContent' Landroid/view/View;

.field private 'mFadeDegree' F

.field private 'mFadeEnabled' Z

.field private final 'mFadePaint' Landroid/graphics/Paint;

.field private 'mMarginThreshold' I

.field private 'mMode' I

.field private 'mScrollScale' F

.field private 'mSecondaryContent' Landroid/view/View;

.field private 'mSecondaryShadowDrawable' Landroid/graphics/drawable/Drawable;

.field private 'mSelectedView' Landroid/view/View;

.field private 'mSelectorDrawable' Landroid/graphics/Bitmap;

.field private 'mSelectorEnabled' Z

.field private 'mShadowDrawable' Landroid/graphics/drawable/Drawable;

.field private 'mShadowWidth' I

.field private 'mTouchMode' I

.field private 'mTransformer' Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;

.field private 'mViewAbove' Lcom/slidingmenu/lib/CustomViewAbove;

.field private 'mWidthOffset' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/slidingmenu/lib/CustomViewBehind/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewBehind/mTouchMode I
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/slidingmenu/lib/CustomViewBehind/mFadePaint Landroid/graphics/Paint;
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewBehind/mSelectorEnabled Z
aload 0
iconst_1
ldc_w 48.0F
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
invokestatic android/util/TypedValue/applyDimension(IFLandroid/util/DisplayMetrics;)F
f2i
putfield com/slidingmenu/lib/CustomViewBehind/mMarginThreshold I
return
.limit locals 3
.limit stack 4
.end method

.method private getSelectorTop()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
invokevirtual android/view/View/getTop()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
invokevirtual android/view/View/getHeight()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getHeight()I
isub
iconst_2
idiv
iadd
ireturn
.limit locals 1
.limit stack 3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mTransformer Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
ifnull L0
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mTransformer Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
aload 1
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
invokevirtual com/slidingmenu/lib/CustomViewAbove/getPercentOpen()F
invokeinterface com/slidingmenu/lib/SlidingMenu$CanvasTransformer/transformCanvas(Landroid/graphics/Canvas;F)V 2
aload 0
aload 1
invokespecial android/view/ViewGroup/dispatchDraw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
L0:
aload 0
aload 1
invokespecial android/view/ViewGroup/dispatchDraw(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 3
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mFadeEnabled Z
ifne L0
return
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mFadeDegree F
ldc_w 255.0F
fmul
fconst_1
fload 3
fsub
invokestatic java/lang/Math/abs(F)F
fmul
f2i
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mFadePaint Landroid/graphics/Paint;
iload 4
iconst_0
iconst_0
iconst_0
invokestatic android/graphics/Color/argb(IIII)I
invokevirtual android/graphics/Paint/setColor(I)V
iconst_0
istore 4
iconst_0
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L1
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
istore 4
aload 1
invokevirtual android/view/View/getLeft()I
istore 5
L2:
aload 2
iload 4
i2f
fconst_0
iload 5
i2f
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mFadePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
return
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
aload 1
invokevirtual android/view/View/getRight()I
istore 4
aload 1
invokevirtual android/view/View/getRight()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iadd
istore 5
goto L2
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L2
aload 1
invokevirtual android/view/View/getLeft()I
istore 4
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
istore 5
aload 1
invokevirtual android/view/View/getLeft()I
istore 6
aload 2
iload 4
iload 5
isub
i2f
fconst_0
iload 6
i2f
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mFadePaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 1
invokevirtual android/view/View/getRight()I
istore 4
aload 1
invokevirtual android/view/View/getRight()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iadd
istore 5
goto L2
.limit locals 7
.limit stack 6
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorEnabled Z
ifne L0
L1:
return
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getContext()Landroid/content/Context;
ldc "selected_view"
invokestatic com/slidingmenu/lib/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/view/View/getTag(I)Ljava/lang/Object;
checkcast java/lang/String
ldc "CustomViewBehindSelectedView"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 2
invokevirtual android/graphics/Canvas/save()I
pop
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
i2f
fload 3
fmul
f2i
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L2
aload 1
invokevirtual android/view/View/getLeft()I
istore 5
iload 5
iload 4
isub
istore 4
aload 2
iload 4
iconst_0
iload 5
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
invokevirtual android/graphics/Canvas/clipRect(IIII)Z
pop
aload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
iload 4
i2f
aload 0
invokespecial com/slidingmenu/lib/CustomViewBehind/getSelectorTop()I
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L3:
aload 2
invokevirtual android/graphics/Canvas/restore()V
return
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
aload 1
invokevirtual android/view/View/getRight()I
istore 5
iload 5
iload 4
iadd
istore 4
aload 2
iload 5
iconst_0
iload 4
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
invokevirtual android/graphics/Canvas/clipRect(IIII)Z
pop
aload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
iload 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
isub
i2f
aload 0
invokespecial com/slidingmenu/lib/CustomViewBehind/getSelectorTop()I
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowDrawable Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
ifgt L1
L0:
return
L1:
iconst_0
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L2
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
isub
istore 3
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowDrawable Landroid/graphics/drawable/Drawable;
iload 3
iconst_0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
iload 3
iadd
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowDrawable Landroid/graphics/drawable/Drawable;
aload 2
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
return
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L4
aload 1
invokevirtual android/view/View/getRight()I
istore 3
goto L3
L4:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L3
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryShadowDrawable Landroid/graphics/drawable/Drawable;
ifnull L5
aload 1
invokevirtual android/view/View/getRight()I
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryShadowDrawable Landroid/graphics/drawable/Drawable;
iload 3
iconst_0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
iload 3
iadd
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getHeight()I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryShadowDrawable Landroid/graphics/drawable/Drawable;
aload 2
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
L5:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
isub
istore 3
goto L3
.limit locals 4
.limit stack 5
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L1
L0:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
ireturn
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L2
aload 1
invokevirtual android/view/View/getLeft()I
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getAbsRightBound(Landroid/view/View;)I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
aload 1
invokevirtual android/view/View/getLeft()I
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpeq L1
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L2
L1:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iadd
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getBehindWidth()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
invokevirtual android/view/View/getWidth()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getContent()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMenuLeft(Landroid/view/View;I)I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
iload 2
tableswitch 0
L1
L2
L3
default : L2
L2:
aload 1
invokevirtual android/view/View/getLeft()I
ireturn
L1:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
ireturn
L3:
aload 1
invokevirtual android/view/View/getLeft()I
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L4
iload 2
tableswitch 0
L5
L6
L7
default : L6
L6:
goto L2
L5:
aload 1
invokevirtual android/view/View/getLeft()I
ireturn
L7:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iadd
ireturn
L4:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L2
iload 2
tableswitch 0
L8
L9
L10
default : L9
L9:
goto L2
L8:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
ireturn
L10:
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iadd
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getMenuPage(I)I
iload 1
iconst_1
if_icmple L0
iconst_2
istore 2
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L2
iload 2
iconst_1
if_icmple L2
iconst_0
ireturn
L0:
iload 1
istore 2
iload 1
iconst_1
if_icmpge L1
iconst_0
istore 2
goto L1
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
iload 2
iconst_1
if_icmpge L3
iconst_2
ireturn
L3:
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getMode()I
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getScrollScale()F
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getSecondaryContent()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
aload 1
invokevirtual android/view/View/getLeft()I
istore 3
aload 1
invokevirtual android/view/View/getRight()I
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
iload 2
iload 3
if_icmplt L1
iload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMarginThreshold I
iload 3
iadd
if_icmpgt L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
iload 2
iload 4
if_icmpgt L4
iload 2
iload 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMarginThreshold I
isub
if_icmpge L2
L4:
iconst_0
ireturn
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L5
iload 2
iload 3
if_icmplt L6
iload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMarginThreshold I
iload 3
iadd
if_icmple L2
L6:
iload 2
iload 4
if_icmpgt L7
iload 2
iload 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMarginThreshold I
isub
if_icmpge L2
L7:
iconst_0
ireturn
L5:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public menuClosedSlideAllowed(F)Z
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
fload 1
fconst_0
fcmpl
ifle L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
fload 1
fconst_0
fcmpg
iflt L2
iconst_0
ireturn
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpeq L2
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public menuOpenSlideAllowed(F)Z
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
fload 1
fconst_0
fcmpg
ifge L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
fload 1
fconst_0
fcmpl
ifgt L2
iconst_0
ireturn
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpeq L2
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mTouchMode I
tableswitch 0
L0
L1
default : L2
L2:
iconst_0
ireturn
L1:
iconst_1
ireturn
L0:
aload 0
aload 1
iload 2
fload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuTouchInQuickReturn(Landroid/view/View;IF)Z
ireturn
.limit locals 4
.limit stack 4
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
iconst_0
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L1
iload 2
ifne L1
L0:
iload 5
istore 4
fload 3
aload 1
invokevirtual android/view/View/getLeft()I
i2f
fcmpl
iflt L2
iconst_1
istore 4
L2:
iload 4
ireturn
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpeq L3
iload 5
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L2
iload 5
istore 4
iload 2
iconst_2
if_icmpne L2
L3:
iload 5
istore 4
fload 3
aload 1
invokevirtual android/view/View/getRight()I
i2f
fcmpg
ifgt L2
iconst_1
ireturn
.limit locals 6
.limit stack 2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mChildrenEnabled Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
iload 4
iload 2
isub
istore 2
iload 5
iload 3
isub
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
iconst_0
iconst_0
iload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mWidthOffset I
isub
iload 3
invokevirtual android/view/View/layout(IIII)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
iconst_0
iconst_0
iload 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mWidthOffset I
isub
iload 3
invokevirtual android/view/View/layout(IIII)V
L0:
return
.limit locals 6
.limit stack 5
.end method

.method protected onMeasure(II)V
iconst_0
iload 1
invokestatic com/slidingmenu/lib/CustomViewBehind/getDefaultSize(II)I
istore 4
iconst_0
iload 2
invokestatic com/slidingmenu/lib/CustomViewBehind/getDefaultSize(II)I
istore 3
aload 0
iload 4
iload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/setMeasuredDimension(II)V
iload 1
iconst_0
iload 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mWidthOffset I
isub
invokestatic com/slidingmenu/lib/CustomViewBehind/getChildMeasureSpec(III)I
istore 1
iload 2
iconst_0
iload 3
invokestatic com/slidingmenu/lib/CustomViewBehind/getChildMeasureSpec(III)I
istore 2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mChildrenEnabled Z
ifeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
ifne L0
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmplt L1
iconst_4
istore 4
L1:
aload 0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iload 2
iadd
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
fmul
f2i
iload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/scrollTo(II)V
L2:
aload 0
iload 4
invokevirtual com/slidingmenu/lib/CustomViewBehind/setVisibility(I)V
return
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_1
if_icmpne L3
iload 6
istore 4
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmpgt L4
iconst_4
istore 4
L4:
aload 0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getWidth()I
isub
i2f
iload 2
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
fmul
fadd
f2i
iload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/scrollTo(II)V
goto L2
L3:
iload 5
istore 4
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mMode I
iconst_2
if_icmpne L2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
astore 7
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmplt L5
iconst_4
istore 4
L6:
aload 7
iload 4
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
astore 7
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmpgt L7
iconst_4
istore 4
L8:
aload 7
iload 4
invokevirtual android/view/View/setVisibility(I)V
iload 2
ifne L9
iconst_4
istore 4
L10:
iload 2
aload 1
invokevirtual android/view/View/getLeft()I
if_icmpgt L11
aload 0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
iload 2
iadd
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
fmul
f2i
iload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/scrollTo(II)V
goto L2
L5:
iconst_0
istore 4
goto L6
L7:
iconst_0
istore 4
goto L8
L9:
iconst_0
istore 4
goto L10
L11:
aload 0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getWidth()I
isub
i2f
iload 2
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
isub
i2f
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
fmul
fadd
f2i
iload 3
invokevirtual com/slidingmenu/lib/CustomViewBehind/scrollTo(II)V
goto L2
.limit locals 8
.limit stack 4
.end method

.method public scrollTo(II)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup/scrollTo(II)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mTransformer Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
ifnull L0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/invalidate()V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setCanvasTransformer(Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mTransformer Lcom/slidingmenu/lib/SlidingMenu$CanvasTransformer;
return
.limit locals 2
.limit stack 2
.end method

.method public setChildrenEnabled(Z)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mChildrenEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setContent(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
ifnull L0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/removeView(Landroid/view/View;)V
L0:
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setCustomViewAbove(Lcom/slidingmenu/lib/CustomViewAbove;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mViewAbove Lcom/slidingmenu/lib/CustomViewAbove;
return
.limit locals 2
.limit stack 2
.end method

.method public setFadeDegree(F)V
fload 1
fconst_1
fcmpl
ifgt L0
fload 1
fconst_0
fcmpg
ifge L1
L0:
new java/lang/IllegalStateException
dup
ldc "The BehindFadeDegree must be between 0.0f and 1.0f"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
fload 1
putfield com/slidingmenu/lib/CustomViewBehind/mFadeDegree F
return
.limit locals 2
.limit stack 3
.end method

.method public setFadeEnabled(Z)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mFadeEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setMode(I)V
iload 1
ifeq L0
iload 1
iconst_1
if_icmpne L1
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
ifnull L2
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mContent Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
L1:
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mMode I
return
.limit locals 2
.limit stack 2
.end method

.method public setScrollScale(F)V
aload 0
fload 1
putfield com/slidingmenu/lib/CustomViewBehind/mScrollScale F
return
.limit locals 2
.limit stack 2
.end method

.method public setSecondaryContent(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
ifnull L0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/removeView(Landroid/view/View;)V
L0:
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSecondaryContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mSecondaryShadowDrawable Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getContext()Landroid/content/Context;
ldc "selected_view"
invokestatic com/slidingmenu/lib/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
aconst_null
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 0
aconst_null
putfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
L0:
aload 1
ifnull L1
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
ifnull L1
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewBehind/mSelectedView Landroid/view/View;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/getContext()Landroid/content/Context;
ldc "selected_view"
invokestatic com/slidingmenu/lib/ResourceUtil/getId(Landroid/content/Context;Ljava/lang/String;)I
ldc "CustomViewBehindSelectedView"
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/invalidate()V
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mSelectorDrawable Landroid/graphics/Bitmap;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/refreshDrawableState()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectorEnabled(Z)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mSelectorEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewBehind/mShadowDrawable Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setShadowWidth(I)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mShadowWidth I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTouchMode(I)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mTouchMode I
return
.limit locals 2
.limit stack 2
.end method

.method public setWidthOffset(I)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewBehind/mWidthOffset I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewBehind/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method
