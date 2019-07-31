.bytecode 50.0
.class public synchronized com/common/android/ui/viewPagerIndicator/TitlePageIndicator
.super android/view/View
.implements com/common/android/ui/viewPagerIndicator/PageIndicator
.inner class static synthetic inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$1
.inner class public static final enum IndicatorStyle inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle outer com/common/android/ui/viewPagerIndicator/TitlePageIndicator
.inner class static SavedState inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState outer com/common/android/ui/viewPagerIndicator/TitlePageIndicator
.inner class static final inner com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState$1

.field private static final 'BOLD_FADE_PERCENTAGE' F = 0.05F


.field private static final 'SELECTION_FADE_PERCENTAGE' F = 0.25F


.field private 'mBoldText' Z

.field private 'mClipPadding' F

.field private 'mColorSelected' I

.field private 'mColorText' I

.field private 'mCurrentOffset' I

.field private 'mCurrentPage' I

.field private 'mFooterIndicatorHeight' F

.field private 'mFooterIndicatorStyle' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;

.field private 'mFooterIndicatorUnderlinePadding' F

.field private 'mFooterLineHeight' F

.field private 'mFooterPadding' F

.field private 'mListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final 'mPaintFooterIndicator' Landroid/graphics/Paint;

.field private final 'mPaintFooterLine' Landroid/graphics/Paint;

.field private final 'mPaintText' Landroid/graphics/Paint;

.field private 'mPath' Landroid/graphics/Path;

.field private 'mScrollState' I

.field private 'mTitlePadding' F

.field private 'mTitleProvider' Lcom/common/android/ui/viewPagerIndicator/TitleProvider;

.field private 'mTopPadding' F

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$attr/titlePageIndicatorStyle I
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getResources()Landroid/content/res/Resources;
astore 17
aload 17
getstatic com/nd/android/u/allcommon/R$color/default_title_indicator_footer_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 12
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_line_height I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 4
aload 17
getstatic com/nd/android/u/allcommon/R$integer/default_title_indicator_footer_indicator_style I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 13
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_indicator_height I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 5
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_indicator_underline_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 6
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_footer_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 7
aload 17
getstatic com/nd/android/u/allcommon/R$color/default_title_indicator_selected_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 14
aload 17
getstatic com/nd/android/u/allcommon/R$bool/default_title_indicator_selected_bold I
invokevirtual android/content/res/Resources/getBoolean(I)Z
istore 16
aload 17
getstatic com/nd/android/u/allcommon/R$color/default_title_indicator_text_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 15
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_text_size I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 8
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_title_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 9
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_clip_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 10
aload 17
getstatic com/nd/android/u/allcommon/R$dimen/default_title_indicator_top_padding I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 11
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator [I
iload 3
getstatic com/nd/android/u/allcommon/R$style/Widget_TitlePageIndicator I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_footerLineHeight I
fload 4
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerIndicatorStyle I
iload 13
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokestatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/fromValue(I)Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerIndicatorHeight I
fload 5
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerIndicatorUnderlinePadding I
fload 6
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorUnderlinePadding F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_footerPadding I
fload 7
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterPadding F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_topPadding I
fload 11
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_titlePadding I
fload 9
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_clipPadding I
fload 10
invokevirtual android/content/res/TypedArray/getDimension(IF)F
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_selectedColor I
iload 14
invokevirtual android/content/res/TypedArray/getColor(II)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorSelected I
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_textColor I
iload 15
invokevirtual android/content/res/TypedArray/getColor(II)I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorText I
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitlePageIndicator_selectedBold I
iload 16
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mBoldText Z
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_textSize I
fload 8
invokevirtual android/content/res/TypedArray/getDimension(IF)F
fstore 4
aload 1
getstatic com/nd/android/u/allcommon/R$styleable/TitleFlowIndicator_footerColor I
iload 12
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 3
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
fload 4
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
iconst_1
invokevirtual android/graphics/Paint/setAntiAlias(Z)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
iload 3
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
new android/graphics/Paint
dup
invokespecial android/graphics/Paint/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
getstatic android/graphics/Paint$Style/FILL_AND_STROKE Landroid/graphics/Paint$Style;
invokevirtual android/graphics/Paint/setStyle(Landroid/graphics/Paint$Style;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
iload 3
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 18
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
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
astore 9
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 6
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getWidth()I
istore 7
iload 7
iconst_2
idiv
istore 8
iconst_0
istore 5
L0:
iload 5
iload 6
if_icmpge L1
aload 0
iload 5
aload 1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/RectF;
astore 10
aload 10
getfield android/graphics/RectF/right F
aload 10
getfield android/graphics/RectF/left F
fsub
fstore 2
aload 10
getfield android/graphics/RectF/bottom F
fstore 3
aload 10
getfield android/graphics/RectF/top F
fstore 4
aload 10
iload 8
i2f
fload 2
fconst_2
fdiv
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentOffset I
i2f
fsub
iload 5
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
isub
iload 7
imul
i2f
fadd
putfield android/graphics/RectF/left F
aload 10
aload 10
getfield android/graphics/RectF/left F
fload 2
fadd
putfield android/graphics/RectF/right F
aload 10
fconst_0
putfield android/graphics/RectF/top F
aload 10
fload 3
fload 4
fsub
putfield android/graphics/RectF/bottom F
aload 9
aload 10
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 5
iconst_1
iadd
istore 5
goto L0
L1:
aload 9
areturn
.limit locals 11
.limit stack 4
.end method

.method private clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
aload 1
iload 3
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
fadd
putfield android/graphics/RectF/left F
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/descent()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/ascent()F
fsub
putfield android/graphics/RectF/bottom F
aload 5
getfield android/graphics/RectF/bottom F
aload 5
getfield android/graphics/RectF/top F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterPadding F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
fadd
fstore 3
fload 3
fstore 2
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/None Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
if_acmpeq L1
fload 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getColor()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorHeight()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorPadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterIndicatorStyle()Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFooterLineHeight()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorSelected I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextColor()I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorText I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTextSize()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getTextSize()F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getTitlePadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public getTopPadding()F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
freturn
.limit locals 1
.limit stack 1
.end method

.method public isSelectedBold()Z
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mBoldText Z
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
astore 18
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 12
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getWidth()I
i2f
fconst_2
fdiv
fstore 3
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getLeft()I
istore 13
iload 13
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
fadd
fstore 5
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getWidth()I
istore 14
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getHeight()I
istore 15
iload 13
iload 14
iadd
istore 16
iload 16
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
fsub
fstore 4
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
istore 7
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentOffset I
i2f
fload 3
fcmpg
ifgt L0
fconst_1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentOffset I
i2f
fmul
iload 14
i2f
fdiv
fstore 2
L1:
fload 2
ldc_w 0.25F
fcmpg
ifgt L2
iconst_1
istore 8
L3:
fload 2
ldc_w 0.05F
fcmpg
ifgt L4
iconst_1
istore 9
L5:
ldc_w 0.25F
fload 2
fsub
ldc_w 0.25F
fdiv
fstore 2
aload 18
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 19
aload 19
getfield android/graphics/RectF/right F
aload 19
getfield android/graphics/RectF/left F
fsub
fstore 6
aload 19
getfield android/graphics/RectF/left F
fload 5
fcmpg
ifge L6
aload 0
aload 19
fload 6
iload 13
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
L6:
aload 19
getfield android/graphics/RectF/right F
fload 4
fcmpl
ifle L7
aload 0
aload 19
fload 6
iload 16
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/clipViewOnTheRight(Landroid/graphics/RectF;FI)V
L7:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
ifle L8
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iconst_1
isub
istore 10
L9:
iload 10
iflt L8
aload 18
iload 10
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 19
aload 19
getfield android/graphics/RectF/left F
fload 5
fcmpg
ifge L10
aload 19
getfield android/graphics/RectF/right F
aload 19
getfield android/graphics/RectF/left F
fsub
fstore 6
aload 0
aload 19
fload 6
iload 13
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/clipViewOnTheLeft(Landroid/graphics/RectF;FI)V
aload 18
iload 10
iconst_1
iadd
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 20
aload 19
getfield android/graphics/RectF/right F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
fadd
aload 20
getfield android/graphics/RectF/left F
fcmpl
ifle L10
aload 19
aload 20
getfield android/graphics/RectF/left F
fload 6
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
fsub
putfield android/graphics/RectF/left F
aload 19
aload 19
getfield android/graphics/RectF/left F
fload 6
fadd
putfield android/graphics/RectF/right F
L10:
iload 10
iconst_1
isub
istore 10
goto L9
L0:
iload 7
iconst_1
iadd
istore 7
fconst_1
iload 14
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentOffset I
isub
i2f
fmul
iload 14
i2f
fdiv
fstore 2
goto L1
L2:
iconst_0
istore 8
goto L3
L4:
iconst_0
istore 9
goto L5
L8:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iload 12
iconst_1
isub
if_icmpge L11
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iconst_1
iadd
istore 10
L12:
iload 10
iload 12
if_icmpge L11
aload 18
iload 10
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 19
aload 19
getfield android/graphics/RectF/right F
fload 4
fcmpl
ifle L13
aload 19
getfield android/graphics/RectF/right F
aload 19
getfield android/graphics/RectF/left F
fsub
fstore 5
aload 0
aload 19
fload 5
iload 16
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/clipViewOnTheRight(Landroid/graphics/RectF;FI)V
aload 18
iload 10
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 20
aload 19
getfield android/graphics/RectF/left F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
fsub
aload 20
getfield android/graphics/RectF/right F
fcmpg
ifge L13
aload 19
aload 20
getfield android/graphics/RectF/right F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
fadd
putfield android/graphics/RectF/left F
aload 19
aload 19
getfield android/graphics/RectF/left F
fload 5
fadd
putfield android/graphics/RectF/right F
L13:
iload 10
iconst_1
iadd
istore 10
goto L12
L11:
iconst_0
istore 10
L14:
iload 10
iload 12
if_icmpge L15
aload 18
iload 10
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 19
aload 19
getfield android/graphics/RectF/left F
iload 13
i2f
fcmpl
ifle L16
aload 19
getfield android/graphics/RectF/left F
iload 16
i2f
fcmpg
iflt L17
L16:
aload 19
getfield android/graphics/RectF/right F
iload 13
i2f
fcmpl
ifle L18
aload 19
getfield android/graphics/RectF/right F
iload 16
i2f
fcmpg
ifge L18
L17:
iload 10
iload 7
if_icmpne L19
iconst_1
istore 11
L20:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
astore 20
iload 11
ifeq L21
iload 9
ifeq L21
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mBoldText Z
ifeq L21
iconst_1
istore 17
L22:
aload 20
iload 17
invokevirtual android/graphics/Paint/setFakeBoldText(Z)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorText I
invokevirtual android/graphics/Paint/setColor(I)V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 10
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
aload 19
getfield android/graphics/RectF/left F
aload 19
getfield android/graphics/RectF/bottom F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iload 11
ifeq L18
iload 8
ifeq L18
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorSelected I
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorSelected I
bipush 24
iushr
i2f
fload 2
fmul
f2i
invokevirtual android/graphics/Paint/setAlpha(I)V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
iload 10
invokeinterface com/common/android/ui/viewPagerIndicator/TitleProvider/getTitle(I)Ljava/lang/String; 1
aload 19
getfield android/graphics/RectF/left F
aload 19
getfield android/graphics/RectF/bottom F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
fadd
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
L18:
iload 10
iconst_1
iadd
istore 10
goto L14
L19:
iconst_0
istore 11
goto L20
L21:
iconst_0
istore 17
goto L22
L15:
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
fconst_0
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fconst_2
fdiv
fsub
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
iload 14
i2f
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fconst_2
fdiv
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicator$1/$SwitchMap$com$common$android$ui$viewPagerIndicator$TitlePageIndicator$IndicatorStyle [I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle/ordinal()I
iaload
tableswitch 1
L23
L24
default : L25
L25:
return
L23:
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
fload 3
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
fsub
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
fload 3
fadd
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
fload 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
fsub
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return
L24:
iload 8
ifeq L25
aload 18
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/RectF
astore 18
aload 0
new android/graphics/Path
dup
invokespecial android/graphics/Path/<init>()V
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 18
getfield android/graphics/RectF/left F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorUnderlinePadding F
fsub
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/moveTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 18
getfield android/graphics/RectF/right F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorUnderlinePadding F
fadd
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 18
getfield android/graphics/RectF/right F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorUnderlinePadding F
fadd
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 18
getfield android/graphics/RectF/left F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorUnderlinePadding F
fsub
iload 15
i2f
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
fsub
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
fsub
invokevirtual android/graphics/Path/lineTo(FF)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
invokevirtual android/graphics/Path/close()V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
ldc_w 255.0F
fload 2
fmul
f2i
invokevirtual android/graphics/Paint/setAlpha(I)V
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPath Landroid/graphics/Path;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
sipush 255
invokevirtual android/graphics/Paint/setAlpha(I)V
return
.limit locals 21
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
aload 0
iload 1
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/measureWidth(I)I
aload 0
iload 2
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator/measureHeight(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/setMeasuredDimension(II)V
return
.limit locals 3
.limit stack 4
.end method

.method public onPageScrollStateChanged(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mScrollState I
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
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
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
aload 0
iload 3
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentOffset I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mScrollState I
ifne L0
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
L0:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState
astore 1
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/view/View/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/currentPage I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState
dup
aload 0
invokespecial android/view/View/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator$SavedState/currentPage I
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
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 4
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/getWidth()I
istore 5
iload 5
i2f
fconst_2
fdiv
fstore 2
iload 5
i2f
ldc_w 6.0F
fdiv
fstore 3
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
ifle L1
aload 1
invokevirtual android/view/MotionEvent/getX()F
fload 2
fload 3
fsub
fcmpg
ifge L1
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iconst_1
isub
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
iconst_1
ireturn
L1:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iload 4
iconst_1
isub
if_icmpge L0
aload 1
invokevirtual android/view/MotionEvent/getX()F
fload 2
fload 3
fadd
fcmpl
ifle L0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
iconst_1
iadd
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
iconst_1
ireturn
L0:
aload 0
aload 1
invokespecial android/view/View/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 6
.limit stack 3
.end method

.method public setClipPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mClipPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentItem(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ViewPager has not been bound."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mCurrentPage I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setFooterColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterIndicator Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorHeight(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorHeight F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterIndicatorStyle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicator$IndicatorStyle;
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setFooterLineHeight(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintFooterLine Landroid/graphics/Paint;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mFooterLineHeight F
invokevirtual android/graphics/Paint/setStrokeWidth(F)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedBold(Z)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mBoldText Z
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedColor(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorSelected I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextColor(I)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
iload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mColorText I
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTextSize(F)V
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mPaintText Landroid/graphics/Paint;
fload 1
invokevirtual android/graphics/Paint/setTextSize(F)V
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTitlePadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitlePadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setTopPadding(F)V
aload 0
fload 1
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTopPadding F
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
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
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 0
getfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
checkcast com/common/android/ui/viewPagerIndicator/TitleProvider
putfield com/common/android/ui/viewPagerIndicator/TitlePageIndicator/mTitleProvider Lcom/common/android/ui/viewPagerIndicator/TitleProvider;
aload 0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
aload 0
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
iload 2
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicator/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method
