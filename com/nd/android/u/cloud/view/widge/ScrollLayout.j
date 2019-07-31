.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/ScrollLayout
.super android/view/ViewGroup
.inner class inner com/nd/android/u/cloud/view/widge/ScrollLayout$1
.inner class inner com/nd/android/u/cloud/view/widge/ScrollLayout$2
.inner class public static abstract interface OnScreenChangeListenerDataLoad inner com/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad outer com/nd/android/u/cloud/view/widge/ScrollLayout
.inner class public static abstract interface PageListener inner com/nd/android/u/cloud/view/widge/ScrollLayout$PageListener outer com/nd/android/u/cloud/view/widge/ScrollLayout

.field private static final 'SNAP_VELOCITY' I = 600


.field private static final 'TAG' Ljava/lang/String; = "ScrollLayout"

.field private static final 'TOUCH_STATE_REST' I = 0


.field private static final 'TOUCH_STATE_SCROLLING' I = 1


.field private final 'CRITICALX' I

.field private final 'CRITICALY' I

.field private 'cntHandler' Landroid/os/Handler;

.field private 'handler' Landroid/os/Handler;

.field private 'isScroll' Z

.field private 'lastx' F

.field private 'lasty' F

.field private 'mCurScreen' I

.field private 'mDefaultScreen' I

.field private 'mLastMotionX' F

.field private 'mLastMotionY' F

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'mTimePeriod' I

.field private 'mTouchSlop' I

.field private 'mTouchState' I

.field private 'mVelocityTracker' Landroid/view/VelocityTracker;

.field private 'onScreenChangeListenerDataLoad' Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;

.field private 'pageListener' Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;

.field private 'scollThread' Ljava/lang/Runnable;

.field protected 'touchEnable' Z

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/u/cloud/view/widge/ScrollLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mDefaultScreen I
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
aload 0
ldc_w -1.0F
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/lastx F
aload 0
ldc_w -1.0F
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/lasty F
aload 0
bipush 50
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/CRITICALX I
aload 0
bipush 100
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/CRITICALY I
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/touchEnable Z
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/isScroll Z
aload 0
sipush 4000
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTimePeriod I
aload 0
new com/nd/android/u/cloud/view/widge/ScrollLayout$2
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/ScrollLayout$2/<init>(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)V
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/scollThread Ljava/lang/Runnable;
aload 0
new android/widget/Scroller
dup
aload 1
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mDefaultScreen I
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getContext()Landroid/content/Context;
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchSlop I
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/onScreenChangeListenerDataLoad Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/cntHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)Ljava/lang/Runnable;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/scollThread Ljava/lang/Runnable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)I
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTimePeriod I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public computeScroll()V
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrY()I
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/myScrollTo(II)V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/postInvalidate()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public getCurScreen()I
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCurScreenView()Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildAt(I)Landroid/view/View;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isScroll()Z
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/isScroll Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isTouchEnable()Z
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/touchEnable Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public myScrollTo(II)V
aload 0
iload 1
iload 2
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/scrollTo(II)V
return
.limit locals 3
.limit stack 3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
iconst_1
istore 7
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/touchEnable Z
ifne L0
iconst_0
istore 6
L1:
iload 6
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 4
iload 4
iconst_2
if_icmpne L2
iload 7
istore 6
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
ifne L1
L2:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
iload 4
tableswitch 0
L3
L4
L5
L4
default : L6
L6:
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/postInvalidate()V
iload 7
istore 6
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
ifne L1
iconst_0
ireturn
L5:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionX F
fload 2
fsub
invokestatic java/lang/Math/abs(F)F
f2i
istore 4
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionY F
fload 3
fsub
invokestatic java/lang/Math/abs(F)F
f2i
istore 5
iload 4
bipush 50
if_icmplt L6
iload 5
bipush 100
if_icmpgt L6
iload 4
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchSlop I
if_icmple L6
aload 0
iconst_1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
goto L6
L3:
aload 0
fload 2
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionX F
aload 0
fload 3
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionY F
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifeq L7
iconst_0
istore 4
L8:
aload 0
iload 4
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
goto L6
L7:
iconst_1
istore 4
goto L8
L4:
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
goto L6
.limit locals 8
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L8
.catch all from L9 to L10 using L8
.catch all from L11 to L12 using L8
.catch all from L12 to L2 using L2
aload 0
monitorenter
iconst_0
istore 3
L0:
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
istore 5
L1:
iconst_0
istore 2
L13:
iload 2
iload 5
if_icmpge L14
L3:
aload 0
iload 2
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildAt(I)Landroid/view/View;
astore 6
L4:
iload 3
istore 4
L5:
aload 6
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpeq L15
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
istore 4
aload 0
monitorenter
L6:
aload 6
iload 3
aload 6
invokevirtual android/view/View/getTop()I
iload 3
iload 4
iadd
aload 6
invokevirtual android/view/View/getMeasuredHeight()I
invokevirtual android/view/View/layout(IIII)V
L7:
iload 3
iload 4
iadd
istore 4
L9:
aload 0
monitorexit
L10:
goto L15
L8:
astore 6
L11:
aload 0
monitorexit
L12:
aload 6
athrow
L2:
astore 6
aload 0
monitorexit
aload 6
athrow
L14:
aload 0
monitorexit
return
L15:
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L13
.limit locals 7
.limit stack 5
.end method

.method protected onMeasure(II)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
.catch all from L5 to L6 using L1
.catch all from L7 to L8 using L1
aload 0
monitorenter
L0:
aload 0
iload 1
iload 2
invokespecial android/view/ViewGroup/onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
ldc_w 1073741824
if_icmpeq L2
new java/lang/IllegalStateException
dup
ldc "ScrollLayout only canmCurScreen run at EXACTLY mode!"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 6
aload 0
monitorexit
aload 6
athrow
L2:
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
ldc_w 1073741824
if_icmpeq L3
L3:
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
istore 5
L4:
iconst_0
istore 3
L9:
iload 3
iload 5
if_icmpge L7
L5:
aload 0
iload 3
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildAt(I)Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
L6:
iload 3
iconst_1
iadd
istore 3
goto L9
L7:
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
iload 4
imul
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/myScrollTo(II)V
L8:
aload 0
monitorexit
return
.limit locals 7
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/touchEnable Z
ifne L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
ifnonnull L1
aload 0
invokestatic android/view/VelocityTracker/obtain()Landroid/view/VelocityTracker;
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
aload 1
invokevirtual android/view/VelocityTracker/addMovement(Landroid/view/MotionEvent;)V
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 4
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 3
iload 4
tableswitch 0
L2
L3
L4
L5
default : L6
L6:
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/postInvalidate()V
iconst_1
ireturn
L2:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifne L7
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/abortAnimation()V
L7:
aload 0
fload 2
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionX F
aload 0
fload 3
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionY F
goto L6
L4:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionX F
fload 2
fsub
f2i
istore 4
aload 0
fload 2
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionX F
aload 0
fload 3
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mLastMotionY F
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
if_icmpne L8
iload 4
ifle L8
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
ifnull L8
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
bipush 12
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
iconst_1
ireturn
L8:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/isScroll Z
ifne L9
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
ifne L10
iload 4
iflt L11
L10:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
if_icmpne L9
iload 4
ifle L9
L11:
iconst_1
ireturn
L9:
aload 0
iload 4
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/scrollBy(II)V
goto L6
L3:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
ifnull L12
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
sipush 300
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L12:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
astore 1
aload 1
sipush 1000
invokevirtual android/view/VelocityTracker/computeCurrentVelocity(I)V
aload 1
invokevirtual android/view/VelocityTracker/getXVelocity()F
f2i
istore 4
iload 4
sipush 600
if_icmple L13
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
ifle L13
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
iconst_1
isub
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToScreen(I)V
L14:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
ifnull L15
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
invokevirtual android/view/VelocityTracker/recycle()V
aload 0
aconst_null
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mVelocityTracker Landroid/view/VelocityTracker;
L15:
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
goto L6
L13:
iload 4
sipush -600
if_icmpge L16
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
if_icmpge L16
aload 0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
iconst_1
iadd
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToScreen(I)V
goto L14
L16:
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToDestination()V
goto L14
L5:
aload 0
iconst_0
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTouchState I
goto L6
.limit locals 5
.limit stack 3
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnScreenChangeListenerDataLoad(Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/onScreenChangeListenerDataLoad Lcom/nd/android/u/cloud/view/widge/ScrollLayout$OnScreenChangeListenerDataLoad;
return
.limit locals 2
.limit stack 2
.end method

.method public setPageListener(Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/pageListener Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setScroll(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/isScroll Z
return
.limit locals 2
.limit stack 2
.end method

.method public setToScreen(I)V
iconst_0
iload 1
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
istore 1
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getWidth()I
iload 1
imul
iconst_0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/myScrollTo(II)V
return
.limit locals 2
.limit stack 4
.end method

.method public setTouchEnable(Z)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/touchEnable Z
return
.limit locals 2
.limit stack 2
.end method

.method public snapToDestination()V
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getWidth()I
istore 1
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getScrollX()I
iload 1
iconst_2
idiv
iadd
iload 1
idiv
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/snapToScreen(I)V
return
.limit locals 2
.limit stack 4
.end method

.method public snapToScreen(I)V
iconst_0
iload 1
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getChildCount()I
iconst_1
isub
invokestatic java/lang/Math/min(II)I
invokestatic java/lang/Math/max(II)I
istore 1
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getScrollX()I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getWidth()I
iload 1
imul
if_icmpeq L0
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getWidth()I
istore 2
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getScrollX()I
istore 3
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/getScrollX()I
iconst_0
iload 2
iload 1
imul
iload 3
isub
iconst_0
sipush 300
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
aload 0
invokevirtual com/nd/android/u/cloud/view/widge/ScrollLayout/invalidate()V
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/pageListener Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/pageListener Lcom/nd/android/u/cloud/view/widge/ScrollLayout$PageListener;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mCurScreen I
invokeinterface com/nd/android/u/cloud/view/widge/ScrollLayout$PageListener/page(I)V 1
L1:
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
iconst_0
iload 1
iconst_0
invokevirtual android/os/Handler/obtainMessage(III)Landroid/os/Message;
astore 4
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/handler Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
L0:
return
.limit locals 5
.limit stack 6
.end method

.method public startScoll(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTimePeriod I
aload 0
new com/nd/android/u/cloud/view/widge/ScrollLayout$1
dup
aload 0
invokespecial com/nd/android/u/cloud/view/widge/ScrollLayout$1/<init>(Lcom/nd/android/u/cloud/view/widge/ScrollLayout;)V
putfield com/nd/android/u/cloud/view/widge/ScrollLayout/cntHandler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/cntHandler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/scollThread Ljava/lang/Runnable;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/mTimePeriod I
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public stopScrollTimer()V
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/cntHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/cntHandler Landroid/os/Handler;
aload 0
getfield com/nd/android/u/cloud/view/widge/ScrollLayout/scollThread Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
L0:
return
.limit locals 1
.limit stack 2
.end method
