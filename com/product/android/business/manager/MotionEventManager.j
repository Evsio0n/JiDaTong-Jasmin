.bytecode 50.0
.class public synchronized abstract com/product/android/business/manager/MotionEventManager
.super java/lang/Object
.inner class inner com/product/android/business/manager/MotionEventManager$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$1
.inner class inner com/product/android/business/manager/MotionEventManager$1$2
.inner class private MyHandler inner com/product/android/business/manager/MotionEventManager$MyHandler outer com/product/android/business/manager/MotionEventManager

.field private static final 'CLICK_CRITICAL_VALUE' I = 35


.field private static final 'LONG_CLICK_TIME' I = 700


.field private 'mChangeBackGroundTime' I

.field private 'mCriticalXValue' F

.field private 'mCriticalYValue' F

.field private 'mLongClickTime' I

.field private 'mNowArea' F

.field private 'mNowX' F

.field private 'mNowY' F

.field private 'mOriArea' F

.field private 'mOriDistance' F

.field private 'mPressId' I

.field private 'mScale' F

.field private 'mSourceComputeValue' F

.field private 'mStartX' F

.field private 'mStartY' F

.field private 'mTripleScale' F

.field private 'mView' Landroid/view/View;

.field private 'mbCanBeClick' Z

.field protected 'mbChangeBackGroundNotified' Z

.field private 'mbIsDoubleTouch' Z

.field private 'mbIsSingleDown' Z

.field private 'mbIsTripleTouch' Z

.field private 'mbLongClickNotified' Z

.field private 'onTouchListener' Landroid/view/View$OnTouchListener;

.method public <init>(Landroid/view/View;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbIsDoubleTouch Z
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbIsTripleTouch Z
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbCanBeClick Z
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbLongClickNotified Z
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbIsSingleDown Z
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mbChangeBackGroundNotified Z
aload 0
bipush 100
putfield com/product/android/business/manager/MotionEventManager/mChangeBackGroundTime I
aload 0
sipush 700
putfield com/product/android/business/manager/MotionEventManager/mLongClickTime I
aload 0
iconst_0
putfield com/product/android/business/manager/MotionEventManager/mPressId I
aload 0
new com/product/android/business/manager/MotionEventManager$1
dup
aload 0
invokespecial com/product/android/business/manager/MotionEventManager$1/<init>(Lcom/product/android/business/manager/MotionEventManager;)V
putfield com/product/android/business/manager/MotionEventManager/onTouchListener Landroid/view/View$OnTouchListener;
aload 0
aload 1
putfield com/product/android/business/manager/MotionEventManager/mView Landroid/view/View;
aload 0
getfield com/product/android/business/manager/MotionEventManager/mView Landroid/view/View;
aload 0
getfield com/product/android/business/manager/MotionEventManager/onTouchListener Landroid/view/View$OnTouchListener;
invokevirtual android/view/View/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mStartX F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mStartX F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mStartY F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/product/android/business/manager/MotionEventManager;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager/mbIsDoubleTouch Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1002(Lcom/product/android/business/manager/MotionEventManager;Z)Z
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mbIsDoubleTouch Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$102(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mStartY F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/product/android/business/manager/MotionEventManager;)I
aload 0
getfield com/product/android/business/manager/MotionEventManager/mLongClickTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/product/android/business/manager/MotionEventManager;)I
aload 0
getfield com/product/android/business/manager/MotionEventManager/mChangeBackGroundTime I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mCriticalXValue F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mCriticalYValue F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/product/android/business/manager/MotionEventManager;FFFF)F
aload 0
fload 1
fload 2
fload 3
fload 4
invokespecial com/product/android/business/manager/MotionEventManager/getDistance(FFFF)F
freturn
.limit locals 5
.limit stack 5
.end method

.method static synthetic access$1600(Lcom/product/android/business/manager/MotionEventManager;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager/mbIsTripleTouch Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mbIsTripleTouch Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mNowArea F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1702(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mNowArea F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1800(Lcom/product/android/business/manager/MotionEventManager;Landroid/view/MotionEvent;)F
aload 0
aload 1
invokespecial com/product/android/business/manager/MotionEventManager/getArea(Landroid/view/MotionEvent;)F
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1900(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mTripleScale F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1902(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mTripleScale F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/product/android/business/manager/MotionEventManager;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager/mbCanBeClick Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2000(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mOriArea F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2002(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mOriArea F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/product/android/business/manager/MotionEventManager;Z)Z
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mbCanBeClick Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mScale F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2102(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mScale F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2200(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mOriDistance F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2202(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mOriDistance F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2300(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mSourceComputeValue F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/product/android/business/manager/MotionEventManager;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager/mbIsSingleDown Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/product/android/business/manager/MotionEventManager;Z)Z
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mbIsSingleDown Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/product/android/business/manager/MotionEventManager;)I
aload 0
getfield com/product/android/business/manager/MotionEventManager/mPressId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$408(Lcom/product/android/business/manager/MotionEventManager;)I
aload 0
getfield com/product/android/business/manager/MotionEventManager/mPressId I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/product/android/business/manager/MotionEventManager/mPressId I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$600(Lcom/product/android/business/manager/MotionEventManager;)Z
aload 0
getfield com/product/android/business/manager/MotionEventManager/mbLongClickNotified Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/product/android/business/manager/MotionEventManager;Z)Z
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mbLongClickNotified Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$700(Lcom/product/android/business/manager/MotionEventManager;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/product/android/business/manager/MotionEventManager/debug(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mNowX F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mNowX F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/product/android/business/manager/MotionEventManager;)F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mNowY F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$902(Lcom/product/android/business/manager/MotionEventManager;F)F
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mNowY F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method private debug(Ljava/lang/String;)V
ldc "debug"
aload 1
invokestatic com/product/android/utils/LogUtils/d(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private getArea(FFF)F
fload 1
fload 2
fadd
fload 3
fadd
fconst_2
fdiv
fstore 4
fload 4
fload 1
fsub
fload 4
fmul
fload 4
fload 2
fsub
fmul
fload 4
fload 3
fsub
fmul
f2d
invokestatic java/lang/Math/sqrt(D)D
d2f
freturn
.limit locals 5
.limit stack 3
.end method

.method private getArea(Landroid/view/MotionEvent;)F
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
fstore 2
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
fstore 3
aload 0
fload 2
fload 3
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
invokespecial com/product/android/business/manager/MotionEventManager/getDistance(FFFF)F
fstore 4
aload 1
iconst_2
invokevirtual android/view/MotionEvent/getX(I)F
fstore 5
aload 1
iconst_2
invokevirtual android/view/MotionEvent/getY(I)F
fstore 6
aload 0
fload 4
aload 0
fload 2
fload 3
fload 5
fload 6
invokespecial com/product/android/business/manager/MotionEventManager/getDistance(FFFF)F
aload 0
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getX(I)F
aload 1
iconst_1
invokevirtual android/view/MotionEvent/getY(I)F
fload 5
fload 6
invokespecial com/product/android/business/manager/MotionEventManager/getDistance(FFFF)F
invokespecial com/product/android/business/manager/MotionEventManager/getArea(FFF)F
freturn
.limit locals 7
.limit stack 8
.end method

.method private getDistance(FFFF)F
fload 3
fload 1
fsub
fstore 1
fload 4
fload 2
fsub
fstore 2
fload 1
fload 1
fmul
fload 2
fload 2
fmul
fadd
f2d
invokestatic java/lang/Math/sqrt(D)D
d2f
freturn
.limit locals 5
.limit stack 3
.end method

.method public getFinalTripleZoom()F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mNowArea F
aload 0
getfield com/product/android/business/manager/MotionEventManager/mOriArea F
fdiv
freturn
.limit locals 1
.limit stack 2
.end method

.method protected onClick()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onDoubleTouchTown()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onDown(FF)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onLongClick(FF)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onMove(FFFF)Z
iconst_0
ireturn
.limit locals 5
.limit stack 1
.end method

.method protected onPress(FF)V
return
.limit locals 3
.limit stack 0
.end method

.method protected onReStore(FF)V
return
.limit locals 3
.limit stack 0
.end method

.method protected onSlipDown(F)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onSlipLeft(F)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onSlipRight(F)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onSlipUp(F)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onTouch()V
return
.limit locals 1
.limit stack 0
.end method

.method protected onTripleTouchTown()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onTripleZoom(F)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected onUp(FF)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onZoom(FF)Z
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method public setCriticalValues(FF)V
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mCriticalXValue F
aload 0
fload 2
putfield com/product/android/business/manager/MotionEventManager/mCriticalYValue F
return
.limit locals 3
.limit stack 2
.end method

.method public setLongClickTime(I)V
iload 1
sipush 700
if_icmple L0
aload 0
iload 1
putfield com/product/android/business/manager/MotionEventManager/mLongClickTime I
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setSourceComputeValue(F)V
aload 0
fload 1
putfield com/product/android/business/manager/MotionEventManager/mSourceComputeValue F
return
.limit locals 2
.limit stack 2
.end method
