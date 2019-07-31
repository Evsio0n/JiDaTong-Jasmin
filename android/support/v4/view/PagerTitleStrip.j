.bytecode 50.0
.class public synchronized android/support/v4/view/PagerTitleStrip
.super android/view/ViewGroup
.implements android/support/v4/view/ViewPager$Decor
.inner class static synthetic inner android/support/v4/view/PagerTitleStrip$1
.inner class private PageListener inner android/support/v4/view/PagerTitleStrip$PageListener outer android/support/v4/view/PagerTitleStrip
.inner class static abstract interface PagerTitleStripImpl inner android/support/v4/view/PagerTitleStrip$PagerTitleStripImpl outer android/support/v4/view/PagerTitleStrip
.inner class static PagerTitleStripImplBase inner android/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase outer android/support/v4/view/PagerTitleStrip
.inner class static PagerTitleStripImplIcs inner android/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs outer android/support/v4/view/PagerTitleStrip

.field private static final 'ATTRS' [I

.field private static final 'IMPL' Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final 'SIDE_ALPHA' F = 0.6F


.field private static final 'TAG' Ljava/lang/String; = "PagerTitleStrip"

.field private static final 'TEXT_ATTRS' [I

.field private static final 'TEXT_SPACING' I = 16


.field 'mCurrText' Landroid/widget/TextView;

.field private 'mGravity' I

.field private 'mLastKnownCurrentPage' I

.field private 'mLastKnownPositionOffset' F

.field 'mNextText' Landroid/widget/TextView;

.field private 'mNonPrimaryAlpha' I

.field private final 'mPageListener' Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field 'mPager' Landroid/support/v4/view/ViewPager;

.field 'mPrevText' Landroid/widget/TextView;

.field private 'mScaledTextSpacing' I

.field 'mTextColor' I

.field private 'mUpdatingPositions' Z

.field private 'mUpdatingText' Z

.field private 'mWatchingAdapter' Ljava/lang/ref/WeakReference; signature "Ljava/lang/ref/WeakReference<Landroid/support/v4/view/PagerAdapter;>;"

.method static <clinit>()V
iconst_4
newarray int
dup
iconst_0
ldc_w 16842804
iastore
dup
iconst_1
ldc_w 16842901
iastore
dup
iconst_2
ldc_w 16842904
iastore
dup
iconst_3
ldc_w 16842927
iastore
putstatic android/support/v4/view/PagerTitleStrip/ATTRS [I
iconst_1
newarray int
dup
iconst_0
ldc_w 16843660
iastore
putstatic android/support/v4/view/PagerTitleStrip/TEXT_ATTRS [I
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs
dup
invokespecial android/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs/<init>()V
putstatic android/support/v4/view/PagerTitleStrip/IMPL Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
return
L0:
new android/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase
dup
invokespecial android/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase/<init>()V
putstatic android/support/v4/view/PagerTitleStrip/IMPL Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial android/support/v4/view/PagerTitleStrip/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
iconst_m1
putfield android/support/v4/view/PagerTitleStrip/mLastKnownCurrentPage I
aload 0
ldc_w -1.0F
putfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
aload 0
new android/support/v4/view/PagerTitleStrip$PageListener
dup
aload 0
aconst_null
invokespecial android/support/v4/view/PagerTitleStrip$PageListener/<init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V
putfield android/support/v4/view/PagerTitleStrip/mPageListener Landroid/support/v4/view/PagerTitleStrip$PageListener;
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 6
aload 0
aload 6
putfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
aload 0
aload 6
invokevirtual android/support/v4/view/PagerTitleStrip/addView(Landroid/view/View;)V
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 6
aload 0
aload 6
putfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
aload 0
aload 6
invokevirtual android/support/v4/view/PagerTitleStrip/addView(Landroid/view/View;)V
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 6
aload 0
aload 6
putfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
aload 0
aload 6
invokevirtual android/support/v4/view/PagerTitleStrip/addView(Landroid/view/View;)V
aload 1
aload 2
getstatic android/support/v4/view/PagerTitleStrip/ATTRS [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 2
aload 2
iconst_0
iconst_0
invokevirtual android/content/res/TypedArray/getResourceId(II)I
istore 3
iload 3
ifeq L0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
aload 1
iload 3
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
aload 1
iload 3
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
aload 1
iload 3
invokevirtual android/widget/TextView/setTextAppearance(Landroid/content/Context;I)V
L0:
aload 2
iconst_1
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelSize(II)I
istore 4
iload 4
ifeq L1
aload 0
iconst_0
iload 4
i2f
invokevirtual android/support/v4/view/PagerTitleStrip/setTextSize(IF)V
L1:
aload 2
iconst_2
invokevirtual android/content/res/TypedArray/hasValue(I)Z
ifeq L2
aload 2
iconst_2
iconst_0
invokevirtual android/content/res/TypedArray/getColor(II)I
istore 4
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 4
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 4
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 4
invokevirtual android/widget/TextView/setTextColor(I)V
L2:
aload 0
aload 2
iconst_3
bipush 80
invokevirtual android/content/res/TypedArray/getInteger(II)I
putfield android/support/v4/view/PagerTitleStrip/mGravity I
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTextColors()Landroid/content/res/ColorStateList;
invokevirtual android/content/res/ColorStateList/getDefaultColor()I
putfield android/support/v4/view/PagerTitleStrip/mTextColor I
aload 0
ldc_w 0.6F
invokevirtual android/support/v4/view/PagerTitleStrip/setNonPrimaryAlpha(F)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
getstatic android/text/TextUtils$TruncateAt/END Landroid/text/TextUtils$TruncateAt;
invokevirtual android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
getstatic android/text/TextUtils$TruncateAt/END Landroid/text/TextUtils$TruncateAt;
invokevirtual android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
getstatic android/text/TextUtils$TruncateAt/END Landroid/text/TextUtils$TruncateAt;
invokevirtual android/widget/TextView/setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iconst_0
istore 5
iload 3
ifeq L3
aload 1
iload 3
getstatic android/support/v4/view/PagerTitleStrip/TEXT_ATTRS [I
invokevirtual android/content/Context/obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
astore 2
aload 2
iconst_0
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
istore 5
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
L3:
iload 5
ifeq L4
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokestatic android/support/v4/view/PagerTitleStrip/setSingleLineAllCaps(Landroid/widget/TextView;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokestatic android/support/v4/view/PagerTitleStrip/setSingleLineAllCaps(Landroid/widget/TextView;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokestatic android/support/v4/view/PagerTitleStrip/setSingleLineAllCaps(Landroid/widget/TextView;)V
L5:
aload 0
ldc_w 16.0F
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
f2i
putfield android/support/v4/view/PagerTitleStrip/mScaledTextSpacing I
return
L4:
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokevirtual android/widget/TextView/setSingleLine()V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/setSingleLine()V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokevirtual android/widget/TextView/setSingleLine()V
goto L5
.limit locals 7
.limit stack 5
.end method

.method static synthetic access$100(Landroid/support/v4/view/PagerTitleStrip;)F
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
freturn
.limit locals 1
.limit stack 1
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
getstatic android/support/v4/view/PagerTitleStrip/IMPL Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
aload 0
invokeinterface android/support/v4/view/PagerTitleStrip$PagerTitleStripImpl/setSingleLineAllCaps(Landroid/widget/TextView;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method getMinHeight()I
iconst_0
istore 1
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getBackground()Landroid/graphics/drawable/Drawable;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
istore 1
L0:
iload 1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getTextSpacing()I
aload 0
getfield android/support/v4/view/PagerTitleStrip/mScaledTextSpacing I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onAttachedToWindow()V
aload 0
invokespecial android/view/ViewGroup/onAttachedToWindow()V
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getParent()Landroid/view/ViewParent;
astore 1
aload 1
instanceof android/support/v4/view/ViewPager
ifne L0
new java/lang/IllegalStateException
dup
ldc "PagerTitleStrip must be a direct child of a ViewPager."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
checkcast android/support/v4/view/ViewPager
astore 1
aload 1
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
astore 2
aload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPageListener Landroid/support/v4/view/PagerTitleStrip$PageListener;
invokevirtual android/support/v4/view/ViewPager/setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
pop
aload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPageListener Landroid/support/v4/view/PagerTitleStrip$PageListener;
invokevirtual android/support/v4/view/ViewPager/setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
aload 0
aload 1
putfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield android/support/v4/view/PagerTitleStrip/mWatchingAdapter Ljava/lang/ref/WeakReference;
ifnull L1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mWatchingAdapter Ljava/lang/ref/WeakReference;
invokevirtual java/lang/ref/WeakReference/get()Ljava/lang/Object;
checkcast android/support/v4/view/PagerAdapter
astore 1
L2:
aload 0
aload 1
aload 2
invokevirtual android/support/v4/view/PagerTitleStrip/updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
return
L1:
aconst_null
astore 1
goto L2
.limit locals 3
.limit stack 3
.end method

.method protected onDetachedFromWindow()V
aload 0
invokespecial android/view/ViewGroup/onDetachedFromWindow()V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
ifnull L0
aload 0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
aconst_null
invokevirtual android/support/v4/view/PagerTitleStrip/updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
aconst_null
invokevirtual android/support/v4/view/ViewPager/setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
pop
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
aconst_null
invokevirtual android/support/v4/view/ViewPager/setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
aload 0
aconst_null
putfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected onLayout(ZIIII)V
fconst_0
fstore 6
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
ifnull L0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
fconst_0
fcmpl
iflt L1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
fstore 6
L1:
aload 0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownCurrentPage I
fload 6
iconst_1
invokevirtual android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
L0:
return
.limit locals 7
.limit stack 4
.end method

.method protected onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 3
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 2
iload 4
ldc_w 1073741824
if_icmpeq L0
new java/lang/IllegalStateException
dup
ldc "Must measure with an exact width"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getMinHeight()I
istore 4
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingTop()I
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingBottom()I
iadd
istore 5
iload 1
i2f
ldc_w 0.8F
fmul
f2i
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 6
iload 2
iload 5
isub
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 7
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 6
iload 7
invokevirtual android/widget/TextView/measure(II)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 6
iload 7
invokevirtual android/widget/TextView/measure(II)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 6
iload 7
invokevirtual android/widget/TextView/measure(II)V
iload 3
ldc_w 1073741824
if_icmpne L1
aload 0
iload 1
iload 2
invokevirtual android/support/v4/view/PagerTitleStrip/setMeasuredDimension(II)V
return
L1:
aload 0
iload 1
iload 4
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
iload 5
iadd
invokestatic java/lang/Math/max(II)I
invokevirtual android/support/v4/view/PagerTitleStrip/setMeasuredDimension(II)V
return
.limit locals 8
.limit stack 5
.end method

.method public requestLayout()V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mUpdatingText Z
ifne L0
aload 0
invokespecial android/view/ViewGroup/requestLayout()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setGravity(I)V
aload 0
iload 1
putfield android/support/v4/view/PagerTitleStrip/mGravity I
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setNonPrimaryAlpha(F)V
aload 0
ldc_w 255.0F
fload 1
fmul
f2i
sipush 255
iand
putfield android/support/v4/view/PagerTitleStrip/mNonPrimaryAlpha I
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNonPrimaryAlpha I
bipush 24
ishl
aload 0
getfield android/support/v4/view/PagerTitleStrip/mTextColor I
ldc_w 16777215
iand
ior
istore 2
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 2
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 2
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public setTextColor(I)V
aload 0
iload 1
putfield android/support/v4/view/PagerTitleStrip/mTextColor I
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNonPrimaryAlpha I
bipush 24
ishl
aload 0
getfield android/support/v4/view/PagerTitleStrip/mTextColor I
ldc_w 16777215
iand
ior
istore 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 1
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 2
.limit stack 3
.end method

.method public setTextSize(IF)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 1
fload 2
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 1
fload 2
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 1
fload 2
invokevirtual android/widget/TextView/setTextSize(IF)V
return
.limit locals 3
.limit stack 3
.end method

.method public setTextSpacing(I)V
aload 0
iload 1
putfield android/support/v4/view/PagerTitleStrip/mScaledTextSpacing I
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
aload 1
ifnull L0
aload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPageListener Landroid/support/v4/view/PagerTitleStrip$PageListener;
invokevirtual android/support/v4/view/PagerAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
aconst_null
putfield android/support/v4/view/PagerTitleStrip/mWatchingAdapter Ljava/lang/ref/WeakReference;
L0:
aload 2
ifnull L1
aload 2
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPageListener Landroid/support/v4/view/PagerTitleStrip$PageListener;
invokevirtual android/support/v4/view/PagerAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
new java/lang/ref/WeakReference
dup
aload 2
invokespecial java/lang/ref/WeakReference/<init>(Ljava/lang/Object;)V
putfield android/support/v4/view/PagerTitleStrip/mWatchingAdapter Ljava/lang/ref/WeakReference;
L1:
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
ifnull L2
aload 0
iconst_m1
putfield android/support/v4/view/PagerTitleStrip/mLastKnownCurrentPage I
aload 0
ldc_w -1.0F
putfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
aload 0
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
aload 2
invokevirtual android/support/v4/view/PagerTitleStrip/updateText(ILandroid/support/v4/view/PagerAdapter;)V
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/requestLayout()V
L2:
return
.limit locals 3
.limit stack 4
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
aload 2
ifnull L0
aload 2
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 3
L1:
aload 0
iconst_1
putfield android/support/v4/view/PagerTitleStrip/mUpdatingText Z
aconst_null
astore 10
aload 10
astore 9
iload 1
iconst_1
if_icmplt L2
aload 10
astore 9
aload 2
ifnull L2
aload 2
iload 1
iconst_1
isub
invokevirtual android/support/v4/view/PagerAdapter/getPageTitle(I)Ljava/lang/CharSequence;
astore 9
L2:
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
aload 9
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
astore 10
aload 2
ifnull L3
iload 1
iload 3
if_icmpge L3
aload 2
iload 1
invokevirtual android/support/v4/view/PagerAdapter/getPageTitle(I)Ljava/lang/CharSequence;
astore 9
L4:
aload 10
aload 9
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aconst_null
astore 10
aload 10
astore 9
iload 1
iconst_1
iadd
iload 3
if_icmpge L5
aload 10
astore 9
aload 2
ifnull L5
aload 2
iload 1
iconst_1
iadd
invokevirtual android/support/v4/view/PagerAdapter/getPageTitle(I)Ljava/lang/CharSequence;
astore 9
L5:
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
aload 9
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getWidth()I
istore 6
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingLeft()I
istore 7
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingRight()I
istore 8
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getHeight()I
istore 3
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingTop()I
istore 4
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingBottom()I
istore 5
iload 6
iload 7
isub
iload 8
isub
i2f
ldc_w 0.8F
fmul
f2i
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 6
iload 3
iload 4
isub
iload 5
isub
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 3
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 6
iload 3
invokevirtual android/widget/TextView/measure(II)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 6
iload 3
invokevirtual android/widget/TextView/measure(II)V
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 6
iload 3
invokevirtual android/widget/TextView/measure(II)V
aload 0
iload 1
putfield android/support/v4/view/PagerTitleStrip/mLastKnownCurrentPage I
aload 0
getfield android/support/v4/view/PagerTitleStrip/mUpdatingPositions Z
ifne L6
aload 0
iload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
iconst_0
invokevirtual android/support/v4/view/PagerTitleStrip/updateTextPositions(IFZ)V
L6:
aload 0
iconst_0
putfield android/support/v4/view/PagerTitleStrip/mUpdatingText Z
return
L0:
iconst_0
istore 3
goto L1
L3:
aconst_null
astore 9
goto L4
.limit locals 11
.limit stack 4
.end method

.method updateTextPositions(IFZ)V
iload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownCurrentPage I
if_icmpeq L0
aload 0
iload 1
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerTitleStrip/updateText(ILandroid/support/v4/view/PagerAdapter;)V
L1:
aload 0
iconst_1
putfield android/support/v4/view/PagerTitleStrip/mUpdatingPositions Z
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredWidth()I
istore 9
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredWidth()I
istore 14
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredWidth()I
istore 8
iload 14
iconst_2
idiv
istore 13
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getWidth()I
istore 10
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getHeight()I
istore 6
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingLeft()I
istore 12
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingRight()I
istore 11
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingTop()I
istore 1
aload 0
invokevirtual android/support/v4/view/PagerTitleStrip/getPaddingBottom()I
istore 7
iload 11
iload 13
iadd
istore 15
fload 2
ldc_w 0.5F
fadd
fstore 5
fload 5
fstore 4
fload 5
fconst_1
fcmpl
ifle L2
fload 5
fconst_1
fsub
fstore 4
L2:
iload 10
iload 15
isub
iload 10
iload 12
iload 13
iadd
isub
iload 15
isub
i2f
fload 4
fmul
f2i
isub
iload 14
iconst_2
idiv
isub
istore 13
iload 13
iload 14
iadd
istore 14
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getBaseline()I
istore 17
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getBaseline()I
istore 16
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getBaseline()I
istore 15
iload 17
iload 16
invokestatic java/lang/Math/max(II)I
iload 15
invokestatic java/lang/Math/max(II)I
istore 18
iload 18
iload 17
isub
istore 17
iload 18
iload 16
isub
istore 16
iload 18
iload 15
isub
istore 15
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
istore 18
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
istore 19
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
istore 20
iload 17
iload 18
iadd
iload 16
iload 19
iadd
invokestatic java/lang/Math/max(II)I
iload 15
iload 20
iadd
invokestatic java/lang/Math/max(II)I
istore 18
aload 0
getfield android/support/v4/view/PagerTitleStrip/mGravity I
bipush 112
iand
lookupswitch
16 : L3
80 : L4
default : L5
L5:
iload 1
iload 17
iadd
istore 7
iload 1
iload 16
iadd
istore 6
iload 1
iload 15
iadd
istore 1
L6:
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
iload 13
iload 6
iload 14
aload 0
getfield android/support/v4/view/PagerTitleStrip/mCurrText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
iload 6
iadd
invokevirtual android/widget/TextView/layout(IIII)V
iload 12
iload 13
aload 0
getfield android/support/v4/view/PagerTitleStrip/mScaledTextSpacing I
isub
iload 9
isub
invokestatic java/lang/Math/min(II)I
istore 6
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
iload 6
iload 7
iload 6
iload 9
iadd
aload 0
getfield android/support/v4/view/PagerTitleStrip/mPrevText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
iload 7
iadd
invokevirtual android/widget/TextView/layout(IIII)V
iload 10
iload 11
isub
iload 8
isub
aload 0
getfield android/support/v4/view/PagerTitleStrip/mScaledTextSpacing I
iload 14
iadd
invokestatic java/lang/Math/max(II)I
istore 6
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
iload 6
iload 1
iload 6
iload 8
iadd
aload 0
getfield android/support/v4/view/PagerTitleStrip/mNextText Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredHeight()I
iload 1
iadd
invokevirtual android/widget/TextView/layout(IIII)V
aload 0
fload 2
putfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
aload 0
iconst_0
putfield android/support/v4/view/PagerTitleStrip/mUpdatingPositions Z
return
L0:
iload 3
ifne L1
fload 2
aload 0
getfield android/support/v4/view/PagerTitleStrip/mLastKnownPositionOffset F
fcmpl
ifne L1
return
L3:
iload 6
iload 1
isub
iload 7
isub
iload 18
isub
iconst_2
idiv
istore 1
iload 1
iload 17
iadd
istore 7
iload 1
iload 16
iadd
istore 6
iload 1
iload 15
iadd
istore 1
goto L6
L4:
iload 6
iload 7
isub
iload 18
isub
istore 1
iload 1
iload 17
iadd
istore 7
iload 1
iload 16
iadd
istore 6
iload 1
iload 15
iadd
istore 1
goto L6
.limit locals 21
.limit stack 6
.end method
