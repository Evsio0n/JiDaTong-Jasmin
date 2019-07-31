.bytecode 50.0
.class public synchronized abstract com/nd/android/u/ui/widge/SliderMenuItemListView
.super android/widget/ListView
.inner class static synthetic inner com/nd/android/u/ui/widge/SliderMenuItemListView$1
.inner class public static abstract interface OnItemListener inner com/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener outer com/nd/android/u/ui/widge/SliderMenuItemListView
.inner class private RecentContactItemGestureDetector inner com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector outer com/nd/android/u/ui/widge/SliderMenuItemListView

.field private 'mCurSel' I

.field private 'mCurrSliderMenuView' Lcom/nd/android/u/ui/widge/SliderMenuView;

.field private 'mCurrView' Landroid/view/View;

.field 'mGestureDetector' Landroid/view/GestureDetector;

.field private 'mIsFilterEventUntilUp' Z

.field 'mOnItemListener' Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
aload 0
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/init()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/init()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/init()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;Lcom/nd/android/u/ui/widge/SliderMenuView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
aload 1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getClickPosition(Landroid/view/MotionEvent;)I
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/pointToPosition(II)I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getHeaderViewsCount()I
isub
ireturn
.limit locals 2
.limit stack 3
.end method

.method private init()V
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
aload 0
iconst_m1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
new android/view/GestureDetector
dup
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getContext()Landroid/content/Context;
new com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/<init>(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;Lcom/nd/android/u/ui/widge/SliderMenuItemListView$1;)V
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mGestureDetector Landroid/view/GestureDetector;
aload 0
aconst_null
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
return
.limit locals 1
.limit stack 8
.end method

.method public closeCurrSliderMenu()V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/resetMenu()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public closeCurrSliderMenuAni()V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/startUnexpandMenuFromFul()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
iconst_0
istore 3
iload 3
istore 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/checkTriggerExpand()Z
ifne L1
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPANDING I
if_icmpeq L1
iload 3
istore 2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPANDING I
if_icmpne L0
L1:
iconst_1
istore 2
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L2
L3
L4
L3
default : L5
L5:
iload 2
istore 3
L6:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
ifeq L7
L8:
iconst_1
ireturn
L2:
aload 0
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView/getClickPosition(Landroid/view/MotionEvent;)I
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
iflt L9
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getAdapter()Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpge L9
aload 0
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurSel I
aload 0
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getFirstVisiblePosition()I
isub
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getChildAt(I)Landroid/view/View;
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrView Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrView Landroid/view/View;
invokevirtual com/nd/android/u/ui/widge/SliderMenuItemListView/getSliderViewFromItemView(Landroid/view/View;)Lcom/nd/android/u/ui/widge/SliderMenuView;
astore 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L10
aload 4
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L11
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpeq L12
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpne L6
L12:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/dealTouchEvent(Landroid/view/MotionEvent;)Z
pop
iload 2
istore 3
goto L6
L11:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L13
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/startUnexpandMenuFromFul()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
iload 2
istore 3
goto L6
L13:
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpne L6
aload 0
aload 4
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/dealTouchEvent(Landroid/view/MotionEvent;)Z
pop
iload 2
istore 3
goto L6
L10:
aload 0
aload 4
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/dealTouchEvent(Landroid/view/MotionEvent;)Z
pop
iload 2
istore 3
goto L6
L9:
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L6
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L6
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/startUnexpandMenuFromFul()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
iload 2
istore 3
goto L6
L4:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L14
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/dealTouchEvent(Landroid/view/MotionEvent;)Z
pop
L14:
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L6
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/isUsrGiveUpTouchOp()Z
ifeq L15
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L15
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/startUnexpandMenuFromFul()V
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
astore 4
aload 4
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mGestureDetector Landroid/view/GestureDetector;
aload 4
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
L15:
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/checkTriggerExpand()Z
ifeq L6
iconst_1
istore 3
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
astore 4
aload 4
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mGestureDetector Landroid/view/GestureDetector;
aload 4
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
goto L6
L3:
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L16
iload 2
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/checkTriggerExpand()Z
ifeq L16
aload 1
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
iconst_0
istore 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mCurrSliderMenuView Lcom/nd/android/u/ui/widge/SliderMenuView;
aload 1
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/dealTouchEvent(Landroid/view/MotionEvent;)Z
pop
L16:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
ifeq L6
aload 1
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
iconst_0
istore 3
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mIsFilterEventUntilUp Z
goto L6
L7:
iload 3
ifne L8
aload 0
aload 1
invokespecial android/widget/ListView/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method public abstract getSliderViewFromItemView(Landroid/view/View;)Lcom/nd/android/u/ui/widge/SliderMenuView;
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mGestureDetector Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
L0:
aload 0
aload 1
invokespecial android/widget/ListView/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setOnItemListener(Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
return
.limit locals 2
.limit stack 2
.end method
