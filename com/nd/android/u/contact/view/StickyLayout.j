.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/StickyLayout
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/contact/view/StickyLayout$1
.inner class inner com/nd/android/u/contact/view/StickyLayout$1$1
.inner class public static abstract interface OnGiveUpTouchEventListener inner com/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener outer com/nd/android/u/contact/view/StickyLayout

.field private static final 'DEBUG' Z = 1


.field public static final 'STATUS_COLLAPSED' I = 2


.field public static final 'STATUS_EXPANDED' I = 1


.field private static final 'TAG' Ljava/lang/String; = "StickyLayout"

.field private static final 'TAN' I = 2


.field private 'mContent' Landroid/view/View;

.field private 'mDisallowInterceptTouchEventOnHeader' Z

.field private 'mGiveUpTouchEventListener' Lcom/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener;

.field private 'mHeader' Landroid/view/View;

.field private 'mHeaderHeight' I

.field private 'mInitDataSucceed' Z

.field private 'mIsSticky' Z

.field private 'mLastX' I

.field private 'mLastXIntercept' I

.field private 'mLastY' I

.field private 'mLastYIntercept' I

.field private 'mOriginalHeaderHeight' I

.field private 'mStatus' I

.field private 'mTouchSlop' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastX I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastY I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mInitDataSucceed Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mDisallowInterceptTouchEventOnHeader Z
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastX I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastY I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mInitDataSucceed Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mDisallowInterceptTouchEventOnHeader Z
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.annotation invisible Landroid/annotation/TargetApi;
value I = 11
.end annotation
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastX I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastY I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mInitDataSucceed Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mDisallowInterceptTouchEventOnHeader Z
return
.limit locals 4
.limit stack 4
.end method

.method private initData()V
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getResources()Landroid/content/res/Resources;
ldc "sticky_header"
ldc "id"
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getContext()Landroid/content/Context;
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
istore 1
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getResources()Landroid/content/res/Resources;
ldc "sticky_content"
ldc "id"
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getContext()Landroid/content/Context;
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
istore 2
iload 1
ifeq L0
iload 2
ifeq L0
aload 0
aload 0
iload 1
invokevirtual com/nd/android/u/contact/view/StickyLayout/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
aload 0
aload 0
iload 2
invokevirtual com/nd/android/u/contact/view/StickyLayout/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/view/StickyLayout/mContent Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
putfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
aload 0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
putfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getContext()Landroid/content/Context;
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledTouchSlop()I
putfield com/nd/android/u/contact/view/StickyLayout/mTouchSlop I
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
ifle L1
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mInitDataSucceed Z
L1:
ldc "StickyLayout"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mTouchSlop = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mTouchSlop I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "mHeaderHeight = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L0:
new java/util/NoSuchElementException
dup
ldc "Did your view with id \"sticky_header\" or \"sticky_content\" exists?"
invokespecial java/util/NoSuchElementException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 5
.end method

.method public getHeaderHeight()I
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
iconst_0
istore 3
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 2
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 5
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L3
L3:
iload 3
istore 2
L4:
ldc "StickyLayout"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "intercepted="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 2
ifeq L5
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
ifeq L5
iconst_1
ireturn
L0:
aload 0
iload 2
putfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
aload 0
iload 5
putfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
aload 0
iload 2
putfield com/nd/android/u/contact/view/StickyLayout/mLastX I
aload 0
iload 5
putfield com/nd/android/u/contact/view/StickyLayout/mLastY I
iconst_0
istore 2
goto L4
L2:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
istore 6
iload 5
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
isub
istore 4
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mDisallowInterceptTouchEventOnHeader Z
ifeq L6
iload 5
aload 0
invokevirtual com/nd/android/u/contact/view/StickyLayout/getHeaderHeight()I
if_icmpgt L6
iconst_0
istore 2
goto L4
L6:
iload 4
invokestatic java/lang/Math/abs(I)I
iload 2
iload 6
isub
invokestatic java/lang/Math/abs(I)I
if_icmpgt L7
iconst_0
istore 2
goto L4
L7:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mStatus I
iconst_1
if_icmpne L8
iload 4
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mTouchSlop I
ineg
if_icmpgt L8
iconst_1
istore 2
goto L4
L8:
iload 3
istore 2
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mGiveUpTouchEventListener Lcom/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener;
ifnull L4
iload 3
istore 2
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mGiveUpTouchEventListener Lcom/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener;
aload 1
invokeinterface com/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener/giveUpTouchEvent(Landroid/view/MotionEvent;)Z 1
ifeq L4
iload 3
istore 2
iload 4
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mTouchSlop I
if_icmplt L4
iconst_1
istore 2
goto L4
L1:
iconst_0
istore 2
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastYIntercept I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/StickyLayout/mLastXIntercept I
goto L4
L5:
iconst_0
ireturn
.limit locals 7
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
ifne L0
iconst_1
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 3
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 4
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L1
L2
L3
default : L1
L1:
aload 0
iload 3
putfield com/nd/android/u/contact/view/StickyLayout/mLastX I
aload 0
iload 4
putfield com/nd/android/u/contact/view/StickyLayout/mLastY I
iconst_1
ireturn
L3:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mLastX I
istore 2
iload 4
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mLastY I
isub
istore 2
ldc "StickyLayout"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "mHeaderHeight="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  deltaY="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "  mlastY="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mLastY I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
iload 2
iadd
putfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
aload 0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
invokevirtual com/nd/android/u/contact/view/StickyLayout/setHeaderHeight(I)V
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
i2d
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
i2d
ldc2_w 0.5D
dmul
dcmpg
ifgt L4
iconst_0
istore 2
aload 0
iconst_2
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
L5:
aload 0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
iload 2
ldc2_w 500L
invokevirtual com/nd/android/u/contact/view/StickyLayout/smoothSetHeaderHeight(IIJ)V
goto L1
L4:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
istore 2
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
goto L5
.limit locals 5
.limit stack 6
.end method

.method public onWindowFocusChanged(Z)V
aload 0
iload 1
invokespecial android/widget/LinearLayout/onWindowFocusChanged(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
ifnull L1
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mContent Landroid/view/View;
ifnonnull L0
L1:
aload 0
invokespecial com/nd/android/u/contact/view/StickyLayout/initData()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public requestDisallowInterceptTouchEventOnHeader(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/StickyLayout/mDisallowInterceptTouchEventOnHeader Z
return
.limit locals 2
.limit stack 2
.end method

.method public setHeaderHeight(I)V
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mInitDataSucceed Z
ifne L0
aload 0
invokespecial com/nd/android/u/contact/view/StickyLayout/initData()V
L0:
ldc "StickyLayout"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setHeaderHeight height="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 1
ifgt L1
iconst_0
istore 2
L2:
iload 2
ifne L3
aload 0
iconst_2
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
L4:
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
ifnull L5
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
ifnull L5
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
iload 2
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mHeader Landroid/view/View;
invokevirtual android/view/View/requestLayout()V
aload 0
iload 2
putfield com/nd/android/u/contact/view/StickyLayout/mHeaderHeight I
return
L1:
iload 1
istore 2
iload 1
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
if_icmple L2
aload 0
getfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
istore 2
goto L2
L3:
aload 0
iconst_1
putfield com/nd/android/u/contact/view/StickyLayout/mStatus I
goto L4
L5:
ldc "StickyLayout"
ldc "null LayoutParams when setHeaderHeight"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 3
.end method

.method public setHeaderHeight(IZ)V
iload 2
ifeq L0
aload 0
iload 1
invokevirtual com/nd/android/u/contact/view/StickyLayout/setOriginalHeaderHeight(I)V
L0:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/view/StickyLayout/setHeaderHeight(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public setOnGiveUpTouchEventListener(Lcom/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/StickyLayout/mGiveUpTouchEventListener Lcom/nd/android/u/contact/view/StickyLayout$OnGiveUpTouchEventListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOriginalHeaderHeight(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/StickyLayout/mOriginalHeaderHeight I
return
.limit locals 2
.limit stack 2
.end method

.method public setSticky(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/StickyLayout/mIsSticky Z
return
.limit locals 2
.limit stack 2
.end method

.method public smoothSetHeaderHeight(IIJ)V
aload 0
iload 1
iload 2
lload 3
iconst_0
invokevirtual com/nd/android/u/contact/view/StickyLayout/smoothSetHeaderHeight(IIJZ)V
return
.limit locals 5
.limit stack 6
.end method

.method public smoothSetHeaderHeight(IIJZ)V
lload 3
l2f
ldc_w 1000.0F
fdiv
ldc_w 30.0F
fmul
f2i
iconst_1
iadd
istore 6
new com/nd/android/u/contact/view/StickyLayout$1
dup
aload 0
ldc "Thread#smoothSetHeaderHeight"
iload 6
iload 2
iload 1
iload 2
iload 1
isub
i2f
iload 6
i2f
fdiv
iload 5
invokespecial com/nd/android/u/contact/view/StickyLayout$1/<init>(Lcom/nd/android/u/contact/view/StickyLayout;Ljava/lang/String;IIIFZ)V
invokevirtual com/nd/android/u/contact/view/StickyLayout$1/start()V
return
.limit locals 7
.limit stack 9
.end method
