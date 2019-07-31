.bytecode 50.0
.class public synchronized abstract com/huewu/pla/lib/internal/PLA_AbsListView
.super com/huewu/pla/lib/internal/PLA_AdapterView
.implements android/view/ViewTreeObserver$OnGlobalLayoutListener
.implements android/view/ViewTreeObserver$OnTouchModeChangeListener
.signature "Lcom/huewu/pla/lib/internal/PLA_AdapterView<Landroid/widget/ListAdapter;>;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
.inner class inner com/huewu/pla/lib/internal/PLA_AbsListView$1
.inner class inner com/huewu/pla/lib/internal/PLA_AbsListView$2
.inner class final CheckForTap inner com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class private FlingRunnable inner com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class public static LayoutParams inner com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class public static abstract interface OnScrollListener inner com/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class private PerformClick inner com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class PositionScroller inner com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class RecycleBin inner com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class public static abstract interface RecyclerListener inner com/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener outer com/huewu/pla/lib/internal/PLA_AbsListView
.inner class private WindowRunnnable inner com/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable outer com/huewu/pla/lib/internal/PLA_AbsListView

.field private static final 'INVALID_POINTER' I = -1


.field static final 'LAYOUT_FORCE_BOTTOM' I = 3


.field static final 'LAYOUT_FORCE_TOP' I = 1


.field static final 'LAYOUT_MOVE_SELECTION' I = 6


.field static final 'LAYOUT_NORMAL' I = 0


.field static final 'LAYOUT_SET_SELECTION' I = 2


.field static final 'LAYOUT_SPECIFIC' I = 4


.field static final 'LAYOUT_SYNC' I = 5


.field private static final 'PROFILE_FLINGING' Z = 0


.field private static final 'PROFILE_SCROLLING' Z = 0


.field protected static final 'TOUCH_MODE_DONE_WAITING' I = 2


.field protected static final 'TOUCH_MODE_DOWN' I = 0


.field protected static final 'TOUCH_MODE_FLING' I = 4


.field private static final 'TOUCH_MODE_OFF' I = 1


.field private static final 'TOUCH_MODE_ON' I = 0


.field static final 'TOUCH_MODE_REST' I = -1


.field protected static final 'TOUCH_MODE_SCROLL' I = 3


.field protected static final 'TOUCH_MODE_TAP' I = 1


.field private static final 'TOUCH_MODE_UNKNOWN' I = -1


.field public static final 'TRANSCRIPT_MODE_ALWAYS_SCROLL' I = 2


.field public static final 'TRANSCRIPT_MODE_DISABLED' I = 0


.field public static final 'TRANSCRIPT_MODE_NORMAL' I = 1


.field private 'mActivePointerId' I

.field protected 'mAdapter' Landroid/widget/ListAdapter;

.field private 'mCacheColorHint' I

.field protected 'mCachingStarted' Z

.field private 'mClearScrollingCache' Ljava/lang/Runnable;

.field private 'mContextMenuInfo' Landroid/view/ContextMenu$ContextMenuInfo;

.field 'mDataSetObserver' Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver; signature "Lcom/huewu/pla/lib/internal/PLA_AdapterView<Landroid/widget/ListAdapter;>.AdapterDataSetObserver;"

.field 'mDrawSelectorOnTop' Z

.field private 'mFlingProfilingStarted' Z

.field private 'mFlingRunnable' Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

.field private 'mIsChildViewEnabled' Z

.field final 'mIsScrap' [Z

.field private 'mLastScrollState' I

.field private 'mLastTouchMode' I

.field 'mLastY' I

.field 'mLayoutMode' I

.field protected 'mListPadding' Landroid/graphics/Rect;

.field private 'mMaximumVelocity' I

.field private 'mMinimumVelocity' I

.field 'mMotionCorrection' I

.field protected 'mMotionPosition' I

.field 'mMotionViewNewTop' I

.field 'mMotionViewOriginalTop' I

.field 'mMotionX' I

.field 'mMotionY' I

.field private 'mOnScrollListener' Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

.field private 'mPendingCheckForTap' Ljava/lang/Runnable;

.field private 'mPerformClick' Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

.field 'mPositionScroller' Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

.field final 'mRecycler' Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

.field 'mResurrectToPosition' I

.field private 'mScrollProfilingStarted' Z

.field 'mScrollingCacheEnabled' Z

.field 'mSelectedTop' I

.field 'mSelectionBottomPadding' I

.field 'mSelectionLeftPadding' I

.field 'mSelectionRightPadding' I

.field 'mSelectionTopPadding' I

.field 'mSelector' Landroid/graphics/drawable/Drawable;

.field 'mSelectorRect' Landroid/graphics/Rect;

.field private 'mSmoothScrollbarEnabled' Z

.field 'mStackFromBottom' Z

.field private 'mTouchFrame' Landroid/graphics/Rect;

.field protected 'mTouchMode' I

.field private 'mTouchSlop' I

.field private 'mTranscriptMode' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.field protected 'mWidthMeasureSpec' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDrawSelectorOnTop Z
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionLeftPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionTopPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionRightPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionBottomPadding I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mWidthMeasureSpec I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectedTop I
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mResurrectToPosition I
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mContextMenuInfo Landroid/view/ContextMenu$ContextMenuInfo;
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastTouchMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollProfilingStarted Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingProfilingStarted Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastScrollState I
aload 0
iconst_1
newarray boolean
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mIsScrap [Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/initAbsListView()V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setVerticalScrollBarEnabled(Z)V
aload 1
aload 1
ldc "View"
invokestatic com/huewu/pla/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes([I)Landroid/content/res/TypedArray;
astore 1
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/initializeScrollbars(Landroid/content/res/TypedArray;)V
aload 1
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
aload 1
ldc "absListViewStyle"
invokestatic com/huewu/pla/lib/ResourceUtil/getAttrId(Landroid/content/Context;Ljava/lang/String;)I
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDrawSelectorOnTop Z
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionLeftPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionTopPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionRightPadding I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionBottomPadding I
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mWidthMeasureSpec I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectedTop I
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mResurrectToPosition I
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mContextMenuInfo Landroid/view/ContextMenu$ContextMenuInfo;
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastTouchMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollProfilingStarted Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingProfilingStarted Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastScrollState I
aload 0
iconst_1
newarray boolean
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mIsScrap [Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/initAbsListView()V
aload 1
aload 2
aload 1
ldc "AbsListView"
invokestatic com/huewu/pla/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 2
aload 1
ldc "AbsListView_listSelector"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 4
aload 4
ifnull L0
aload 0
aload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setSelector(Landroid/graphics/drawable/Drawable;)V
L0:
aload 0
aload 2
aload 1
ldc "AbsListView_drawSelectorOnTop"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDrawSelectorOnTop Z
aload 0
aload 2
aload 1
ldc "AbsListView_stackFromBottom"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setStackFromBottom(Z)V
aload 0
aload 2
aload 1
ldc "AbsListView_scrollingCache"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setScrollingCacheEnabled(Z)V
aload 0
aload 2
aload 1
ldc "AbsListView_transcriptMode"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getInt(II)I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setTranscriptMode(I)V
aload 0
aload 2
aload 1
ldc "AbsListView_cacheColorHint"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_0
invokevirtual android/content/res/TypedArray/getColor(II)I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setCacheColorHint(I)V
aload 0
aload 2
aload 1
ldc "AbsListView_smoothScrollbar"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setSmoothScrollbarEnabled(Z)V
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
return
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$1(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getWindowAttachCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/clearScrollingCache()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
aload 0
aload 1
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeDetachedView(Landroid/view/View;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$4(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/dispatchFinishTemporaryDetach(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$5(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setChildrenDrawnWithCacheEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$6(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setChildrenDrawingCacheEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private clearScrollingCache()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mClearScrollingCache Ljava/lang/Runnable;
ifnonnull L0
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$2
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$2/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mClearScrollingCache Ljava/lang/Runnable;
L0:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mClearScrollingCache Ljava/lang/Runnable;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 4
.end method

.method private createScrollingCache()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollingCacheEnabled Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCachingStarted Z
ifne L0
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setChildrenDrawnWithCacheEnabled(Z)V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setChildrenDrawingCacheEnabled(Z)V
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mCachingStarted Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private dispatchFinishTemporaryDetach(Landroid/view/View;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual android/view/View/onFinishTemporaryDetach()V
aload 1
instanceof android/view/ViewGroup
ifeq L1
aload 1
checkcast android/view/ViewGroup
astore 1
aload 1
invokevirtual android/view/ViewGroup/getChildCount()I
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 0
aload 1
iload 2
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/dispatchFinishTemporaryDetach(Landroid/view/View;)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 4
.limit stack 3
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/shouldShowSelector()Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/isEmpty()Z
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
astore 2
aload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
invokevirtual android/graphics/drawable/Drawable/setBounds(Landroid/graphics/Rect;)V
aload 2
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
L0:
return
.limit locals 3
.limit stack 2
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
iload 2
lookupswitch
17 : L0
33 : L1
66 : L2
130 : L3
default : L4
L4:
new java/lang/IllegalArgumentException
dup
ldc "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
getfield android/graphics/Rect/right I
istore 4
aload 0
getfield android/graphics/Rect/top I
aload 0
invokevirtual android/graphics/Rect/height()I
iconst_2
idiv
iadd
istore 5
aload 1
getfield android/graphics/Rect/left I
istore 2
aload 1
getfield android/graphics/Rect/top I
aload 1
invokevirtual android/graphics/Rect/height()I
iconst_2
idiv
iadd
istore 3
L5:
iload 2
iload 4
isub
istore 2
iload 3
iload 5
isub
istore 3
iload 3
iload 3
imul
iload 2
iload 2
imul
iadd
ireturn
L3:
aload 0
getfield android/graphics/Rect/left I
aload 0
invokevirtual android/graphics/Rect/width()I
iconst_2
idiv
iadd
istore 4
aload 0
getfield android/graphics/Rect/bottom I
istore 5
aload 1
getfield android/graphics/Rect/left I
aload 1
invokevirtual android/graphics/Rect/width()I
iconst_2
idiv
iadd
istore 2
aload 1
getfield android/graphics/Rect/top I
istore 3
goto L5
L0:
aload 0
getfield android/graphics/Rect/left I
istore 4
aload 0
getfield android/graphics/Rect/top I
aload 0
invokevirtual android/graphics/Rect/height()I
iconst_2
idiv
iadd
istore 5
aload 1
getfield android/graphics/Rect/right I
istore 2
aload 1
getfield android/graphics/Rect/top I
aload 1
invokevirtual android/graphics/Rect/height()I
iconst_2
idiv
iadd
istore 3
goto L5
L1:
aload 0
getfield android/graphics/Rect/left I
aload 0
invokevirtual android/graphics/Rect/width()I
iconst_2
idiv
iadd
istore 4
aload 0
getfield android/graphics/Rect/top I
istore 5
aload 1
getfield android/graphics/Rect/left I
aload 1
invokevirtual android/graphics/Rect/width()I
iconst_2
idiv
iadd
istore 2
aload 1
getfield android/graphics/Rect/bottom I
istore 3
goto L5
.limit locals 6
.limit stack 3
.end method

.method private initAbsListView()V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setClickable(Z)V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setFocusableInTouchMode(Z)V
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setWillNotDraw(Z)V
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setAlwaysDrawnWithCacheEnabled(Z)V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setScrollingCacheEnabled(Z)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getContext()Landroid/content/Context;
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 1
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchSlop I
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMinimumFlingVelocity()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMinimumVelocity I
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMaximumVelocity I
return
.limit locals 2
.limit stack 2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ldc_w 65280
iand
bipush 8
ishr
istore 2
aload 1
iload 2
invokevirtual android/view/MotionEvent/getPointerId(I)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
if_icmpne L0
iload 2
ifne L1
iconst_1
istore 2
L2:
aload 0
aload 1
iload 2
invokevirtual android/view/MotionEvent/getX(I)F
f2i
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionX I
aload 0
aload 1
iload 2
invokevirtual android/view/MotionEvent/getY(I)F
f2i
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
aload 0
aload 1
iload 2
invokevirtual android/view/MotionEvent/getPointerId(I)I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
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

.method private positionSelector(IIII)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionLeftPadding I
isub
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionTopPadding I
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionRightPadding I
iload 3
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionBottomPadding I
iload 4
iadd
invokevirtual android/graphics/Rect/set(IIII)V
return
.limit locals 5
.limit stack 6
.end method

.method private startScrollIfNeeded(I)Z
iload 1
invokestatic java/lang/Math/abs(I)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchSlop I
if_icmple L0
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/createScrollingCache()V
aload 0
iconst_3
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionCorrection I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setPressed(Z)V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 2
aload 2
ifnull L1
aload 2
iconst_0
invokevirtual android/view/View/setPressed(Z)V
L1:
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/requestDisallowInterceptTouchEvent(Z)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method private useDefaultSelector()V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getResources()Landroid/content/res/Resources;
ldc_w 17301602
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setSelector(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 3
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
astore 5
aload 5
ifnonnull L0
L1:
return
L0:
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 5
iload 4
iload 2
iadd
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L3
aload 1
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L3:
aload 6
aload 1
invokevirtual android/view/View/addTouchables(Ljava/util/ArrayList;)V
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 7
.limit stack 3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
aload 1
instanceof com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected computeVerticalScrollExtent()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
iload 3
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
ifeq L1
iload 3
bipush 100
imul
istore 2
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildTop()I
istore 4
aload 6
invokevirtual android/view/View/getHeight()I
istore 5
iload 2
istore 1
iload 5
ifle L2
iload 2
iload 4
bipush 100
imul
iload 5
idiv
iadd
istore 1
L2:
aload 0
iload 3
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollChildBottom()I
istore 3
aload 6
invokevirtual android/view/View/getHeight()I
istore 4
iload 1
istore 2
iload 4
ifle L3
iload 1
iload 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
isub
bipush 100
imul
iload 4
idiv
isub
istore 2
L3:
iload 2
ireturn
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 7
.limit stack 3
.end method

.method protected computeVerticalScrollOffset()I
iconst_0
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 4
iload 2
istore 1
iload 3
iflt L0
iload 2
istore 1
iload 4
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
ifeq L1
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildTop()I
istore 4
aload 6
invokevirtual android/view/View/getHeight()I
istore 5
iload 2
istore 1
iload 5
ifle L0
iload 3
bipush 100
imul
iload 4
bipush 100
imul
iload 5
idiv
isub
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollY()I
i2f
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
i2f
fdiv
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
i2f
fmul
ldc_w 100.0F
fmul
f2i
iadd
iconst_0
invokestatic java/lang/Math/max(II)I
istore 1
L0:
iload 1
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
istore 2
iload 3
ifne L2
iconst_0
istore 1
L3:
iload 3
i2f
iload 4
i2f
iload 1
i2f
iload 2
i2f
fdiv
fmul
fadd
f2i
ireturn
L2:
iload 3
iload 4
iadd
iload 2
if_icmpne L4
iload 2
istore 1
goto L3
L4:
iload 3
iload 4
iconst_2
idiv
iadd
istore 1
goto L3
.limit locals 7
.limit stack 4
.end method

.method protected computeVerticalScrollRange()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
bipush 100
imul
iconst_0
invokestatic java/lang/Math/max(II)I
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
ireturn
.limit locals 1
.limit stack 2
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
new com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo
dup
aload 1
iload 2
lload 3
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo/<init>(Landroid/view/View;IJ)V
areturn
.limit locals 5
.limit stack 6
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDrawSelectorOnTop Z
istore 2
iload 2
ifne L0
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/drawSelector(Landroid/graphics/Canvas;)V
L0:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/dispatchDraw(Landroid/graphics/Canvas;)V
iload 2
ifeq L1
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/drawSelector(Landroid/graphics/Canvas;)V
L1:
return
.limit locals 3
.limit stack 2
.end method

.method protected dispatchSetPressed(Z)V
return
.limit locals 2
.limit stack 0
.end method

.method protected drawableStateChanged()V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/drawableStateChanged()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getDrawableState()[I
invokevirtual android/graphics/drawable/Drawable/setState([I)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
iload 3
ifne L0
iconst_m1
istore 1
L1:
iload 1
ireturn
L0:
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/findMotionRow(I)I
istore 2
iload 2
istore 1
iload 2
iconst_m1
if_icmpne L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 3
iadd
iconst_1
isub
ireturn
.limit locals 4
.limit stack 2
.end method

.method abstract findMotionRow(I)I
.end method

.method public volatile synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
new com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
dup
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
new com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
dup
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getContext()Landroid/content/Context;
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method protected getBottomFadingEdgeStrength()F
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/getBottomFadingEdgeStrength()F
fstore 1
iload 3
ifne L0
L1:
fload 1
freturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 3
iadd
iconst_1
isub
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
iconst_1
isub
if_icmpge L2
fconst_1
freturn
L2:
aload 0
iload 3
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
istore 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getVerticalFadingEdgeLength()I
i2f
fstore 2
iload 3
iload 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
isub
if_icmple L1
iload 3
iload 4
isub
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
iadd
i2f
fload 2
fdiv
freturn
.limit locals 5
.limit stack 3
.end method

.method public getCacheColorHint()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mContextMenuInfo Landroid/view/ContextMenu$ContextMenuInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getFillChildBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 1
iload 1
ifne L0
iconst_0
ireturn
L0:
aload 0
iload 1
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getFillChildTop()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifne L0
iconst_0
ireturn
L0:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected getFirstChildTop()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifne L0
iconst_0
ireturn
L0:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getSelectedView()Landroid/view/View;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
aload 0
if_acmpne L0
aload 2
aload 1
invokevirtual android/view/View/getFocusedRect(Landroid/graphics/Rect;)V
aload 0
aload 2
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
return
L0:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/getFocusedRect(Landroid/graphics/Rect;)V
return
.limit locals 3
.limit stack 3
.end method

.method getFooterViewsCount()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method getHeaderViewsCount()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getListPaddingBottom()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getListPaddingLeft()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getListPaddingRight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getListPaddingTop()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getScrollChildBottom()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 1
iload 1
ifne L0
iconst_0
ireturn
L0:
aload 0
iload 1
iconst_1
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getScrollChildTop()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifne L0
iconst_0
ireturn
L0:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getSelectedView()Landroid/view/View;
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSolidColor()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getTopFadingEdgeStrength()F
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/getTopFadingEdgeStrength()F
fstore 1
iload 3
ifne L0
L1:
fload 1
freturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
ifle L2
fconst_1
freturn
L2:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getVerticalFadingEdgeLength()I
i2f
fstore 2
iload 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
if_icmpge L1
iload 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
isub
ineg
i2f
fload 2
fdiv
freturn
.limit locals 4
.limit stack 2
.end method

.method public getTranscriptMode()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTranscriptMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected handleDataChanged()V
iconst_3
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
istore 4
iload 4
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mNeedSync Z
ifeq L1
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mNeedSync Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTranscriptMode I
iconst_2
if_icmpeq L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTranscriptMode I
iconst_1
if_icmpne L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOldItemCount I
if_icmplt L3
L2:
aload 0
iconst_3
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
L4:
return
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSyncMode I
tableswitch 1
L5
default : L1
L1:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isInTouchMode()Z
ifne L6
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getSelectedItemPosition()I
istore 2
iload 2
istore 1
iload 2
iload 4
if_icmplt L7
iload 4
iconst_1
isub
istore 1
L7:
iload 1
istore 2
iload 1
ifge L8
iconst_0
istore 2
L8:
aload 0
iload 2
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/lookForSelectablePosition(IZ)I
pop
aload 0
iload 2
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/lookForSelectablePosition(IZ)I
ifge L4
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mStackFromBottom Z
ifeq L9
iload 3
istore 1
L10:
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mNeedSync Z
return
L5:
aload 0
iconst_5
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
iconst_0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSyncPosition I
invokestatic java/lang/Math/max(II)I
iload 4
iconst_1
isub
invokestatic java/lang/Math/min(II)I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSyncPosition I
return
L6:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mResurrectToPosition I
iflt L0
return
L9:
iconst_1
istore 1
goto L10
.limit locals 5
.limit stack 4
.end method

.method public invalidateViews()V
ldc "data changed by invalidateViews()"
invokestatic com/huewu/pla/lib/DebugUtil/LogDebug(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/rememberSyncState()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/requestLayout()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method invokeOnItemScrollListener()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnScrollListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnScrollListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
invokeinterface com/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener/onScroll(Lcom/huewu/pla/lib/internal/PLA_AbsListView;III)V 4
L0:
return
.limit locals 1
.limit stack 5
.end method

.method public isScrollingCacheEnabled()Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollingCacheEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSmoothScrollbarEnabled()Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isStackFromBottom()Z
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mStackFromBottom Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected layoutChildren()V
return
.limit locals 1
.limit stack 0
.end method

.method protected modifyFlingInitialVelocity(I)I
iload 1
ireturn
.limit locals 2
.limit stack 1
.end method

.method obtainView(I[Z)Landroid/view/View;
aload 2
iconst_0
iconst_0
bastore
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/getScrapView(I)Landroid/view/View;
astore 4
aload 4
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 1
aload 4
aload 0
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 3
aload 3
aload 4
if_acmpeq L1
ldc "obtainView"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
aload 3
astore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
ifeq L2
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
aload 3
astore 2
L2:
aload 2
areturn
L1:
aload 2
iconst_0
iconst_1
bastore
aload 0
aload 3
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/dispatchFinishTemporaryDetach(Landroid/view/View;)V
aload 3
areturn
L0:
new java/lang/StringBuilder
dup
ldc "makeView:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 1
aconst_null
aload 0
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 3
aload 3
astore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
ifeq L2
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method protected onAttachedToWindow()V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onAttachedToWindow()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getViewTreeObserver()Landroid/view/ViewTreeObserver;
astore 1
aload 1
ifnull L0
aload 1
aload 0
invokevirtual android/view/ViewTreeObserver/addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected onCreateDrawableState(I)[I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mIsChildViewEnabled Z
ifeq L0
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onCreateDrawableState(I)[I
astore 4
L1:
aload 4
areturn
L0:
getstatic com/huewu/pla/lib/internal/PLA_AbsListView/ENABLED_STATE_SET [I
iconst_0
iaload
istore 3
aload 0
iload 1
iconst_1
iadd
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onCreateDrawableState(I)[I
astore 5
iconst_m1
istore 2
aload 5
arraylength
iconst_1
isub
istore 1
L2:
iload 1
ifge L3
iload 2
istore 1
L4:
aload 5
astore 4
iload 1
iflt L1
aload 5
iload 1
iconst_1
iadd
aload 5
iload 1
aload 5
arraylength
iload 1
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 5
areturn
L3:
aload 5
iload 1
iaload
iload 3
if_icmpne L5
goto L4
L5:
iload 1
iconst_1
isub
istore 1
goto L2
.limit locals 6
.limit stack 6
.end method

.method protected onDetachedFromWindow()V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onDetachedFromWindow()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/clear()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getViewTreeObserver()Landroid/view/ViewTreeObserver;
astore 1
aload 1
ifnull L0
aload 1
aload 0
invokevirtual android/view/ViewTreeObserver/removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onGlobalLayout()V
return
.limit locals 1
.limit stack 0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
tableswitch 0
L0
L1
L2
L3
L3
L3
L4
default : L3
L3:
iconst_0
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
istore 2
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 3
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 4
aload 0
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getPointerId(I)I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 0
iload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/findMotionRow(I)I
istore 5
iload 2
iconst_4
if_icmpeq L5
iload 5
iflt L5
aload 0
aload 0
iload 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionX I
aload 0
iload 4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
aload 0
iload 5
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/clearScrollingCache()V
L5:
aload 0
ldc_w -2147483648
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
iload 2
iconst_4
if_icmpne L3
iconst_1
ireturn
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
tableswitch 0
L6
default : L7
L7:
goto L3
L6:
aload 0
aload 1
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
invokevirtual android/view/MotionEvent/findPointerIndex(I)I
invokevirtual android/view/MotionEvent/getY(I)F
f2i
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
isub
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/startScrollIfNeeded(I)Z
ifeq L3
iconst_1
ireturn
L1:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
goto L3
L4:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
goto L3
.limit locals 6
.limit stack 4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onLayout(ZIIII)V
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mInLayout Z
iload 1
ifeq L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmplt L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/markChildrenDirty()V
L0:
ldc "onLayout"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/layoutChildren()V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mInLayout Z
return
L2:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/forceLayout()V
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 6
.limit stack 6
.end method

.method protected onLayoutSync(I)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onLayoutSyncFinished(I)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onMeasure(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
ifnonnull L0
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/useDefaultSelector()V
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
astore 3
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionLeftPadding I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingLeft()I
iadd
putfield android/graphics/Rect/left I
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionTopPadding I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
iadd
putfield android/graphics/Rect/top I
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionRightPadding I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingRight()I
iadd
putfield android/graphics/Rect/right I
aload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionBottomPadding I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
iadd
putfield android/graphics/Rect/bottom I
return
.limit locals 4
.limit stack 3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onRestoreInstanceState(Landroid/os/Parcelable;)V
ldc "data changed by onRestoreInstanceState()"
invokestatic com/huewu/pla/lib/DebugUtil/LogDebug(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSizeChanged(IIII)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifle L0
ldc "data changed by onSizeChanged()"
invokestatic com/huewu/pla/lib/DebugUtil/LogDebug(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/rememberSyncState()V
L0:
return
.limit locals 5
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isEnabled()Z
ifne L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isClickable()Z
ifne L1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isLongClickable()Z
ifne L1
iconst_0
ireturn
L1:
iconst_1
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L2
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
iload 2
sipush 255
iand
tableswitch 0
L3
L4
L5
L6
L7
L7
L8
default : L7
L7:
iconst_1
ireturn
L3:
aload 0
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getPointerId(I)I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 4
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 5
aload 0
iload 4
iload 5
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/pointToPosition(II)I
istore 3
iload 3
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
ifne L9
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
iconst_4
if_icmpeq L10
iload 3
iflt L10
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getAdapter()Landroid/widget/Adapter;
checkcast android/widget/ListAdapter
iload 3
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L10
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPendingCheckForTap Ljava/lang/Runnable;
ifnonnull L11
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mPendingCheckForTap Ljava/lang/Runnable;
L11:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPendingCheckForTap Ljava/lang/Runnable;
invokestatic android/view/ViewConfiguration/getTapTimeout()I
i2l
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/postDelayed(Ljava/lang/Runnable;J)Z
pop
iload 3
istore 2
L9:
iload 2
iflt L12
aload 0
aload 0
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
L12:
aload 0
iload 4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionX I
aload 0
iload 5
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
ldc_w -2147483648
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
goto L7
L10:
aload 1
invokevirtual android/view/MotionEvent/getEdgeFlags()I
ifeq L13
iload 3
ifge L13
iconst_0
ireturn
L13:
iload 3
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
iconst_4
if_icmpne L9
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/createScrollingCache()V
aload 0
iconst_3
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionCorrection I
aload 0
iload 5
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/findMotionRow(I)I
istore 2
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
goto L9
L5:
aload 1
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
invokevirtual android/view/MotionEvent/findPointerIndex(I)I
invokevirtual android/view/MotionEvent/getY(I)F
f2i
istore 4
iload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
isub
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
tableswitch 0
L14
L14
L14
L15
default : L16
L16:
goto L7
L14:
aload 0
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/startScrollIfNeeded(I)Z
pop
goto L7
L15:
iload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
if_icmpeq L7
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionCorrection I
isub
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
ldc_w -2147483648
if_icmpeq L17
iload 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
isub
istore 2
L18:
iconst_0
istore 6
iload 2
ifeq L19
aload 0
iload 3
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/trackMotionScroll(II)Z
istore 6
L19:
iload 6
ifeq L20
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifle L20
aload 0
iload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/findMotionRow(I)I
istore 2
iload 2
iflt L21
aload 0
aload 0
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
L21:
aload 0
iload 4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
L20:
aload 0
iload 4
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
goto L7
L17:
iload 3
istore 2
goto L18
L4:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
tableswitch 0
L22
L22
L22
L23
default : L24
L24:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setPressed(Z)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L25
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
L25:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
goto L7
L22:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
istore 2
aload 0
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L26
aload 1
invokevirtual android/view/View/hasFocusable()Z
ifne L26
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
ifeq L27
aload 1
iconst_0
invokevirtual android/view/View/setPressed(Z)V
L27:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPerformClick Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;
ifnonnull L28
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick
dup
aload 0
aconst_null
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mPerformClick Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;
L28:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPerformClick Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;
astore 7
aload 7
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/mChild Landroid/view/View;
aload 7
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/mClickMotionPosition I
aload 7
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PerformClick/rememberWindowAttachCount()V
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mResurrectToPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
ifeq L29
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
iconst_1
if_icmpne L30
L29:
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
ifne L31
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 2
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L31
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/layoutChildren()V
aload 1
iconst_1
invokevirtual android/view/View/setPressed(Z)V
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/positionSelector(Landroid/view/View;)V
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setPressed(Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
ifnull L32
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
invokevirtual android/graphics/drawable/Drawable/getCurrent()Landroid/graphics/drawable/Drawable;
astore 8
aload 8
ifnull L32
aload 8
instanceof android/graphics/drawable/TransitionDrawable
ifeq L32
aload 8
checkcast android/graphics/drawable/TransitionDrawable
invokevirtual android/graphics/drawable/TransitionDrawable/resetTransition()V
L32:
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$1
dup
aload 0
aload 1
aload 7
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$1/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;)V
invokestatic android/view/ViewConfiguration/getPressedStateDuration()I
i2l
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/postDelayed(Ljava/lang/Runnable;J)Z
pop
L33:
iconst_1
ireturn
L31:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
goto L33
L30:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
ifne L26
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 2
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ifeq L26
aload 0
aload 7
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/post(Ljava/lang/Runnable;)Z
pop
L26:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
goto L24
L23:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 2
iload 2
ifle L34
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildTop()I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildBottom()I
istore 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
ifne L35
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
if_icmplt L35
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 2
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
if_icmpge L35
iload 4
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
if_icmpgt L35
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
goto L24
L35:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
astore 1
aload 1
sipush 1000
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
invokevirtual android/view/VelocityTracker/getYVelocity(I)F
f2i
istore 2
iload 2
invokestatic java/lang/Math/abs(I)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMinimumVelocity I
if_icmple L36
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
ifnonnull L37
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
L37:
aload 0
iconst_2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
iload 2
ineg
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/start(I)V
goto L24
L36:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
goto L24
L34:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/reportScrollStateChange(I)V
goto L24
L6:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setPressed(Z)V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L38
aload 1
iconst_0
invokevirtual android/view/View/setPressed(Z)V
L38:
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/clearScrollingCache()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L39
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mVelocityTracker Landroid/view/VelocityTracker;
L39:
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mActivePointerId I
goto L7
L8:
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionX I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionY I
istore 2
aload 0
iload 3
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/pointToPosition(II)I
istore 3
iload 3
iflt L40
aload 0
aload 0
iload 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionPosition I
L40:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastY I
goto L7
.limit locals 9
.limit stack 6
.end method

.method public onTouchModeChanged(Z)V
iload 1
ifeq L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/layoutChildren()V
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public onWindowFocusChanged(Z)V
aload 0
iload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/onWindowFocusChanged(Z)V
ldc "onWindowFocusChanged"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isInTouchMode()Z
ifeq L0
iconst_0
istore 2
L1:
iload 1
ifne L2
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setChildrenDrawingCacheEnabled(Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
ifnull L3
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/access$0(Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollY()I
ifeq L3
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollX()I
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/scrollTo(II)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
L3:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastTouchMode I
return
L0:
iconst_1
istore 2
goto L1
L2:
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastTouchMode I
if_icmpeq L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastTouchMode I
iconst_m1
if_icmpeq L3
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLayoutMode I
ldc "onWindowFocusChanged"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/layoutChildren()V
goto L3
.limit locals 3
.limit stack 3
.end method

.method public pointToPosition(II)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchFrame Landroid/graphics/Rect;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
aload 0
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchFrame Landroid/graphics/Rect;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchFrame Landroid/graphics/Rect;
astore 4
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
iconst_1
isub
istore 3
L1:
iload 3
ifge L2
iconst_m1
ireturn
L2:
aload 0
iload 3
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 5
aload 5
invokevirtual android/view/View/getVisibility()I
ifne L3
aload 5
aload 4
invokevirtual android/view/View/getHitRect(Landroid/graphics/Rect;)V
aload 4
iload 1
iload 2
invokevirtual android/graphics/Rect/contains(II)Z
ifeq L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 3
iadd
ireturn
L3:
iload 3
iconst_1
isub
istore 3
goto L1
.limit locals 6
.limit stack 3
.end method

.method public pointToRowId(II)J
aload 0
iload 1
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/pointToPosition(II)I
istore 1
iload 1
iflt L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemId(I)J 1
lreturn
L0:
ldc2_w -9223372036854775808L
lreturn
.limit locals 3
.limit stack 3
.end method

.method positionSelector(Landroid/view/View;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
astore 3
aload 3
aload 1
invokevirtual android/view/View/getLeft()I
aload 1
invokevirtual android/view/View/getTop()I
aload 1
invokevirtual android/view/View/getRight()I
aload 1
invokevirtual android/view/View/getBottom()I
invokevirtual android/graphics/Rect/set(IIII)V
aload 0
aload 3
getfield android/graphics/Rect/left I
aload 3
getfield android/graphics/Rect/top I
aload 3
getfield android/graphics/Rect/right I
aload 3
getfield android/graphics/Rect/bottom I
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/positionSelector(IIII)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mIsChildViewEnabled Z
istore 2
aload 1
invokevirtual android/view/View/isEnabled()Z
iload 2
if_icmpeq L0
iload 2
ifeq L1
iconst_0
istore 2
L2:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mIsChildViewEnabled Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/refreshDrawableState()V
L0:
return
L1:
iconst_1
istore 2
goto L2
.limit locals 4
.limit stack 5
.end method

.method public reclaimViews(Ljava/util/List;)V
.signature "(Ljava/util/List<Landroid/view/View;>;)V"
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/access$0(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
astore 4
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/reclaimScrapViews(Ljava/util/List;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeAllViewsInLayout()V
return
L1:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 5
aload 5
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 6
aload 6
ifnull L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 6
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifeq L2
aload 1
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
ifnull L2
aload 4
aload 5
invokeinterface com/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener/onMovedToScrapHeap(Landroid/view/View;)V 1
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 7
.limit stack 2
.end method

.method reconcileSelectedPosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectedPosition I
istore 2
iload 2
istore 1
iload 2
ifge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mResurrectToPosition I
istore 1
L0:
iconst_0
iload 1
invokestatic java/lang/Math/max(II)I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method reportScrollStateChange(I)V
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastScrollState I
if_icmpeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnScrollListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnScrollListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
aload 0
iload 1
invokeinterface com/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener/onScrollStateChanged(Lcom/huewu/pla/lib/internal/PLA_AbsListView;I)V 2
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mLastScrollState I
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public requestLayout()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mBlockLayoutRequests Z
ifne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mInLayout Z
ifne L0
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/requestLayout()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method requestLayoutIfNecessary()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
ifle L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/resetList()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/requestLayout()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method resetList()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/removeAllViewsInLayout()V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDataChanged Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mNeedSync Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectedTop I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectorRect Landroid/graphics/Rect;
invokevirtual android/graphics/Rect/setEmpty()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
return
.limit locals 1
.limit stack 3
.end method

.method public setCacheColorHint(I)V
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
if_icmpeq L0
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mCacheColorHint I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmplt L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/setCacheColorHint(I)V
L0:
return
L2:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
iload 1
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 4
.limit stack 2
.end method

.method public setDrawSelectorOnTop(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mDrawSelectorOnTop Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnScrollListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnScrollListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invokeOnItemScrollListener()V
return
.limit locals 2
.limit stack 2
.end method

.method public setRecyclerListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 1
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/access$1(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setScrollingCacheEnabled(Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollingCacheEnabled Z
ifeq L0
iload 1
ifne L0
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView/clearScrollingCache()V
L0:
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mScrollingCacheEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSelector(I)V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getResources()Landroid/content/res/Resources;
iload 1
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/setSelector(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
aconst_null
invokevirtual android/graphics/drawable/Drawable/setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
L0:
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 2
aload 1
aload 2
invokevirtual android/graphics/drawable/Drawable/getPadding(Landroid/graphics/Rect;)Z
pop
aload 0
aload 2
getfield android/graphics/Rect/left I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionLeftPadding I
aload 0
aload 2
getfield android/graphics/Rect/top I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionTopPadding I
aload 0
aload 2
getfield android/graphics/Rect/right I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionRightPadding I
aload 0
aload 2
getfield android/graphics/Rect/bottom I
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelectionBottomPadding I
aload 1
aload 0
invokevirtual android/graphics/drawable/Drawable/setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
aload 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getDrawableState()[I
invokevirtual android/graphics/drawable/Drawable/setState([I)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public setSmoothScrollbarEnabled(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mSmoothScrollbarEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setStackFromBottom(Z)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mStackFromBottom Z
iload 1
if_icmpeq L0
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mStackFromBottom Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/requestLayoutIfNecessary()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTranscriptMode(I)V
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mTranscriptMode I
return
.limit locals 2
.limit stack 2
.end method

.method protected shouldShowSelector()Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/hasFocus()Z
ifeq L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/isInTouchMode()Z
ifeq L1
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/touchModeDrawsInPressedState()Z
ifne L1
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPositionForView(Landroid/view/View;)I
istore 2
iload 2
iflt L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 2
invokeinterface android/widget/ListAdapter/getItemId(I)J 1
lstore 3
iconst_0
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnItemLongClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mOnItemLongClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
aload 0
aload 1
iload 2
lload 3
invokeinterface com/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener/onItemLongClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)Z 5
istore 5
L1:
iload 5
istore 6
iload 5
ifne L2
aload 0
aload 0
aload 0
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
isub
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
iload 2
lload 3
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mContextMenuInfo Landroid/view/ContextMenu$ContextMenuInfo;
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/showContextMenuForChild(Landroid/view/View;)Z
istore 6
L2:
iload 6
ireturn
L0:
iconst_0
ireturn
.limit locals 7
.limit stack 6
.end method

.method public smoothScrollBy(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
ifnonnull L0
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
iload 1
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/startScroll(II)V
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFlingRunnable Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable/access$0(Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;)V
goto L1
.limit locals 3
.limit stack 4
.end method

.method public smoothScrollToPosition(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
ifnonnull L0
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/start(I)V
return
.limit locals 2
.limit stack 4
.end method

.method public smoothScrollToPosition(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
ifnonnull L0
aload 0
new com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller
dup
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/<init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mPositionScroller Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;
iload 1
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller/start(II)V
return
.limit locals 3
.limit stack 4
.end method

.method touchModeDrawsInPressedState()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mTouchMode I
tableswitch 1
L0
L0
default : L1
L1:
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method trackMotionScroll(II)Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 13
iload 13
ifne L0
iconst_1
ireturn
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollChildTop()I
istore 3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getScrollChildBottom()I
istore 6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mListPadding Landroid/graphics/Rect;
astore 19
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
aload 19
getfield android/graphics/Rect/bottom I
isub
istore 8
aload 19
getfield android/graphics/Rect/top I
istore 9
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildTop()I
istore 10
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFillChildBottom()I
istore 11
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingBottom()I
isub
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getPaddingTop()I
isub
istore 5
iload 1
ifge L1
iload 5
iconst_1
isub
ineg
iload 1
invokestatic java/lang/Math/max(II)I
istore 4
L2:
iload 2
ifge L3
iload 5
iconst_1
isub
ineg
iconst_2
idiv
iload 2
invokestatic java/lang/Math/max(II)I
istore 5
L4:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
istore 12
iload 12
ifne L5
iload 3
aload 19
getfield android/graphics/Rect/top I
if_icmplt L5
iload 4
iflt L5
iconst_1
ireturn
L1:
iload 5
iconst_1
isub
iload 1
invokestatic java/lang/Math/min(II)I
istore 4
goto L2
L3:
iload 5
iconst_1
isub
iconst_2
idiv
iload 2
invokestatic java/lang/Math/min(II)I
istore 5
goto L4
L5:
iload 12
iload 13
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
if_icmpne L6
iload 6
iload 8
if_icmpgt L6
iload 4
ifgt L6
iconst_1
ireturn
L6:
iload 5
ifge L7
iconst_1
istore 18
L8:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeaderViewsCount()I
istore 14
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mItemCount I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getFooterViewsCount()I
isub
istore 15
iconst_0
istore 6
iconst_0
istore 3
iconst_0
istore 2
iconst_0
istore 1
iload 18
ifeq L9
aload 19
getfield android/graphics/Rect/top I
istore 16
iconst_0
istore 2
L10:
iload 2
iload 13
if_icmplt L11
iload 3
istore 7
iload 1
istore 6
L12:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewOriginalTop I
iload 4
iadd
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mMotionViewNewTop I
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mBlockLayoutRequests Z
iload 6
ifle L13
aload 0
iload 7
iload 6
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/detachViewsFromParent(II)V
L13:
aload 0
iload 5
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/tryOffsetChildrenTopAndBottom(I)V
iload 18
ifeq L14
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
iload 6
iadd
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mFirstPosition I
L14:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invalidate()V
iload 5
invokestatic java/lang/Math/abs(I)I
istore 1
iload 9
iload 10
isub
iload 1
if_icmplt L15
iload 11
iload 8
isub
iload 1
if_icmpge L16
L15:
aload 0
iload 18
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/fillGap(Z)V
L16:
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AbsListView/mBlockLayoutRequests Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/invokeOnItemScrollListener()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/awakenScrollBars()Z
pop
iconst_0
ireturn
L7:
iconst_0
istore 18
goto L8
L11:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 19
iload 1
istore 6
iload 3
istore 7
aload 19
invokevirtual android/view/View/getBottom()I
iload 16
iload 5
isub
if_icmpge L12
iload 1
iconst_1
iadd
istore 1
iload 12
iload 2
iadd
istore 6
iload 6
iload 14
if_icmplt L17
iload 6
iload 15
if_icmpge L17
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 19
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L17:
iload 2
iconst_1
iadd
istore 2
goto L10
L9:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeight()I
istore 16
aload 19
getfield android/graphics/Rect/bottom I
istore 17
iload 13
iconst_1
isub
istore 1
iload 6
istore 3
L18:
iload 2
istore 6
iload 3
istore 7
iload 1
iflt L12
aload 0
iload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 19
iload 2
istore 6
iload 3
istore 7
aload 19
invokevirtual android/view/View/getTop()I
iload 16
iload 17
isub
iload 5
isub
if_icmple L12
iload 1
istore 3
iload 2
iconst_1
iadd
istore 2
iload 12
iload 1
iadd
istore 6
iload 6
iload 14
if_icmplt L19
iload 6
iload 15
if_icmpge L19
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mRecycler Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
aload 19
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/addScrapView(Landroid/view/View;)V
L19:
iload 1
iconst_1
isub
istore 1
goto L18
.limit locals 20
.limit stack 3
.end method

.method protected tryOffsetChildrenTopAndBottom(I)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildCount()I
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmplt L1
return
L1:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
iload 1
invokevirtual android/view/View/offsetTopAndBottom(I)V
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 4
.limit stack 2
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mSelector Landroid/graphics/drawable/Drawable;
aload 1
if_acmpeq L0
aload 0
aload 1
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
