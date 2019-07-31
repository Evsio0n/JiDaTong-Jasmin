.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/SwitchLayout
.super android/view/ViewGroup
.inner class static synthetic inner com/nd/android/backpacksystem/widget/SwitchLayout$1
.inner class private DragHelperCallback inner com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback outer com/nd/android/backpacksystem/widget/SwitchLayout
.inner class public static abstract interface TabSelectCallBack inner com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack outer com/nd/android/backpacksystem/widget/SwitchLayout

.field public static final 'TAB_SELECTED_LEFT' I = 0


.field public static final 'TAB_SELECTED_RIGHT' I = 1


.field private final 'mDragHelper' Lcom/nd/android/backpacksystem/helper/ViewDragHelper;

.field private 'mDragOffset' F

.field private 'mDragRange' I

.field private 'mInitialMotionX' F

.field private 'mInitialMotionY' F

.field private 'mIsSelectViewUnder' Z

.field private 'mLeft' I

.field private 'mLeftTabText' Ljava/lang/String;

.field private 'mRightTabText' Ljava/lang/String;

.field private 'mSelectedTab' I

.field private 'mTabSelectCallBack' Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;

.field private 'mTvTabSelect' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mIsSelectViewUnder Z
aload 0
iconst_m1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
aload 0
aload 0
fconst_1
new com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback
dup
aload 0
aconst_null
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/<init>(Lcom/nd/android/backpacksystem/widget/SwitchLayout;Lcom/nd/android/backpacksystem/widget/SwitchLayout$1;)V
invokestatic com/nd/android/backpacksystem/helper/ViewDragHelper/create(Landroid/view/ViewGroup;FLcom/nd/android/backpacksystem/helper/ViewDragHelper$Callback;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
return
.limit locals 4
.limit stack 7
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeft I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/backpacksystem/widget/SwitchLayout;I)I
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeft I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)F
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragOffset F
freturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/backpacksystem/widget/SwitchLayout;F)F
aload 0
fload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragOffset F
fload 1
freturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragRange I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/toLeftTab()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/toRightTab()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static resolveSizeAndState(III)I
iload 0
istore 3
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 4
lookupswitch
-2147483648 : L0
0 : L1
1073741824 : L2
default : L3
L3:
iload 3
istore 0
L4:
ldc_w -16777216
iload 2
iand
iload 0
ior
ireturn
L1:
goto L4
L0:
iload 1
iload 0
if_icmpge L5
iload 1
ldc_w 16777216
ior
istore 0
goto L4
L5:
goto L4
L2:
iload 1
istore 0
goto L4
.limit locals 5
.limit stack 2
.end method

.method private selectLeftTab()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/toLeftTab()V
return
.limit locals 1
.limit stack 2
.end method

.method private selectRightTab()V
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/toRightTab()V
return
.limit locals 1
.limit stack 2
.end method

.method private smoothSlideTo(FZ)Z
fload 1
fconst_1
fcmpl
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
ifnull L1
iload 2
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
invokeinterface com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack/selectRightTab()V 0
L1:
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/selectRightTab()V
L2:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getPaddingLeft()I
i2f
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragRange I
i2f
fload 1
fmul
fadd
f2i
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
iload 3
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
invokevirtual android/widget/TextView/getTop()I
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/smoothSlideViewTo(Landroid/view/View;II)Z
ifeq L3
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
ifnull L4
iload 2
ifeq L4
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
invokeinterface com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack/selectLeftTab()V 0
L4:
aload 0
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/selectLeftTab()V
goto L2
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method private toLeftTab()V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeftTabText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method private toRightTab()V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mRightTabText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public computeScroll()V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
iconst_1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/continueSettling(Z)Z
ifeq L0
aload 0
invokestatic android/support/v4/view/ViewCompat/postInvalidateOnAnimation(Landroid/view/View;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected onFinishInflate()V
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvTabSelect I
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionMasked(Landroid/view/MotionEvent;)I
istore 4
iload 4
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
aload 0
aload 1
invokespecial android/view/ViewGroup/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L0:
iload 4
iconst_3
if_icmpeq L1
iload 4
iconst_1
if_icmpne L2
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
iconst_0
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 3
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
iload 4
tableswitch 0
L3
L4
L5
default : L4
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L3:
aload 0
fload 3
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionX F
aload 0
fload 2
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionY F
goto L4
L5:
fload 3
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionX F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 3
fload 2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionY F
fsub
invokestatic java/lang/Math/abs(F)F
fstore 2
fload 2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/getTouchSlop()I
i2f
fcmpl
ifle L4
fload 3
fload 2
fcmpl
ifle L4
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/cancel()V
iconst_0
ireturn
.limit locals 5
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getWidth()I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
invokevirtual android/widget/TextView/getWidth()I
isub
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragRange I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeft I
iconst_0
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeft I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
invokevirtual android/widget/TextView/getMeasuredWidth()I
iadd
iload 5
invokevirtual android/widget/TextView/layout(IIII)V
return
.limit locals 6
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/measureChildren(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 3
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 4
aload 0
iload 3
iload 1
iconst_0
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/resolveSizeAndState(III)I
iload 4
iload 2
iconst_0
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/resolveSizeAndState(III)I
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/setMeasuredDimension(II)V
return
.limit locals 5
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 1
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/processTouchEvent(Landroid/view/MotionEvent;)V
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
sipush 255
iand
tableswitch 0
L0
L1
default : L2
L2:
iconst_1
ireturn
L0:
aload 0
fload 2
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionX F
aload 0
fload 3
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionY F
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mDragHelper Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTvTabSelect Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionX F
f2i
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mInitialMotionY F
f2i
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/isViewUnder(Landroid/view/View;II)Z
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mIsSelectViewUnder Z
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mIsSelectViewUnder Z
ifne L3
fload 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getWidth()I
iconst_2
idiv
i2f
fcmpg
ifge L4
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/tabToLeft(Z)V
iconst_1
ireturn
L4:
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/tabToRight(Z)V
iconst_1
ireturn
L3:
fload 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getWidth()I
iconst_2
idiv
i2f
fcmpg
ifge L5
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
invokeinterface com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack/selectLeftTab()V 0
iconst_1
ireturn
L5:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
iconst_1
if_icmpeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
invokeinterface com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack/selectRightTab()V 0
iconst_1
ireturn
.limit locals 5
.limit stack 5
.end method

.method public setLeftTabText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mLeftTabText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRightTabText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mRightTabText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTabSelectCallBack(Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout/mTabSelectCallBack Lcom/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public tabToLeft(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
ifne L0
return
L0:
aload 0
fconst_0
iload 1
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/smoothSlideTo(FZ)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public tabToRight(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout/mSelectedTab I
iconst_1
if_icmpne L0
return
L0:
aload 0
fconst_1
iload 1
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout/smoothSlideTo(FZ)Z
pop
return
.limit locals 2
.limit stack 3
.end method
