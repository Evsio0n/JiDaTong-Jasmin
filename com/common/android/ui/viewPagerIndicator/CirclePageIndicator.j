.bytecode 50.0
.class public synchronized com/common/android/ui/viewPagerIndicator/CirclePageIndicator
.super android/view/View
.implements com/common/android/ui/viewPagerIndicator/PageIndicator
.inner class static synthetic inner com/common/android/ui/viewPagerIndicator/CirclePageIndicator$1
.inner class static SavedState inner com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState outer com/common/android/ui/viewPagerIndicator/CirclePageIndicator
.inner class static final inner com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState$1

.field public static final 'HORIZONTAL' I = 0


.field public static final 'VERTICAL' I = 1


.field private 'mCentered' Z

.field private 'mCurrentOffset' I

.field private 'mCurrentPage' I

.field private 'mListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mOrientation' I

.field private 'mPageSize' I

.field private final 'mPaintFill' Landroid/graphics/Paint;

.field private final 'mPaintStroke' Landroid/graphics/Paint;

.field private 'mRadius' F

.field private 'mScrollState' I

.field private 'mSnap' Z

.field private 'mSnapPage' I

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$attr/circlePageIndicatorStyle I
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getResources()Landroid/content/res/Resources;
astore 11
aload 11
getstatic com/nd/android/u/allcommon/R$color/default_circle_indicator_fill_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 6
aload 11
getstatic com/nd/android/u/allcommon/R$integer/default_circle_indicator_orientation I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 7
aload 11
getstatic com/nd/android/u/allcommon/R$color/default_circle_indicator_stroke_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 8
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_circle_indicator_stroke_width I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 4
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_circle_indicator_radius I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 5
aload 11
getstatic com/nd/android/u/allcommon/R$bool/default_circle_indicator_centered I
invokevirtual android/content/res/Resources/getBoolean(I)Z
istore 9
aload 11
getstatic com/nd/android/u/allcommon/R$bool/default_circle_indicator_snap I
invokevirtual android/content/res/Resources/getBoolean(I)Z
istore 10
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/CirclePageIndicator [I
iload 3
getstatic com/nd/android/u/allcommon/R$style/Widget_CirclePageIndicator I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CirclePageIndicator_centered I
iload 9
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCentered Z
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CirclePageIndicator_orientation I
iload 7
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_strokeColor I
iload 8
invokevirtual android/content/res/TypedArray/getColor(II)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CirclePageIndicator_strokeWidth I
fload 4
invokevirtual android/content/res/TypedArray/getDimension(IF)F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_fillColor I
iload 6
invokevirtual android/content/res/TypedArray/getColor(II)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CircleFlowIndicator_radius I
fload 5
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/CirclePageIndicator_snap I
iload 10
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 12
.limit stack 5
.end method

.method private measureLong(I)I
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
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 1
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingLeft()I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingRight()I
iadd
i2f
iload 1
iconst_2
imul
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fmul
fadd
iload 1
iconst_1
isub
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fmul
fadd
fconst_1
fadd
f2i
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

.method private measureShort(I)I
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
fconst_2
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fmul
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingTop()I
i2f
fadd
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingBottom()I
i2f
fadd
fconst_1
fadd
f2i
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

.method private updatePageSize()V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L1
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 1
L2:
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPageSize I
L0:
return
L1:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getHeight()I
istore 1
goto L2
.limit locals 2
.limit stack 2
.end method

.method public getFillColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getColor()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOrientation()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getRadius()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getStrokeColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getColor()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getStrokeWidth()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getStrokeWidth()F
freturn
.limit locals 1
.limit stack 1
.end method

.method public isCentered()Z
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCentered Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSnap()Z
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L0
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getWidth()I
istore 9
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingLeft()I
istore 8
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingRight()I
istore 7
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingTop()I
istore 10
L1:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 11
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
ldc_w 3.0F
fmul
fstore 6
iload 10
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fadd
fstore 2
iload 8
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fadd
fstore 4
fload 4
fstore 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCentered Z
ifeq L2
fload 4
iload 9
iload 8
isub
iload 7
isub
i2f
fconst_2
fdiv
iload 11
i2f
fload 6
fmul
fconst_2
fdiv
fsub
fadd
fstore 3
L2:
iconst_0
istore 7
L3:
iload 7
iload 11
if_icmpge L4
fload 3
iload 7
i2f
fload 6
fmul
fadd
fstore 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L5
fload 5
fstore 4
fload 2
fstore 5
L6:
aload 1
fload 4
fload 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
iload 7
iconst_1
iadd
istore 7
goto L3
L0:
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getHeight()I
istore 9
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingTop()I
istore 8
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingBottom()I
istore 7
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getPaddingLeft()I
istore 10
goto L1
L5:
fload 2
fstore 4
goto L6
L4:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
ifeq L7
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnapPage I
istore 7
L8:
iload 7
i2f
fload 6
fmul
fstore 5
fload 5
fstore 4
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
ifne L9
fload 5
fstore 4
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPageSize I
ifeq L9
fload 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentOffset I
i2f
fconst_1
fmul
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPageSize I
i2f
fdiv
fload 6
fmul
fadd
fstore 4
L9:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L10
fload 3
fload 4
fadd
fstore 4
fload 2
fstore 3
fload 4
fstore 2
L11:
aload 1
fload 2
fload 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawCircle(FFFLandroid/graphics/Paint;)V
return
L7:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
istore 7
goto L8
L10:
fload 3
fload 4
fadd
fstore 3
goto L11
.limit locals 12
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L0
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/measureLong(I)I
aload 0
iload 2
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/measureShort(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setMeasuredDimension(II)V
return
L0:
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/measureShort(I)I
aload 0
iload 2
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/measureLong(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setMeasuredDimension(II)V
return
.limit locals 3
.limit stack 4
.end method

.method public onPageScrollStateChanged(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mScrollState I
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrollStateChanged(I)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrolled(IFI)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
aload 0
iload 3
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentOffset I
aload 0
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/updatePageSize()V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrolled(IFI)V 3
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onPageSelected(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
ifne L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mScrollState I
ifne L1
L0:
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnapPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
L1:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L2
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L2:
return
.limit locals 2
.limit stack 2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState
astore 1
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/view/View/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState/currentPage I
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
aload 0
aload 1
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState/currentPage I
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnapPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState
dup
aload 0
invokespecial android/view/View/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator$SavedState/currentPage I
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 6
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L1
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getWidth()I
istore 5
L2:
iload 5
iconst_2
idiv
i2f
fstore 3
iload 6
iconst_3
imul
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
fmul
fconst_2
fdiv
fstore 4
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
ifne L3
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
L4:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
ifle L5
fload 2
fload 3
fload 4
fsub
fcmpg
ifge L5
aload 0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
iconst_1
isub
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setCurrentItem(I)V
iconst_1
ireturn
L1:
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/getHeight()I
istore 5
goto L2
L3:
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
goto L4
L5:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
iload 6
iconst_1
isub
if_icmpge L0
fload 2
fload 3
fload 4
fadd
fcmpl
ifle L0
aload 0
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
iconst_1
iadd
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setCurrentItem(I)V
iconst_1
ireturn
L0:
aload 0
aload 1
invokespecial android/view/View/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 7
.limit stack 3
.end method

.method public setCentered(Z)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCentered Z
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentItem(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ViewPager has not been bound."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setFillColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintFill Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrientation(I)V
iload 1
tableswitch 0
L0
L0
default : L1
L1:
new java/lang/IllegalArgumentException
dup
ldc "Orientation must be either HORIZONTAL or VERTICAL."
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mOrientation I
aload 0
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/updatePageSize()V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/requestLayout()V
return
.limit locals 2
.limit stack 3
.end method

.method public setRadius(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mRadius F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSnap(Z)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mSnap Z
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setStrokeColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mPaintStroke Landroid/graphics/Paint;
fload 1
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 1
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ViewPager does not have adapter instance."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/ui/viewPagerIndicator/CirclePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
invokespecial com/common/android/ui/viewPagerIndicator/CirclePageIndicator/updatePageSize()V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
iload 2
invokevirtual com/common/android/ui/viewPagerIndicator/CirclePageIndicator/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method
