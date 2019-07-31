.bytecode 50.0
.class public synchronized android/support/v4/view/ViewPager
.super android/view/ViewGroup
.inner class static final inner android/support/v4/view/ViewPager$1
.inner class static final inner android/support/v4/view/ViewPager$2
.inner class inner android/support/v4/view/ViewPager$3
.inner class static abstract interface Decor inner android/support/v4/view/ViewPager$Decor outer android/support/v4/view/ViewPager
.inner class static ItemInfo inner android/support/v4/view/ViewPager$ItemInfo outer android/support/v4/view/ViewPager
.inner class public static LayoutParams inner android/support/v4/view/ViewPager$LayoutParams outer android/support/v4/view/ViewPager
.inner class MyAccessibilityDelegate inner android/support/v4/view/ViewPager$MyAccessibilityDelegate outer android/support/v4/view/ViewPager
.inner class static abstract interface OnAdapterChangeListener inner android/support/v4/view/ViewPager$OnAdapterChangeListener outer android/support/v4/view/ViewPager
.inner class public static abstract interface OnPageChangeListener inner android/support/v4/view/ViewPager$OnPageChangeListener outer android/support/v4/view/ViewPager
.inner class public static abstract interface PageTransformer inner android/support/v4/view/ViewPager$PageTransformer outer android/support/v4/view/ViewPager
.inner class private PagerObserver inner android/support/v4/view/ViewPager$PagerObserver outer android/support/v4/view/ViewPager
.inner class public static SavedState inner android/support/v4/view/ViewPager$SavedState outer android/support/v4/view/ViewPager
.inner class static final inner android/support/v4/view/ViewPager$SavedState$1
.inner class public static SimpleOnPageChangeListener inner android/support/v4/view/ViewPager$SimpleOnPageChangeListener outer android/support/v4/view/ViewPager
.inner class static ViewPositionComparator inner android/support/v4/view/ViewPager$ViewPositionComparator outer android/support/v4/view/ViewPager

.field private static final 'CLOSE_ENOUGH' I = 2


.field private static final 'COMPARATOR' Ljava/util/Comparator; signature "Ljava/util/Comparator<Landroid/support/v4/view/ViewPager$ItemInfo;>;"

.field private static final 'DEBUG' Z = 0


.field private static final 'DEFAULT_GUTTER_SIZE' I = 16


.field private static final 'DEFAULT_OFFSCREEN_PAGES' I = 1


.field private static final 'DRAW_ORDER_DEFAULT' I = 0


.field private static final 'DRAW_ORDER_FORWARD' I = 1


.field private static final 'DRAW_ORDER_REVERSE' I = 2


.field private static final 'INVALID_POINTER' I = -1


.field private static final 'LAYOUT_ATTRS' [I

.field private static final 'MAX_SETTLE_DURATION' I = 600


.field private static final 'MIN_DISTANCE_FOR_FLING' I = 25


.field private static final 'MIN_FLING_VELOCITY' I = 400


.field public static final 'SCROLL_STATE_DRAGGING' I = 1


.field public static final 'SCROLL_STATE_IDLE' I = 0


.field public static final 'SCROLL_STATE_SETTLING' I = 2


.field private static final 'TAG' Ljava/lang/String; = "ViewPager"

.field private static final 'USE_CACHE' Z = 0


.field private static final 'sInterpolator' Landroid/view/animation/Interpolator;

.field private static final 'sPositionComparator' Landroid/support/v4/view/ViewPager$ViewPositionComparator;

.field private 'mActivePointerId' I

.field private 'mAdapter' Landroid/support/v4/view/PagerAdapter;

.field private 'mAdapterChangeListener' Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private 'mBottomPageBounds' I

.field private 'mCalledSuper' Z

.field private 'mChildHeightMeasureSpec' I

.field private 'mChildWidthMeasureSpec' I

.field private 'mCloseEnough' I

.field private 'mCurItem' I

.field private 'mDecorChildCount' I

.field private 'mDefaultGutterSize' I

.field private 'mDrawingOrder' I

.field private 'mDrawingOrderedChildren' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private final 'mEndScrollRunnable' Ljava/lang/Runnable;

.field private 'mFakeDragBeginTime' J

.field private 'mFakeDragging' Z

.field private 'mFirstLayout' Z

.field private 'mFirstOffset' F

.field private 'mFlingDistance' I

.field private 'mGutterSize' I

.field private 'mIgnoreGutter' Z

.field private 'mInLayout' Z

.field private 'mInitialMotionX' F

.field private 'mInitialMotionY' F

.field private 'mInternalPageChangeListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mIsBeingDragged' Z

.field private 'mIsUnableToDrag' Z

.field private final 'mItems' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/view/ViewPager$ItemInfo;>;"

.field private 'mLastMotionX' F

.field private 'mLastMotionY' F

.field private 'mLastOffset' F

.field private 'mLeftEdge' Landroid/support/v4/widget/EdgeEffectCompat;

.field private 'mMarginDrawable' Landroid/graphics/drawable/Drawable;

.field private 'mMaximumVelocity' I

.field private 'mMinimumVelocity' I

.field private 'mNeedCalculatePageOffsets' Z

.field private 'mObserver' Landroid/support/v4/view/ViewPager$PagerObserver;

.field private 'mOffscreenPageLimit' I

.field private 'mOnPageChangeListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mPageMargin' I

.field private 'mPageTransformer' Landroid/support/v4/view/ViewPager$PageTransformer;

.field private 'mPopulatePending' Z

.field private 'mRestoredAdapterState' Landroid/os/Parcelable;

.field private 'mRestoredClassLoader' Ljava/lang/ClassLoader;

.field private 'mRestoredCurItem' I

.field private 'mRightEdge' Landroid/support/v4/widget/EdgeEffectCompat;

.field private 'mScrollState' I

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'mScrollingCacheEnabled' Z

.field private 'mSetChildrenDrawingOrderEnabled' Ljava/lang/reflect/Method;

.field private final 'mTempItem' Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final 'mTempRect' Landroid/graphics/Rect;

.field private 'mTopPageBounds' I

.field private 'mTouchSlop' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.method static <clinit>()V
iconst_1
newarray int
dup
iconst_0
ldc_w 16842931
iastore
putstatic android/support/v4/view/ViewPager/LAYOUT_ATTRS [I
new android/support/v4/view/ViewPager$1
dup
invokespecial android/support/v4/view/ViewPager$1/<init>()V
putstatic android/support/v4/view/ViewPager/COMPARATOR Ljava/util/Comparator;
new android/support/v4/view/ViewPager$2
dup
invokespecial android/support/v4/view/ViewPager$2/<init>()V
putstatic android/support/v4/view/ViewPager/sInterpolator Landroid/view/animation/Interpolator;
new android/support/v4/view/ViewPager$ViewPositionComparator
dup
invokespecial android/support/v4/view/ViewPager$ViewPositionComparator/<init>()V
putstatic android/support/v4/view/ViewPager/sPositionComparator Landroid/support/v4/view/ViewPager$ViewPositionComparator;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 0
new android/support/v4/view/ViewPager$ItemInfo
dup
invokespecial android/support/v4/view/ViewPager$ItemInfo/<init>()V
putfield android/support/v4/view/ViewPager/mTempItem Landroid/support/v4/view/ViewPager$ItemInfo;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mRestoredCurItem I
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredAdapterState Landroid/os/Parcelable;
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredClassLoader Ljava/lang/ClassLoader;
aload 0
ldc_w -3.4028235E38F
putfield android/support/v4/view/ViewPager/mFirstOffset F
aload 0
ldc_w 3.4028235E38F
putfield android/support/v4/view/ViewPager/mLastOffset F
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mFirstLayout Z
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mNeedCalculatePageOffsets Z
aload 0
new android/support/v4/view/ViewPager$3
dup
aload 0
invokespecial android/support/v4/view/ViewPager$3/<init>(Landroid/support/v4/view/ViewPager;)V
putfield android/support/v4/view/ViewPager/mEndScrollRunnable Ljava/lang/Runnable;
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mScrollState I
aload 0
invokevirtual android/support/v4/view/ViewPager/initViewPager()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 0
new android/support/v4/view/ViewPager$ItemInfo
dup
invokespecial android/support/v4/view/ViewPager$ItemInfo/<init>()V
putfield android/support/v4/view/ViewPager/mTempItem Landroid/support/v4/view/ViewPager$ItemInfo;
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mRestoredCurItem I
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredAdapterState Landroid/os/Parcelable;
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredClassLoader Ljava/lang/ClassLoader;
aload 0
ldc_w -3.4028235E38F
putfield android/support/v4/view/ViewPager/mFirstOffset F
aload 0
ldc_w 3.4028235E38F
putfield android/support/v4/view/ViewPager/mLastOffset F
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mFirstLayout Z
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mNeedCalculatePageOffsets Z
aload 0
new android/support/v4/view/ViewPager$3
dup
aload 0
invokespecial android/support/v4/view/ViewPager$3/<init>(Landroid/support/v4/view/ViewPager;)V
putfield android/support/v4/view/ViewPager/mEndScrollRunnable Ljava/lang/Runnable;
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mScrollState I
aload 0
invokevirtual android/support/v4/view/ViewPager/initViewPager()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
aload 0
iload 1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400()[I
getstatic android/support/v4/view/ViewPager/LAYOUT_ATTRS [I
areturn
.limit locals 0
.limit stack 1
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 10
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 7
iload 7
ifle L0
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
iload 7
i2f
fdiv
fstore 5
L1:
aload 3
ifnull L2
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
istore 7
iload 7
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpge L3
iconst_0
istore 8
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fload 5
fadd
fstore 4
iload 7
iconst_1
iadd
istore 7
L4:
iload 7
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpgt L2
iload 8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
L5:
fload 4
fstore 6
iload 7
istore 9
iload 7
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmple L6
fload 4
fstore 6
iload 7
istore 9
iload 8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpge L6
iload 8
iconst_1
iadd
istore 8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
goto L5
L0:
fconst_0
fstore 5
goto L1
L6:
iload 9
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpge L7
fload 6
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 9
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fload 5
fadd
fadd
fstore 6
iload 9
iconst_1
iadd
istore 9
goto L6
L7:
aload 3
fload 6
putfield android/support/v4/view/ViewPager$ItemInfo/offset F
fload 6
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 5
fadd
fadd
fstore 4
iload 9
iconst_1
iadd
istore 7
goto L4
L3:
iload 7
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmple L2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 8
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fstore 4
iload 7
iconst_1
isub
istore 7
L8:
iload 7
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmplt L2
iload 8
iflt L2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
L9:
fload 4
fstore 6
iload 7
istore 9
iload 7
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpge L10
fload 4
fstore 6
iload 7
istore 9
iload 8
ifle L10
iload 8
iconst_1
isub
istore 8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
goto L9
L10:
iload 9
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmple L11
fload 6
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 9
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fload 5
fadd
fsub
fstore 6
iload 9
iconst_1
isub
istore 9
goto L10
L11:
fload 6
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 5
fadd
fsub
fstore 4
aload 3
fload 4
putfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 9
iconst_1
isub
istore 7
goto L8
L2:
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 9
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fstore 6
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iconst_1
isub
istore 7
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
ifne L12
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fstore 4
L13:
aload 0
fload 4
putfield android/support/v4/view/ViewPager/mFirstOffset F
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 10
iconst_1
isub
if_icmpne L14
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fconst_1
fsub
fstore 4
L15:
aload 0
fload 4
putfield android/support/v4/view/ViewPager/mLastOffset F
iload 2
iconst_1
isub
istore 8
fload 6
fstore 4
L16:
iload 8
iflt L17
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
L18:
iload 7
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmple L19
fload 4
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 7
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fload 5
fadd
fsub
fstore 4
iload 7
iconst_1
isub
istore 7
goto L18
L12:
ldc_w -3.4028235E38F
fstore 4
goto L13
L14:
ldc_w 3.4028235E38F
fstore 4
goto L15
L19:
fload 4
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 5
fadd
fsub
fstore 4
aload 3
fload 4
putfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
ifne L20
aload 0
fload 4
putfield android/support/v4/view/ViewPager/mFirstOffset F
L20:
iload 8
iconst_1
isub
istore 8
iload 7
iconst_1
isub
istore 7
goto L16
L17:
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fload 5
fadd
fstore 4
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iconst_1
iadd
istore 7
iload 2
iconst_1
iadd
istore 8
iload 7
istore 2
iload 8
istore 7
L21:
iload 7
iload 9
if_icmpge L22
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 1
L23:
iload 2
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpge L24
fload 4
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 2
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fload 5
fadd
fadd
fstore 4
iload 2
iconst_1
iadd
istore 2
goto L23
L24:
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 10
iconst_1
isub
if_icmpne L25
aload 0
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 4
fadd
fconst_1
fsub
putfield android/support/v4/view/ViewPager/mLastOffset F
L25:
aload 1
fload 4
putfield android/support/v4/view/ViewPager$ItemInfo/offset F
fload 4
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 5
fadd
fadd
fstore 4
iload 7
iconst_1
iadd
istore 7
iload 2
iconst_1
iadd
istore 2
goto L21
L22:
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mNeedCalculatePageOffsets Z
return
.limit locals 11
.limit stack 3
.end method

.method private completeScroll(Z)V
aload 0
getfield android/support/v4/view/ViewPager/mScrollState I
iconst_2
if_icmpne L0
iconst_1
istore 2
L1:
iload 2
ifeq L2
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
istore 4
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 5
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
istore 6
iload 3
iload 5
if_icmpne L3
iload 4
iload 6
if_icmpeq L2
L3:
aload 0
iload 5
iload 6
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
L2:
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
iconst_0
istore 4
iload 2
istore 3
iload 4
istore 2
L4:
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L5
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 7
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/scrolling Z
ifeq L6
iconst_1
istore 3
aload 7
iconst_0
putfield android/support/v4/view/ViewPager$ItemInfo/scrolling Z
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L0:
iconst_0
istore 2
goto L1
L5:
iload 3
ifeq L7
iload 1
ifeq L8
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mEndScrollRunnable Ljava/lang/Runnable;
invokestatic android/support/v4/view/ViewCompat/postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
L7:
return
L8:
aload 0
getfield android/support/v4/view/ViewPager/mEndScrollRunnable Ljava/lang/Runnable;
invokeinterface java/lang/Runnable/run()V 0
return
.limit locals 8
.limit stack 3
.end method

.method private determineTargetPage(IFII)I
iload 4
invokestatic java/lang/Math/abs(I)I
aload 0
getfield android/support/v4/view/ViewPager/mFlingDistance I
if_icmple L0
iload 3
invokestatic java/lang/Math/abs(I)I
aload 0
getfield android/support/v4/view/ViewPager/mMinimumVelocity I
if_icmple L0
iload 3
ifle L1
L2:
iload 1
istore 3
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L3
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 6
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 7
aload 6
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 1
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/position I
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
istore 3
L3:
iload 3
ireturn
L1:
iload 1
iconst_1
iadd
istore 1
goto L2
L0:
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmplt L4
ldc_w 0.4F
fstore 5
L5:
iload 1
i2f
fload 2
fadd
fload 5
fadd
f2i
istore 1
goto L2
L4:
ldc_w 0.6F
fstore 5
goto L5
.limit locals 8
.limit stack 3
.end method

.method private enableLayers(Z)V
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 4
iconst_0
istore 2
L0:
iload 2
iload 4
if_icmpge L1
iload 1
ifeq L2
iconst_2
istore 3
L3:
aload 0
iload 2
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
iload 3
aconst_null
invokestatic android/support/v4/view/ViewCompat/setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
iconst_0
istore 3
goto L3
L1:
return
.limit locals 5
.limit stack 3
.end method

.method private endDrag()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
aload 1
astore 3
aload 1
ifnonnull L0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 3
L0:
aload 2
ifnonnull L1
aload 3
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/graphics/Rect/set(IIII)V
L2:
aload 3
areturn
L1:
aload 3
aload 2
invokevirtual android/view/View/getLeft()I
putfield android/graphics/Rect/left I
aload 3
aload 2
invokevirtual android/view/View/getRight()I
putfield android/graphics/Rect/right I
aload 3
aload 2
invokevirtual android/view/View/getTop()I
putfield android/graphics/Rect/top I
aload 3
aload 2
invokevirtual android/view/View/getBottom()I
putfield android/graphics/Rect/bottom I
aload 2
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
astore 1
L3:
aload 1
instanceof android/view/ViewGroup
ifeq L2
aload 1
aload 0
if_acmpeq L2
aload 1
checkcast android/view/ViewGroup
astore 1
aload 3
aload 3
getfield android/graphics/Rect/left I
aload 1
invokevirtual android/view/ViewGroup/getLeft()I
iadd
putfield android/graphics/Rect/left I
aload 3
aload 3
getfield android/graphics/Rect/right I
aload 1
invokevirtual android/view/ViewGroup/getRight()I
iadd
putfield android/graphics/Rect/right I
aload 3
aload 3
getfield android/graphics/Rect/top I
aload 1
invokevirtual android/view/ViewGroup/getTop()I
iadd
putfield android/graphics/Rect/top I
aload 3
aload 3
getfield android/graphics/Rect/bottom I
aload 1
invokevirtual android/view/ViewGroup/getBottom()I
iadd
putfield android/graphics/Rect/bottom I
aload 1
invokevirtual android/view/ViewGroup/getParent()Landroid/view/ViewParent;
astore 1
goto L3
.limit locals 4
.limit stack 5
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
fconst_0
fstore 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 5
iload 5
ifle L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
i2f
iload 5
i2f
fdiv
fstore 1
L1:
iload 5
ifle L2
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
iload 5
i2f
fdiv
fstore 2
L2:
iconst_m1
istore 7
fconst_0
fstore 3
fconst_0
fstore 4
iconst_1
istore 6
aconst_null
astore 10
iconst_0
istore 5
L3:
aload 10
astore 11
iload 5
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 11
iload 5
istore 8
aload 11
astore 9
iload 6
ifne L5
iload 5
istore 8
aload 11
astore 9
aload 11
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 7
iconst_1
iadd
if_icmpeq L5
aload 0
getfield android/support/v4/view/ViewPager/mTempItem Landroid/support/v4/view/ViewPager$ItemInfo;
astore 9
aload 9
fload 3
fload 4
fadd
fload 2
fadd
putfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 9
iload 7
iconst_1
iadd
putfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 9
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
putfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
iload 5
iconst_1
isub
istore 8
L5:
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fstore 3
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fstore 4
iload 6
ifne L6
aload 10
astore 11
fload 1
fload 3
fcmpl
iflt L4
L6:
fload 1
fload 4
fload 3
fadd
fload 2
fadd
fcmpg
iflt L7
iload 8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpne L8
L7:
aload 9
astore 11
L4:
aload 11
areturn
L0:
fconst_0
fstore 1
goto L1
L8:
iconst_0
istore 6
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
istore 7
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fstore 4
iload 8
iconst_1
iadd
istore 5
aload 9
astore 10
goto L3
.limit locals 12
.limit stack 3
.end method

.method private isGutterDrag(FF)Z
fload 1
aload 0
getfield android/support/v4/view/ViewPager/mGutterSize I
i2f
fcmpg
ifge L0
fload 2
fconst_0
fcmpl
ifgt L1
L0:
fload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
aload 0
getfield android/support/v4/view/ViewPager/mGutterSize I
isub
i2f
fcmpl
ifle L2
fload 2
fconst_0
fcmpg
ifge L2
L1:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 2
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
if_icmpne L0
iload 2
ifne L1
iconst_1
istore 2
L2:
aload 0
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/clear()V
L0:
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 3
.end method

.method private pageScrolled(I)Z
iconst_0
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L0
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mCalledSuper Z
aload 0
iconst_0
fconst_0
iconst_0
invokevirtual android/support/v4/view/ViewPager/onPageScrolled(IFI)V
aload 0
getfield android/support/v4/view/ViewPager/mCalledSuper Z
ifne L1
new java/lang/IllegalStateException
dup
ldc "onPageScrolled did not call superclass implementation"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
invokespecial android/support/v4/view/ViewPager/infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
astore 7
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 4
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
istore 5
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
iload 4
i2f
fdiv
fstore 2
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/position I
istore 3
iload 1
i2f
iload 4
i2f
fdiv
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fsub
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fload 2
fadd
fdiv
fstore 2
iload 4
iload 5
iadd
i2f
fload 2
fmul
f2i
istore 1
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mCalledSuper Z
aload 0
iload 3
fload 2
iload 1
invokevirtual android/support/v4/view/ViewPager/onPageScrolled(IFI)V
aload 0
getfield android/support/v4/view/ViewPager/mCalledSuper Z
ifne L2
new java/lang/IllegalStateException
dup
ldc "onPageScrolled did not call superclass implementation"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
iconst_1
istore 6
L1:
iload 6
ireturn
.limit locals 8
.limit stack 4
.end method

.method private performDrag(F)Z
iconst_0
istore 9
iconst_0
istore 8
iconst_0
istore 7
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fstore 2
aload 0
fload 1
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
i2f
fload 2
fload 1
fsub
fadd
fstore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 6
iload 6
i2f
aload 0
getfield android/support/v4/view/ViewPager/mFirstOffset F
fmul
fstore 1
iload 6
i2f
aload 0
getfield android/support/v4/view/ViewPager/mLastOffset F
fmul
fstore 2
iconst_1
istore 4
iconst_1
istore 5
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 10
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 11
aload 10
getfield android/support/v4/view/ViewPager$ItemInfo/position I
ifeq L0
iconst_0
istore 4
aload 10
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 6
i2f
fmul
fstore 1
L0:
aload 11
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
if_icmpeq L1
iconst_0
istore 5
aload 11
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 6
i2f
fmul
fstore 2
L1:
fload 3
fload 1
fcmpg
ifge L2
iload 4
ifeq L3
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
fload 1
fload 3
fsub
invokestatic java/lang/Math/abs(F)F
iload 6
i2f
fdiv
invokevirtual android/support/v4/widget/EdgeEffectCompat/onPull(F)Z
istore 7
L3:
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fload 1
fload 1
f2i
i2f
fsub
fadd
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fload 1
f2i
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
aload 0
fload 1
f2i
invokespecial android/support/v4/view/ViewPager/pageScrolled(I)Z
pop
iload 7
ireturn
L2:
iload 9
istore 7
fload 3
fstore 1
fload 3
fload 2
fcmpl
ifle L3
iload 8
istore 7
iload 5
ifeq L4
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
fload 3
fload 2
fsub
invokestatic java/lang/Math/abs(F)F
iload 6
i2f
fdiv
invokevirtual android/support/v4/widget/EdgeEffectCompat/onPull(F)Z
istore 7
L4:
fload 2
fstore 1
goto L3
.limit locals 12
.limit stack 4
.end method

.method private recomputeScrollPosition(IIII)V
iload 2
ifle L0
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
i2f
iload 2
iload 4
iadd
i2f
fdiv
fstore 5
iload 1
iload 3
iadd
i2f
fload 5
fmul
f2i
istore 2
aload 0
iload 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L1
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getDuration()I
istore 3
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/timePassed()I
istore 4
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
invokevirtual android/support/v4/view/ViewPager/infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 6
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
iload 2
iconst_0
aload 6
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 1
i2f
fmul
f2i
iconst_0
iload 3
iload 4
isub
invokevirtual android/widget/Scroller/startScroll(IIIII)V
L1:
return
L0:
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
invokevirtual android/support/v4/view/ViewPager/infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 6
aload 6
ifnull L2
aload 6
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 0
getfield android/support/v4/view/ViewPager/mLastOffset F
invokestatic java/lang/Math/min(FF)F
fstore 5
L3:
iload 1
i2f
fload 5
fmul
f2i
istore 1
iload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
if_icmpeq L1
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/completeScroll(Z)V
aload 0
iload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
return
L2:
fconst_0
fstore 5
goto L3
.limit locals 7
.limit stack 7
.end method

.method private removeNonDecorViews()V
iconst_0
istore 1
L0:
iload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
if_icmpge L1
iload 1
istore 2
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L2
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/removeViewAt(I)V
iload 1
iconst_1
isub
istore 2
L2:
iload 2
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method private scrollToItem(IZIZ)V
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 6
iconst_0
istore 5
aload 6
ifnull L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
i2f
aload 0
getfield android/support/v4/view/ViewPager/mFirstOffset F
aload 6
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 0
getfield android/support/v4/view/ViewPager/mLastOffset F
invokestatic java/lang/Math/min(FF)F
invokestatic java/lang/Math/max(FF)F
fmul
f2i
istore 5
L0:
iload 2
ifeq L1
aload 0
iload 5
iconst_0
iload 3
invokevirtual android/support/v4/view/ViewPager/smoothScrollTo(III)V
iload 4
ifeq L2
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L2
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L2:
iload 4
ifeq L3
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L3
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L3:
return
L1:
iload 4
ifeq L4
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L4
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L4:
iload 4
ifeq L5
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L5
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L5:
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/completeScroll(Z)V
aload 0
iload 5
iconst_0
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
return
.limit locals 7
.limit stack 4
.end method

.method private setScrollState(I)V
aload 0
getfield android/support/v4/view/ViewPager/mScrollState I
iload 1
if_icmpne L0
L1:
return
L0:
aload 0
iload 1
putfield android/support/v4/view/ViewPager/mScrollState I
aload 0
getfield android/support/v4/view/ViewPager/mPageTransformer Landroid/support/v4/view/ViewPager$PageTransformer;
ifnull L2
iload 1
ifeq L3
iconst_1
istore 2
L4:
aload 0
iload 2
invokespecial android/support/v4/view/ViewPager/enableLayers(Z)V
L2:
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L1
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrollStateChanged(I)V 1
return
L3:
iconst_0
istore 2
goto L4
.limit locals 3
.limit stack 2
.end method

.method private setScrollingCacheEnabled(Z)V
aload 0
getfield android/support/v4/view/ViewPager/mScrollingCacheEnabled Z
iload 1
if_icmpeq L0
aload 0
iload 1
putfield android/support/v4/view/ViewPager/mScrollingCacheEnabled Z
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;II)V"
aload 1
invokevirtual java/util/ArrayList/size()I
istore 5
aload 0
invokevirtual android/support/v4/view/ViewPager/getDescendantFocusability()I
istore 6
iload 6
ldc_w 393216
if_icmpeq L0
iconst_0
istore 4
L1:
iload 4
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
if_icmpge L0
aload 0
iload 4
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getVisibility()I
ifne L2
aload 0
aload 7
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 8
aload 8
ifnull L2
aload 8
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L2
aload 7
aload 1
iload 2
iload 3
invokevirtual android/view/View/addFocusables(Ljava/util/ArrayList;II)V
L2:
iload 4
iconst_1
iadd
istore 4
goto L1
L0:
iload 6
ldc_w 262144
if_icmpne L3
iload 5
aload 1
invokevirtual java/util/ArrayList/size()I
if_icmpne L4
L3:
aload 0
invokevirtual android/support/v4/view/ViewPager/isFocusable()Z
ifne L5
L4:
return
L5:
iload 3
iconst_1
iand
iconst_1
if_icmpne L6
aload 0
invokevirtual android/support/v4/view/ViewPager/isInTouchMode()Z
ifeq L6
aload 0
invokevirtual android/support/v4/view/ViewPager/isFocusableInTouchMode()Z
ifeq L4
L6:
aload 1
ifnull L4
aload 1
aload 0
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 9
.limit stack 4
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
new android/support/v4/view/ViewPager$ItemInfo
dup
invokespecial android/support/v4/view/ViewPager$ItemInfo/<init>()V
astore 3
aload 3
iload 1
putfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 3
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
iload 1
invokevirtual android/support/v4/view/PagerAdapter/instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
putfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
aload 3
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 1
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
putfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
iload 2
iflt L0
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L1
L0:
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 3
areturn
L1:
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 2
aload 3
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
iconst_0
istore 2
L0:
iload 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
if_icmpge L1
aload 0
iload 2
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 3
aload 3
invokevirtual android/view/View/getVisibility()I
ifne L2
aload 0
aload 3
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 4
aload 4
ifnull L2
aload 4
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L2
aload 3
aload 1
invokevirtual android/view/View/addTouchables(Ljava/util/ArrayList;)V
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 5
.limit stack 2
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
aload 3
astore 4
aload 0
aload 3
invokevirtual android/support/v4/view/ViewPager/checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
ifne L0
aload 0
aload 3
invokevirtual android/support/v4/view/ViewPager/generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
astore 4
L0:
aload 4
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 3
aload 3
aload 3
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
aload 1
instanceof android/support/v4/view/ViewPager$Decor
ior
putfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
aload 0
getfield android/support/v4/view/ViewPager/mInLayout Z
ifeq L1
aload 3
ifnull L2
aload 3
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifeq L2
new java/lang/IllegalStateException
dup
ldc "Cannot add pager decor view during layout"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 3
iconst_1
putfield android/support/v4/view/ViewPager$LayoutParams/needsMeasure Z
aload 0
aload 1
iload 2
aload 4
invokevirtual android/support/v4/view/ViewPager/addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
pop
return
L1:
aload 0
aload 1
iload 2
aload 4
invokespecial android/view/ViewGroup/addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 5
.limit stack 4
.end method

.method public arrowScroll(I)Z
aload 0
invokevirtual android/support/v4/view/ViewPager/findFocus()Landroid/view/View;
astore 6
aload 6
astore 5
aload 6
aload 0
if_acmpne L0
aconst_null
astore 5
L0:
iconst_0
istore 4
invokestatic android/view/FocusFinder/getInstance()Landroid/view/FocusFinder;
aload 0
aload 5
iload 1
invokevirtual android/view/FocusFinder/findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
astore 6
aload 6
ifnull L1
aload 6
aload 5
if_acmpeq L1
iload 1
bipush 17
if_icmpne L2
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 6
invokespecial android/support/v4/view/ViewPager/getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 2
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 5
invokespecial android/support/v4/view/ViewPager/getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 3
aload 5
ifnull L3
iload 2
iload 3
if_icmplt L3
aload 0
invokevirtual android/support/v4/view/ViewPager/pageLeft()Z
istore 4
L4:
iload 4
ifeq L5
aload 0
iload 1
invokestatic android/view/SoundEffectConstants/getContantForFocusDirection(I)I
invokevirtual android/support/v4/view/ViewPager/playSoundEffect(I)V
L5:
iload 4
ireturn
L3:
aload 6
invokevirtual android/view/View/requestFocus()Z
istore 4
goto L4
L2:
iload 1
bipush 66
if_icmpne L4
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 6
invokespecial android/support/v4/view/ViewPager/getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 2
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mTempRect Landroid/graphics/Rect;
aload 5
invokespecial android/support/v4/view/ViewPager/getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 3
aload 5
ifnull L6
iload 2
iload 3
if_icmpgt L6
aload 0
invokevirtual android/support/v4/view/ViewPager/pageRight()Z
istore 4
goto L4
L6:
aload 6
invokevirtual android/view/View/requestFocus()Z
istore 4
goto L4
L1:
iload 1
bipush 17
if_icmpeq L7
iload 1
iconst_1
if_icmpne L8
L7:
aload 0
invokevirtual android/support/v4/view/ViewPager/pageLeft()Z
istore 4
goto L4
L8:
iload 1
bipush 66
if_icmpeq L9
iload 1
iconst_2
if_icmpne L4
L9:
aload 0
invokevirtual android/support/v4/view/ViewPager/pageRight()Z
istore 4
goto L4
.limit locals 7
.limit stack 4
.end method

.method public beginFakeDrag()Z
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L0
iconst_0
ireturn
L0:
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mFakeDragging Z
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
aload 0
fconst_0
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fconst_0
putfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L1
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
L2:
invokestatic android/os/SystemClock/uptimeMillis()J
lstore 1
lload 1
lload 1
iconst_0
fconst_0
fconst_0
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
astore 3
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
aload 3
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 3
invokevirtual android/view/MotionEvent/recycle()V
aload 0
lload 1
putfield android/support/v4/view/ViewPager/mFakeDragBeginTime J
iconst_1
ireturn
L1:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/clear()V
goto L2
.limit locals 4
.limit stack 8
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
aload 1
instanceof android/view/ViewGroup
ifeq L0
aload 1
checkcast android/view/ViewGroup
astore 9
aload 1
invokevirtual android/view/View/getScrollX()I
istore 7
aload 1
invokevirtual android/view/View/getScrollY()I
istore 8
aload 9
invokevirtual android/view/ViewGroup/getChildCount()I
iconst_1
isub
istore 6
L1:
iload 6
iflt L0
aload 9
iload 6
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 10
iload 4
iload 7
iadd
aload 10
invokevirtual android/view/View/getLeft()I
if_icmplt L2
iload 4
iload 7
iadd
aload 10
invokevirtual android/view/View/getRight()I
if_icmpge L2
iload 5
iload 8
iadd
aload 10
invokevirtual android/view/View/getTop()I
if_icmplt L2
iload 5
iload 8
iadd
aload 10
invokevirtual android/view/View/getBottom()I
if_icmpge L2
aload 0
aload 10
iconst_1
iload 3
iload 4
iload 7
iadd
aload 10
invokevirtual android/view/View/getLeft()I
isub
iload 5
iload 8
iadd
aload 10
invokevirtual android/view/View/getTop()I
isub
invokevirtual android/support/v4/view/ViewPager/canScroll(Landroid/view/View;ZIII)Z
ifeq L2
iconst_1
ireturn
L2:
iload 6
iconst_1
isub
istore 6
goto L1
L0:
iload 2
ifeq L3
aload 1
iload 3
ineg
invokestatic android/support/v4/view/ViewCompat/canScrollHorizontally(Landroid/view/View;I)Z
ifeq L3
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 11
.limit stack 7
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
aload 1
instanceof android/support/v4/view/ViewPager$LayoutParams
ifeq L0
aload 0
aload 1
invokespecial android/view/ViewGroup/checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public computeScroll()V
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L0
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
istore 2
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 3
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
istore 4
iload 1
iload 3
if_icmpne L1
iload 2
iload 4
if_icmpeq L2
L1:
aload 0
iload 3
iload 4
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
aload 0
iload 3
invokespecial android/support/v4/view/ViewPager/pageScrolled(I)Z
ifne L2
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
iconst_0
iload 4
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
L2:
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
return
L0:
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/completeScroll(Z)V
return
.limit locals 5
.limit stack 3
.end method

.method dataSetChanged()V
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
iconst_2
imul
iconst_1
iadd
if_icmpge L0
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
if_icmpge L0
iconst_1
istore 1
L1:
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
istore 2
iconst_0
istore 3
iconst_0
istore 4
L2:
iload 4
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L3
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 9
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/getItemPosition(Ljava/lang/Object;)I
istore 8
iload 8
iconst_m1
if_icmpne L4
iload 2
istore 5
iload 3
istore 6
iload 4
istore 7
L5:
iload 7
iconst_1
iadd
istore 4
iload 6
istore 3
iload 5
istore 2
goto L2
L0:
iconst_0
istore 1
goto L1
L4:
iload 8
bipush -2
if_icmpne L6
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
iload 4
iconst_1
isub
istore 8
iload 3
istore 4
iload 3
ifne L7
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/startUpdate(Landroid/view/ViewGroup;)V
iconst_1
istore 4
L7:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iconst_1
istore 1
iload 8
istore 7
iload 4
istore 6
iload 2
istore 5
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L5
iconst_0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
istore 5
iconst_1
istore 1
iload 8
istore 7
iload 4
istore 6
goto L5
L6:
iload 4
istore 7
iload 3
istore 6
iload 2
istore 5
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 8
if_icmpeq L5
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L8
iload 8
istore 2
L8:
aload 9
iload 8
putfield android/support/v4/view/ViewPager$ItemInfo/position I
iconst_1
istore 1
iload 4
istore 7
iload 3
istore 6
iload 2
istore 5
goto L5
L3:
iload 3
ifeq L9
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/finishUpdate(Landroid/view/ViewGroup;)V
L9:
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
getstatic android/support/v4/view/ViewPager/COMPARATOR Ljava/util/Comparator;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
iload 1
ifeq L10
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 3
iconst_0
istore 1
L11:
iload 1
iload 3
if_icmpge L12
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 9
aload 9
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L13
aload 9
fconst_0
putfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
L13:
iload 1
iconst_1
iadd
istore 1
goto L11
L12:
aload 0
iload 2
iconst_0
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZ)V
aload 0
invokevirtual android/support/v4/view/ViewPager/requestLayout()V
L10:
return
.limit locals 10
.limit stack 4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
aload 0
aload 1
invokespecial android/view/ViewGroup/dispatchKeyEvent(Landroid/view/KeyEvent;)Z
ifne L0
aload 0
aload 1
invokevirtual android/support/v4/view/ViewPager/executeKeyEvent(Landroid/view/KeyEvent;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 0
iload 2
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getVisibility()I
ifne L2
aload 0
aload 4
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 5
aload 5
ifnull L2
aload 5
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L2
aload 4
aload 1
invokevirtual android/view/View/dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_0
ireturn
.limit locals 6
.limit stack 2
.end method

.method distanceInfluenceForSnapDuration(F)F
fload 1
ldc_w 0.5F
fsub
f2d
ldc2_w 0.4712389167638204D
dmul
d2f
f2d
invokestatic java/lang/Math/sin(D)D
d2f
freturn
.limit locals 2
.limit stack 4
.end method

.method public draw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/draw(Landroid/graphics/Canvas;)V
iconst_0
istore 3
iconst_0
istore 2
aload 0
invokestatic android/support/v4/view/ViewCompat/getOverScrollMode(Landroid/view/View;)I
istore 4
iload 4
ifeq L0
iload 4
iconst_1
if_icmpne L1
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L1
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
if_icmple L1
L0:
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/isFinished()Z
ifne L2
aload 1
invokevirtual android/graphics/Canvas/save()I
istore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getHeight()I
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
isub
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingBottom()I
isub
istore 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 4
aload 1
ldc_w 270.0F
invokevirtual android/graphics/Canvas/rotate(F)V
aload 1
iload 2
ineg
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
iadd
i2f
aload 0
getfield android/support/v4/view/ViewPager/mFirstOffset F
iload 4
i2f
fmul
invokevirtual android/graphics/Canvas/translate(FF)V
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
iload 2
iload 4
invokevirtual android/support/v4/widget/EdgeEffectCompat/setSize(II)V
iconst_0
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
aload 1
invokevirtual android/support/v4/widget/EdgeEffectCompat/draw(Landroid/graphics/Canvas;)Z
ior
istore 2
aload 1
iload 3
invokevirtual android/graphics/Canvas/restoreToCount(I)V
L2:
iload 2
istore 3
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/isFinished()Z
ifne L3
aload 1
invokevirtual android/graphics/Canvas/save()I
istore 4
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getHeight()I
istore 5
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
istore 6
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingBottom()I
istore 7
aload 1
ldc_w 90.0F
invokevirtual android/graphics/Canvas/rotate(F)V
aload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
ineg
i2f
aload 0
getfield android/support/v4/view/ViewPager/mLastOffset F
fconst_1
fadd
fneg
iload 3
i2f
fmul
invokevirtual android/graphics/Canvas/translate(FF)V
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
iload 5
iload 6
isub
iload 7
isub
iload 3
invokevirtual android/support/v4/widget/EdgeEffectCompat/setSize(II)V
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
aload 1
invokevirtual android/support/v4/widget/EdgeEffectCompat/draw(Landroid/graphics/Canvas;)Z
ior
istore 3
aload 1
iload 4
invokevirtual android/graphics/Canvas/restoreToCount(I)V
L3:
iload 3
ifeq L4
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
L4:
return
L1:
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/finish()V
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/finish()V
goto L3
.limit locals 8
.limit stack 4
.end method

.method protected drawableStateChanged()V
aload 0
invokespecial android/view/ViewGroup/drawableStateChanged()V
aload 0
getfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual android/graphics/drawable/Drawable/isStateful()Z
ifeq L0
aload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getDrawableState()[I
invokevirtual android/graphics/drawable/Drawable/setState([I)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public endFakeDrag()V
aload 0
getfield android/support/v4/view/ViewPager/mFakeDragging Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "No fake drag in progress. Call beginFakeDrag first."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
astore 4
aload 4
sipush 1000
aload 0
getfield android/support/v4/view/ViewPager/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 4
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
f2i
istore 1
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 3
aload 0
invokespecial android/support/v4/view/ViewPager/infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
astore 4
aload 0
aload 0
aload 4
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 3
i2f
iload 2
i2f
fdiv
aload 4
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fsub
aload 4
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fdiv
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
fsub
f2i
invokespecial android/support/v4/view/ViewPager/determineTargetPage(IFII)I
iconst_1
iconst_1
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZI)V
aload 0
invokespecial android/support/v4/view/ViewPager/endDrag()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mFakeDragging Z
return
.limit locals 5
.limit stack 7
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
aload 1
invokevirtual android/view/KeyEvent/getAction()I
ifne L0
aload 1
invokevirtual android/view/KeyEvent/getKeyCode()I
lookupswitch
21 : L1
22 : L2
61 : L3
default : L0
L0:
iconst_0
ireturn
L1:
aload 0
bipush 17
invokevirtual android/support/v4/view/ViewPager/arrowScroll(I)Z
ireturn
L2:
aload 0
bipush 66
invokevirtual android/support/v4/view/ViewPager/arrowScroll(I)Z
ireturn
L3:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 1
invokestatic android/support/v4/view/KeyEventCompat/hasNoModifiers(Landroid/view/KeyEvent;)Z
ifeq L4
aload 0
iconst_2
invokevirtual android/support/v4/view/ViewPager/arrowScroll(I)Z
ireturn
L4:
aload 1
iconst_1
invokestatic android/support/v4/view/KeyEventCompat/hasModifiers(Landroid/view/KeyEvent;I)Z
ifeq L0
aload 0
iconst_1
invokevirtual android/support/v4/view/ViewPager/arrowScroll(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public fakeDragBy(F)V
aload 0
getfield android/support/v4/view/ViewPager/mFakeDragging Z
ifne L0
new java/lang/IllegalStateException
dup
ldc "No fake drag in progress. Call beginFakeDrag first."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fload 1
fadd
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
i2f
fload 1
fsub
fstore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 4
iload 4
i2f
aload 0
getfield android/support/v4/view/ViewPager/mFirstOffset F
fmul
fstore 1
iload 4
i2f
aload 0
getfield android/support/v4/view/ViewPager/mLastOffset F
fmul
fstore 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 7
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 8
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/position I
ifeq L1
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 4
i2f
fmul
fstore 1
L1:
aload 8
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
if_icmpeq L2
aload 8
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
iload 4
i2f
fmul
fstore 2
L2:
fload 3
fload 1
fcmpg
ifge L3
L4:
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fload 1
fload 1
f2i
i2f
fsub
fadd
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fload 1
f2i
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
aload 0
fload 1
f2i
invokespecial android/support/v4/view/ViewPager/pageScrolled(I)Z
pop
invokestatic android/os/SystemClock/uptimeMillis()J
lstore 5
aload 0
getfield android/support/v4/view/ViewPager/mFakeDragBeginTime J
lload 5
iconst_2
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fconst_0
iconst_0
invokestatic android/view/MotionEvent/obtain(JJIFFI)Landroid/view/MotionEvent;
astore 7
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
aload 7
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 7
invokevirtual android/view/MotionEvent/recycle()V
return
L3:
fload 3
fstore 1
fload 3
fload 2
fcmpl
ifle L4
fload 2
fstore 1
goto L4
.limit locals 9
.limit stack 8
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
new android/support/v4/view/ViewPager$LayoutParams
dup
invokespecial android/support/v4/view/ViewPager$LayoutParams/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
new android/support/v4/view/ViewPager$LayoutParams
dup
aload 0
invokevirtual android/support/v4/view/ViewPager/getContext()Landroid/content/Context;
aload 1
invokespecial android/support/v4/view/ViewPager$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
aload 0
invokevirtual android/support/v4/view/ViewPager/generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
areturn
.limit locals 2
.limit stack 1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getChildDrawingOrder(II)I
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrder I
iconst_2
if_icmpne L0
iload 1
iconst_1
isub
iload 2
isub
istore 1
L1:
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
getfield android/support/v4/view/ViewPager$LayoutParams/childIndex I
ireturn
L0:
iload 2
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public getCurrentItem()I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getOffscreenPageLimit()I
aload 0
getfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPageMargin()I
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
ireturn
.limit locals 1
.limit stack 1
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
L0:
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
astore 2
aload 2
aload 0
if_acmpeq L1
aload 2
ifnull L2
aload 2
instanceof android/view/View
ifne L3
L2:
aconst_null
areturn
L3:
aload 2
checkcast android/view/View
astore 1
goto L0
L1:
aload 0
aload 1
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
areturn
.limit locals 3
.limit stack 2
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
iconst_0
istore 2
L0:
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 1
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
ifeq L2
aload 3
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
iconst_0
istore 2
L0:
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 1
if_icmpne L2
aload 3
areturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method initViewPager()V
aload 0
iconst_0
invokevirtual android/support/v4/view/ViewPager/setWillNotDraw(Z)V
aload 0
ldc_w 262144
invokevirtual android/support/v4/view/ViewPager/setDescendantFocusability(I)V
aload 0
iconst_1
invokevirtual android/support/v4/view/ViewPager/setFocusable(Z)V
aload 0
invokevirtual android/support/v4/view/ViewPager/getContext()Landroid/content/Context;
astore 2
aload 0
new android/widget/Scroller
dup
aload 2
getstatic android/support/v4/view/ViewPager/sInterpolator Landroid/view/animation/Interpolator;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
putfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
aload 2
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 3
aload 2
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fstore 1
aload 0
aload 3
invokestatic android/support/v4/view/ViewConfigurationCompat/getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
putfield android/support/v4/view/ViewPager/mTouchSlop I
aload 0
ldc_w 400.0F
fload 1
fmul
f2i
putfield android/support/v4/view/ViewPager/mMinimumVelocity I
aload 0
aload 3
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
putfield android/support/v4/view/ViewPager/mMaximumVelocity I
aload 0
new android/support/v4/widget/EdgeEffectCompat
dup
aload 2
invokespecial android/support/v4/widget/EdgeEffectCompat/<init>(Landroid/content/Context;)V
putfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
aload 0
new android/support/v4/widget/EdgeEffectCompat
dup
aload 2
invokespecial android/support/v4/widget/EdgeEffectCompat/<init>(Landroid/content/Context;)V
putfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
aload 0
ldc_w 25.0F
fload 1
fmul
f2i
putfield android/support/v4/view/ViewPager/mFlingDistance I
aload 0
fconst_2
fload 1
fmul
f2i
putfield android/support/v4/view/ViewPager/mCloseEnough I
aload 0
ldc_w 16.0F
fload 1
fmul
f2i
putfield android/support/v4/view/ViewPager/mDefaultGutterSize I
aload 0
new android/support/v4/view/ViewPager$MyAccessibilityDelegate
dup
aload 0
invokespecial android/support/v4/view/ViewPager$MyAccessibilityDelegate/<init>(Landroid/support/v4/view/ViewPager;)V
invokestatic android/support/v4/view/ViewCompat/setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
aload 0
invokestatic android/support/v4/view/ViewCompat/getImportantForAccessibility(Landroid/view/View;)I
ifne L0
aload 0
iconst_1
invokestatic android/support/v4/view/ViewCompat/setImportantForAccessibility(Landroid/view/View;I)V
L0:
return
.limit locals 4
.limit stack 5
.end method

.method public isFakeDragging()Z
aload 0
getfield android/support/v4/view/ViewPager/mFakeDragging Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onAttachedToWindow()V
aload 0
invokespecial android/view/ViewGroup/onAttachedToWindow()V
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mFirstLayout Z
return
.limit locals 1
.limit stack 2
.end method

.method protected onDetachedFromWindow()V
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mEndScrollRunnable Ljava/lang/Runnable;
invokevirtual android/support/v4/view/ViewPager/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
invokespecial android/view/ViewGroup/onDetachedFromWindow()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
ifle L0
aload 0
getfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L0
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 8
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 9
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
iload 9
i2f
fdiv
fstore 4
iconst_0
istore 7
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fstore 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 10
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/position I
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 10
iconst_1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
getfield android/support/v4/view/ViewPager$ItemInfo/position I
istore 11
L1:
iload 6
iload 11
if_icmpge L0
L2:
iload 6
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmple L3
iload 7
iload 10
if_icmpge L3
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
astore 12
iload 7
iconst_1
iadd
istore 7
aload 12
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
goto L2
L3:
iload 6
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L4
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
iload 9
i2f
fmul
fstore 3
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fload 4
fadd
fstore 2
L5:
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
fload 3
fadd
iload 8
i2f
fcmpl
ifle L6
aload 0
getfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
fload 3
f2i
aload 0
getfield android/support/v4/view/ViewPager/mTopPageBounds I
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
fload 3
fadd
ldc_w 0.5F
fadd
f2i
aload 0
getfield android/support/v4/view/ViewPager/mBottomPageBounds I
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
L6:
fload 3
iload 8
iload 9
iadd
i2f
fcmpl
ifle L7
L0:
return
L4:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
iload 6
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fstore 5
fload 2
fload 5
fadd
iload 9
i2f
fmul
fstore 3
fload 2
fload 5
fload 4
fadd
fadd
fstore 2
goto L5
L7:
iload 6
iconst_1
iadd
istore 6
goto L1
.limit locals 13
.limit stack 5
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
istore 7
iload 7
iconst_3
if_icmpeq L0
iload 7
iconst_1
if_icmpne L1
L0:
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L2
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
L2:
iconst_0
ireturn
L1:
iload 7
ifeq L3
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L4
iconst_1
ireturn
L4:
aload 0
getfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
ifeq L3
iconst_0
ireturn
L3:
iload 7
lookupswitch
0 : L5
2 : L6
6 : L7
default : L8
L8:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L9
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
L9:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ireturn
L6:
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
istore 7
iload 7
iconst_m1
if_icmpeq L8
aload 1
iload 7
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
istore 7
aload 1
iload 7
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 3
fload 3
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fsub
fstore 2
fload 2
invokestatic java/lang/Math/abs(F)F
fstore 5
aload 1
iload 7
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 4
fload 4
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionY F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 6
fload 2
fconst_0
fcmpl
ifeq L10
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fload 2
invokespecial android/support/v4/view/ViewPager/isGutterDrag(FF)Z
ifne L10
aload 0
aload 0
iconst_0
fload 2
f2i
fload 3
f2i
fload 4
f2i
invokevirtual android/support/v4/view/ViewPager/canScroll(Landroid/view/View;ZIII)Z
ifeq L10
aload 0
fload 3
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fload 4
putfield android/support/v4/view/ViewPager/mLastMotionY F
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
iconst_0
ireturn
L10:
fload 5
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fcmpl
ifle L11
ldc_w 0.5F
fload 5
fmul
fload 6
fcmpl
ifle L11
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
fload 2
fconst_0
fcmpl
ifle L12
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fadd
fstore 2
L13:
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fload 4
putfield android/support/v4/view/ViewPager/mLastMotionY F
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
L14:
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L8
aload 0
fload 3
invokespecial android/support/v4/view/ViewPager/performDrag(F)Z
ifeq L8
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
goto L8
L12:
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fsub
fstore 2
goto L13
L11:
fload 6
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fcmpl
ifle L14
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
goto L14
L5:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mInitialMotionY F
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionY F
aload 0
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsUnableToDrag Z
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
pop
aload 0
getfield android/support/v4/view/ViewPager/mScrollState I
iconst_2
if_icmpne L15
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getFinalX()I
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
isub
invokestatic java/lang/Math/abs(I)I
aload 0
getfield android/support/v4/view/ViewPager/mCloseEnough I
if_icmple L15
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
goto L8
L15:
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/completeScroll(Z)V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
goto L8
L7:
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
goto L8
.limit locals 8
.limit stack 6
.end method

.method protected onLayout(ZIIII)V
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mInLayout Z
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mInLayout Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 13
iload 4
iload 2
isub
istore 14
iload 5
iload 3
isub
istore 15
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingLeft()I
istore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
istore 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingRight()I
istore 6
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingBottom()I
istore 5
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 16
iconst_0
istore 8
iconst_0
istore 9
L0:
iload 9
iload 13
if_icmpge L1
aload 0
iload 9
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 17
iload 8
istore 12
iload 5
istore 11
iload 3
istore 7
iload 6
istore 10
iload 2
istore 4
aload 17
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L2
aload 17
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 18
iload 8
istore 12
iload 5
istore 11
iload 3
istore 7
iload 6
istore 10
iload 2
istore 4
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifeq L2
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/gravity I
istore 4
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/gravity I
istore 10
iload 4
bipush 7
iand
tableswitch 1
L3
L4
L5
L4
L6
default : L4
L4:
iload 3
istore 4
iload 3
istore 7
L7:
iload 10
bipush 112
iand
lookupswitch
16 : L8
48 : L9
80 : L10
default : L11
L11:
iload 2
istore 3
L12:
iload 4
iload 16
iadd
istore 4
aload 17
iload 4
iload 3
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
iload 4
iadd
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
iload 3
iadd
invokevirtual android/view/View/layout(IIII)V
iload 8
iconst_1
iadd
istore 12
iload 2
istore 4
iload 6
istore 10
iload 5
istore 11
L2:
iload 9
iconst_1
iadd
istore 9
iload 12
istore 8
iload 11
istore 5
iload 7
istore 3
iload 10
istore 6
iload 4
istore 2
goto L0
L5:
iload 3
istore 4
iload 3
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
iadd
istore 7
goto L7
L3:
iload 14
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
isub
iconst_2
idiv
iload 3
invokestatic java/lang/Math/max(II)I
istore 4
iload 3
istore 7
goto L7
L6:
iload 14
iload 6
isub
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
isub
istore 4
iload 6
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
iadd
istore 6
iload 3
istore 7
goto L7
L9:
iload 2
istore 3
iload 2
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
iadd
istore 2
goto L12
L8:
iload 15
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
isub
iconst_2
idiv
iload 2
invokestatic java/lang/Math/max(II)I
istore 3
goto L12
L10:
iload 15
iload 5
isub
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
isub
istore 3
iload 5
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
iadd
istore 5
goto L12
L1:
iconst_0
istore 4
L13:
iload 4
iload 13
if_icmpge L14
aload 0
iload 4
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 17
aload 17
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L15
aload 17
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 18
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L15
aload 0
aload 17
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 19
aload 19
ifnull L15
iload 3
iload 14
i2f
aload 19
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fmul
f2i
iadd
istore 7
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/needsMeasure Z
ifeq L16
aload 18
iconst_0
putfield android/support/v4/view/ViewPager$LayoutParams/needsMeasure Z
aload 17
iload 14
iload 3
isub
iload 6
isub
i2f
aload 18
getfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
fmul
f2i
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iload 15
iload 2
isub
iload 5
isub
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/view/View/measure(II)V
L16:
aload 17
iload 7
iload 2
aload 17
invokevirtual android/view/View/getMeasuredWidth()I
iload 7
iadd
aload 17
invokevirtual android/view/View/getMeasuredHeight()I
iload 2
iadd
invokevirtual android/view/View/layout(IIII)V
L15:
iload 4
iconst_1
iadd
istore 4
goto L13
L14:
aload 0
iload 2
putfield android/support/v4/view/ViewPager/mTopPageBounds I
aload 0
iload 15
iload 5
isub
putfield android/support/v4/view/ViewPager/mBottomPageBounds I
aload 0
iload 8
putfield android/support/v4/view/ViewPager/mDecorChildCount I
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mFirstLayout Z
return
.limit locals 20
.limit stack 6
.end method

.method protected onMeasure(II)V
aload 0
iconst_0
iload 1
invokestatic android/support/v4/view/ViewPager/getDefaultSize(II)I
iconst_0
iload 2
invokestatic android/support/v4/view/ViewPager/getDefaultSize(II)I
invokevirtual android/support/v4/view/ViewPager/setMeasuredDimension(II)V
aload 0
invokevirtual android/support/v4/view/ViewPager/getMeasuredWidth()I
istore 1
aload 0
iload 1
bipush 10
idiv
aload 0
getfield android/support/v4/view/ViewPager/mDefaultGutterSize I
invokestatic java/lang/Math/min(II)I
putfield android/support/v4/view/ViewPager/mGutterSize I
iload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingLeft()I
isub
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingRight()I
isub
istore 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getMeasuredHeight()I
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingTop()I
isub
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingBottom()I
isub
istore 2
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 12
iconst_0
istore 5
L0:
iload 5
iload 12
if_icmpge L1
aload 0
iload 5
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 13
iload 2
istore 3
iload 1
istore 4
aload 13
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L2
aload 13
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 14
iload 2
istore 3
iload 1
istore 4
aload 14
ifnull L2
iload 2
istore 3
iload 1
istore 4
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifeq L2
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/gravity I
bipush 7
iand
istore 4
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/gravity I
bipush 112
iand
istore 6
ldc_w -2147483648
istore 8
ldc_w -2147483648
istore 3
iload 6
bipush 48
if_icmpeq L3
iload 6
bipush 80
if_icmpne L4
L3:
iconst_1
istore 6
L5:
iload 4
iconst_3
if_icmpeq L6
iload 4
iconst_5
if_icmpne L7
L6:
iconst_1
istore 7
L8:
iload 6
ifeq L9
ldc_w 1073741824
istore 4
L10:
iload 1
istore 10
iload 2
istore 8
iload 10
istore 9
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/width I
bipush -2
if_icmpeq L11
ldc_w 1073741824
istore 11
iload 11
istore 4
iload 10
istore 9
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/width I
iconst_m1
if_icmpeq L11
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/width I
istore 9
iload 11
istore 4
L11:
iload 8
istore 10
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/height I
bipush -2
if_icmpeq L12
ldc_w 1073741824
istore 11
iload 11
istore 3
iload 8
istore 10
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/height I
iconst_m1
if_icmpeq L12
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/height I
istore 10
iload 11
istore 3
L12:
aload 13
iload 9
iload 4
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iload 10
iload 3
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/view/View/measure(II)V
iload 6
ifeq L13
iload 2
aload 13
invokevirtual android/view/View/getMeasuredHeight()I
isub
istore 3
iload 1
istore 4
L2:
iload 5
iconst_1
iadd
istore 5
iload 3
istore 2
iload 4
istore 1
goto L0
L4:
iconst_0
istore 6
goto L5
L7:
iconst_0
istore 7
goto L8
L9:
iload 8
istore 4
iload 7
ifeq L10
ldc_w 1073741824
istore 3
iload 8
istore 4
goto L10
L13:
iload 2
istore 3
iload 1
istore 4
iload 7
ifeq L2
iload 1
aload 13
invokevirtual android/view/View/getMeasuredWidth()I
isub
istore 4
iload 2
istore 3
goto L2
L1:
aload 0
iload 1
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
putfield android/support/v4/view/ViewPager/mChildWidthMeasureSpec I
aload 0
iload 2
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
putfield android/support/v4/view/ViewPager/mChildHeightMeasureSpec I
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mInLayout Z
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mInLayout Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 3
iconst_0
istore 2
L14:
iload 2
iload 3
if_icmpge L15
aload 0
iload 2
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 13
aload 13
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L16
aload 13
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 14
aload 14
ifnull L17
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L16
L17:
aload 13
iload 1
i2f
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
fmul
f2i
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
aload 0
getfield android/support/v4/view/ViewPager/mChildHeightMeasureSpec I
invokevirtual android/view/View/measure(II)V
L16:
iload 2
iconst_1
iadd
istore 2
goto L14
L15:
return
.limit locals 15
.limit stack 4
.end method

.method protected onPageScrolled(IFI)V
aload 0
getfield android/support/v4/view/ViewPager/mDecorChildCount I
ifle L0
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 9
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingLeft()I
istore 4
aload 0
invokevirtual android/support/v4/view/ViewPager/getPaddingRight()I
istore 6
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 10
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 11
iconst_0
istore 7
L1:
iload 7
iload 11
if_icmpge L0
aload 0
iload 7
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 13
aload 13
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 14
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L2
iload 6
istore 5
iload 4
istore 8
L3:
iload 7
iconst_1
iadd
istore 7
iload 8
istore 4
iload 5
istore 6
goto L1
L2:
aload 14
getfield android/support/v4/view/ViewPager$LayoutParams/gravity I
bipush 7
iand
tableswitch 1
L4
L5
L6
L5
L7
default : L5
L5:
iload 4
istore 5
L8:
iload 5
iload 9
iadd
aload 13
invokevirtual android/view/View/getLeft()I
isub
istore 12
iload 4
istore 8
iload 6
istore 5
iload 12
ifeq L3
aload 13
iload 12
invokevirtual android/view/View/offsetLeftAndRight(I)V
iload 4
istore 8
iload 6
istore 5
goto L3
L6:
iload 4
istore 5
iload 4
aload 13
invokevirtual android/view/View/getWidth()I
iadd
istore 4
goto L8
L4:
iload 10
aload 13
invokevirtual android/view/View/getMeasuredWidth()I
isub
iconst_2
idiv
iload 4
invokestatic java/lang/Math/max(II)I
istore 5
goto L8
L7:
iload 10
iload 6
isub
aload 13
invokevirtual android/view/View/getMeasuredWidth()I
isub
istore 5
iload 6
aload 13
invokevirtual android/view/View/getMeasuredWidth()I
iadd
istore 6
goto L8
L0:
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L9
aload 0
getfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrolled(IFI)V 3
L9:
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L10
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrolled(IFI)V 3
L10:
aload 0
getfield android/support/v4/view/ViewPager/mPageTransformer Landroid/support/v4/view/ViewPager$PageTransformer;
ifnull L11
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 3
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 4
iconst_0
istore 1
L12:
iload 1
iload 4
if_icmpge L11
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 13
aload 13
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifeq L13
L14:
iload 1
iconst_1
iadd
istore 1
goto L12
L13:
aload 13
invokevirtual android/view/View/getLeft()I
iload 3
isub
i2f
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
i2f
fdiv
fstore 2
aload 0
getfield android/support/v4/view/ViewPager/mPageTransformer Landroid/support/v4/view/ViewPager$PageTransformer;
aload 13
fload 2
invokeinterface android/support/v4/view/ViewPager$PageTransformer/transformPage(Landroid/view/View;F)V 2
goto L14
L11:
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mCalledSuper Z
return
.limit locals 15
.limit stack 4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 4
iload 1
iconst_2
iand
ifeq L0
iconst_0
istore 3
iconst_1
istore 5
L1:
iload 3
iload 4
if_icmpeq L2
aload 0
iload 3
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getVisibility()I
ifne L3
aload 0
aload 6
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 7
aload 7
ifnull L3
aload 7
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L3
aload 6
iload 1
aload 2
invokevirtual android/view/View/requestFocus(ILandroid/graphics/Rect;)Z
ifeq L3
iconst_1
ireturn
L0:
iload 4
iconst_1
isub
istore 3
iconst_m1
istore 5
iconst_m1
istore 4
goto L1
L3:
iload 3
iload 5
iadd
istore 3
goto L1
L2:
iconst_0
ireturn
.limit locals 8
.limit stack 3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
instanceof android/support/v4/view/ViewPager$SavedState
ifne L0
aload 0
aload 1
invokespecial android/view/ViewGroup/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
L0:
aload 1
checkcast android/support/v4/view/ViewPager$SavedState
astore 1
aload 0
aload 1
invokevirtual android/support/v4/view/ViewPager$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/view/ViewGroup/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L1
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 1
getfield android/support/v4/view/ViewPager$SavedState/adapterState Landroid/os/Parcelable;
aload 1
getfield android/support/v4/view/ViewPager$SavedState/loader Ljava/lang/ClassLoader;
invokevirtual android/support/v4/view/PagerAdapter/restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
aload 0
aload 1
getfield android/support/v4/view/ViewPager$SavedState/position I
iconst_0
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZ)V
return
L1:
aload 0
aload 1
getfield android/support/v4/view/ViewPager$SavedState/position I
putfield android/support/v4/view/ViewPager/mRestoredCurItem I
aload 0
aload 1
getfield android/support/v4/view/ViewPager$SavedState/adapterState Landroid/os/Parcelable;
putfield android/support/v4/view/ViewPager/mRestoredAdapterState Landroid/os/Parcelable;
aload 0
aload 1
getfield android/support/v4/view/ViewPager$SavedState/loader Ljava/lang/ClassLoader;
putfield android/support/v4/view/ViewPager/mRestoredClassLoader Ljava/lang/ClassLoader;
return
.limit locals 2
.limit stack 4
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new android/support/v4/view/ViewPager$SavedState
dup
aload 0
invokespecial android/view/ViewGroup/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial android/support/v4/view/ViewPager$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
putfield android/support/v4/view/ViewPager$SavedState/position I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/saveState()Landroid/os/Parcelable;
putfield android/support/v4/view/ViewPager$SavedState/adapterState Landroid/os/Parcelable;
L0:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onSizeChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/view/ViewGroup/onSizeChanged(IIII)V
iload 1
iload 3
if_icmpeq L0
aload 0
iload 1
iload 3
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
invokespecial android/support/v4/view/ViewPager/recomputeScrollPosition(IIII)V
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield android/support/v4/view/ViewPager/mFakeDragging Z
ifeq L0
iconst_1
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L1
aload 1
invokevirtual android/view/MotionEvent/getEdgeFlags()I
ifeq L1
iconst_0
ireturn
L1:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L2
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
ifne L3
L2:
iconst_0
ireturn
L3:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L4
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
L4:
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 8
iconst_0
istore 7
iload 7
istore 6
iload 8
sipush 255
iand
tableswitch 0
L5
L6
L7
L8
L9
L10
L11
default : L12
L12:
iload 7
istore 6
L9:
iload 6
ifeq L13
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
L13:
iconst_1
ireturn
L5:
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mInitialMotionY F
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionY F
aload 0
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield android/support/v4/view/ViewPager/mActivePointerId I
iload 7
istore 6
goto L9
L7:
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifne L14
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
istore 6
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
fload 2
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionX F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 4
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 3
fload 3
aload 0
getfield android/support/v4/view/ViewPager/mLastMotionY F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 5
fload 4
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fcmpl
ifle L14
fload 4
fload 5
fcmpl
ifle L14
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mIsBeingDragged Z
fload 2
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
fsub
fconst_0
fcmpl
ifle L15
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fadd
fstore 2
L16:
aload 0
fload 2
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
fload 3
putfield android/support/v4/view/ViewPager/mLastMotionY F
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
L14:
iload 7
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L9
iconst_0
aload 0
aload 1
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
invokespecial android/support/v4/view/ViewPager/performDrag(F)Z
ior
istore 6
goto L9
L15:
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
aload 0
getfield android/support/v4/view/ViewPager/mTouchSlop I
i2f
fsub
fstore 2
goto L16
L6:
iload 7
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L9
aload 0
getfield android/support/v4/view/ViewPager/mVelocityTracker Landroid/view/VelocityTracker;
astore 9
aload 9
sipush 1000
aload 0
getfield android/support/v4/view/ViewPager/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 9
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
f2i
istore 6
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 7
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 8
aload 0
invokespecial android/support/v4/view/ViewPager/infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
astore 9
aload 0
aload 0
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/position I
iload 8
i2f
iload 7
i2f
fdiv
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/offset F
fsub
aload 9
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fdiv
iload 6
aload 1
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
aload 0
getfield android/support/v4/view/ViewPager/mInitialMotionX F
fsub
f2i
invokespecial android/support/v4/view/ViewPager/determineTargetPage(IFII)I
iconst_1
iconst_1
iload 6
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZI)V
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
invokespecial android/support/v4/view/ViewPager/endDrag()V
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/onRelease()Z
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/onRelease()Z
ior
istore 6
goto L9
L8:
iload 7
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mIsBeingDragged Z
ifeq L9
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iconst_1
iconst_0
iconst_0
invokespecial android/support/v4/view/ViewPager/scrollToItem(IZIZ)V
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mActivePointerId I
aload 0
invokespecial android/support/v4/view/ViewPager/endDrag()V
aload 0
getfield android/support/v4/view/ViewPager/mLeftEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/onRelease()Z
aload 0
getfield android/support/v4/view/ViewPager/mRightEdge Landroid/support/v4/widget/EdgeEffectCompat;
invokevirtual android/support/v4/widget/EdgeEffectCompat/onRelease()Z
ior
istore 6
goto L9
L10:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 6
aload 0
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield android/support/v4/view/ViewPager/mLastMotionX F
aload 0
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield android/support/v4/view/ViewPager/mActivePointerId I
iload 7
istore 6
goto L9
L11:
aload 0
aload 1
invokespecial android/support/v4/view/ViewPager/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
aload 0
aload 1
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield android/support/v4/view/ViewPager/mLastMotionX F
iload 7
istore 6
goto L9
.limit locals 10
.limit stack 8
.end method

.method pageLeft()Z
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
ifle L0
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iconst_1
isub
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(IZ)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method pageRight()Z
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
if_icmpge L0
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iconst_1
iadd
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(IZ)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method populate()V
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
invokevirtual android/support/v4/view/ViewPager/populate(I)V
return
.limit locals 1
.limit stack 2
.end method

.method populate(I)V
aconst_null
astore 13
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
if_icmpeq L0
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
invokevirtual android/support/v4/view/ViewPager/infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 13
aload 0
iload 1
putfield android/support/v4/view/ViewPager/mCurItem I
L0:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnonnull L1
L2:
return
L1:
aload 0
getfield android/support/v4/view/ViewPager/mPopulatePending Z
ifne L2
aload 0
invokevirtual android/support/v4/view/ViewPager/getWindowToken()Landroid/os/IBinder;
ifnull L2
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/startUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
istore 1
iconst_0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
isub
invokestatic java/lang/Math/max(II)I
istore 11
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 9
iload 9
iconst_1
isub
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
iadd
invokestatic java/lang/Math/min(II)I
istore 10
aconst_null
astore 14
iconst_0
istore 1
L3:
aload 14
astore 12
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 15
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmplt L5
aload 14
astore 12
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L4
aload 15
astore 12
L4:
aload 12
astore 14
aload 12
ifnonnull L6
aload 12
astore 14
iload 9
ifle L6
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
invokevirtual android/support/v4/view/ViewPager/addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 14
L6:
aload 14
ifnull L7
fconst_0
fstore 3
iload 1
iconst_1
isub
istore 8
iload 8
iflt L8
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L9:
aload 14
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fstore 4
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iconst_1
isub
istore 7
aload 12
astore 15
iload 1
istore 6
L10:
iload 7
iflt L11
fload 3
fconst_2
fload 4
fsub
fcmpl
iflt L12
iload 7
iload 11
if_icmpge L12
aload 15
ifnonnull L13
L11:
aload 14
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fstore 3
iload 6
iconst_1
iadd
istore 7
fload 3
fconst_2
fcmpg
ifge L14
iload 7
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L15
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L16:
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iconst_1
iadd
istore 5
aload 12
astore 15
L17:
iload 5
iload 9
if_icmpge L14
fload 3
fconst_2
fcmpl
iflt L18
iload 5
iload 10
if_icmple L18
aload 15
ifnonnull L19
L14:
aload 0
aload 14
iload 6
aload 13
invokespecial android/support/v4/view/ViewPager/calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
L7:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
astore 13
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
istore 1
aload 14
ifnull L20
aload 14
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
astore 12
L21:
aload 13
aload 0
iload 1
aload 12
invokevirtual android/support/v4/view/PagerAdapter/setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/finishUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrder I
ifeq L22
iconst_1
istore 1
L23:
iload 1
ifeq L24
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
ifnonnull L25
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
L24:
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
istore 6
iconst_0
istore 5
L26:
iload 5
iload 6
if_icmpge L27
aload 0
iload 5
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 12
aload 12
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 13
aload 13
iload 5
putfield android/support/v4/view/ViewPager$LayoutParams/childIndex I
aload 13
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifne L28
aload 13
getfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
fconst_0
fcmpl
ifne L28
aload 0
aload 12
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 14
aload 14
ifnull L28
aload 13
aload 14
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
putfield android/support/v4/view/ViewPager$LayoutParams/widthFactor F
aload 13
aload 14
getfield android/support/v4/view/ViewPager$ItemInfo/position I
putfield android/support/v4/view/ViewPager$LayoutParams/position I
L28:
iload 1
ifeq L29
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L29:
iload 5
iconst_1
iadd
istore 5
goto L26
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L8:
aconst_null
astore 12
goto L9
L13:
iload 6
istore 1
fload 3
fstore 2
aload 15
astore 12
iload 8
istore 5
iload 7
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L30
iload 6
istore 1
fload 3
fstore 2
aload 15
astore 12
iload 8
istore 5
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/scrolling Z
ifne L30
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
iload 7
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iload 8
iconst_1
isub
istore 5
iload 6
iconst_1
isub
istore 1
iload 5
iflt L31
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
fload 3
fstore 2
L30:
iload 7
iconst_1
isub
istore 7
iload 1
istore 6
fload 2
fstore 3
aload 12
astore 15
iload 5
istore 8
goto L10
L31:
aconst_null
astore 12
fload 3
fstore 2
goto L30
L12:
aload 15
ifnull L32
iload 7
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L32
fload 3
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fstore 2
iload 8
iconst_1
isub
istore 5
iload 5
iflt L33
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L34:
iload 6
istore 1
goto L30
L33:
aconst_null
astore 12
goto L34
L32:
fload 3
aload 0
iload 7
iload 8
iconst_1
iadd
invokevirtual android/support/v4/view/ViewPager/addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fstore 2
iload 6
iconst_1
iadd
istore 1
iload 8
iflt L35
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 8
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L36:
iload 8
istore 5
goto L30
L35:
aconst_null
astore 12
goto L36
L15:
aconst_null
astore 12
goto L16
L19:
fload 3
fstore 2
aload 15
astore 12
iload 7
istore 1
iload 5
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L37
fload 3
fstore 2
aload 15
astore 12
iload 7
istore 1
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/scrolling Z
ifne L37
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 7
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
iload 5
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iload 7
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L38
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 7
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
iload 7
istore 1
fload 3
fstore 2
L37:
iload 5
iconst_1
iadd
istore 5
fload 2
fstore 3
aload 12
astore 15
iload 1
istore 7
goto L17
L38:
aconst_null
astore 12
fload 3
fstore 2
iload 7
istore 1
goto L37
L18:
aload 15
ifnull L39
iload 5
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/position I
if_icmpne L39
fload 3
aload 15
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fstore 2
iload 7
iconst_1
iadd
istore 1
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L40
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L41:
goto L37
L40:
aconst_null
astore 12
goto L41
L39:
aload 0
iload 5
iload 7
invokevirtual android/support/v4/view/ViewPager/addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 12
iload 7
iconst_1
iadd
istore 1
fload 3
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/widthFactor F
fadd
fstore 2
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L42
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 12
L43:
goto L37
L42:
aconst_null
astore 12
goto L43
L20:
aconst_null
astore 12
goto L21
L22:
iconst_0
istore 1
goto L23
L25:
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
goto L24
L27:
iload 1
ifeq L44
aload 0
getfield android/support/v4/view/ViewPager/mDrawingOrderedChildren Ljava/util/ArrayList;
getstatic android/support/v4/view/ViewPager/sPositionComparator Landroid/support/v4/view/ViewPager$ViewPositionComparator;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
L44:
aload 0
invokevirtual android/support/v4/view/ViewPager/hasFocus()Z
ifeq L2
aload 0
invokevirtual android/support/v4/view/ViewPager/findFocus()Landroid/view/View;
astore 12
aload 12
ifnull L45
aload 0
aload 12
invokevirtual android/support/v4/view/ViewPager/infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 12
L46:
aload 12
ifnull L47
aload 12
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpeq L2
L47:
iconst_0
istore 1
L48:
iload 1
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
if_icmpge L2
aload 0
iload 1
invokevirtual android/support/v4/view/ViewPager/getChildAt(I)Landroid/view/View;
astore 12
aload 0
aload 12
invokevirtual android/support/v4/view/ViewPager/infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
astore 13
aload 13
ifnull L49
aload 13
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
if_icmpne L49
aload 12
iconst_2
invokevirtual android/view/View/requestFocus(I)Z
ifne L2
L49:
iload 1
iconst_1
iadd
istore 1
goto L48
L45:
aconst_null
astore 12
goto L46
.limit locals 16
.limit stack 5
.end method

.method public removeView(Landroid/view/View;)V
aload 0
getfield android/support/v4/view/ViewPager/mInLayout Z
ifeq L0
aload 0
aload 1
invokevirtual android/support/v4/view/ViewPager/removeViewInLayout(Landroid/view/View;)V
return
L0:
aload 0
aload 1
invokespecial android/view/ViewGroup/removeView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mObserver Landroid/support/v4/view/ViewPager$PagerObserver;
invokevirtual android/support/v4/view/PagerAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/startUpdate(Landroid/view/ViewGroup;)V
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
astore 3
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 3
getfield android/support/v4/view/ViewPager$ItemInfo/object Ljava/lang/Object;
invokevirtual android/support/v4/view/PagerAdapter/destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
invokevirtual android/support/v4/view/PagerAdapter/finishUpdate(Landroid/view/ViewGroup;)V
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
invokespecial android/support/v4/view/ViewPager/removeNonDecorViews()V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mCurItem I
aload 0
iconst_0
iconst_0
invokevirtual android/support/v4/view/ViewPager/scrollTo(II)V
L0:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
astore 3
aload 0
aload 1
putfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L3
aload 0
getfield android/support/v4/view/ViewPager/mObserver Landroid/support/v4/view/ViewPager$PagerObserver;
ifnonnull L4
aload 0
new android/support/v4/view/ViewPager$PagerObserver
dup
aload 0
aconst_null
invokespecial android/support/v4/view/ViewPager$PagerObserver/<init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V
putfield android/support/v4/view/ViewPager/mObserver Landroid/support/v4/view/ViewPager$PagerObserver;
L4:
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mObserver Landroid/support/v4/view/ViewPager$PagerObserver;
invokevirtual android/support/v4/view/PagerAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
iconst_1
putfield android/support/v4/view/ViewPager/mFirstLayout Z
aload 0
getfield android/support/v4/view/ViewPager/mRestoredCurItem I
iflt L5
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mRestoredAdapterState Landroid/os/Parcelable;
aload 0
getfield android/support/v4/view/ViewPager/mRestoredClassLoader Ljava/lang/ClassLoader;
invokevirtual android/support/v4/view/PagerAdapter/restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
aload 0
aload 0
getfield android/support/v4/view/ViewPager/mRestoredCurItem I
iconst_0
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZ)V
aload 0
iconst_m1
putfield android/support/v4/view/ViewPager/mRestoredCurItem I
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredAdapterState Landroid/os/Parcelable;
aload 0
aconst_null
putfield android/support/v4/view/ViewPager/mRestoredClassLoader Ljava/lang/ClassLoader;
L3:
aload 0
getfield android/support/v4/view/ViewPager/mAdapterChangeListener Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
ifnull L6
aload 3
aload 1
if_acmpeq L6
aload 0
getfield android/support/v4/view/ViewPager/mAdapterChangeListener Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
aload 3
aload 1
invokeinterface android/support/v4/view/ViewPager$OnAdapterChangeListener/onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V 2
L6:
return
L5:
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
goto L3
.limit locals 4
.limit stack 5
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
.catch java/lang/NoSuchMethodException from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
aload 0
getfield android/support/v4/view/ViewPager/mSetChildrenDrawingOrderEnabled Ljava/lang/reflect/Method;
ifnonnull L1
L0:
aload 0
ldc android/view/ViewGroup
ldc "setChildrenDrawingOrderEnabled"
iconst_1
anewarray java/lang/Class
dup
iconst_0
getstatic java/lang/Boolean/TYPE Ljava/lang/Class;
aastore
invokevirtual java/lang/Class/getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
putfield android/support/v4/view/ViewPager/mSetChildrenDrawingOrderEnabled Ljava/lang/reflect/Method;
L1:
aload 0
getfield android/support/v4/view/ViewPager/mSetChildrenDrawingOrderEnabled Ljava/lang/reflect/Method;
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
pop
L3:
return
L2:
astore 2
ldc "ViewPager"
ldc "Can't find setChildrenDrawingOrderEnabled"
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L1
L4:
astore 2
ldc "ViewPager"
ldc "Error changing children drawing order"
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 3
.limit stack 7
.end method

.method public setCurrentItem(I)V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
getfield android/support/v4/view/ViewPager/mFirstLayout Z
ifne L0
iconst_1
istore 2
L1:
aload 0
iload 1
iload 2
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZ)V
return
L0:
iconst_0
istore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method public setCurrentItem(IZ)V
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mPopulatePending Z
aload 0
iload 1
iload 2
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZ)V
return
.limit locals 3
.limit stack 4
.end method

.method setCurrentItemInternal(IZZ)V
aload 0
iload 1
iload 2
iload 3
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItemInternal(IZZI)V
return
.limit locals 4
.limit stack 5
.end method

.method setCurrentItemInternal(IZZI)V
iconst_1
istore 6
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
ifnull L0
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
ifgt L1
L0:
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
return
L1:
iload 3
ifne L2
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
if_icmpne L2
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifeq L2
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
return
L2:
iload 1
ifge L3
iconst_0
istore 5
L4:
aload 0
getfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
istore 1
iload 5
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
iadd
if_icmpgt L5
iload 5
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 1
isub
if_icmpge L6
L5:
iconst_0
istore 1
L7:
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L6
aload 0
getfield android/support/v4/view/ViewPager/mItems Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/view/ViewPager$ItemInfo
iconst_1
putfield android/support/v4/view/ViewPager$ItemInfo/scrolling Z
iload 1
iconst_1
iadd
istore 1
goto L7
L3:
iload 1
istore 5
iload 1
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
if_icmplt L4
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
iconst_1
isub
istore 5
goto L4
L6:
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
iload 5
if_icmpeq L8
iload 6
istore 3
L9:
aload 0
iload 5
invokevirtual android/support/v4/view/ViewPager/populate(I)V
aload 0
iload 5
iload 2
iload 4
iload 3
invokespecial android/support/v4/view/ViewPager/scrollToItem(IZIZ)V
return
L8:
iconst_0
istore 3
goto L9
.limit locals 7
.limit stack 5
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
aload 0
getfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
astore 2
aload 0
aload 1
putfield android/support/v4/view/ViewPager/mInternalPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public setOffscreenPageLimit(I)V
iload 1
istore 2
iload 1
iconst_1
if_icmpge L0
ldc "ViewPager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Requested offscreen page limit "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " too small; defaulting to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iconst_1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
istore 2
L0:
iload 2
aload 0
getfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
if_icmpeq L1
aload 0
iload 2
putfield android/support/v4/view/ViewPager/mOffscreenPageLimit I
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
L1:
return
.limit locals 3
.limit stack 3
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager/mAdapterChangeListener Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager/mOnPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setPageMargin(I)V
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
istore 2
aload 0
iload 1
putfield android/support/v4/view/ViewPager/mPageMargin I
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 3
aload 0
iload 3
iload 3
iload 1
iload 2
invokespecial android/support/v4/view/ViewPager/recomputeScrollPosition(IIII)V
aload 0
invokevirtual android/support/v4/view/ViewPager/requestLayout()V
return
.limit locals 4
.limit stack 5
.end method

.method public setPageMarginDrawable(I)V
aload 0
aload 0
invokevirtual android/support/v4/view/ViewPager/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/support/v4/view/ViewPager/setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 1
putfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
aload 1
ifnull L0
aload 0
invokevirtual android/support/v4/view/ViewPager/refreshDrawableState()V
L0:
aload 1
ifnonnull L1
iconst_1
istore 2
L2:
aload 0
iload 2
invokevirtual android/support/v4/view/ViewPager/setWillNotDraw(Z)V
aload 0
invokevirtual android/support/v4/view/ViewPager/invalidate()V
return
L1:
iconst_0
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
iconst_1
istore 4
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 2
ifnull L1
iconst_1
istore 5
L2:
aload 0
getfield android/support/v4/view/ViewPager/mPageTransformer Landroid/support/v4/view/ViewPager$PageTransformer;
ifnull L3
iconst_1
istore 6
L4:
iload 5
iload 6
if_icmpeq L5
iconst_1
istore 3
L6:
aload 0
aload 2
putfield android/support/v4/view/ViewPager/mPageTransformer Landroid/support/v4/view/ViewPager$PageTransformer;
aload 0
iload 5
invokevirtual android/support/v4/view/ViewPager/setChildrenDrawingOrderEnabledCompat(Z)V
iload 5
ifeq L7
iload 1
ifeq L8
iconst_2
istore 4
L8:
aload 0
iload 4
putfield android/support/v4/view/ViewPager/mDrawingOrder I
L9:
iload 3
ifeq L0
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
L0:
return
L1:
iconst_0
istore 5
goto L2
L3:
iconst_0
istore 6
goto L4
L5:
iconst_0
istore 3
goto L6
L7:
aload 0
iconst_0
putfield android/support/v4/view/ViewPager/mDrawingOrder I
goto L9
.limit locals 7
.limit stack 2
.end method

.method smoothScrollTo(II)V
aload 0
iload 1
iload 2
iconst_0
invokevirtual android/support/v4/view/ViewPager/smoothScrollTo(III)V
return
.limit locals 3
.limit stack 4
.end method

.method smoothScrollTo(III)V
aload 0
invokevirtual android/support/v4/view/ViewPager/getChildCount()I
ifne L0
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
return
L0:
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollX()I
istore 7
aload 0
invokevirtual android/support/v4/view/ViewPager/getScrollY()I
istore 8
iload 1
iload 7
isub
istore 9
iload 2
iload 8
isub
istore 2
iload 9
ifne L1
iload 2
ifne L1
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/completeScroll(Z)V
aload 0
invokevirtual android/support/v4/view/ViewPager/populate()V
aload 0
iconst_0
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
return
L1:
aload 0
iconst_1
invokespecial android/support/v4/view/ViewPager/setScrollingCacheEnabled(Z)V
aload 0
iconst_2
invokespecial android/support/v4/view/ViewPager/setScrollState(I)V
aload 0
invokevirtual android/support/v4/view/ViewPager/getWidth()I
istore 1
iload 1
iconst_2
idiv
istore 10
fconst_1
fconst_1
iload 9
invokestatic java/lang/Math/abs(I)I
i2f
fmul
iload 1
i2f
fdiv
invokestatic java/lang/Math/min(FF)F
fstore 6
iload 10
i2f
fstore 4
iload 10
i2f
fstore 5
aload 0
fload 6
invokevirtual android/support/v4/view/ViewPager/distanceInfluenceForSnapDuration(F)F
fstore 6
iload 3
invokestatic java/lang/Math/abs(I)I
istore 3
iload 3
ifle L2
ldc_w 1000.0F
fload 4
fload 5
fload 6
fmul
fadd
iload 3
i2f
fdiv
invokestatic java/lang/Math/abs(F)F
fmul
invokestatic java/lang/Math/round(F)I
iconst_4
imul
istore 1
L3:
iload 1
sipush 600
invokestatic java/lang/Math/min(II)I
istore 1
aload 0
getfield android/support/v4/view/ViewPager/mScroller Landroid/widget/Scroller;
iload 7
iload 8
iload 9
iload 2
iload 1
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
return
L2:
iload 1
i2f
fstore 4
aload 0
getfield android/support/v4/view/ViewPager/mAdapter Landroid/support/v4/view/PagerAdapter;
aload 0
getfield android/support/v4/view/ViewPager/mCurItem I
invokevirtual android/support/v4/view/PagerAdapter/getPageWidth(I)F
fstore 5
fconst_1
iload 9
invokestatic java/lang/Math/abs(I)I
i2f
aload 0
getfield android/support/v4/view/ViewPager/mPageMargin I
i2f
fload 4
fload 5
fmul
fadd
fdiv
fadd
ldc_w 100.0F
fmul
f2i
istore 1
goto L3
.limit locals 11
.limit stack 6
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
aload 0
aload 1
invokespecial android/view/ViewGroup/verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
ifne L0
aload 1
aload 0
getfield android/support/v4/view/ViewPager/mMarginDrawable Landroid/graphics/drawable/Drawable;
if_acmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
