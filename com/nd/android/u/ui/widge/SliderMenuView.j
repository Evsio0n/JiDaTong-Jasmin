.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/SliderMenuView
.super android/widget/FrameLayout

.field public static 'EXPAND_STATE_EXPAND' I

.field public static 'EXPAND_STATE_EXPANDING' I

.field public static 'EXPAND_STATE_UNEXPAND' I

.field public static 'EXPAND_STATE_UNEXPANDING' I

.field private 'mContext' Landroid/content/Context;

.field private 'mExpandState' I

.field private 'mIsTriggerExpand' Z

.field private 'mMainView' Landroid/view/View;

.field private 'mMaxMenuExpandDis' I

.field private 'mMenuPadLeft' I

.field private 'mMenuView' Landroid/view/View;

.field private 'mNeedInit' Z

.field private 'mScreenHeigh' I

.field private 'mScreenWidth' I

.field private 'mScroller' Landroid/widget/Scroller;

.field private 'mStartTouchX' F

.field private 'mStartTouchY' F

.field private 'mTouchDown' Z

.field private 'mTouchX' F

.field private 'mTouchY' F

.field private 'mTrigerExpandMinOffset' I

.field private 'mTrigerUnexpandMinOffset' I

.field private 'mTriggerTouchMaxDisY' I

.field private 'mTriggerTouchMinDisX' I

.method static <clinit>()V
iconst_0
putstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
iconst_1
putstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
iconst_2
putstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
iconst_3
putstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuView/init(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method private getScreenHeigh()I
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getContext()Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/heightPixels I
ireturn
.limit locals 2
.limit stack 2
.end method

.method private getScreenWidth()I
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getContext()Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 1
getfield android/util/DisplayMetrics/widthPixels I
ireturn
.limit locals 2
.limit stack 2
.end method

.method private init(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
aload 0
bipush 25
putfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMinDisX I
aload 0
bipush 15
putfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMaxDisY I
aload 0
aload 1
putfield com/nd/android/u/ui/widge/SliderMenuView/mContext Landroid/content/Context;
aload 0
new android/widget/Scroller
dup
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mContext Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
return
.limit locals 2
.limit stack 4
.end method

.method private offsetMainMenuView(II)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
iconst_0
iload 1
iconst_0
iload 2
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/invalidate()V
return
.limit locals 3
.limit stack 6
.end method

.method public checkTriggerExpand()Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public computeScroll()V
aload 0
invokespecial android/widget/FrameLayout/computeScroll()V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/computeScrollOffset()Z
ifeq L0
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/getCurrX()I
iconst_0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/scrollTo(II)V
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/invalidate()V
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
if_icmpne L2
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
if_icmpne L1
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
return
.limit locals 1
.limit stack 3
.end method

.method public dealTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
if_icmpne L1
L0:
iconst_1
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L2
L3
L4
L3
default : L5
L5:
iconst_1
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
if_icmpgt L0
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchX F
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchX F
putfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchX F
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchY F
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchY F
putfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchY F
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
iconst_1
ireturn
L4:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
ifeq L0
aload 1
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
if_icmpgt L0
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 3
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
ifne L6
iload 3
i2f
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchX F
fsub
f2i
istore 2
iload 4
i2f
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchY F
fsub
f2i
istore 4
iload 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMaxDisY I
ineg
if_icmple L7
iload 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMaxDisY I
if_icmpge L7
iload 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMinDisX I
if_icmpgt L8
iload 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMinDisX I
ineg
if_icmpge L9
L8:
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
L9:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
ifeq L0
L6:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchX F
iload 3
i2f
fsub
f2i
istore 2
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
iload 2
iadd
istore 4
iload 4
ifge L10
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
ifeq L0
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
ineg
istore 2
L11:
aload 0
iload 2
iconst_0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/scrollBy(II)V
aload 0
iload 3
i2f
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchX F
iconst_1
ireturn
L7:
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMaxDisY I
ineg
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScreenHeigh I
isub
i2f
putfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchY F
goto L9
L10:
iload 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
if_icmple L11
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
isub
istore 2
goto L11
L3:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
ifeq L0
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
ifeq L0
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTouchX F
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchX F
fsub
f2i
istore 2
iload 2
ifle L12
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L0
iload 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTrigerUnexpandMinOffset I
if_icmple L13
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
istore 2
aload 0
iload 2
ineg
iload 2
iconst_2
imul
invokespecial com/nd/android/u/ui/widge/SliderMenuView/offsetMainMenuView(II)V
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
iconst_1
ireturn
L13:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
isub
istore 2
aload 0
iload 2
iload 2
iconst_2
imul
invokespecial com/nd/android/u/ui/widge/SliderMenuView/offsetMainMenuView(II)V
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
iconst_1
ireturn
L12:
iload 2
ifge L0
iload 2
ineg
istore 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpne L0
iload 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTrigerExpandMinOffset I
if_icmple L14
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
isub
istore 2
aload 0
iload 2
iload 2
iconst_2
imul
invokespecial com/nd/android/u/ui/widge/SliderMenuView/offsetMainMenuView(II)V
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
iconst_1
ireturn
L14:
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
istore 2
aload 0
iload 2
ineg
iload 2
iconst_2
imul
invokespecial com/nd/android/u/ui/widge/SliderMenuView/offsetMainMenuView(II)V
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public getExpanedState()I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMainView()Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMenuView()Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initView()V
aload 0
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getChildAt(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
aload 0
aload 0
iconst_1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getChildAt(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
aload 0
aload 0
invokespecial com/nd/android/u/ui/widge/SliderMenuView/getScreenWidth()I
putfield com/nd/android/u/ui/widge/SliderMenuView/mScreenWidth I
aload 0
aload 0
invokespecial com/nd/android/u/ui/widge/SliderMenuView/getScreenHeigh()I
putfield com/nd/android/u/ui/widge/SliderMenuView/mScreenHeigh I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 1
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
iload 1
iload 2
invokevirtual android/view/View/measure(II)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
istore 1
aload 0
iload 1
putfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
aload 0
iload 1
iconst_3
idiv
putfield com/nd/android/u/ui/widge/SliderMenuView/mTrigerExpandMinOffset I
aload 0
iload 1
iconst_3
idiv
putfield com/nd/android/u/ui/widge/SliderMenuView/mTrigerUnexpandMinOffset I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMainView Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/FrameLayout$LayoutParams
astore 3
aload 3
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/FrameLayout$LayoutParams/setMargins(IIII)V
aload 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScreenWidth I
putfield android/widget/FrameLayout$LayoutParams/width I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/FrameLayout$LayoutParams
astore 3
aload 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScreenWidth I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/FrameLayout$LayoutParams/setMargins(IIII)V
aload 3
iload 1
putfield android/widget/FrameLayout$LayoutParams/width I
return
.limit locals 4
.limit stack 5
.end method

.method public isUsrGiveUpTouchOp()Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mStartTouchY F
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mTriggerTouchMaxDisY I
ineg
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScreenHeigh I
isub
i2f
fcmpl
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokespecial android/widget/FrameLayout/onMeasure(II)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/initView()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mNeedInit Z
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMenuView Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/FrameLayout$LayoutParams
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScreenWidth I
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/FrameLayout$LayoutParams/setMargins(IIII)V
return
.limit locals 3
.limit stack 5
.end method

.method public resetMenu()V
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/scrollTo(II)V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mIsTriggerExpand Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuView/mTouchDown Z
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
return
.limit locals 1
.limit stack 3
.end method

.method public startExpandMenuFromClr()V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L0
return
L0:
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
iconst_2
imul
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/invalidate()V
return
.limit locals 1
.limit stack 7
.end method

.method public startUnexpandMenuFromFul()V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpne L0
return
L0:
aload 0
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
putfield com/nd/android/u/ui/widge/SliderMenuView/mExpandState I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mScroller Landroid/widget/Scroller;
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getScrollX()I
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
ineg
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuView/mMaxMenuExpandDis I
iconst_2
imul
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/invalidate()V
return
.limit locals 1
.limit stack 7
.end method
