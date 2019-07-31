.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/view/HorizontalListView
.super android/widget/AdapterView
.signature "Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
.inner class inner com/nd/android/u/tast/birthday/view/HorizontalListView$1
.inner class inner com/nd/android/u/tast/birthday/view/HorizontalListView$2
.inner class inner com/nd/android/u/tast/birthday/view/HorizontalListView$3

.field private 'btn_giftscroll_left' Landroid/widget/Button;

.field private 'btn_giftscroll_right' Landroid/widget/Button;

.field private 'mAdapter' Landroid/widget/ListAdapter;

.field private 'mAlwaysOverrideTouch' Z

.field private 'mCurrentX' I

.field private 'mDataChanged' Z

.field private 'mDataObserver' Landroid/database/DataSetObserver;

.field private 'mDisplayOffset' I

.field private 'mGesture' Landroid/view/GestureDetector;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mLeftViewIndex' I

.field private 'mMaxX' I

.field private 'mNextX' I

.field private 'mOnGesture' Landroid/view/GestureDetector$OnGestureListener;

.field private 'mOnItemClicked' Landroid/widget/AdapterView$OnItemClickListener;

.field private 'mOnItemSelected' Landroid/widget/AdapterView$OnItemSelectedListener;

.field private 'mRemovedViewQueue' Ljava/util/Queue; signature "Ljava/util/Queue<Landroid/view/View;>;"

.field private 'mRightViewIndex' I

.field private 'mScroller' Landroid/widget/Scroller;

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/AdapterView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAlwaysOverrideTouch Z
aload 0
iconst_m1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
ldc_w 2147483647
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRemovedViewQueue Ljava/util/Queue;
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataChanged Z
aload 0
new com/nd/android/u/tast/birthday/view/HorizontalListView$1
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView$1/<init>(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)V
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataObserver Landroid/database/DataSetObserver;
aload 0
new com/nd/android/u/tast/birthday/view/HorizontalListView$3
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView$3/<init>(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)V
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnGesture Landroid/view/GestureDetector$OnGestureListener;
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$002(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;Z)Z
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataChanged Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)V
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/reset()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;I)I
aload 0
iload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnItemClicked Landroid/widget/AdapterView$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnItemSelected Landroid/widget/AdapterView$OnItemSelectedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 3
L0:
aload 0
aload 1
iload 2
aload 3
iconst_1
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
pop
aload 1
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getWidth()I
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getHeight()I
ldc_w -2147483648
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/view/View/measure(II)V
return
.limit locals 5
.limit stack 5
.end method

.method private fillList(I)V
iconst_0
istore 2
aload 0
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/view/View/getRight()I
istore 2
L0:
aload 0
iload 2
iload 1
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/fillListRight(II)V
iconst_0
istore 2
aload 0
iconst_0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L1
aload 3
invokevirtual android/view/View/getLeft()I
istore 2
L1:
aload 0
iload 2
iload 1
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/fillListLeft(II)V
return
.limit locals 4
.limit stack 3
.end method

.method private fillListLeft(II)V
L0:
iload 1
iload 2
iadd
ifle L1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
iflt L1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRemovedViewQueue Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast android/view/View
aload 0
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 3
aload 0
aload 3
iconst_0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/addAndMeasureChild(Landroid/view/View;I)V
iload 1
aload 3
invokevirtual android/view/View/getMeasuredWidth()I
isub
istore 1
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
iconst_1
isub
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 3
invokevirtual android/view/View/getMeasuredWidth()I
isub
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method private fillListRight(II)V
L0:
iload 1
iload 2
iadd
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getWidth()I
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRemovedViewQueue Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast android/view/View
aload 0
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 3
aload 0
aload 3
iconst_m1
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/addAndMeasureChild(Landroid/view/View;I)V
iload 1
aload 3
invokevirtual android/view/View/getMeasuredWidth()I
iadd
istore 1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
iconst_1
isub
if_icmpne L2
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
iload 1
iadd
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getWidth()I
isub
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
ifge L3
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
L3:
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
iconst_1
iadd
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method private initView()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
iconst_m1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
aload 0
ldc_w 2147483647
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
aload 0
new android/widget/Scroller
dup
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getContext()Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
aload 0
new android/view/GestureDetector
dup
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getContext()Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnGesture Landroid/view/GestureDetector$OnGestureListener;
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mGesture Landroid/view/GestureDetector;
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 5
.end method

.method private positionItems(I)V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildCount()I
ifle L0
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
iload 1
iadd
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
istore 2
iconst_0
istore 1
L1:
iload 1
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildCount()I
if_icmpge L0
aload 0
iload 1
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getMeasuredWidth()I
istore 3
aload 4
iload 2
iconst_0
iload 2
iload 3
iadd
aload 4
invokevirtual android/view/View/getMeasuredHeight()I
invokevirtual android/view/View/layout(IIII)V
iload 2
iload 3
iadd
istore 2
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 5
.limit stack 5
.end method

.method private removeNonVisibleItems(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 2
L0:
aload 2
ifnull L1
aload 2
invokevirtual android/view/View/getRight()I
iload 1
iadd
ifgt L1
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 2
invokevirtual android/view/View/getMeasuredWidth()I
iadd
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDisplayOffset I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRemovedViewQueue Ljava/util/Queue;
aload 2
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
aload 0
aload 2
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/removeViewInLayout(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
iconst_1
iadd
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mLeftViewIndex I
aload 0
iconst_0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 2
goto L0
L1:
aload 0
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 2
L2:
aload 2
ifnull L3
aload 2
invokevirtual android/view/View/getLeft()I
iload 1
iadd
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getWidth()I
if_icmplt L3
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRemovedViewQueue Ljava/util/Queue;
aload 2
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
aload 0
aload 2
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/removeViewInLayout(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
iconst_1
isub
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mRightViewIndex I
aload 0
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getChildAt(I)Landroid/view/View;
astore 2
goto L2
L3:
return
.limit locals 3
.limit stack 3
.end method

.method private reset()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/initView()V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/removeAllViewsInLayout()V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/requestLayout()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mGesture Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getAdapter()Landroid/widget/Adapter;
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/getAdapter()Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentX()I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxX()I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedView()Landroid/view/View;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public initHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
iconst_0
fload 3
fneg
f2i
iconst_0
iconst_0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
iconst_0
iconst_0
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
aload 0
monitorexit
L1:
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/requestLayout()V
iconst_1
ireturn
L2:
astore 1
L3:
aload 0
monitorexit
L4:
aload 1
athrow
.limit locals 5
.limit stack 9
.end method

.method public onLayout(ZIIII)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
aload 0
monitorenter
L0:
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial android/widget/AdapterView/onLayout(ZIIII)V
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
astore 6
L1:
aload 6
ifnonnull L3
L13:
aload 0
monitorexit
return
L3:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataChanged Z
ifeq L4
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
istore 2
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/initView()V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/removeAllViewsInLayout()V
aload 0
iload 2
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataChanged Z
L4:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L5
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
L5:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
ifgt L9
aload 0
iconst_0
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
ifnull L6
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
bipush 10
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L6:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
if_icmplt L11
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mMaxX I
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
ifnull L7
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
bipush 20
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L7:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
isub
istore 2
aload 0
iload 2
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/removeNonVisibleItems(I)V
aload 0
iload 2
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/fillList(I)V
aload 0
iload 2
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/positionItems(I)V
aload 0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mCurrentX I
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L13
aload 0
new com/nd/android/u/tast/birthday/view/HorizontalListView$2
dup
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView$2/<init>(Lcom/nd/android/u/tast/birthday/view/HorizontalListView;)V
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/post(Ljava/lang/Runnable;)Z
pop
L8:
goto L13
L2:
astore 6
aload 0
monitorexit
aload 6
athrow
L9:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
ifnull L6
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
bipush 11
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L10:
goto L6
L11:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
ifnull L7
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mHandler Landroid/os/Handler;
bipush 21
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L12:
goto L7
.limit locals 7
.limit stack 6
.end method

.method public scrollTo(I)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mScroller Landroid/widget/Scroller;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
iconst_0
iload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mNextX I
isub
iconst_0
invokevirtual android/widget/Scroller/startScroll(IIII)V
aload 0
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/requestLayout()V
L1:
aload 0
monitorexit
return
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 5
.end method

.method public volatile synthetic setAdapter(Landroid/widget/Adapter;)V
aload 0
aload 1
checkcast android/widget/ListAdapter
invokevirtual com/nd/android/u/tast/birthday/view/HorizontalListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataObserver Landroid/database/DataSetObserver;
invokeinterface android/widget/ListAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mAdapter Landroid/widget/ListAdapter;
aload 0
getfield com/nd/android/u/tast/birthday/view/HorizontalListView/mDataObserver Landroid/database/DataSetObserver;
invokeinterface android/widget/ListAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
aload 0
invokespecial com/nd/android/u/tast/birthday/view/HorizontalListView/reset()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnItemClicked Landroid/widget/AdapterView$OnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/HorizontalListView/mOnItemSelected Landroid/widget/AdapterView$OnItemSelectedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelection(I)V
return
.limit locals 2
.limit stack 0
.end method
