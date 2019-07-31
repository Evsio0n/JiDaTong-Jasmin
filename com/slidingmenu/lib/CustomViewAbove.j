.bytecode 50.0
.class public synchronized com/slidingmenu/lib/CustomViewAbove
.super android/view/ViewGroup
.inner class inner com/slidingmenu/lib/CustomViewAbove$1
.inner class inner com/slidingmenu/lib/CustomViewAbove$2
.inner class public static abstract interface OnPageChangeListener inner com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener outer com/slidingmenu/lib/CustomViewAbove
.inner class public static SimpleOnPageChangeListener inner com/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener outer com/slidingmenu/lib/CustomViewAbove

.field private static final 'DEBUG' Z = 0


.field private static final 'INVALID_POINTER' I = -1


.field private static final 'MAX_SETTLE_DURATION' I = 600


.field private static final 'MIN_DISTANCE_FOR_FLING' I = 25


.field private static final 'TAG' Ljava/lang/String; = "CustomViewAbove"

.field private static final 'USE_CACHE' Z = 0


.field private static final 'sInterpolator' Landroid/view/animation/Interpolator;

.field protected 'mActivePointerId' I

.field private 'mClosedListener' Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;

.field private 'mContent' Landroid/view/View;

.field private 'mCurItem' I

.field private 'mEnabled' Z

.field private 'mFlingDistance' I

.field private 'mIgnoredViews' Ljava/util/List; signature "Ljava/util/List<Landroid/view/View;>;"

.field private 'mInitialMotionX' F

.field private 'mInternalPageChangeListener' Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private 'mIsBeingDragged' Z

.field private 'mIsUnableToDrag' Z

.field private 'mLastMotionX' F

.field private 'mLastMotionY' F

.field protected 'mMaximumVelocity' I

.field private 'mMinimumVelocity' I

.field private 'mOnPageChangeListener' Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;

.field private 'mOpenedListener' Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;

.field private 'mQuickReturn' Z

.field private 'mScrollX' F

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'mScrolling' Z

.field private 'mScrollingCacheEnabled' Z

.field protected 'mTouchMode' I

.field private 'mTouchSlop' I

.field protected 'mVelocityTracker' Landroid/view/VelocityTracker;

.field private 'mViewBehind' Lcom/slidingmenu/lib/CustomViewBehind;

.method static <clinit>()V
new com/slidingmenu/lib/CustomViewAbove$1
dup
invokespecial com/slidingmenu/lib/CustomViewAbove$1/<init>()V
putstatic com/slidingmenu/lib/CustomViewAbove/sInterpolator Landroid/view/animation/Interpolator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/slidingmenu/lib/CustomViewAbove/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mTouchMode I
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
aload 0
fconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/initCustomViewAbove()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
areturn
.limit locals 1
.limit stack 1
.end method

.method private completeScroll()V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrolling Z
ifeq L0
aload 0
iconst_0
invokespecial com/slidingmenu/lib/CustomViewAbove/setScrollingCacheEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollX()I
istore 1
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollY()I
istore 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/scrollTo(II)V
L2:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOpenedListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOpenedListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnOpenedListener/onOpened()V 0
L0:
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mScrolling Z
return
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mClosedListener Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mClosedListener Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnClosedListener/onClosed()V 0
goto L0
.limit locals 5
.limit stack 3
.end method

.method private determineDrag(Landroid/view/MotionEvent;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
istore 7
aload 0
aload 1
iload 7
invokespecial com/slidingmenu/lib/CustomViewAbove/getPointerIndex(Landroid/view/MotionEvent;I)I
istore 8
iload 7
iconst_m1
if_icmpne L0
L1:
return
L0:
aload 1
iload 8
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
fload 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
fsub
fstore 3
fload 3
invokestatic java/lang/Math/abs(F)F
fstore 4
aload 1
iload 8
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
fstore 5
fload 5
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mLastMotionY F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 6
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mTouchSlop I
iconst_2
idiv
istore 7
L3:
fload 4
iload 7
i2f
fcmpl
ifle L4
fload 4
fload 6
fcmpl
ifle L4
aload 0
fload 3
invokespecial com/slidingmenu/lib/CustomViewAbove/thisSlideAllowed(F)Z
ifeq L4
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/startDrag()V
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
fload 5
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionY F
aload 0
iconst_1
invokespecial com/slidingmenu/lib/CustomViewAbove/setScrollingCacheEnabled(Z)V
return
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mTouchSlop I
istore 7
goto L3
L4:
fload 4
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mTouchSlop I
i2f
fcmpl
ifle L1
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
return
.limit locals 9
.limit stack 3
.end method

.method private determineTargetPage(FII)I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
istore 5
iload 3
invokestatic java/lang/Math/abs(I)I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mFlingDistance I
if_icmple L0
iload 2
invokestatic java/lang/Math/abs(I)I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mMinimumVelocity I
if_icmple L0
iload 2
ifle L1
iload 3
ifle L1
iload 5
iconst_1
isub
istore 4
L2:
iload 4
ireturn
L1:
iload 5
istore 4
iload 2
ifge L2
iload 5
istore 4
iload 3
ifge L2
iload 5
iconst_1
iadd
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
i2f
fload 1
fadd
invokestatic java/lang/Math/round(F)I
ireturn
.limit locals 6
.limit stack 2
.end method

.method private endDrag()V
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
aload 0
iconst_m1
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getLeftBound()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getAbsLeftBound(Landroid/view/View;)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
istore 2
iload 2
iconst_m1
if_icmpne L0
aload 0
iconst_m1
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
L0:
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method private getRightBound()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getAbsRightBound(Landroid/view/View;)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
iconst_0
ireturn
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
aload 2
invokevirtual android/view/View/getHitRect(Landroid/graphics/Rect;)V
aload 2
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
invokevirtual android/graphics/Rect/contains(II)Z
ifeq L0
iconst_1
ireturn
.limit locals 4
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
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
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
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
aload 1
iload 2
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
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

.method private pageScrolled(I)V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getWidth()I
istore 2
iload 1
iload 2
idiv
istore 3
iload 1
iload 2
irem
istore 1
aload 0
iload 3
iload 1
i2f
iload 2
i2f
fdiv
iload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 4
.end method

.method private setScrollingCacheEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrollingCacheEnabled Z
iload 1
if_icmpeq L0
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewAbove/mScrollingCacheEnabled Z
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private startDrag()V
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
return
.limit locals 1
.limit stack 2
.end method

.method private thisSlideAllowed(F)Z
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
fload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuOpenSlideAllowed(F)Z
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
fload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuClosedSlideAllowed(F)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
iconst_0
istore 4
aload 1
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
fadd
f2i
istore 2
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iload 2
i2f
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuOpenTouchAllowed(Landroid/view/View;IF)Z
istore 3
L1:
iload 3
ireturn
L0:
iload 4
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mTouchMode I
tableswitch 0
L2
L3
L1
default : L4
L4:
iconst_0
ireturn
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iload 2
invokevirtual com/slidingmenu/lib/CustomViewBehind/marginTouchAllowed(Landroid/view/View;I)Z
ireturn
L3:
iload 4
istore 3
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/isInIgnoredView(Landroid/view/MotionEvent;)Z
ifne L1
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public addIgnoredView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public arrowScroll(I)Z
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/findFocus()Landroid/view/View;
astore 4
aload 4
astore 3
aload 4
aload 0
if_acmpne L0
aconst_null
astore 3
L0:
iconst_0
istore 2
invokestatic android/view/FocusFinder/getInstance()Landroid/view/FocusFinder;
aload 0
aload 3
iload 1
invokevirtual android/view/FocusFinder/findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
astore 4
aload 4
ifnull L1
aload 4
aload 3
if_acmpeq L1
iload 1
bipush 17
if_icmpne L2
aload 4
invokevirtual android/view/View/requestFocus()Z
istore 2
L3:
iload 2
ifeq L4
aload 0
iload 1
invokestatic android/view/SoundEffectConstants/getContantForFocusDirection(I)I
invokevirtual com/slidingmenu/lib/CustomViewAbove/playSoundEffect(I)V
L4:
iload 2
ireturn
L2:
iload 1
bipush 66
if_icmpne L3
aload 3
ifnull L5
aload 4
invokevirtual android/view/View/getLeft()I
aload 3
invokevirtual android/view/View/getLeft()I
if_icmpgt L5
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/pageRight()Z
istore 2
goto L3
L5:
aload 4
invokevirtual android/view/View/requestFocus()Z
istore 2
goto L3
L1:
iload 1
bipush 17
if_icmpeq L6
iload 1
iconst_1
if_icmpne L7
L6:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/pageLeft()Z
istore 2
goto L3
L7:
iload 1
bipush 66
if_icmpeq L8
iload 1
iconst_2
if_icmpne L3
L8:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/pageRight()Z
istore 2
goto L3
.limit locals 5
.limit stack 4
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
ifge L2
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
L2:
aload 9
iload 6
invokevirtual android/view/ViewGroup/getChildAt(I)Landroid/view/View;
astore 10
iload 4
iload 7
iadd
aload 10
invokevirtual android/view/View/getLeft()I
if_icmplt L4
iload 4
iload 7
iadd
aload 10
invokevirtual android/view/View/getRight()I
if_icmpge L4
iload 5
iload 8
iadd
aload 10
invokevirtual android/view/View/getTop()I
if_icmplt L4
iload 5
iload 8
iadd
aload 10
invokevirtual android/view/View/getBottom()I
if_icmpge L4
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/canScroll(Landroid/view/View;ZIII)Z
ifeq L4
iconst_1
ireturn
L4:
iload 6
iconst_1
isub
istore 6
goto L1
L3:
iconst_0
ireturn
.limit locals 11
.limit stack 7
.end method

.method public clearIgnoredViews()V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public computeScroll()V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollX()I
istore 1
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollY()I
istore 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
istore 3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/scrollTo(II)V
aload 0
iload 3
invokespecial com/slidingmenu/lib/CustomViewAbove/pageScrolled(I)V
L2:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/invalidate()V
return
L0:
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/completeScroll()V
return
.limit locals 5
.limit stack 3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/dispatchDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 1
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getPercentOpen()F
invokevirtual com/slidingmenu/lib/CustomViewBehind/drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 1
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getPercentOpen()F
invokevirtual com/slidingmenu/lib/CustomViewBehind/drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
return
.limit locals 2
.limit stack 4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
aload 0
aload 1
invokespecial android/view/ViewGroup/dispatchKeyEvent(Landroid/view/KeyEvent;)Z
ifne L0
aload 0
aload 1
invokevirtual com/slidingmenu/lib/CustomViewAbove/executeKeyEvent(Landroid/view/KeyEvent;)Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
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
invokestatic android/util/FloatMath/sin(F)F
freturn
.limit locals 2
.limit stack 4
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/arrowScroll(I)Z
ireturn
L2:
aload 0
bipush 66
invokevirtual com/slidingmenu/lib/CustomViewAbove/arrowScroll(I)Z
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/arrowScroll(I)Z
ireturn
L4:
aload 1
iconst_1
invokestatic android/support/v4/view/KeyEventCompat/hasModifiers(Landroid/view/KeyEvent;I)Z
ifeq L0
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/arrowScroll(I)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getBehindWidth()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
invokevirtual com/slidingmenu/lib/CustomViewBehind/getBehindWidth()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getChildWidth(I)I
iload 1
tableswitch 0
L0
L1
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getBehindWidth()I
ireturn
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getWidth()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public getContent()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContentLeft()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getLeft()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getPaddingLeft()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getCurrentItem()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDestScrollX(I)I
iload 1
tableswitch 0
L0
L1
L0
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/getMenuLeft(Landroid/view/View;I)I
ireturn
L1:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getLeft()I
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected getPercentOpen()F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getLeft()I
i2f
fsub
invokestatic java/lang/Math/abs(F)F
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getBehindWidth()I
i2f
fdiv
freturn
.limit locals 1
.limit stack 2
.end method

.method public getTouchMode()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mTouchMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method initCustomViewAbove()V
aload 0
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewAbove/setWillNotDraw(Z)V
aload 0
ldc_w 262144
invokevirtual com/slidingmenu/lib/CustomViewAbove/setDescendantFocusability(I)V
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setFocusable(Z)V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getContext()Landroid/content/Context;
astore 1
aload 0
new android/widget/Scroller
dup
aload 1
getstatic com/slidingmenu/lib/CustomViewAbove/sInterpolator Landroid/view/animation/Interpolator;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
putfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
astore 2
aload 0
aload 2
invokestatic android/support/v4/view/ViewConfigurationCompat/getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
putfield com/slidingmenu/lib/CustomViewAbove/mTouchSlop I
aload 0
aload 2
invokevirtual android/view/ViewConfiguration/getScaledMinimumFlingVelocity()I
putfield com/slidingmenu/lib/CustomViewAbove/mMinimumVelocity I
aload 0
aload 2
invokevirtual android/view/ViewConfiguration/getScaledMaximumFlingVelocity()I
putfield com/slidingmenu/lib/CustomViewAbove/mMaximumVelocity I
aload 0
new com/slidingmenu/lib/CustomViewAbove$2
dup
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove$2/<init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
invokevirtual com/slidingmenu/lib/CustomViewAbove/setInternalPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
pop
aload 0
ldc_w 25.0F
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
getfield android/util/DisplayMetrics/density F
fmul
f2i
putfield com/slidingmenu/lib/CustomViewAbove/mFlingDistance I
return
.limit locals 3
.limit stack 5
.end method

.method public isMenuOpen()Z
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_2
if_icmpeq L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public isSlidingEnabled()Z
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
istore 3
iload 3
iconst_3
if_icmpeq L2
iload 3
iconst_1
if_icmpeq L2
iload 3
ifeq L3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
ifeq L3
L2:
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/endDrag()V
iconst_0
ireturn
L3:
iload 3
lookupswitch
0 : L4
2 : L5
6 : L6
default : L7
L7:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifne L8
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L9
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
L9:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
L8:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifne L10
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
ifeq L1
L10:
iconst_1
ireturn
L5:
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/determineDrag(Landroid/view/MotionEvent;)V
goto L7
L4:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 3
aload 0
aload 1
iload 3
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
iconst_m1
if_icmpeq L7
aload 1
iload 3
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mInitialMotionX F
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
aload 1
iload 3
invokestatic android/support/v4/view/MotionEventCompat/getY(Landroid/view/MotionEvent;I)F
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionY F
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/thisTouchAllowed(Landroid/view/MotionEvent;)Z
ifeq L11
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
aload 0
iconst_0
putfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L7
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
aload 1
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
fadd
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuTouchInQuickReturn(Landroid/view/View;IF)Z
ifeq L7
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
goto L7
L11:
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
goto L7
L6:
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
goto L7
.limit locals 4
.limit stack 5
.end method

.method protected onLayout(ZIIII)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iconst_0
iconst_0
iload 4
iload 2
isub
iload 5
iload 3
isub
invokevirtual android/view/View/layout(IIII)V
return
.limit locals 6
.limit stack 6
.end method

.method protected onMeasure(II)V
iconst_0
iload 1
invokestatic com/slidingmenu/lib/CustomViewAbove/getDefaultSize(II)I
istore 4
iconst_0
iload 2
invokestatic com/slidingmenu/lib/CustomViewAbove/getDefaultSize(II)I
istore 3
aload 0
iload 4
iload 3
invokevirtual com/slidingmenu/lib/CustomViewAbove/setMeasuredDimension(II)V
iload 1
iconst_0
iload 4
invokestatic com/slidingmenu/lib/CustomViewAbove/getChildMeasureSpec(III)I
istore 1
iload 2
iconst_0
iload 3
invokestatic com/slidingmenu/lib/CustomViewAbove/getChildMeasureSpec(III)I
istore 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
return
.limit locals 5
.limit stack 3
.end method

.method protected onPageScrolled(IFI)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOnPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
ifnull L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOnPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener/onPageScrolled(IFI)V 3
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener/onPageScrolled(IFI)V 3
L1:
return
.limit locals 4
.limit stack 4
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
invokespecial com/slidingmenu/lib/CustomViewAbove/completeScroll()V
aload 0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
invokevirtual com/slidingmenu/lib/CustomViewAbove/getDestScrollX(I)I
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollY()I
invokevirtual com/slidingmenu/lib/CustomViewAbove/scrollTo(II)V
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifne L1
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/thisTouchAllowed(Landroid/view/MotionEvent;)Z
ifne L1
iconst_0
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L2
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
L2:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
iload 5
sipush 255
iand
tableswitch 0
L3
L4
L5
L6
L7
L8
L9
default : L7
L7:
iconst_1
ireturn
L3:
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/completeScroll()V
aload 0
aload 1
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mInitialMotionX F
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
goto L7
L5:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifne L10
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/determineDrag(Landroid/view/MotionEvent;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsUnableToDrag Z
ifeq L10
iconst_0
ireturn
L10:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifeq L7
aload 0
aload 1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
invokespecial com/slidingmenu/lib/CustomViewAbove/getPointerIndex(Landroid/view/MotionEvent;I)I
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
iconst_m1
if_icmpeq L7
aload 1
iload 5
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
fstore 3
aload 0
fload 2
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollX()I
i2f
fload 3
fload 2
fsub
fadd
fstore 3
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/getLeftBound()I
i2f
fstore 2
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/getRightBound()I
i2f
fstore 4
fload 3
fload 2
fcmpg
ifge L11
L12:
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
fload 2
fload 2
f2i
i2f
fsub
fadd
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
fload 2
f2i
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollY()I
invokevirtual com/slidingmenu/lib/CustomViewAbove/scrollTo(II)V
aload 0
fload 2
f2i
invokespecial com/slidingmenu/lib/CustomViewAbove/pageScrolled(I)V
goto L7
L11:
fload 3
fstore 2
fload 3
fload 4
fcmpl
ifle L12
fload 4
fstore 2
goto L12
L4:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifeq L13
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mVelocityTracker Landroid/view/VelocityTracker;
astore 7
aload 7
sipush 1000
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mMaximumVelocity I
i2f
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(IF)V
aload 7
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
invokestatic android/support/v4/view/VelocityTrackerCompat/getXVelocity(Landroid/view/VelocityTracker;I)F
f2i
istore 5
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollX()I
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
invokevirtual com/slidingmenu/lib/CustomViewAbove/getDestScrollX(I)I
isub
i2f
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getBehindWidth()I
i2f
fdiv
fstore 2
aload 0
aload 1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
invokespecial com/slidingmenu/lib/CustomViewAbove/getPointerIndex(Landroid/view/MotionEvent;I)I
istore 6
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
iconst_m1
if_icmpeq L14
aload 0
aload 0
fload 2
iload 5
aload 1
iload 6
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInitialMotionX F
fsub
f2i
invokespecial com/slidingmenu/lib/CustomViewAbove/determineTargetPage(FII)I
iconst_1
iconst_1
iload 5
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZI)V
L15:
aload 0
iconst_m1
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/endDrag()V
goto L7
L14:
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_1
iconst_1
iload 5
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZI)V
goto L15
L13:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mQuickReturn Z
ifeq L7
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
aload 1
invokevirtual android/view/MotionEvent/getX()F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
fadd
invokevirtual com/slidingmenu/lib/CustomViewBehind/menuTouchInQuickReturn(Landroid/view/View;IF)Z
ifeq L7
aload 0
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(I)V
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/endDrag()V
goto L7
L6:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIsBeingDragged Z
ifeq L7
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_1
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZ)V
aload 0
iconst_m1
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/endDrag()V
goto L7
L8:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 5
aload 0
aload 1
iload 5
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
aload 0
aload 1
iload 5
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
goto L7
L9:
aload 0
aload 1
invokespecial com/slidingmenu/lib/CustomViewAbove/onSecondaryPointerUp(Landroid/view/MotionEvent;)V
aload 0
aload 1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
invokespecial com/slidingmenu/lib/CustomViewAbove/getPointerIndex(Landroid/view/MotionEvent;I)I
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mActivePointerId I
iconst_m1
if_icmpeq L7
aload 0
aload 1
iload 5
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield com/slidingmenu/lib/CustomViewAbove/mLastMotionX F
goto L7
.limit locals 8
.limit stack 6
.end method

.method pageLeft()Z
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
ifle L0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_1
isub
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(IZ)V
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
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_1
if_icmpge L0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iconst_1
iadd
iconst_1
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItem(IZ)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public removeIgnoredView(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mIgnoredViews Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public scrollTo(II)V
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup/scrollTo(II)V
aload 0
iload 1
i2f
putfield com/slidingmenu/lib/CustomViewAbove/mScrollX F
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
ifeq L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iload 1
iload 2
invokevirtual com/slidingmenu/lib/CustomViewBehind/scrollBehindTo(Landroid/view/View;II)V
L0:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getParent()Landroid/view/ViewParent;
checkcast com/slidingmenu/lib/SlidingMenu
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getPercentOpen()F
invokevirtual com/slidingmenu/lib/SlidingMenu/manageLayers(F)V
return
.limit locals 3
.limit stack 4
.end method

.method public setAboveOffset(I)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
iload 1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getPaddingTop()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getPaddingRight()I
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual android/view/View/getPaddingBottom()I
invokevirtual android/view/View/setPadding(IIII)V
return
.limit locals 2
.limit stack 5
.end method

.method public setContent(Landroid/view/View;)V
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
ifnull L0
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewAbove/removeView(Landroid/view/View;)V
L0:
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mContent Landroid/view/View;
invokevirtual com/slidingmenu/lib/CustomViewAbove/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentItem(I)V
aload 0
iload 1
iconst_1
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZ)V
return
.limit locals 2
.limit stack 4
.end method

.method public setCurrentItem(IZ)V
aload 0
iload 1
iload 2
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZ)V
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/setCurrentItemInternal(IZZI)V
return
.limit locals 4
.limit stack 5
.end method

.method setCurrentItemInternal(IZZI)V
iload 3
ifne L0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iload 1
if_icmpne L0
aload 0
iconst_0
invokespecial com/slidingmenu/lib/CustomViewAbove/setScrollingCacheEnabled(Z)V
return
L0:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
iload 1
invokevirtual com/slidingmenu/lib/CustomViewBehind/getMenuPage(I)I
istore 5
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
iload 5
if_icmpeq L1
iconst_1
istore 1
L2:
aload 0
iload 5
putfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
aload 0
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mCurItem I
invokevirtual com/slidingmenu/lib/CustomViewAbove/getDestScrollX(I)I
istore 6
iload 1
ifeq L3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOnPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
ifnull L3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOnPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
iload 5
invokeinterface com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener/onPageSelected(I)V 1
L3:
iload 1
ifeq L4
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
ifnull L4
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
iload 5
invokeinterface com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener/onPageSelected(I)V 1
L4:
iload 2
ifeq L5
aload 0
iload 6
iconst_0
iload 4
invokevirtual com/slidingmenu/lib/CustomViewAbove/smoothScrollTo(III)V
return
L1:
iconst_0
istore 1
goto L2
L5:
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/completeScroll()V
aload 0
iload 6
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewAbove/scrollTo(II)V
return
.limit locals 7
.limit stack 4
.end method

.method public setCustomViewBehind(Lcom/slidingmenu/lib/CustomViewBehind;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mViewBehind Lcom/slidingmenu/lib/CustomViewBehind;
return
.limit locals 2
.limit stack 2
.end method

.method setInternalPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
astore 2
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mInternalPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mClosedListener Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mOpenedListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
aload 0
aload 1
putfield com/slidingmenu/lib/CustomViewAbove/mOnPageChangeListener Lcom/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSlidingEnabled(Z)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewAbove/mEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setTouchMode(I)V
aload 0
iload 1
putfield com/slidingmenu/lib/CustomViewAbove/mTouchMode I
return
.limit locals 2
.limit stack 2
.end method

.method smoothScrollTo(II)V
aload 0
iload 1
iload 2
iconst_0
invokevirtual com/slidingmenu/lib/CustomViewAbove/smoothScrollTo(III)V
return
.limit locals 3
.limit stack 4
.end method

.method smoothScrollTo(III)V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getChildCount()I
ifne L0
aload 0
iconst_0
invokespecial com/slidingmenu/lib/CustomViewAbove/setScrollingCacheEnabled(Z)V
L1:
return
L0:
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollX()I
istore 7
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getScrollY()I
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
ifne L2
iload 2
ifne L2
aload 0
invokespecial com/slidingmenu/lib/CustomViewAbove/completeScroll()V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/isMenuOpen()Z
ifeq L3
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOpenedListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mOpenedListener Lcom/slidingmenu/lib/SlidingMenu$OnOpenedListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnOpenedListener/onOpened()V 0
return
L3:
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mClosedListener Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
ifnull L1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mClosedListener Lcom/slidingmenu/lib/SlidingMenu$OnClosedListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnClosedListener/onClosed()V 0
return
L2:
aload 0
iconst_1
invokespecial com/slidingmenu/lib/CustomViewAbove/setScrollingCacheEnabled(Z)V
aload 0
iconst_1
putfield com/slidingmenu/lib/CustomViewAbove/mScrolling Z
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/getBehindWidth()I
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
invokevirtual com/slidingmenu/lib/CustomViewAbove/distanceInfluenceForSnapDuration(F)F
fstore 6
iload 3
invokestatic java/lang/Math/abs(I)I
istore 3
iload 3
ifle L4
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
L5:
iload 1
sipush 600
invokestatic java/lang/Math/min(II)I
istore 1
aload 0
getfield com/slidingmenu/lib/CustomViewAbove/mScroller Landroid/widget/Scroller;
iload 7
iload 8
iload 9
iload 2
iload 1
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/slidingmenu/lib/CustomViewAbove/invalidate()V
return
L4:
fconst_1
iload 9
invokestatic java/lang/Math/abs(I)I
i2f
iload 1
i2f
fdiv
fadd
ldc_w 100.0F
fmul
f2i
istore 1
sipush 600
istore 1
goto L5
.limit locals 11
.limit stack 6
.end method
