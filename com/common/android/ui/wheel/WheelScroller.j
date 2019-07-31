.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/WheelScroller
.super java/lang/Object
.inner class inner com/common/android/ui/wheel/WheelScroller$1
.inner class inner com/common/android/ui/wheel/WheelScroller$2
.inner class public static abstract interface ScrollingListener inner com/common/android/ui/wheel/WheelScroller$ScrollingListener outer com/common/android/ui/wheel/WheelScroller

.field public static final 'MIN_DELTA_FOR_SCROLLING' I = 1


.field private static final 'SCROLLING_DURATION' I = 400


.field private final 'MESSAGE_JUSTIFY' I

.field private final 'MESSAGE_SCROLL' I

.field private 'animationHandler' Landroid/os/Handler;

.field private 'context' Landroid/content/Context;

.field private 'gestureDetector' Landroid/view/GestureDetector;

.field private 'gestureListener' Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private 'isScrollingPerformed' Z

.field private 'lastScrollY' I

.field private 'lastTouchedY' F

.field private 'listener' Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;

.field private 'scroller' Landroid/widget/Scroller;

.method public <init>(Landroid/content/Context;Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/ui/wheel/WheelScroller$1
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller$1/<init>(Lcom/common/android/ui/wheel/WheelScroller;)V
putfield com/common/android/ui/wheel/WheelScroller/gestureListener Landroid/view/GestureDetector$SimpleOnGestureListener;
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelScroller/MESSAGE_SCROLL I
aload 0
iconst_1
putfield com/common/android/ui/wheel/WheelScroller/MESSAGE_JUSTIFY I
aload 0
new com/common/android/ui/wheel/WheelScroller$2
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller$2/<init>(Lcom/common/android/ui/wheel/WheelScroller;)V
putfield com/common/android/ui/wheel/WheelScroller/animationHandler Landroid/os/Handler;
aload 0
new android/view/GestureDetector
dup
aload 1
aload 0
getfield com/common/android/ui/wheel/WheelScroller/gestureListener Landroid/view/GestureDetector$SimpleOnGestureListener;
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/common/android/ui/wheel/WheelScroller/gestureDetector Landroid/view/GestureDetector;
aload 0
getfield com/common/android/ui/wheel/WheelScroller/gestureDetector Landroid/view/GestureDetector;
iconst_0
invokevirtual android/view/GestureDetector/setIsLongpressEnabled(Z)V
aload 0
new android/widget/Scroller
dup
aload 1
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
aload 0
aload 2
putfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelScroller/context Landroid/content/Context;
return
.limit locals 3
.limit stack 5
.end method

.method static synthetic access$000(Lcom/common/android/ui/wheel/WheelScroller;)I
aload 0
getfield com/common/android/ui/wheel/WheelScroller/lastScrollY I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/common/android/ui/wheel/WheelScroller;I)I
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelScroller/lastScrollY I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/widget/Scroller;
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/common/android/ui/wheel/WheelScroller;I)V
aload 0
iload 1
invokespecial com/common/android/ui/wheel/WheelScroller/setNextMessage(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/common/android/ui/wheel/WheelScroller;)Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
aload 0
getfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/common/android/ui/wheel/WheelScroller;)Landroid/os/Handler;
aload 0
getfield com/common/android/ui/wheel/WheelScroller/animationHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/common/android/ui/wheel/WheelScroller;)V
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/justify()V
return
.limit locals 1
.limit stack 1
.end method

.method private clearMessages()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/animationHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/animationHandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private justify()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
invokeinterface com/common/android/ui/wheel/WheelScroller$ScrollingListener/onJustify()V 0
aload 0
iconst_1
invokespecial com/common/android/ui/wheel/WheelScroller/setNextMessage(I)V
return
.limit locals 1
.limit stack 2
.end method

.method private setNextMessage(I)V
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/clearMessages()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/animationHandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method private startScrolling()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/isScrollingPerformed Z
ifne L0
aload 0
iconst_1
putfield com/common/android/ui/wheel/WheelScroller/isScrollingPerformed Z
aload 0
getfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
invokeinterface com/common/android/ui/wheel/WheelScroller$ScrollingListener/onStarted()V 0
L0:
return
.limit locals 1
.limit stack 2
.end method

.method finishScrolling()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/isScrollingPerformed Z
ifeq L0
aload 0
getfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
invokeinterface com/common/android/ui/wheel/WheelScroller$ScrollingListener/onFinished()V 0
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelScroller/isScrollingPerformed Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L1
L1:
aload 0
getfield com/common/android/ui/wheel/WheelScroller/gestureDetector Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
ifne L3
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L3
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/justify()V
L3:
iconst_1
ireturn
L0:
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/common/android/ui/wheel/WheelScroller/lastTouchedY F
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/clearMessages()V
goto L1
L2:
aload 1
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/common/android/ui/wheel/WheelScroller/lastTouchedY F
fsub
f2i
istore 2
iload 2
ifeq L1
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/startScrolling()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/listener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
iload 2
invokeinterface com/common/android/ui/wheel/WheelScroller$ScrollingListener/onScroll(I)V 1
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/common/android/ui/wheel/WheelScroller/lastTouchedY F
goto L1
.limit locals 3
.limit stack 2
.end method

.method public scroll(II)V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelScroller/lastScrollY I
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
astore 3
iload 2
ifeq L0
L1:
aload 3
iconst_0
iconst_0
iconst_0
iload 1
iload 2
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
iconst_0
invokespecial com/common/android/ui/wheel/WheelScroller/setNextMessage(I)V
aload 0
invokespecial com/common/android/ui/wheel/WheelScroller/startScrolling()V
return
L0:
sipush 400
istore 2
goto L1
.limit locals 4
.limit stack 6
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
aload 0
new android/widget/Scroller
dup
aload 0
getfield com/common/android/ui/wheel/WheelScroller/context Landroid/content/Context;
aload 1
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
putfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
return
.limit locals 2
.limit stack 5
.end method

.method public stopScrolling()V
aload 0
getfield com/common/android/ui/wheel/WheelScroller/scroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
return
.limit locals 1
.limit stack 2
.end method
