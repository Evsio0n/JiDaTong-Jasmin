.bytecode 50.0
.class public synchronized com/common/android/ui/flowIndicator/ViewFlow
.super android/widget/AdapterView
.signature "Landroid/widget/AdapterView<Landroid/widget/Adapter;>;"
.inner class inner com/common/android/ui/flowIndicator/ViewFlow$1
.inner class AdapterDataSetObserver inner com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver outer com/common/android/ui/flowIndicator/ViewFlow
.inner class public static abstract interface ViewSwitchListener inner com/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener outer com/common/android/ui/flowIndicator/ViewFlow

.field private static final 'INVALID_SCREEN' I = -1


.field private static final 'SNAP_VELOCITY' I = 1000


.field private static final 'TAG' Ljava/lang/String; = "ViewFlow"

.field private static final 'TOUCH_STATE_REST' I = 0


.field private static final 'TOUCH_STATE_SCROLLING' I = 1


.field private 'mAdapter' Landroid/widget/Adapter;

.field private 'mCurrentAdapterIndex' I

.field private 'mCurrentBufferIndex' I

.field private 'mCurrentScreen' I

.field private 'mDataSetObserver' Lcom/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver;

.field private 'mFirstLayout' Z

.field private 'mHandler' Landroid/os/Handler;

.field private 'mIndicator' Lcom/common/android/ui/flowIndicator/FlowIndicator;

.field private 'mLastMotionX' F

.field private 'mLastScrollDirection' I

.field private 'mLoadedViews' Ljava/util/LinkedList; signature "Ljava/util/LinkedList<Landroid/view/View;>;"

.field private 'mMaximumVelocity' I

.field private 'mNextScreen' I

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'mSideBuffer' I

.field private 'mTouchSlop' I

.field private 'mTouchState' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.field private 'mViewSwitchListener' Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;

.field private 'orientationChangeListener' Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/AdapterView/<init>(Landroid/content/Context;)V
aload 0
iconst_2
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
aload 0
iconst_m1
putfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
aload 0
iconst_1
putfield com/common/android/ui/flowIndicator/ViewFlow/mFirstLayout Z
aload 0
new com/common/android/ui/flowIndicator/ViewFlow$1
dup
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow$1/<init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
putfield com/common/android/ui/flowIndicator/ViewFlow/orientationChangeListener Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
aload 0
iconst_3
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/init()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial android/widget/AdapterView/<init>(Landroid/content/Context;)V
aload 0
iconst_2
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
aload 0
iconst_m1
putfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
aload 0
iconst_1
putfield com/common/android/ui/flowIndicator/ViewFlow/mFirstLayout Z
aload 0
new com/common/android/ui/flowIndicator/ViewFlow$1
dup
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow$1/<init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
putfield com/common/android/ui/flowIndicator/ViewFlow/orientationChangeListener Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
aload 0
iload 2
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/init()V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/AdapterView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_2
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
aload 0
iconst_m1
putfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
aload 0
iconst_1
putfield com/common/android/ui/flowIndicator/ViewFlow/mFirstLayout Z
aload 0
new com/common/android/ui/flowIndicator/ViewFlow$1
dup
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow$1/<init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
putfield com/common/android/ui/flowIndicator/ViewFlow/orientationChangeListener Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
aload 0
aload 1
aload 2
getstatic com/nd/android/u/allcommon/R$styleable/ViewFlow [I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
getstatic com/nd/android/u/allcommon/R$styleable/ViewFlow_sidebuffer I
iconst_3
invokevirtual android/content/res/TypedArray/getInt(II)I
putfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/init()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/ui/flowIndicator/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/orientationChangeListener Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/common/android/ui/flowIndicator/ViewFlow;)I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/common/android/ui/flowIndicator/ViewFlow;I)I
aload 0
iload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/common/android/ui/flowIndicator/ViewFlow;)I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/common/android/ui/flowIndicator/ViewFlow;)Landroid/widget/Adapter;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/resetFocus()V
return
.limit locals 1
.limit stack 1
.end method

.method private init()V
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
new android/widget/Scroller
dup
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getContext()Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getContext()Landroid/content/Context;
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 1
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchSlop I
aload 0
aload 1
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
putfield com/common/android/ui/flowIndicator/ViewFlow/mMaximumVelocity I
return
.limit locals 2
.limit stack 4
.end method

.method private logBuffer()V
return
.limit locals 1
.limit stack 0
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
iload 1
aload 3
aload 0
invokeinterface android/widget/Adapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 5
aload 3
ifnull L0
iconst_1
istore 4
L1:
aload 0
aload 5
iload 2
iload 4
invokespecial com/common/android/ui/flowIndicator/ViewFlow/setupChild(Landroid/view/View;ZZ)Landroid/view/View;
areturn
L0:
iconst_0
istore 4
goto L1
.limit locals 6
.limit stack 4
.end method

.method private postViewSwitched(I)V
iload 1
ifne L0
return
L0:
iload 1
ifle L1
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
iconst_1
iadd
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_1
iadd
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
aconst_null
astore 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
if_icmple L2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/removeFirst()Ljava/lang/Object;
checkcast android/view/View
astore 2
aload 0
aload 2
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/detachViewFromParent(Landroid/view/View;)V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_1
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
L2:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
iadd
istore 1
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
if_icmpge L3
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
iload 1
iconst_1
aload 2
invokespecial com/common/android/ui/flowIndicator/ViewFlow/makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
invokevirtual java/util/LinkedList/addLast(Ljava/lang/Object;)V
L3:
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/requestLayout()V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_1
invokespecial com/common/android/ui/flowIndicator/ViewFlow/setVisibleView(IZ)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
ifnull L4
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/size()I
if_icmpge L4
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
invokeinterface com/common/android/ui/flowIndicator/FlowIndicator/onSwitched(Landroid/view/View;I)V 2
L4:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
ifnull L5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iflt L5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/size()I
if_icmpge L5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
invokeinterface com/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener/onSwitched(Landroid/view/View;I)V 2
L5:
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/logBuffer()V
return
L1:
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
iconst_1
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_1
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
aconst_null
astore 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
iconst_1
isub
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
isub
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
if_icmple L6
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/removeLast()Ljava/lang/Object;
checkcast android/view/View
astore 2
aload 0
aload 2
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/detachViewFromParent(Landroid/view/View;)V
L6:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
isub
istore 1
iload 1
iconst_m1
if_icmple L3
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
iload 1
iconst_0
aload 2
invokespecial com/common/android/ui/flowIndicator/ViewFlow/makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
invokevirtual java/util/LinkedList/addFirst(Ljava/lang/Object;)V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_1
iadd
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
goto L3
.limit locals 3
.limit stack 5
.end method

.method private resetFocus()V
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/logBuffer()V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/clear()V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/removeAllViewsInLayout()V
iconst_0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
isub
invokestatic java/lang/Math/max(II)I
istore 1
L0:
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
iadd
iconst_1
iadd
invokestatic java/lang/Math/min(II)I
if_icmpge L1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
iload 1
iconst_1
aconst_null
invokespecial com/common/android/ui/flowIndicator/ViewFlow/makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
invokevirtual java/util/LinkedList/addLast(Ljava/lang/Object;)V
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
if_icmpne L2
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/size()I
iconst_1
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/logBuffer()V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/requestLayout()V
return
.limit locals 2
.limit stack 5
.end method

.method private setVisibleView(IZ)V
aload 0
iconst_0
iload 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
istore 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
istore 3
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 4
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
iload 1
iload 3
imul
iload 4
isub
iconst_0
iconst_0
invokevirtual android/widget/Scroller/startScroll(IIIII)V
iload 2
ifeq L0
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/invalidate()V
return
L0:
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/postInvalidate()V
return
.limit locals 5
.limit stack 6
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
iconst_m1
istore 4
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 6
aload 6
astore 5
aload 6
ifnonnull L0
new android/widget/AbsListView$LayoutParams
dup
bipush -2
bipush -2
iconst_0
invokespecial android/widget/AbsListView$LayoutParams/<init>(III)V
astore 5
L0:
iload 3
ifeq L1
iload 2
ifeq L2
L3:
aload 0
aload 1
iload 4
aload 5
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
aload 1
areturn
L2:
iconst_0
istore 4
goto L3
L1:
iload 2
ifeq L4
L5:
aload 0
aload 1
iload 4
aload 5
iconst_1
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
pop
aload 1
areturn
L4:
iconst_0
istore 4
goto L5
.limit locals 7
.limit stack 5
.end method

.method private snapToDestination()V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
istore 1
aload 0
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getScrollX()I
iload 1
iconst_2
idiv
iadd
iload 1
idiv
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/snapToScreen(I)V
return
.limit locals 2
.limit stack 4
.end method

.method public computeScroll()V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollTo(II)V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/postInvalidate()V
L1:
return
L0:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
iconst_m1
if_icmpeq L1
aload 0
iconst_0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
aload 0
iconst_m1
putfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLastScrollDirection I
invokespecial com/common/android/ui/flowIndicator/ViewFlow/postViewSwitched(I)V
return
.limit locals 1
.limit stack 5
.end method

.method public getAdapter()Landroid/widget/Adapter;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentAdapterIndex()I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHandler()Landroid/os/Handler;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedView()Landroid/view/View;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/size()I
if_icmpge L0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public getViewsCount()I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getViewTreeObserver()Landroid/view/ViewTreeObserver;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/orientationChangeListener Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
iconst_1
istore 3
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
ifne L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L2
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
L2:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 4
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
iload 4
tableswitch 0
L3
L4
L5
L6
default : L7
L7:
iconst_0
ireturn
L3:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L8
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
L8:
aload 0
fload 2
putfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifeq L9
iconst_0
istore 3
L9:
aload 0
iload 3
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_0
ireturn
L5:
fload 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
fsub
invokestatic java/lang/Math/abs(F)F
f2i
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchSlop I
if_icmple L10
iconst_1
istore 3
L11:
iload 3
ifeq L12
aload 0
iconst_1
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
L12:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
if_icmpne L1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
fload 2
fsub
f2i
istore 3
aload 0
fload 2
putfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getScrollX()I
istore 4
iload 3
ifge L13
iload 4
ifle L14
aload 0
iload 4
ineg
iload 3
invokestatic java/lang/Math/max(II)I
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollBy(II)V
L14:
iconst_1
ireturn
L10:
iconst_0
istore 3
goto L11
L13:
iload 3
ifle L14
aload 0
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getRight()I
iload 4
isub
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
isub
istore 4
iload 4
ifle L14
aload 0
iload 4
iload 3
invokestatic java/lang/Math/min(II)I
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollBy(II)V
goto L14
L4:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
if_icmpne L15
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
astore 1
aload 1
sipush 1000
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 1
invokevirtual android/view/VelocityTracker/getXVelocity()F
f2i
istore 3
iload 3
sipush 1000
if_icmple L16
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
ifle L16
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
iconst_1
isub
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/snapToScreen(I)V
L17:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L15
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
L15:
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_0
ireturn
L16:
iload 3
sipush -1000
if_icmpge L18
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
if_icmpge L18
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
iconst_1
iadd
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/snapToScreen(I)V
goto L17
L18:
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/snapToDestination()V
goto L17
L6:
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method protected onLayout(ZIIII)V
iconst_0
istore 3
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
istore 5
iconst_0
istore 2
L0:
iload 2
iload 5
if_icmpge L1
aload 0
iload 2
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildAt(I)Landroid/view/View;
astore 6
iload 3
istore 4
aload 6
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L2
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
istore 4
aload 6
iload 3
iconst_0
iload 3
iload 4
iadd
aload 6
invokevirtual android/view/View/getMeasuredHeight()I
invokevirtual android/view/View/layout(IIII)V
iload 3
iload 4
iadd
istore 4
L2:
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L0
L1:
return
.limit locals 7
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokespecial android/widget/AdapterView/onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
ldc_w 1073741824
if_icmpeq L0
L0:
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
ldc_w 1073741824
if_icmpeq L1
new java/lang/IllegalStateException
dup
ldc "ViewFlow can only be used in EXACTLY mode."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
istore 5
iconst_0
istore 3
L2:
iload 3
iload 5
if_icmpge L3
aload 0
iload 3
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildAt(I)Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mFirstLayout Z
ifeq L4
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
iload 4
imul
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollTo(II)V
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mFirstLayout Z
L4:
return
.limit locals 6
.limit stack 3
.end method

.method protected onScrollChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial android/widget/AdapterView/onScrollChanged(IIII)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
istore 5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
istore 6
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
istore 7
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
iload 1
iload 5
iload 6
isub
iload 7
imul
iadd
iload 2
iload 3
iload 4
invokeinterface com/common/android/ui/flowIndicator/FlowIndicator/onScrolled(IIII)V 4
L0:
return
.limit locals 8
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
iconst_1
istore 6
iconst_0
istore 3
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
ifne L0
iconst_0
istore 5
L1:
iload 5
ireturn
L0:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L2
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
L2:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 4
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
iload 4
tableswitch 0
L3
L4
L5
L6
default : L7
L7:
iconst_1
ireturn
L3:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L8
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
L8:
aload 0
fload 2
putfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifeq L9
L10:
aload 0
iload 3
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
ireturn
L9:
iconst_1
istore 3
goto L10
L5:
fload 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
fsub
invokestatic java/lang/Math/abs(F)F
f2i
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchSlop I
if_icmple L11
iconst_1
istore 3
L12:
iload 3
ifeq L13
aload 0
iconst_1
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
L13:
iload 6
istore 5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
if_icmpne L1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
fload 2
fsub
f2i
istore 3
aload 0
fload 2
putfield com/common/android/ui/flowIndicator/ViewFlow/mLastMotionX F
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getScrollX()I
istore 4
iload 3
ifge L14
iload 6
istore 5
iload 4
ifle L1
aload 0
iload 4
ineg
iload 3
invokestatic java/lang/Math/max(II)I
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollBy(II)V
iconst_1
ireturn
L11:
iconst_0
istore 3
goto L12
L14:
iload 6
istore 5
iload 3
ifle L1
aload 0
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getRight()I
iload 4
isub
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
isub
istore 4
iload 6
istore 5
iload 4
ifle L1
aload 0
iload 4
iload 3
invokestatic java/lang/Math/min(II)I
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/scrollBy(II)V
iconst_1
ireturn
L4:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
if_icmpne L15
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
astore 1
aload 1
sipush 1000
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 1
invokevirtual android/view/VelocityTracker/getXVelocity()F
f2i
istore 3
iload 3
sipush 1000
if_icmple L16
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
ifle L16
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
iconst_1
isub
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/snapToScreen(I)V
L17:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L15
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/common/android/ui/flowIndicator/ViewFlow/mVelocityTracker Landroid/view/VelocityTracker;
L15:
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
ireturn
L16:
iload 3
sipush -1000
if_icmpge L18
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
if_icmpge L18
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
iconst_1
iadd
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/snapToScreen(I)V
goto L17
L18:
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/snapToDestination()V
goto L17
L6:
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mTouchState I
iconst_1
ireturn
.limit locals 7
.limit stack 3
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mDataSetObserver Lcom/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver;
invokeinterface android/widget/Adapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
ifnull L1
aload 0
new com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver
dup
aload 0
invokespecial com/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver/<init>(Lcom/common/android/ui/flowIndicator/ViewFlow;)V
putfield com/common/android/ui/flowIndicator/ViewFlow/mDataSetObserver Lcom/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mDataSetObserver Lcom/common/android/ui/flowIndicator/ViewFlow$AdapterDataSetObserver;
invokeinterface android/widget/Adapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
L1:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
ifnull L2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
ifne L3
L2:
return
L3:
iconst_0
istore 2
L4:
iload 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
iconst_1
iadd
invokestatic java/lang/Math/min(II)I
if_icmpge L5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
iload 2
iconst_1
aconst_null
invokespecial com/common/android/ui/flowIndicator/ViewFlow/makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
invokevirtual java/util/LinkedList/addLast(Ljava/lang/Object;)V
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 0
iconst_0
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/requestLayout()V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/setVisibleView(IZ)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
ifnull L2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
iconst_0
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
iconst_0
invokeinterface com/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener/onSwitched(Landroid/view/View;I)V 2
return
.limit locals 3
.limit stack 5
.end method

.method public setFlowIndicator(Lcom/common/android/ui/flowIndicator/FlowIndicator;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
aload 0
invokeinterface com/common/android/ui/flowIndicator/FlowIndicator/setViewFlow(Lcom/common/android/ui/flowIndicator/ViewFlow;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnViewSwitchListener(Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;)V
aload 0
aload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(I)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
ifnull L0
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
if_icmplt L1
L0:
return
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L2:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/isEmpty()Z
ifne L3
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/remove()Ljava/lang/Object;
checkcast android/view/View
astore 3
aload 4
aload 3
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 3
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/detachViewFromParent(Landroid/view/View;)V
goto L2
L3:
iconst_0
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
isub
invokestatic java/lang/Math/max(II)I
istore 2
L4:
iload 2
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mAdapter Landroid/widget/Adapter;
invokeinterface android/widget/Adapter/getCount()I 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mSideBuffer I
iload 1
iadd
iconst_1
iadd
invokestatic java/lang/Math/min(II)I
if_icmpge L5
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
astore 5
aload 4
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L6
aconst_null
astore 3
L7:
aload 5
aload 0
iload 2
iconst_1
aload 3
invokespecial com/common/android/ui/flowIndicator/ViewFlow/makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
invokevirtual java/util/LinkedList/addLast(Ljava/lang/Object;)V
iload 2
iload 1
if_icmpne L8
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
invokevirtual java/util/LinkedList/size()I
iconst_1
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
L8:
iload 2
iconst_1
iadd
istore 2
goto L4
L6:
aload 4
iconst_0
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
checkcast android/view/View
astore 3
goto L7
L5:
aload 0
iload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
aload 4
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
iconst_0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/removeDetachedView(Landroid/view/View;Z)V
goto L9
L10:
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/requestLayout()V
aload 0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
iconst_0
invokespecial com/common/android/ui/flowIndicator/ViewFlow/setVisibleView(IZ)V
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
ifnull L0
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
ifnull L11
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mIndicator Lcom/common/android/ui/flowIndicator/FlowIndicator;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
invokeinterface com/common/android/ui/flowIndicator/FlowIndicator/onSwitched(Landroid/view/View;I)V 2
L11:
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mViewSwitchListener Lcom/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mLoadedViews Ljava/util/LinkedList;
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentBufferIndex I
invokevirtual java/util/LinkedList/get(I)Ljava/lang/Object;
checkcast android/view/View
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentAdapterIndex I
invokeinterface com/common/android/ui/flowIndicator/ViewFlow$ViewSwitchListener/onSwitched(Landroid/view/View;I)V 2
return
.limit locals 6
.limit stack 5
.end method

.method public snapToScreen(I)V
aload 0
iload 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mCurrentScreen I
isub
putfield com/common/android/ui/flowIndicator/ViewFlow/mLastScrollDirection I
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L0
return
L0:
iconst_0
iload 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getChildCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
istore 1
aload 0
iload 1
putfield com/common/android/ui/flowIndicator/ViewFlow/mNextScreen I
iload 1
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getWidth()I
imul
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getScrollX()I
isub
istore 1
aload 0
getfield com/common/android/ui/flowIndicator/ViewFlow/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/getScrollX()I
iconst_0
iload 1
iconst_0
iload 1
invokestatic java/lang/Math/abs(I)I
iconst_2
imul
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/common/android/ui/flowIndicator/ViewFlow/invalidate()V
return
.limit locals 2
.limit stack 7
.end method
