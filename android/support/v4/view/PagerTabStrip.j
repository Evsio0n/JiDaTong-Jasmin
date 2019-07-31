.bytecode 50.0
.class public synchronized android/support/v4/view/PagerTabStrip
.super android/support/v4/view/PagerTitleStrip
.inner class inner android/support/v4/view/PagerTabStrip$1
.inner class inner android/support/v4/view/PagerTabStrip$2

.field private static final 'FULL_UNDERLINE_HEIGHT' I = 1


.field private static final 'INDICATOR_HEIGHT' I = 3


.field private static final 'MIN_PADDING_BOTTOM' I = 6


.field private static final 'MIN_STRIP_HEIGHT' I = 32


.field private static final 'MIN_TEXT_SPACING' I = 64


.field private static final 'TAB_PADDING' I = 16


.field private static final 'TAB_SPACING' I = 32


.field private static final 'TAG' Ljava/lang/String; = "PagerTabStrip"

.field private 'mDrawFullUnderline' Z

.field private 'mDrawFullUnderlineSet' Z

.field private 'mFullUnderlineHeight' I

.field private 'mIgnoreTap' Z

.field private 'mIndicatorColor' I

.field private 'mIndicatorHeight' I

.field private 'mInitialMotionX' F

.field private 'mInitialMotionY' F

.field private 'mMinPaddingBottom' I

.field private 'mMinStripHeight' I

.field private 'mMinTextSpacing' I

.field private 'mTabAlpha' I

.field private 'mTabPadding' I

.field private final 'mTabPaint' Landroid/graphics/Paint;

.field private final 'mTempRect' Landroid/graphics/Rect;

.field private 'mTouchSlop' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial android/support/v4/view/PagerTabStrip/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/support/v4/view/PagerTitleStrip/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield android/support/v4/view/PagerTabStrip/mTempRect Landroid/graphics/Rect;
aload 0
sipush 255
putfield android/support/v4/view/PagerTabStrip/mTabAlpha I
aload 0
iconst_0
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
aload 0
iconst_0
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderlineSet Z
aload 0
aload 0
getfield android/support/v4/view/PagerTabStrip/mTextColor I
putfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fstore 3
aload 0
ldc_w 3.0F
fload 3
fmul
ldc_w 0.5F
fadd
f2i
putfield android/support/v4/view/PagerTabStrip/mIndicatorHeight I
aload 0
ldc_w 6.0F
fload 3
fmul
ldc_w 0.5F
fadd
f2i
putfield android/support/v4/view/PagerTabStrip/mMinPaddingBottom I
aload 0
ldc_w 64.0F
fload 3
fmul
f2i
putfield android/support/v4/view/PagerTabStrip/mMinTextSpacing I
aload 0
ldc_w 16.0F
fload 3
fmul
ldc_w 0.5F
fadd
f2i
putfield android/support/v4/view/PagerTabStrip/mTabPadding I
aload 0
fconst_1
fload 3
fmul
ldc_w 0.5F
fadd
f2i
putfield android/support/v4/view/PagerTabStrip/mFullUnderlineHeight I
aload 0
ldc_w 32.0F
fload 3
fmul
ldc_w 0.5F
fadd
f2i
putfield android/support/v4/view/PagerTabStrip/mMinStripHeight I
aload 0
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield android/support/v4/view/PagerTabStrip/mTouchSlop I
aload 0
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingLeft()I
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingTop()I
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingRight()I
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingBottom()I
invokevirtual android/support/v4/view/PagerTabStrip/setPadding(IIII)V
aload 0
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getTextSpacing()I
invokevirtual android/support/v4/view/PagerTabStrip/setTextSpacing(I)V
aload 0
iconst_0
invokevirtual android/support/v4/view/PagerTabStrip/setWillNotDraw(Z)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mPrevText Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setFocusable(Z)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mPrevText Landroid/widget/TextView;
new android/support/v4/view/PagerTabStrip$1
dup
aload 0
invokespecial android/support/v4/view/PagerTabStrip$1/<init>(Landroid/support/v4/view/PagerTabStrip;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mNextText Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setFocusable(Z)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mNextText Landroid/widget/TextView;
new android/support/v4/view/PagerTabStrip$2
dup
aload 0
invokespecial android/support/v4/view/PagerTabStrip$2/<init>(Landroid/support/v4/view/PagerTabStrip;)V
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getBackground()Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
iconst_1
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
L0:
return
.limit locals 4
.limit stack 5
.end method

.method public getDrawFullUnderline()Z
aload 0
getfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method getMinHeight()I
aload 0
invokespecial android/support/v4/view/PagerTitleStrip/getMinHeight()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mMinStripHeight I
invokestatic java/lang/Math/max(II)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getTabIndicatorColor()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/support/v4/view/PagerTitleStrip/onDraw(Landroid/graphics/Canvas;)V
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getHeight()I
istore 2
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLeft()I
istore 3
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
istore 4
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getRight()I
istore 5
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
istore 6
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorHeight I
istore 7
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabAlpha I
bipush 24
ishl
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
ldc_w 16777215
iand
ior
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
iload 3
iload 4
isub
i2f
iload 2
iload 7
isub
i2f
iload 5
iload 6
iadd
i2f
iload 2
i2f
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
ifeq L0
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
ldc_w -16777216
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
ldc_w 16777215
iand
ior
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingLeft()I
i2f
iload 2
aload 0
getfield android/support/v4/view/PagerTabStrip/mFullUnderlineHeight I
isub
i2f
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getWidth()I
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getPaddingRight()I
isub
i2f
iload 2
i2f
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
L0:
return
.limit locals 8
.limit stack 6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 4
iload 4
ifeq L0
aload 0
getfield android/support/v4/view/PagerTabStrip/mIgnoreTap Z
ifeq L0
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
iload 4
tableswitch 0
L1
L2
L3
default : L4
L4:
iconst_1
ireturn
L1:
aload 0
fload 2
putfield android/support/v4/view/PagerTabStrip/mInitialMotionX F
aload 0
fload 3
putfield android/support/v4/view/PagerTabStrip/mInitialMotionY F
aload 0
iconst_0
putfield android/support/v4/view/PagerTabStrip/mIgnoreTap Z
goto L4
L3:
fload 2
aload 0
getfield android/support/v4/view/PagerTabStrip/mInitialMotionX F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield android/support/v4/view/PagerTabStrip/mTouchSlop I
i2f
fcmpl
ifgt L5
fload 3
aload 0
getfield android/support/v4/view/PagerTabStrip/mInitialMotionY F
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
getfield android/support/v4/view/PagerTabStrip/mTouchSlop I
i2f
fcmpl
ifle L4
L5:
aload 0
iconst_1
putfield android/support/v4/view/PagerTabStrip/mIgnoreTap Z
goto L4
L2:
fload 2
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLeft()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
isub
i2f
fcmpg
ifge L6
aload 0
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iconst_1
isub
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
goto L4
L6:
fload 2
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getRight()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
iadd
i2f
fcmpl
ifle L4
aload 0
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/PagerTabStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iconst_1
iadd
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
goto L4
.limit locals 5
.limit stack 3
.end method

.method public setBackgroundColor(I)V
aload 0
iload 1
invokespecial android/support/v4/view/PagerTitleStrip/setBackgroundColor(I)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mDrawFullUnderlineSet Z
ifne L0
ldc_w -16777216
iload 1
iand
ifne L1
iconst_1
istore 2
L2:
aload 0
iload 2
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
L0:
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
invokespecial android/support/v4/view/PagerTitleStrip/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mDrawFullUnderlineSet Z
ifne L0
aload 1
ifnonnull L1
iconst_1
istore 2
L2:
aload 0
iload 2
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
L0:
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public setBackgroundResource(I)V
aload 0
iload 1
invokespecial android/support/v4/view/PagerTitleStrip/setBackgroundResource(I)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mDrawFullUnderlineSet Z
ifne L0
iload 1
ifne L1
iconst_1
istore 2
L2:
aload 0
iload 2
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
L0:
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public setDrawFullUnderline(Z)V
aload 0
iload 1
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderline Z
aload 0
iconst_1
putfield android/support/v4/view/PagerTabStrip/mDrawFullUnderlineSet Z
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setPadding(IIII)V
iload 4
istore 5
iload 4
aload 0
getfield android/support/v4/view/PagerTabStrip/mMinPaddingBottom I
if_icmpge L0
aload 0
getfield android/support/v4/view/PagerTabStrip/mMinPaddingBottom I
istore 5
L0:
aload 0
iload 1
iload 2
iload 3
iload 5
invokespecial android/support/v4/view/PagerTitleStrip/setPadding(IIII)V
return
.limit locals 6
.limit stack 5
.end method

.method public setTabIndicatorColor(I)V
aload 0
iload 1
putfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPaint Landroid/graphics/Paint;
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorColor I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTabIndicatorColorResource(I)V
aload 0
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/support/v4/view/PagerTabStrip/setTabIndicatorColor(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setTextSpacing(I)V
iload 1
istore 2
iload 1
aload 0
getfield android/support/v4/view/PagerTabStrip/mMinTextSpacing I
if_icmpge L0
aload 0
getfield android/support/v4/view/PagerTabStrip/mMinTextSpacing I
istore 2
L0:
aload 0
iload 2
invokespecial android/support/v4/view/PagerTitleStrip/setTextSpacing(I)V
return
.limit locals 3
.limit stack 2
.end method

.method updateTextPositions(IFZ)V
aload 0
getfield android/support/v4/view/PagerTabStrip/mTempRect Landroid/graphics/Rect;
astore 10
aload 0
invokevirtual android/support/v4/view/PagerTabStrip/getHeight()I
istore 4
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLeft()I
istore 5
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
istore 6
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getRight()I
istore 7
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
istore 8
iload 4
aload 0
getfield android/support/v4/view/PagerTabStrip/mIndicatorHeight I
isub
istore 9
aload 10
iload 5
iload 6
isub
iload 9
iload 7
iload 8
iadd
iload 4
invokevirtual android/graphics/Rect/set(IIII)V
aload 0
iload 1
fload 2
iload 3
invokespecial android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
aload 0
fload 2
ldc_w 0.5F
fsub
invokestatic java/lang/Math/abs(F)F
fconst_2
fmul
ldc_w 255.0F
fmul
f2i
putfield android/support/v4/view/PagerTabStrip/mTabAlpha I
aload 10
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getLeft()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
isub
iload 9
aload 0
getfield android/support/v4/view/PagerTabStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getRight()I
aload 0
getfield android/support/v4/view/PagerTabStrip/mTabPadding I
iadd
iload 4
invokevirtual android/graphics/Rect/union(IIII)V
aload 0
aload 10
invokevirtual android/support/v4/view/PagerTabStrip/invalidate(Landroid/graphics/Rect;)V
return
.limit locals 11
.limit stack 5
.end method
