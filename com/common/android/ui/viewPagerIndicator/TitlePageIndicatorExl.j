.bytecode 50.0
.class public synchronized com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
.super android/view/View
.implements com/common/android/ui/viewPagerIndicator/PageIndicator
.inner class static synthetic inner com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$1
.inner class public static final enum IndicatorStyle inner com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle outer com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
.inner class static SavedState inner com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState outer com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
.inner class static final inner com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState$1
.inner class public static abstract interface onTabShowNewListener inner com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener outer com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl

.field private static final 'BOLD_FADE_PERCENTAGE' F = 0.5F


.field private static final 'NEW_FUNCTION_TAG' Ljava/lang/String; = "CONTACT"

.field private static final 'SELECTION_FADE_PERCENTAGE' F = 0.5F


.field private static final 'SEPERATOR_LINE_TOP_MARGIN' F = 6.0F


.field private 'isNeedSeperate' Z

.field private 'mBitmapNew' Landroid/graphics/Bitmap;

.field private 'mBoldText' Z

.field private 'mClipPadding' F

.field private 'mColorSelected' I

.field private 'mColorText' I

.field private 'mCurrentOffsetPixels' I

.field private 'mCurrentPage' I

.field private 'mFooterIndicatorHeight' F

.field private 'mFooterIndicatorStyle' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;

.field private 'mFooterLineHeight' F

.field private 'mFooterPadding' F

.field private 'mHandler' Landroid/os/Handler;

.field private 'mListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mMarginBottom' F

.field private final 'mPaintFooterIndicator' Landroid/graphics/Paint;

.field private final 'mPaintFooterLine' Landroid/graphics/Paint;

.field private final 'mPaintSeperatorLine' Landroid/graphics/Paint;

.field private final 'mPaintText' Landroid/graphics/Paint;

.field private 'mPath' Landroid/graphics/Path;

.field private 'mScrollState' I

.field private 'mSelectedPage' I

.field private 'mSeperatorPath' Landroid/graphics/Path;

.field private 'mShowNewListener' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;

.field private 'mTitlePadding' F

.field private 'mTitleProvider' Lcom/common/android/ui/viewPagerIndicator/TitleProvider;

.field private 'mTopPadding' F

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$attr/titlePageIndicatorStyle I
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSeperatorPath Landroid/graphics/Path;
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
ldc_w 6.0F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
aload 0
iconst_1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/isNeedSeperate Z
aload 0
iconst_0
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSelectedPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getResources()Landroid/content/res/Resources;
astore 11
aload 11
getstatic com/nd/android/u/allcommon/R$integer/default_title_indicator_footer_indicator_style I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 8
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_indicator_height I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 4
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 5
aload 11
getstatic com/nd/android/u/allcommon/R$color/default_title_indicator_selected_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 9
aload 11
getstatic com/nd/android/u/allcommon/R$bool/default_title_indicator_selected_bold I
invokevirtual android/content/res/Resources/getBoolean(I)Z
istore 10
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_title_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 6
aload 11
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_top_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 7
aload 0
ldc_w 5.0F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator [I
iload 3
getstatic com/nd/android/u/allcommon/R$style/Widget_TitlePageIndicator I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerIndicatorStyle I
iload 8
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokestatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/fromValue(I)Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerIndicatorHeight I
fload 4
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerPadding I
fload 5
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterPadding F
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_topPadding I
fload 7
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_titlePadding I
fload 6
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitlePadding F
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_selectedColor I
iload 9
invokevirtual android/content/res/TypedArray/getColor(II)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorSelected I
aload 0
iconst_0
iconst_0
iconst_0
invokestatic android/graphics/Color/rgb(III)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorText I
aload 0
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_selectedBold I
iload 10
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBoldText Z
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
ldc_w 16.0F
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
invokestatic com/common/android/utils/DisplayUtil/sp2px(FF)I
i2f
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
fconst_0
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
bipush 113
sipush 192
sipush 137
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
ldc_w 3.0F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
bipush 113
sipush 192
sipush 137
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
fconst_2
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
sipush 229
sipush 229
sipush 229
invokestatic android/graphics/Color/rgb(III)I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
bipush 94
bipush 80
bipush 67
invokestatic android/graphics/Color/rgb(III)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorSelected I
aload 0
bipush 94
bipush 80
bipush 67
invokestatic android/graphics/Color/rgb(III)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorText I
aload 0
aload 11
getstatic com/nd/android/u/allcommon/R$drawable/common_icon_new_function I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBitmapNew Landroid/graphics/Bitmap;
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 12
.limit stack 5
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
astore 3
aload 3
aload 2
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 1
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
putfield android/graphics/RectF/right F
aload 3
aload 2
invokevirtual android/graphics/Paint/descent()F
aload 2
invokevirtual android/graphics/Paint/ascent()F
fsub
putfield android/graphics/RectF/bottom F
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
.signature "(Landroid/graphics/Paint;)Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 5
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getWidth()I
istore 4
iload 5
ifne L0
L1:
aload 6
areturn
L0:
iload 4
iload 5
idiv
i2f
fstore 2
fload 2
fconst_2
fdiv
fstore 3
iconst_0
istore 4
L2:
iload 4
iload 5
if_icmpge L1
aload 0
iload 4
aload 1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
astore 7
aload 7
iload 4
i2f
fload 2
fmul
fload 3
fadd
aload 7
getfield android/graphics/RectF/right F
fconst_2
fdiv
fsub
putfield android/graphics/RectF/left F
aload 7
iload 4
i2f
fload 2
fmul
fload 3
fadd
aload 7
getfield android/graphics/RectF/right F
fconst_2
fdiv
fadd
putfield android/graphics/RectF/right F
aload 6
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 4
iconst_1
iadd
istore 4
goto L2
.limit locals 8
.limit stack 4
.end method

.method private clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
aload 1
iload 3
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mClipPadding F
fadd
putfield android/graphics/RectF/left F
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mClipPadding F
fload 2
fadd
putfield android/graphics/RectF/right F
return
.limit locals 4
.limit stack 3
.end method

.method private clipViewOnTheRight(Landroid/graphics/RectF;FI)V
aload 1
iload 3
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mClipPadding F
fsub
putfield android/graphics/RectF/right F
aload 1
aload 1
getfield android/graphics/RectF/right F
fload 2
fsub
putfield android/graphics/RectF/left F
return
.limit locals 4
.limit stack 3
.end method

.method private measureHeight(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 4
ldc_w 1073741824
if_icmpne L0
iload 1
i2f
fstore 2
L1:
fload 2
f2i
ireturn
L0:
new android/graphics/RectF
dup
invokespecial android/graphics/RectF/<init>()V
astore 5
aload 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/descent()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/ascent()F
fsub
putfield android/graphics/RectF/bottom F
aload 5
getfield android/graphics/RectF/bottom F
aload 5
getfield android/graphics/RectF/top F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterPadding F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
fadd
fstore 3
fload 3
fstore 2
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/None Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
if_acmpeq L1
fload 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fadd
fstore 2
goto L1
.limit locals 6
.limit stack 3
.end method

.method private measureWidth(I)I
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 2
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
ldc_w 1073741824
if_icmpeq L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " can only be used in EXACTLY mode."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getClipPadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mClipPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getColor()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorHeight()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorPadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorStyle()Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterLineHeight()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorSelected I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorText I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextSize()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getTextSize()F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getTitlePadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitlePadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getTopPadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public isSelectedBold()Z
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBoldText Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
astore 15
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 9
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getWidth()I
i2f
fconst_2
fdiv
fstore 2
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getLeft()I
istore 10
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getWidth()I
istore 5
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getHeight()I
istore 11
iload 10
iload 5
iadd
istore 12
iload 5
iload 9
idiv
i2f
fstore 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
istore 4
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentOffsetPixels I
i2f
fload 2
fcmpg
ifgt L0
fconst_1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentOffsetPixels I
i2f
fmul
iload 5
i2f
fdiv
fstore 2
L1:
fload 2
ldc_w 0.5F
fcmpg
ifgt L2
iconst_1
istore 5
L3:
fload 2
ldc_w 0.5F
fcmpg
ifgt L4
iconst_1
istore 6
L5:
iconst_0
istore 7
L6:
iload 7
iload 9
if_icmpge L7
aload 15
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 16
aload 16
getfield android/graphics/RectF/left F
iload 10
i2f
fcmpl
ifle L8
aload 16
getfield android/graphics/RectF/left F
iload 12
i2f
fcmpg
iflt L9
L8:
aload 16
getfield android/graphics/RectF/right F
iload 10
i2f
fcmpl
ifle L10
aload 16
getfield android/graphics/RectF/right F
iload 12
i2f
fcmpg
ifge L10
L9:
iload 7
iload 4
if_icmpne L11
iconst_1
istore 8
L12:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
astore 17
iload 8
ifeq L13
iload 6
ifeq L13
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBoldText Z
ifeq L13
iconst_1
istore 14
L14:
aload 17
iload 14
invokevirtual android/graphics/Paint/setFakeBoldText(Z)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorText I
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 7
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
aload 16
getfield android/graphics/RectF/left F
aload 16
getfield android/graphics/RectF/bottom F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
fconst_2
fdiv
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iload 8
ifeq L15
iload 5
ifeq L15
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorSelected I
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 7
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
aload 16
getfield android/graphics/RectF/left F
aload 16
getfield android/graphics/RectF/bottom F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
fconst_2
fdiv
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
L15:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/isNeedSeperate Z
ifeq L16
iload 7
iload 9
iconst_1
isub
if_icmpeq L16
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSeperatorPath Landroid/graphics/Path;
iload 7
iconst_1
iadd
i2f
fload 3
fmul
ldc_w 6.0F
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSeperatorPath Landroid/graphics/Path;
iload 7
iconst_1
iadd
i2f
fload 3
fmul
iload 11
i2f
ldc_w 12.0F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSeperatorPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSeperatorPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
L16:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mShowNewListener Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;
ifnull L10
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mShowNewListener Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
invokeinterface com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener/showNew(I)Z 1
ifeq L10
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 7
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
istore 8
aload 16
getfield android/graphics/RectF/bottom F
aload 16
getfield android/graphics/RectF/top F
fsub
f2i
iconst_4
idiv
istore 13
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBitmapNew Landroid/graphics/Bitmap;
aload 16
getfield android/graphics/RectF/left F
iload 8
i2f
fadd
aload 16
getfield android/graphics/RectF/top F
iload 13
i2f
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L10:
iload 7
iconst_1
iadd
istore 7
goto L6
L0:
iload 4
iconst_1
iadd
istore 4
fconst_1
iload 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentOffsetPixels I
isub
i2f
fmul
iload 5
i2f
fdiv
fstore 2
goto L1
L2:
iconst_0
istore 5
goto L3
L4:
iconst_0
istore 6
goto L5
L11:
iconst_0
istore 8
goto L12
L13:
iconst_0
istore 14
goto L14
L7:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentOffsetPixels I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
idiv
i2f
fstore 2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$1/$SwitchMap$com$common$android$ui$viewPagerIndicator$TitlePageIndicatorExl$IndicatorStyle [I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/ordinal()I
iaload
tableswitch 1
L17
L18
default : L19
L19:
return
L17:
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
ldc_w 5.0F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
i2f
ldc_w 0.5F
fadd
fload 3
fmul
fload 2
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fsub
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
i2f
ldc_w 0.5F
fadd
fload 3
fmul
fload 2
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
i2f
ldc_w 0.5F
fadd
fload 3
fmul
fload 2
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fsub
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return
L18:
iload 5
ifeq L19
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
i2f
fload 3
fmul
fload 2
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
fsub
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
iconst_1
iadd
i2f
fload 3
fmul
fload 2
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
iconst_1
iadd
i2f
fload 3
fmul
fload 2
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
i2f
fload 3
fmul
fload 2
fadd
iload 11
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return
.limit locals 18
.limit stack 6
.end method

.method protected onMeasure(II)V
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/measureWidth(I)I
aload 0
iload 2
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/measureHeight(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setMeasuredDimension(II)V
return
.limit locals 3
.limit stack 4
.end method

.method public onPageScrollStateChanged(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mScrollState I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
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
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
aload 0
iload 3
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentOffsetPixels I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mScrollState I
ifne L0
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
L0:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mHandler Landroid/os/Handler;
ifnull L1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mHandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L1:
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSelectedPage I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L2
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L2:
return
.limit locals 2
.limit stack 2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState
astore 1
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/view/View/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState/currentPage I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState
dup
aload 0
invokespecial android/view/View/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$SavedState/currentPage I
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
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/getWidth()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
idiv
istore 2
aload 1
invokevirtual android/view/MotionEvent/getX()F
iload 2
i2f
fdiv
f2i
istore 2
iload 2
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mSelectedPage I
if_icmpne L1
iconst_1
ireturn
L1:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
iload 2
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
iconst_1
ireturn
L0:
aload 0
aload 1
invokespecial android/view/View/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setClipPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mClipPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentItem(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ViewPager has not been bound."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setFootMarginBottom(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mMarginBottom F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterIndicator Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorHeight(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorHeight F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterLineHeight(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mFooterLineHeight F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterSeperatorColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintSeperatorLine Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setNeedSeperate(Z)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/isNeedSeperate Z
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedBold(Z)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mBoldText Z
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedColor(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorSelected I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mColorText I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mPaintText Landroid/graphics/Paint;
fload 1
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTitlePadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitlePadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTopPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTopPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
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
aload 1
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
instanceof com/common/android/ui/viewPagerIndicator/TitleProvider
ifne L1
new java/lang/IllegalStateException
dup
ldc "ViewPager adapter must implement TitleProvider to be used with TitlePageIndicator."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
checkcast com/common/android/ui/viewPagerIndicator/TitleProvider
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
iload 2
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setmHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setonTabShowNewListener(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/mShowNewListener Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$onTabShowNewListener;
return
.limit locals 2
.limit stack 2
.end method
