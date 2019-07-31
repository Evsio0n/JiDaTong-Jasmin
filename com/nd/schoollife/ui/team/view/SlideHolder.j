.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/view/SlideHolder
.super android/widget/FrameLayout
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$1
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$2
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$3
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$4
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$5
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$6
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$7
.inner class inner com/nd/schoollife/ui/team/view/SlideHolder$8
.inner class public static abstract interface OnSlideListener inner com/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener outer com/nd/schoollife/ui/team/view/SlideHolder
.inner class private SlideAnimation inner com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation outer com/nd/schoollife/ui/team/view/SlideHolder

.field public static final 'DIRECTION_LEFT' I = 1


.field public static final 'DIRECTION_NONE' I = 2


.field public static final 'DIRECTION_RIGHT' I = -1


.field protected static final 'MODE_FINISHED' I = 2


.field protected static final 'MODE_READY' I = 0


.field protected static final 'MODE_SLIDE' I = 1


.field private static final 'TAG' Ljava/lang/String;

.field private 'mAlwaysOpened' Z

.field private 'mCachedBitmap' Landroid/graphics/Bitmap;

.field private 'mCachedCanvas' Landroid/graphics/Canvas;

.field private 'mCachedPaint' Landroid/graphics/Paint;

.field private 'mCloseListener' Landroid/view/animation/Animation$AnimationListener;

.field private 'mCloseOnRelease' Z

.field private 'mDirection' I

.field private 'mDispatchWhenOpened' Z

.field private 'mEnabled' Z

.field private 'mEndOffset' I

.field private 'mFrame' B

.field private 'mHistoricalX' I

.field private 'mInterceptTouch' Z

.field private 'mListener' Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;

.field private 'mMenuView' Landroid/view/View;

.field private 'mMode' I

.field private 'mOffset' I

.field private 'mOpenListener' Landroid/view/animation/Animation$AnimationListener;

.field private 'mStartOffset' I

.field private 'mWhenReady' Ljava/util/Queue; signature "Ljava/util/Queue<Ljava/lang/Runnable;>;"

.method static <clinit>()V
ldc com/nd/schoollife/ui/team/view/SlideHolder
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/team/view/SlideHolder/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mFrame B
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$6
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$6/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$8
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$8/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initView()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mFrame B
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$6
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$6/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$8
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$8/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mFrame B
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$6
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$6/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$8
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$8/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initView()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$002(Lcom/nd/schoollife/ui/team/view/SlideHolder;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/team/view/SlideHolder;)Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/completeOpening()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/completeClosing()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/schoollife/ui/team/view/SlideHolder;I)I
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private completeClosing()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/requestLayout()V
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$7
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$7/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/post(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
iconst_0
invokeinterface com/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener/onSlideCompleted(Z)V 1
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private completeOpening()V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
invokevirtual android/view/View/getWidth()I
imul
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/requestLayout()V
aload 0
new com/nd/schoollife/ui/team/view/SlideHolder$5
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$5/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/post(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
iconst_1
invokeinterface com/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener/onSlideCompleted(Z)V 1
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private finishSlide()V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
ifle L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
iconst_2
idiv
if_icmple L1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
if_icmple L2
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
L2:
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
imul
if_icmpge L3
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
L3:
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
imul
iconst_2
idiv
if_icmpge L4
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
if_icmpge L5
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
L5:
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
return
L4:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
imul
if_icmple L6
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
L6:
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 5
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
iconst_1
istore 4
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getX()F
fstore 2
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L2
aload 0
fload 2
f2i
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
iconst_1
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_2
if_icmpne L3
fload 2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
i2f
fsub
fstore 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
i2f
fload 3
fmul
ldc_w 50.0F
fcmpl
ifle L4
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
ifeq L5
L4:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
i2f
fload 3
fmul
ldc_w -50.0F
fcmpg
ifge L6
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_2
if_icmpne L6
L5:
aload 0
fload 2
f2i
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initSlideMode()V
L3:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L7
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L8
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/finishSlide()V
L8:
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
iconst_0
ireturn
L6:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L1
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
fload 3
fadd
f2i
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
fload 2
f2i
putfield com/nd/schoollife/ui/team/view/SlideHolder/mHistoricalX I
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/isSlideAllowed()Z
ifne L3
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/finishSlide()V
goto L3
L7:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L9
L10:
iload 4
ireturn
L9:
iconst_0
istore 4
goto L10
.limit locals 5
.limit stack 3
.end method

.method private initSlideMode()V
.catch java/lang/OutOfMemoryError from L0 to L1 using L2
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
ifne L3
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getWidth()I
imul
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
L4:
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/isRecycled()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
invokevirtual android/graphics/Bitmap/getWidth()I
aload 1
invokevirtual android/view/View/getWidth()I
if_icmpeq L5
L0:
aload 0
aload 1
invokevirtual android/view/View/getWidth()I
aload 1
invokevirtual android/view/View/getHeight()I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
L1:
aload 0
new android/graphics/Canvas
dup
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
invokespecial android/graphics/Canvas/<init>(Landroid/graphics/Bitmap;)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
L6:
aload 1
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
aload 1
invokevirtual android/view/View/getScrollX()I
ineg
i2f
aload 1
invokevirtual android/view/View/getScrollY()I
ineg
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
invokevirtual android/view/View/draw(Landroid/graphics/Canvas;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
return
L3:
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getWidth()I
imul
putfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
goto L4
L2:
astore 2
aload 0
aload 1
invokevirtual android/view/View/getWidth()I
aload 1
invokevirtual android/view/View/getHeight()I
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
invokestatic android/graphics/Bitmap/createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
getstatic com/nd/schoollife/ui/team/view/SlideHolder/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/OutOfMemoryError/getMessage()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
L5:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
iconst_0
getstatic android/graphics/PorterDuff$Mode/CLEAR Landroid/graphics/PorterDuff$Mode;
invokevirtual android/graphics/Canvas/drawColor(ILandroid/graphics/PorterDuff$Mode;)V
goto L6
.limit locals 3
.limit stack 4
.end method

.method private initView()V
aload 0
new android/graphics/Paint
dup
bipush 7
invokespecial android/graphics/Paint/<init>(I)V
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedPaint Landroid/graphics/Paint;
return
.limit locals 1
.limit stack 4
.end method

.method private isReadyForSlide()Z
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getWidth()I
ifle L0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getHeight()I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private isSlideAllowed()Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
ifle L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
if_icmpge L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
imul
if_icmpge L1
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
ifne L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
imul
if_icmple L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
imul
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mStartOffset I
imul
if_icmpgt L2
L1:
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method public close()Z
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/isReadyForSlide()Z
ifne L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
new com/nd/schoollife/ui/team/view/SlideHolder$3
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$3/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokeinterface java/util/Queue/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L2:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initSlideMode()V
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/invalidate()V
iconst_1
ireturn
.limit locals 2
.limit stack 5
.end method

.method public closeImmediately()Z
iconst_1
istore 1
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L1
L0:
iconst_0
istore 1
L2:
iload 1
ireturn
L1:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/isReadyForSlide()Z
ifne L3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
new com/nd/schoollife/ui/team/view/SlideHolder$4
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$4/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokeinterface java/util/Queue/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L3:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/requestLayout()V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
iconst_0
invokeinterface com/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener/onSlideCompleted(Z)V 1
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
.catch java/lang/IndexOutOfBoundsException from L0 to L1 using L2
.catch java/lang/IndexOutOfBoundsException from L1 to L3 using L2
.catch java/lang/IndexOutOfBoundsException from L3 to L4 using L2
.catch java/lang/IndexOutOfBoundsException from L5 to L6 using L2
.catch java/lang/IndexOutOfBoundsException from L7 to L8 using L2
.catch java/lang/IndexOutOfBoundsException from L9 to L10 using L2
.catch java/lang/IndexOutOfBoundsException from L11 to L12 using L2
.catch java/lang/IndexOutOfBoundsException from L12 to L13 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L11
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 7
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L5
aload 7
invokevirtual android/view/View/isDirty()Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
iconst_0
getstatic android/graphics/PorterDuff$Mode/CLEAR Landroid/graphics/PorterDuff$Mode;
invokevirtual android/graphics/Canvas/drawColor(ILandroid/graphics/PorterDuff$Mode;)V
aload 7
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
invokevirtual android/view/View/draw(Landroid/graphics/Canvas;)V
L1:
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getScrollX()I
istore 3
aload 7
invokevirtual android/view/View/getScrollY()I
istore 4
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_1
if_icmpne L9
aload 1
fconst_0
fconst_0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 7
invokevirtual android/view/View/getHeight()I
i2f
getstatic android/graphics/Region$Op/REPLACE Landroid/graphics/Region$Op;
invokevirtual android/graphics/Canvas/clipRect(FFFFLandroid/graphics/Region$Op;)Z
pop
L3:
aload 1
aload 7
invokevirtual android/view/View/getLeft()I
i2f
aload 7
invokevirtual android/view/View/getTop()I
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 1
iload 3
ineg
i2f
iload 4
ineg
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 7
aload 1
invokevirtual android/view/View/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedBitmap Landroid/graphics/Bitmap;
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
fconst_0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
L4:
return
L5:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mFrame B
iconst_1
iadd
i2b
istore 2
aload 0
iload 2
putfield com/nd/schoollife/ui/team/view/SlideHolder/mFrame B
L6:
iload 2
iconst_5
irem
ifne L1
L7:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
iconst_0
getstatic android/graphics/PorterDuff$Mode/CLEAR Landroid/graphics/PorterDuff$Mode;
invokevirtual android/graphics/Canvas/drawColor(ILandroid/graphics/PorterDuff$Mode;)V
aload 7
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCachedCanvas Landroid/graphics/Canvas;
invokevirtual android/view/View/draw(Landroid/graphics/Canvas;)V
L8:
goto L1
L9:
aload 7
invokevirtual android/view/View/getWidth()I
istore 5
aload 7
invokevirtual android/view/View/getLeft()I
istore 6
aload 1
iload 6
iload 5
iadd
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
iadd
iconst_0
iload 6
iload 5
iadd
aload 7
invokevirtual android/view/View/getHeight()I
invokevirtual android/graphics/Canvas/clipRect(IIII)Z
pop
L10:
goto L3
L11:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L12
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
ifne L12
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L12:
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchDraw(Landroid/graphics/Canvas;)V
L13:
return
L2:
astore 1
return
.limit locals 8
.limit stack 6
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
.catch java/lang/IllegalArgumentException from L1 to L3 using L2
.catch java/lang/IllegalArgumentException from L3 to L4 using L2
.catch java/lang/IllegalArgumentException from L4 to L5 using L2
.catch java/lang/IllegalArgumentException from L5 to L6 using L2
.catch java/lang/IllegalArgumentException from L7 to L8 using L2
.catch java/lang/IllegalArgumentException from L9 to L10 using L2
.catch java/lang/IllegalArgumentException from L11 to L12 using L13
.catch java/lang/IllegalArgumentException from L14 to L15 using L13
.catch java/lang/IllegalArgumentException from L16 to L17 using L13
.catch java/lang/IllegalArgumentException from L18 to L19 using L2
.catch java/lang/IllegalArgumentException from L20 to L21 using L2
.catch java/lang/IllegalArgumentException from L21 to L22 using L2
.catch java/lang/IllegalArgumentException from L23 to L24 using L13
.catch java/lang/IllegalArgumentException from L25 to L26 using L13
.catch java/lang/IllegalArgumentException from L27 to L28 using L2
.catch java/lang/IllegalArgumentException from L29 to L30 using L2
.catch java/lang/IllegalArgumentException from L30 to L31 using L2
.catch java/lang/IllegalArgumentException from L32 to L33 using L2
iconst_1
istore 8
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_2
if_icmpne L0
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
istore 8
L34:
iload 8
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
ifne L3
L1:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
ifeq L4
L3:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifeq L5
L4:
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L5:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_2
if_icmpeq L9
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpeq L7
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
L6:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
iconst_1
ireturn
L7:
aload 1
invokestatic android/view/MotionEvent/obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
astore 1
aload 1
iconst_3
invokevirtual android/view/MotionEvent/setAction(I)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 1
invokevirtual android/view/MotionEvent/recycle()V
L8:
iconst_1
ireturn
L9:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 7
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 9
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 10
aload 10
aload 9
invokevirtual android/view/View/getHitRect(Landroid/graphics/Rect;)V
L10:
iconst_0
istore 4
iconst_0
istore 6
iload 4
istore 3
L11:
aload 1
invokevirtual android/view/MotionEvent/getPointerCount()I
iconst_1
if_icmple L35
L12:
iload 4
istore 3
L14:
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getX(I)F
f2i
istore 5
L15:
iload 5
istore 3
L16:
aload 1
iconst_0
invokevirtual android/view/MotionEvent/getY(I)F
fstore 2
L17:
fload 2
f2i
istore 4
iload 5
istore 3
L18:
aload 9
iload 3
iload 4
invokevirtual android/graphics/Rect/contains(II)Z
ifne L32
L19:
iload 7
iconst_1
if_icmpne L36
L20:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
ifeq L36
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
ifne L36
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/close()Z
pop
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
L21:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
ifeq L34
aload 0
aload 1
invokespecial android/widget/FrameLayout/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
L22:
iconst_1
ireturn
L35:
iload 4
istore 3
L23:
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
istore 4
L24:
iload 4
istore 3
L25:
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 2
L26:
fload 2
f2i
istore 5
iload 4
istore 3
iload 5
istore 4
goto L18
L13:
astore 11
L27:
aload 11
invokevirtual java/lang/IllegalArgumentException/printStackTrace()V
L28:
iload 6
istore 4
goto L18
L36:
iload 7
ifne L30
L29:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
ifne L30
aload 0
iconst_1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mCloseOnRelease Z
L30:
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
L31:
goto L21
L32:
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/onTouchEvent(Landroid/view/MotionEvent;)Z
pop
aload 1
aload 10
invokevirtual android/view/View/getLeft()I
ineg
i2f
aload 10
invokevirtual android/view/View/getTop()I
ineg
i2f
invokevirtual android/view/MotionEvent/offsetLocation(FF)V
aload 10
aload 1
invokevirtual android/view/View/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
pop
L33:
iconst_1
ireturn
.limit locals 12
.limit stack 3
.end method

.method public getMenuOffset()I
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isAllowedInterceptTouch()Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDispatchTouchWhenOpened()Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEnabled()Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isOpened()Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_2
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
iload 4
iload 2
isub
istore 2
iload 5
iload 3
isub
istore 3
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 6
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
istore 4
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_1
if_icmpne L0
aload 6
iconst_0
iconst_0
iload 4
iconst_0
iadd
iload 3
invokevirtual android/view/View/layout(IIII)V
L1:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_1
if_icmpne L3
aload 0
iload 4
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
L4:
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 6
aload 6
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
iconst_0
iadd
iconst_0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
iconst_0
iadd
aload 6
invokevirtual android/view/View/getMeasuredWidth()I
iadd
iload 3
invokevirtual android/view/View/layout(IIII)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/invalidate()V
L5:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast java/lang/Runnable
astore 6
aload 6
ifnull L6
aload 6
invokeinterface java/lang/Runnable/run()V 0
goto L5
L0:
aload 6
iload 2
iload 4
isub
iconst_0
iload 2
iload 3
invokevirtual android/view/View/layout(IIII)V
goto L1
L3:
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
goto L4
L2:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_2
if_icmpne L7
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iload 4
imul
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
goto L4
L7:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
ifne L4
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
goto L4
L6:
return
.limit locals 7
.limit stack 5
.end method

.method protected onMeasure(II)V
aload 0
aload 0
iconst_0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifeq L0
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/getChildAt(I)Landroid/view/View;
astore 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
ifnull L0
aload 3
ifnull L0
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
iload 1
iload 2
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/measureChild(Landroid/view/View;II)V
aload 3
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/FrameLayout$LayoutParams
astore 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_1
if_icmpne L1
aload 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
putfield android/widget/FrameLayout$LayoutParams/leftMargin I
L0:
aload 0
iload 1
iload 2
invokespecial android/widget/FrameLayout/onMeasure(II)V
return
L1:
aload 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
invokevirtual android/view/View/getMeasuredWidth()I
putfield android/widget/FrameLayout$LayoutParams/rightMargin I
goto L0
.limit locals 4
.limit stack 4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
iconst_2
if_icmpne L0
aload 0
aload 1
invokespecial android/widget/FrameLayout/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L0:
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/handleTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/invalidate()V
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public open()Z
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/isReadyForSlide()Z
ifne L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
new com/nd/schoollife/ui/team/view/SlideHolder$1
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$1/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokeinterface java/util/Queue/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L2:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/initSlideMode()V
new com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOffset I
i2f
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mEndOffset I
i2f
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mOpenListener Landroid/view/animation/Animation$AnimationListener;
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/startAnimation(Landroid/view/animation/Animation;)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/invalidate()V
iconst_1
ireturn
.limit locals 2
.limit stack 5
.end method

.method public openImmediately()Z
iconst_1
istore 1
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
iconst_1
if_icmpne L1
L0:
iconst_0
istore 1
L2:
iload 1
ireturn
L1:
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder/isReadyForSlide()Z
ifne L3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mWhenReady Ljava/util/Queue;
new com/nd/schoollife/ui/team/view/SlideHolder$2
dup
aload 0
invokespecial com/nd/schoollife/ui/team/view/SlideHolder$2/<init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;)V
invokeinterface java/util/Queue/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L3:
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mMenuView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
iconst_2
putfield com/nd/schoollife/ui/team/view/SlideHolder/mMode I
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/requestLayout()V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
iconst_1
invokeinterface com/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener/onSlideCompleted(Z)V 1
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method public setAllowInterceptTouch(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mInterceptTouch Z
return
.limit locals 2
.limit stack 2
.end method

.method public setAlwaysOpened(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mAlwaysOpened Z
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public setDirection(I)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/closeImmediately()Z
pop
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDirection I
return
.limit locals 2
.limit stack 2
.end method

.method public setDispatchTouchWhenOpened(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mDispatchWhenOpened Z
return
.limit locals 2
.limit stack 2
.end method

.method public setEnabled(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mEnabled Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnSlideListener(Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder/mListener Lcom/nd/schoollife/ui/team/view/SlideHolder$OnSlideListener;
return
.limit locals 2
.limit stack 2
.end method

.method public toggle()V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifeq L0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/close()Z
pop
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/open()Z
pop
return
.limit locals 1
.limit stack 1
.end method

.method public toggle(Z)V
iload 1
ifeq L0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/toggleImmediately()V
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/toggle()V
return
.limit locals 2
.limit stack 1
.end method

.method public toggleImmediately()V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/isOpened()Z
ifeq L0
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/closeImmediately()Z
pop
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/openImmediately()Z
pop
return
.limit locals 1
.limit stack 1
.end method
