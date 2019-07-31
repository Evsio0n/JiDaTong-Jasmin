.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/widget/TDGallery
.super com/nd/android/backpacksystem/widget/TDAbsSpinner
.implements android/view/GestureDetector$OnGestureListener
.implements android/view/GestureDetector$OnDoubleTapListener
.inner class inner com/nd/android/backpacksystem/widget/TDGallery$1
.inner class inner com/nd/android/backpacksystem/widget/TDGallery$2
.inner class private FlingRunnable inner com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable outer com/nd/android/backpacksystem/widget/TDGallery
.inner class public static LayoutParams inner com/nd/android/backpacksystem/widget/TDGallery$LayoutParams outer com/nd/android/backpacksystem/widget/TDGallery
.inner class public static abstract interface OnEndFlingListener inner com/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener outer com/nd/android/backpacksystem/widget/TDGallery

.field public static final 'HORIZONTAL' I = 1


.field private static final 'SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT' I = 250


.field public static final 'SIZE_STANDARD' F = 140.0F


.field private static final 'TAG' Ljava/lang/String; = "Gallery"

.field public static final 'VERTICAL' I = 2


.field private static final 'localLOGV' Z = 0


.field 'lastPosition' I

.field private 'mAnimationDuration' I

.field private 'mCamera' Landroid/graphics/Camera;

.field private 'mContextMenuInfo' Lcom/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo;

.field private 'mCoveflowCenter' I

.field private 'mDisableSuppressSelectionChangedRunnable' Ljava/lang/Runnable;

.field private 'mDownTouchPosition' I

.field private 'mDownTouchView' Landroid/view/View;

.field private 'mFirstChildOffset' I

.field private 'mFlingRunnable' Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;

.field private 'mGestureDetector' Landroid/view/GestureDetector;

.field private 'mGravity' I

.field private 'mIsDisableScroll' Z

.field private 'mIsFirstScroll' Z

.field private 'mIsScrollCycle' Z

.field private 'mIsScrollCycleTemp' Z

.field private 'mIsSlotCenter' Z

.field private 'mLeftMost' I

.field private 'mOnEndFlingListener' Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;

.field private 'mOrientation' I

.field private 'mReceivedInvokeKeyDown' Z

.field private 'mRightMost' I

.field private 'mScrollBarSize' I

.field private 'mScrolling' Z

.field private 'mSelectedChild' Landroid/view/View;

.field private 'mShouldCallbackDuringFling' Z

.field private 'mShouldCallbackOnUnselectedItemClick' Z

.field private 'mShouldStopFling' Z

.field private 'mSpacing' I

.field private 'mSuppressSelectionChanged' Z

.field private 'mVelocityRatio' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/backpacksystem/widget/TDGallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/android/backpacksystem/R$attr/galleryStyle I
invokespecial com/nd/android/backpacksystem/widget/TDGallery/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
aload 0
sipush 400
putfield com/nd/android/backpacksystem/widget/TDGallery/mAnimationDuration I
aload 0
new com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/<init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
putfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
aload 0
new com/nd/android/backpacksystem/widget/TDGallery$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery$1/<init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
putfield com/nd/android/backpacksystem/widget/TDGallery/mDisableSuppressSelectionChangedRunnable Ljava/lang/Runnable;
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackDuringFling Z
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackOnUnselectedItemClick Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsDisableScroll Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mScrolling Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstChildOffset I
aload 0
iconst_5
putfield com/nd/android/backpacksystem/widget/TDGallery/mScrollBarSize I
aload 0
fconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycle Z
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycleTemp Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsSlotCenter Z
aload 0
iconst_2
putfield com/nd/android/backpacksystem/widget/TDGallery/mOrientation I
aload 0
new android/graphics/Camera
dup
invokespecial android/graphics/Camera/<init>()V
putfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
aload 0
aconst_null
putfield com/nd/android/backpacksystem/widget/TDGallery/mOnEndFlingListener Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;
aload 0
new android/view/GestureDetector
dup
aload 1
aload 0
invokespecial android/view/GestureDetector/<init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
putfield com/nd/android/backpacksystem/widget/TDGallery/mGestureDetector Landroid/view/GestureDetector;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mGestureDetector Landroid/view/GestureDetector;
iconst_1
invokevirtual android/view/GestureDetector/setIsLongpressEnabled(Z)V
aload 1
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/Gallery [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/Gallery_gravity I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
istore 3
iload 3
iflt L0
aload 0
iload 3
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setGravity(I)V
L0:
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/Gallery_animationDuration I
iconst_m1
invokevirtual android/content/res/TypedArray/getInt(II)I
istore 3
iload 3
ifle L1
aload 0
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setAnimationDuration(I)V
L1:
aload 0
aload 2
getstatic com/nd/android/backpacksystem/R$styleable/Gallery_spacing I
iconst_0
invokevirtual android/content/res/TypedArray/getDimensionPixelOffset(II)I
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setSpacing(I)V
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setChildrenDrawingOrderEnabled(Z)V
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setStaticTransformationsEnabled(Z)V
aload 0
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokevirtual android/view/ViewConfiguration/getScaledScrollBarSize()I
putfield com/nd/android/backpacksystem/widget/TDGallery/mScrollBarSize I
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L2
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mGravity I
L2:
return
.limit locals 4
.limit stack 5
.end method

.method static synthetic access$002(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mScrolling Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/backpacksystem/widget/TDGallery;)I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAnimationDuration I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$702(Lcom/nd/android/backpacksystem/widget/TDGallery;I)I
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/backpacksystem/widget/TDGallery;I)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/trackMotionScrollVertical(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private calculateLeft(Landroid/view/View;Z)I
iload 2
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getMeasuredWidth()I
istore 3
L1:
iload 2
ifeq L2
aload 1
invokevirtual android/view/View/getMeasuredWidth()I
istore 4
L3:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mGravity I
tableswitch 1
L4
L5
L6
L5
L7
default : L5
L5:
iconst_0
ireturn
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
istore 3
goto L1
L2:
aload 1
invokevirtual android/view/View/getWidth()I
istore 4
goto L3
L6:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
ireturn
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
istore 5
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
istore 6
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
iload 3
iload 5
isub
iload 6
isub
iload 4
isub
iconst_2
idiv
iadd
ireturn
L7:
iload 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
isub
iload 4
isub
ireturn
.limit locals 7
.limit stack 3
.end method

.method private detachOffScreenChildrenVertical(Z)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 7
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
istore 5
iconst_0
istore 3
iconst_0
istore 6
iconst_0
istore 2
iconst_0
istore 4
iload 1
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
istore 8
iconst_0
istore 3
iload 4
istore 2
L1:
iload 3
iload 7
if_icmpge L2
aload 0
iload 3
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 9
aload 9
invokevirtual android/view/View/getBottom()I
iload 8
if_icmplt L3
L2:
iload 2
istore 4
iload 6
istore 5
iload 2
iload 7
if_icmpne L4
iload 2
iconst_1
isub
istore 4
iload 6
istore 5
L4:
aload 0
iload 5
iload 4
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/detachViewsFromParent(II)V
iload 1
ifeq L5
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 4
iadd
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L5
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
irem
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
L5:
return
L3:
iload 2
iconst_1
iadd
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
iload 5
iload 3
iadd
aload 9
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/put(ILandroid/view/View;)V
iload 3
iconst_1
iadd
istore 3
goto L1
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
istore 6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
istore 8
iload 7
iconst_1
isub
istore 4
L6:
iload 4
iflt L7
aload 0
iload 4
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 9
aload 9
invokevirtual android/view/View/getTop()I
iload 6
iload 8
isub
if_icmpgt L8
L7:
iload 2
istore 4
iload 3
istore 5
iload 3
ifne L4
iload 3
iconst_1
iadd
istore 5
iload 2
istore 4
goto L4
L8:
iload 4
istore 3
iload 2
iconst_1
iadd
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
iload 5
iload 4
iadd
aload 9
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/put(ILandroid/view/View;)V
iload 4
iconst_1
isub
istore 4
goto L6
.limit locals 10
.limit stack 3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
iconst_0
istore 5
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOnItemLongClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOnItemLongClickListener Lcom/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener;
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
lload 3
invokeinterface com/nd/android/backpacksystem/widget/TDAdapterView$OnItemLongClickListener/onItemLongClick(Lcom/nd/android/backpacksystem/widget/TDAdapterView;Landroid/view/View;IJ)Z 5
istore 5
L0:
iload 5
istore 6
iload 5
ifne L1
aload 0
new com/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo
dup
aload 1
iload 2
lload 3
invokespecial com/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo/<init>(Landroid/view/View;IJ)V
putfield com/nd/android/backpacksystem/widget/TDGallery/mContextMenuInfo Lcom/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo;
aload 0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/showContextMenuForChild(Landroid/view/View;)Z
istore 6
L1:
iload 6
ifeq L2
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/performHapticFeedback(I)Z
pop
L2:
iload 6
ireturn
.limit locals 7
.limit stack 7
.end method

.method private dispatchPress(Landroid/view/View;)V
aload 1
ifnull L0
aload 1
iconst_1
invokevirtual android/view/View/setPressed(Z)V
L0:
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setPressed(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method private fillToGalleryBottom()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryBottomCycle()V
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
istore 4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getTop()I
istore 5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingRight()I
istore 6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
istore 7
aload 0
iload 1
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 8
aload 8
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 1
iadd
istore 2
aload 8
invokevirtual android/view/View/getBottom()I
iload 3
iadd
istore 1
L3:
iload 1
iload 4
iload 5
isub
iload 6
isub
if_icmpge L1
iload 2
iload 7
if_icmpge L1
aload 0
iload 2
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 1
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
iload 3
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
goto L3
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
isub
istore 2
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
istore 1
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
goto L3
.limit locals 9
.limit stack 5
.end method

.method private fillToGalleryBottomCycle()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
istore 4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
istore 5
aload 0
iload 1
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 6
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "  fillToGalleryRightCycle mFirstPosition = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/Log(Ljava/lang/String;)V
aload 6
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 1
iadd
istore 2
aload 6
invokevirtual android/view/View/getBottom()I
iload 3
iadd
istore 1
L1:
iload 1
iload 4
if_icmpge L2
iload 2
iload 5
if_icmpge L2
aload 0
iload 2
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 1
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
iload 3
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
isub
istore 2
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
istore 1
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
goto L1
L2:
iload 2
iload 5
irem
istore 2
L3:
iload 1
iload 4
if_icmpgt L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpge L4
aload 0
iload 2
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 1
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
invokevirtual android/view/View/getBottom()I
iload 3
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
goto L3
L4:
return
.limit locals 7
.limit stack 5
.end method

.method private fillToGalleryTop()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryTopCycle()V
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
istore 4
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 5
aload 5
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iconst_1
isub
istore 1
aload 5
invokevirtual android/view/View/getTop()I
iload 3
isub
istore 2
L3:
iload 2
iload 4
if_icmple L1
iload 1
iflt L1
aload 0
iload 1
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
astore 5
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 5
invokevirtual android/view/View/getTop()I
iload 3
isub
istore 2
iload 1
iconst_1
isub
istore 1
goto L3
L2:
iconst_0
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
istore 2
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
goto L3
.limit locals 6
.limit stack 5
.end method

.method private fillToGalleryTopCycle()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
istore 4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
istore 5
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 6
aload 6
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iconst_1
isub
istore 2
aload 6
invokevirtual android/view/View/getTop()I
iload 4
isub
istore 1
L1:
iload 1
iload 5
if_icmple L2
iload 2
iflt L2
aload 0
iload 2
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 1
iconst_0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
astore 6
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 6
invokevirtual android/view/View/getTop()I
iload 4
isub
istore 1
iload 2
iconst_1
isub
istore 2
goto L1
L0:
iconst_0
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
istore 1
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mShouldStopFling Z
goto L1
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
isub
istore 3
iload 1
istore 2
iload 3
istore 1
L3:
iload 2
iload 5
if_icmple L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpge L4
aload 0
iload 1
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
isub
iload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
astore 6
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 6
invokevirtual android/view/View/getTop()I
iload 4
isub
istore 2
iload 1
iconst_1
isub
istore 1
goto L3
L4:
return
.limit locals 7
.limit stack 5
.end method

.method private getCenterOfView(Landroid/view/View;)I
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L0
aload 1
invokevirtual android/view/View/getTop()I
aload 1
invokevirtual android/view/View/getHeight()I
iconst_2
idiv
iadd
ireturn
L0:
aload 1
invokevirtual android/view/View/getLeft()I
aload 1
invokevirtual android/view/View/getWidth()I
iconst_2
idiv
iadd
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getStopFlingPosition()F
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
i2f
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onStopFlingPosRatio()F
fmul
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
i2f
fadd
freturn
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingLeft()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingRight()I
isub
i2f
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onStopFlingPosRatio()F
fmul
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingLeft()I
i2f
fadd
freturn
.limit locals 1
.limit stack 2
.end method

.method private isOrientationVertical()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOrientation I
iconst_2
if_icmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method private makeAndAddViewVertical(IIIZ)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDataChanged Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/get(I)Landroid/view/View;
astore 5
aload 5
ifnull L0
aload 5
invokevirtual android/view/View/getTop()I
istore 1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRightMost I
aload 5
invokevirtual android/view/View/getMeasuredHeight()I
iload 1
iadd
invokestatic java/lang/Math/max(II)I
putfield com/nd/android/backpacksystem/widget/TDGallery/mRightMost I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mLeftMost I
iload 1
invokestatic java/lang/Math/min(II)I
putfield com/nd/android/backpacksystem/widget/TDGallery/mLeftMost I
aload 0
aload 5
iload 2
iload 3
iload 4
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setUpChildVertical(Landroid/view/View;IIZ)V
aload 5
areturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAdapter Landroid/widget/SpinnerAdapter;
iload 1
aconst_null
aload 0
invokeinterface android/widget/SpinnerAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
astore 5
aload 0
aload 5
iload 2
iload 3
iload 4
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setUpChildVertical(Landroid/view/View;IIZ)V
aload 5
areturn
.limit locals 6
.limit stack 5
.end method

.method private offsetChildrenTopAndBottom(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
istore 2
L0:
iload 2
iflt L1
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
iload 1
invokevirtual android/view/View/offsetTopAndBottom(I)V
iload 2
iconst_1
isub
istore 2
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method private onFinishedMovement()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
ifeq L0
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/selectionChanged()V
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method private performItemSelect(I)Z
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmpeq L0
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setSelectedPositionInt(I)V
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/checkSelectionChanged()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private scrollIntoSlotsVertical()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isSlotInCenter()Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
ifnonnull L2
L1:
return
L2:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getCenterOfView(Landroid/view/View;)I
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
iload 1
isub
istore 1
iload 1
ifeq L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startUsingDistance(I)V
return
L3:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/onFinishedMovement()V
return
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
ifeq L1
iconst_0
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
ifne L4
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 3
aload 3
invokevirtual android/view/View/getTop()I
iflt L5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
aload 3
invokevirtual android/view/View/getTop()I
isub
istore 1
L6:
iload 1
ifeq L7
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startUsingDistance(I)V
return
L5:
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getBottom()I
aload 3
invokevirtual android/view/View/getTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
if_icmpge L8
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingLeft()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstChildOffset I
isub
istore 1
goto L6
L8:
iload 2
istore 1
aload 4
invokevirtual android/view/View/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
if_icmpge L6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
aload 4
invokevirtual android/view/View/getBottom()I
isub
istore 1
goto L6
L4:
iload 2
istore 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpne L6
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 3
iload 2
istore 1
aload 3
invokevirtual android/view/View/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
if_icmpge L6
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
aload 3
invokevirtual android/view/View/getBottom()I
isub
istore 1
goto L6
L7:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/onFinishedMovement()V
return
.limit locals 5
.limit stack 3
.end method

.method private scrollToChild(I)Z
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 3
aload 3
ifnull L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
istore 1
aload 0
aload 3
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getCenterOfView(Landroid/view/View;)I
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iload 1
iload 2
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startUsingDistance(I)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method private setAnimationDuration(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mAnimationDuration I
return
.limit locals 2
.limit stack 2
.end method

.method private setSelectionToCenterChild()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
astore 7
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
istore 6
aload 7
invokevirtual android/view/View/getLeft()I
iload 6
if_icmpgt L2
aload 7
invokevirtual android/view/View/getRight()I
iload 6
if_icmpge L1
L2:
ldc_w 2147483647
istore 3
iconst_0
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
istore 1
L3:
iload 2
istore 4
iload 1
iflt L4
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getLeft()I
iload 6
if_icmpgt L5
aload 7
invokevirtual android/view/View/getRight()I
iload 6
if_icmplt L5
iload 1
istore 4
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 4
iadd
istore 2
iload 2
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L6
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
irem
istore 1
L6:
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmpeq L1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setSelectedPositionInt(I)V
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/checkSelectionChanged()V
return
L5:
aload 7
invokevirtual android/view/View/getLeft()I
iload 6
isub
invokestatic java/lang/Math/abs(I)I
aload 7
invokevirtual android/view/View/getRight()I
iload 6
isub
invokestatic java/lang/Math/abs(I)I
invokestatic java/lang/Math/min(II)I
istore 5
iload 3
istore 4
iload 5
iload 3
if_icmpge L7
iload 5
istore 4
iload 1
istore 2
L7:
iload 1
iconst_1
isub
istore 1
iload 4
istore 3
goto L3
.limit locals 8
.limit stack 3
.end method

.method private setSelectionToCenterChildVertical()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
astore 7
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
istore 6
aload 7
ifnull L2
aload 7
invokevirtual android/view/View/getTop()I
iload 6
if_icmpgt L2
aload 7
invokevirtual android/view/View/getBottom()I
iload 6
if_icmpge L1
L2:
ldc_w 2147483647
istore 3
iconst_0
istore 2
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
istore 1
L3:
iload 2
istore 4
iload 1
iflt L4
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getTop()I
iload 6
if_icmpgt L5
aload 7
invokevirtual android/view/View/getBottom()I
iload 6
if_icmplt L5
iload 1
istore 4
L4:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 4
iadd
istore 2
iload 2
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L6
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
irem
istore 1
L6:
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmpeq L1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setSelectedPositionInt(I)V
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setNextSelectedPositionInt(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/checkSelectionChanged()V
return
L5:
aload 7
invokevirtual android/view/View/getTop()I
iload 6
isub
invokestatic java/lang/Math/abs(I)I
aload 7
invokevirtual android/view/View/getBottom()I
iload 6
isub
invokestatic java/lang/Math/abs(I)I
invokestatic java/lang/Math/min(II)I
istore 5
iload 3
istore 4
iload 5
iload 3
if_icmpge L7
iload 5
istore 4
iload 1
istore 2
L7:
iload 1
iconst_1
isub
istore 1
iload 4
istore 3
goto L3
.limit locals 8
.limit stack 3
.end method

.method private setSpacing(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
return
.limit locals 2
.limit stack 2
.end method

.method private setUpChildVertical(Landroid/view/View;IIZ)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
astore 10
aload 10
astore 9
aload 10
ifnonnull L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
astore 9
L0:
iload 4
ifeq L1
iconst_m1
istore 5
L2:
aload 0
aload 1
iload 5
aload 9
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
pop
iload 2
ifne L3
iconst_1
istore 8
L4:
aload 1
iload 8
invokevirtual android/view/View/setSelected(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mHeightMeasureSpec I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
iadd
aload 9
getfield com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/height I
invokestatic android/view/ViewGroup/getChildMeasureSpec(III)I
istore 2
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mWidthMeasureSpec I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/left I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/right I
iadd
aload 9
getfield com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/width I
invokestatic android/view/ViewGroup/getChildMeasureSpec(III)I
iload 2
invokevirtual android/view/View/measure(II)V
aload 0
aload 1
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/calculateLeft(Landroid/view/View;Z)I
istore 6
aload 1
invokevirtual android/view/View/getMeasuredWidth()I
istore 7
aload 1
invokevirtual android/view/View/getMeasuredHeight()I
istore 2
iload 4
ifeq L5
iload 3
iload 2
iadd
istore 2
L6:
aload 1
iload 6
iload 3
iload 6
iload 7
iadd
iload 2
invokevirtual android/view/View/layout(IIII)V
return
L1:
iconst_0
istore 5
goto L2
L3:
iconst_0
istore 8
goto L4
L5:
iload 3
iload 2
isub
istore 5
iload 3
istore 2
iload 5
istore 3
goto L6
.limit locals 11
.limit stack 5
.end method

.method private trackMotionScrollVertical(I)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
ifne L0
return
L0:
iload 1
ifge L1
iconst_1
istore 3
L2:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isSlotInCenter()Z
ifeq L3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L4
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmple L5
L4:
aload 0
iload 3
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getLimitedMotionScrollAmount(ZI)I
iload 1
if_icmpeq L5
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/access$100(Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;Z)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/onFinishedMovement()V
L5:
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/offsetChildrenTopAndBottom(I)V
aload 0
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDGallery/detachOffScreenChildrenVertical(Z)V
iload 3
ifeq L6
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryBottom()V
L7:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/clear()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setSelectionToCenterChildVertical()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/invalidate()V
return
L1:
iconst_0
istore 3
goto L2
L6:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryTop()V
goto L7
L3:
iload 3
ifeq L8
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 4
iload 1
istore 2
aload 4
ifnull L9
iload 1
istore 2
aload 4
invokevirtual android/view/View/getRight()I
i2f
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getStopFlingPosition()F
fcmpg
ifge L9
iconst_0
istore 1
iload 1
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
ifnull L9
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/stop(Z)V
iload 1
istore 2
L9:
aload 0
iload 2
invokespecial com/nd/android/backpacksystem/widget/TDGallery/offsetChildrenTopAndBottom(I)V
aload 0
iload 3
invokespecial com/nd/android/backpacksystem/widget/TDGallery/detachOffScreenChildrenVertical(Z)V
iload 3
ifeq L10
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryBottom()V
L11:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/clear()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/setSelectionToCenterChild()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/awakenScrollBars()Z
pop
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/invalidate()V
return
L8:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 4
iload 1
istore 2
aload 4
ifnull L9
iload 1
istore 2
aload 4
invokevirtual android/view/View/getLeft()I
i2f
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
i2f
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getStopFlingPosition()F
fsub
fcmpl
ifle L9
iconst_0
istore 1
iload 1
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
ifnull L9
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/stop(Z)V
iload 1
istore 2
goto L9
L10:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryTop()V
goto L11
.limit locals 5
.limit stack 3
.end method

.method private transformChildView(Landroid/view/View;Landroid/view/animation/Transformation;I)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
invokevirtual android/graphics/Camera/save()V
iload 3
invokestatic java/lang/Math/abs(I)I
istore 6
aload 2
fconst_1
iload 6
i2f
ldc_w 1.5F
fmul
ldc_w 255.0F
fdiv
fsub
invokevirtual android/view/animation/Transformation/setAlpha(F)V
aload 2
invokevirtual android/view/animation/Transformation/getMatrix()Landroid/graphics/Matrix;
astore 2
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/height I
istore 7
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
getfield android/view/ViewGroup$LayoutParams/width I
istore 8
iload 8
i2f
ldc_w 140.0F
fdiv
fstore 4
iload 7
ineg
i2d
iload 6
i2d
ldc2_w 2.5D
dmul
dadd
d2f
fstore 5
iload 3
ifge L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
iload 6
i2d
ldc2_w 0.2D
dmul
fload 4
f2d
dmul
d2f
iload 6
i2d
ldc2_w 0.5D
dmul
d2f
ldc_w 5.0F
fadd
fload 5
invokevirtual android/graphics/Camera/translate(FFF)V
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
aload 2
invokevirtual android/graphics/Camera/getMatrix(Landroid/graphics/Matrix;)V
aload 2
iload 8
iconst_3
idiv
ineg
i2f
fload 4
fmul
iload 7
iconst_3
idiv
ineg
i2f
invokevirtual android/graphics/Matrix/preTranslate(FF)Z
pop
aload 2
iload 8
iconst_3
idiv
i2f
fload 4
fmul
iload 7
iconst_3
idiv
i2f
invokevirtual android/graphics/Matrix/postTranslate(FF)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
invokevirtual android/graphics/Camera/restore()V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCamera Landroid/graphics/Camera;
iload 6
i2d
ldc2_w 0.2D
dmul
fload 4
f2d
dmul
d2f
iload 6
ineg
i2d
ldc2_w 0.8D
dmul
d2f
ldc_w 5.0F
fadd
fload 5
invokevirtual android/graphics/Camera/translate(FFF)V
goto L1
.limit locals 9
.limit stack 6
.end method

.method private updateSelectedItemMetadata()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
astore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
istore 2
iload 2
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L0
iload 2
istore 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmple L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
iadd
istore 1
L0:
aload 0
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
putfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
astore 4
aload 4
ifnonnull L1
L2:
return
L1:
aload 4
iconst_1
invokevirtual android/view/View/setSelected(Z)V
aload 4
iconst_1
invokevirtual android/view/View/setFocusable(Z)V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/hasFocus()Z
ifeq L3
aload 4
invokevirtual android/view/View/requestFocus()Z
pop
L3:
aload 3
ifnull L2
aload 3
iconst_0
invokevirtual android/view/View/setSelected(Z)V
aload 3
iconst_0
invokevirtual android/view/View/setFocusable(Z)V
return
.limit locals 5
.limit stack 3
.end method

.method protected Log(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
aload 1
instanceof com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected computeHorizontalScrollExtent()I
iconst_1
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 4
iload 4
ifle L0
iload 4
bipush 100
imul
istore 2
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getLeft()I
istore 5
aload 7
invokevirtual android/view/View/getWidth()I
istore 6
iload 2
istore 1
iload 6
ifle L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
ifne L2
iconst_1
istore 1
L3:
iload 1
ifeq L4
iload 2
istore 1
iload 5
ifgt L1
L4:
iload 2
iload 5
bipush 100
imul
iload 6
idiv
iadd
istore 1
L1:
aload 0
iload 4
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 7
aload 7
invokevirtual android/view/View/getRight()I
istore 5
aload 7
invokevirtual android/view/View/getWidth()I
istore 6
iload 1
istore 2
iload 6
ifle L5
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 4
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpne L6
iload 3
istore 2
L7:
iload 2
ifeq L8
iload 1
istore 2
iload 5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
if_icmplt L5
L8:
iload 1
iload 5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
isub
bipush 100
imul
iload 6
idiv
isub
istore 2
L5:
iload 2
ireturn
L2:
iconst_0
istore 1
goto L3
L6:
iconst_0
istore 2
goto L7
L0:
iconst_0
ireturn
.limit locals 8
.limit stack 3
.end method

.method protected computeHorizontalScrollOffset()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iflt L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
ifle L0
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 3
aload 3
invokevirtual android/view/View/getLeft()I
istore 1
aload 3
invokevirtual android/view/View/getWidth()I
istore 2
iload 2
ifle L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iconst_1
idiv
bipush 100
imul
iload 1
bipush 100
imul
iload 2
idiv
isub
iconst_0
invokestatic java/lang/Math/max(II)I
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
ireturn
.limit locals 4
.limit stack 3
.end method

.method protected computeHorizontalScrollRange()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
iadd
iconst_1
isub
iconst_1
idiv
bipush 100
imul
iconst_0
invokestatic java/lang/Math/max(II)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
aload 1
aload 0
invokevirtual android/view/KeyEvent/dispatch(Landroid/view/KeyEvent$Callback;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method protected dispatchSetPressed(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
iload 1
invokevirtual android/view/View/setPressed(Z)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public dispatchSetSelected(Z)V
return
.limit locals 2
.limit stack 0
.end method

.method protected dispatchUnpress()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
istore 1
L0:
iload 1
iflt L1
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setPressed(Z)V
iload 1
iconst_1
isub
istore 1
goto L0
L1:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setPressed(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
new com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
dup
bipush -2
bipush -2
invokespecial com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/<init>(II)V
areturn
.limit locals 1
.limit stack 4
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
new com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
dup
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getContext()Landroid/content/Context;
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
new com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
dup
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/<init>(Landroid/view/ViewGroup$LayoutParams;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method protected getCenterOfGallery()I
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
iconst_2
idiv
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
iadd
ireturn
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getWidth()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingLeft()I
isub
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingRight()I
isub
iconst_2
idiv
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingLeft()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected getChildDrawingOrder(II)I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getFirstVisiblePosition()I
istore 3
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getSelectedItemPosition()I
istore 5
iload 5
iload 3
isub
istore 4
iload 3
iload 5
if_icmpne L0
iload 1
iload 2
isub
iconst_1
isub
istore 3
L1:
iload 3
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iload 3
iload 5
isub
isub
iconst_2
if_icmpne L2
iload 2
istore 3
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mVisibleCount I
iconst_2
idiv
if_icmplt L1
iload 1
iload 2
isub
iconst_1
isub
iload 1
iconst_2
idiv
iadd
iconst_1
isub
ireturn
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iload 3
iload 5
isub
isub
iconst_3
if_icmpne L3
iload 2
istore 3
iload 2
iload 1
iconst_2
idiv
if_icmplt L1
iload 2
iload 1
iconst_2
idiv
if_icmpne L4
iload 1
iconst_1
isub
ireturn
L4:
iload 1
iload 2
isub
iconst_1
isub
iload 1
iconst_2
idiv
iadd
ireturn
L3:
iload 2
ifne L5
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/lastPosition I
L5:
iload 2
istore 3
iload 4
iflt L1
iload 2
iload 1
iconst_1
isub
if_icmpne L6
iload 4
istore 1
L7:
iload 1
ireturn
L6:
iload 2
iload 4
if_icmplt L8
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/lastPosition I
iconst_1
iadd
putfield com/nd/android/backpacksystem/widget/TDGallery/lastPosition I
iload 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/lastPosition I
isub
istore 1
goto L7
L8:
iload 2
istore 1
goto L7
.limit locals 6
.limit stack 3
.end method

.method getChildHeight(Landroid/view/View;)I
aload 1
invokevirtual android/view/View/getMeasuredHeight()I
ireturn
.limit locals 2
.limit stack 1
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getCenterOfView(Landroid/view/View;)I
istore 3
aload 1
invokevirtual android/view/View/getHeight()I
istore 4
aload 2
invokevirtual android/view/animation/Transformation/clear()V
aload 2
iconst_3
invokevirtual android/view/animation/Transformation/setTransformationType(I)V
iload 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCoveflowCenter I
if_icmpne L0
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/transformChildView(Landroid/view/View;Landroid/view/animation/Transformation;I)V
L1:
iconst_1
ireturn
L0:
aload 0
aload 1
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mCoveflowCenter I
iload 3
isub
i2f
iload 4
i2f
fdiv
ldc_w 50.0F
fmul
f2i
invokespecial com/nd/android/backpacksystem/widget/TDGallery/transformChildView(Landroid/view/View;Landroid/view/animation/Transformation;I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mContextMenuInfo Lcom/nd/android/backpacksystem/widget/TDAdapterView$AdapterContextMenuInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstPosition()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemIndexFromPoint(Landroid/graphics/Point;)I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 5
iconst_m1
istore 4
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 6
aload 0
aload 6
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getDrawingRect(Landroid/graphics/Rect;)V
iload 4
istore 3
aload 6
aload 1
getfield android/graphics/Point/x I
aload 1
getfield android/graphics/Point/y I
invokevirtual android/graphics/Rect/contains(II)Z
ifeq L0
iconst_0
istore 2
L1:
iload 4
istore 3
iload 2
iload 5
if_icmpge L0
aload 0
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
aload 6
invokevirtual android/view/View/getHitRect(Landroid/graphics/Rect;)V
aload 6
aload 1
getfield android/graphics/Point/x I
aload 1
getfield android/graphics/Point/y I
invokevirtual android/graphics/Rect/contains(II)Z
ifeq L2
iload 2
istore 3
L0:
iload 3
iflt L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 3
iadd
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L3:
iconst_m1
ireturn
.limit locals 7
.limit stack 3
.end method

.method getLimitedMotionScrollAmount(ZI)I
iconst_0
istore 4
iload 1
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
isub
istore 3
L1:
aload 0
iload 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 7
aload 7
ifnonnull L2
iload 2
istore 3
L3:
iload 3
ireturn
L0:
iconst_0
istore 3
goto L1
L2:
aload 0
aload 7
invokespecial com/nd/android/backpacksystem/widget/TDGallery/getCenterOfView(Landroid/view/View;)I
istore 5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
istore 6
iload 1
ifeq L4
iload 4
istore 3
iload 5
iload 6
if_icmple L3
L5:
iload 6
iload 5
isub
istore 3
iload 1
ifeq L6
iload 3
iload 2
invokestatic java/lang/Math/max(II)I
ireturn
L4:
iload 5
iload 6
if_icmplt L5
iconst_0
ireturn
L6:
iload 3
iload 2
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 8
.limit stack 3
.end method

.method public getOrientation()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOrientation I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSpacing()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getVelocityRatio()F
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
freturn
.limit locals 1
.limit stack 1
.end method

.method public invalidate(IIII)V
aload 0
iload 1
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mScrollBarSize I
isub
iload 3
iload 4
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/invalidate(IIII)V
return
.limit locals 5
.limit stack 5
.end method

.method public isPointInChild(FF)Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 4
iconst_0
istore 3
L0:
iload 3
iload 4
if_icmpge L1
aload 0
iload 3
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 5
fload 1
aload 5
invokevirtual android/view/View/getLeft()I
i2f
fcmpl
iflt L2
fload 1
aload 5
invokevirtual android/view/View/getRight()I
i2f
fcmpg
ifgt L2
fload 2
aload 5
invokevirtual android/view/View/getTop()I
i2f
fcmpl
iflt L2
fload 2
aload 5
invokevirtual android/view/View/getBottom()I
i2f
fcmpg
ifgt L2
iconst_1
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_0
ireturn
.limit locals 6
.limit stack 2
.end method

.method public isScrollCycle()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycle Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycleTemp Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isScrolling()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mScrolling Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isSlotInCenter()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mIsSlotCenter Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected layout(IZ)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L0
aload 0
iload 1
iload 2
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/layoutVertical(IZ)V
L0:
return
.limit locals 3
.limit stack 3
.end method

.method layoutVertical(IZ)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstChildOffset I
iadd
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDataChanged Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/handleDataChanged()V
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
ifne L1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/resetList()V
return
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mNextSelectedPosition I
iflt L2
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mNextSelectedPosition I
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setSelectedPositionInt(I)V
L2:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/recycleAllViews()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/detachAllViewsFromParent()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mVisibleCount I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpge L3
iconst_1
istore 2
L4:
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycleTemp Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mRightMost I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mLeftMost I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iconst_0
iconst_0
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/makeAndAddViewVertical(IIIZ)Landroid/view/View;
astore 4
iload 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpacing I
iadd
istore 1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isSlotInCenter()Z
ifeq L5
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getBottom()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getTop()I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/top I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSpinnerPadding Landroid/graphics/Rect;
getfield android/graphics/Rect/bottom I
isub
iconst_2
idiv
iload 3
iadd
aload 4
invokevirtual android/view/View/getHeight()I
iconst_2
idiv
isub
istore 1
L5:
aload 4
iload 1
invokevirtual android/view/View/offsetTopAndBottom(I)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryBottom()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/fillToGalleryTop()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mRecycler Lcom/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin;
invokevirtual com/nd/android/backpacksystem/widget/TDAbsSpinner$RecycleBin/clear()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/invalidate()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mDataChanged Z
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mNeedSync Z
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/setNextSelectedPositionInt(I)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/updateSelectedItemMetadata()V
return
L3:
iconst_0
istore 2
goto L4
.limit locals 5
.limit stack 5
.end method

.method moveNext()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
ifle L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
iconst_1
isub
if_icmpge L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 3
.end method

.method movePrevious()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
ifle L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method onCancel()V
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onUp()V
return
.limit locals 1
.limit stack 1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
iconst_1
aload 1
invokevirtual android/view/MotionEvent/getAction()I
if_icmpne L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
iflt L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackOnUnselectedItemClick Z
ifne L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmpne L2
L1:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
invokeinterface android/widget/SpinnerAdapter/getItemId(I)J 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/performItemDoubleClick(Landroid/view/View;IJ)Z
pop
L2:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/stop(Z)V
aload 0
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
f2i
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/pointToPosition(II)I
putfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
iflt L0
aload 0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
putfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
iconst_1
invokevirtual android/view/View/setPressed(Z)V
L0:
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsFirstScroll Z
iconst_1
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
aload 2
iload 3
iload 6
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mScrollBarSize I
isub
iload 5
iload 6
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 2
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
return
.limit locals 7
.limit stack 5
.end method

.method protected onEndFling()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOnEndFlingListener Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mOnEndFlingListener Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;
aload 0
invokeinterface com/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener/onEndFling(Lcom/nd/android/backpacksystem/widget/TDGallery;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/shouldDisableScroll()Z
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackDuringFling Z
ifne L2
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDisableSuppressSelectionChangedRunnable Ljava/lang/Runnable;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
ifne L2
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
L2:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getVelocityRatio()F
fstore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
fload 4
fload 3
fmul
fneg
f2i
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startUsingVelocity(I)V
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/onFocusChanged(ZILandroid/graphics/Rect;)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
ifnull L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
iload 2
invokevirtual android/view/View/requestFocus(I)Z
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iconst_1
istore 3
iload 1
lookupswitch
21 : L0
22 : L1
23 : L2
66 : L2
default : L3
L3:
aload 0
iload 1
aload 2
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/onKeyDown(ILandroid/view/KeyEvent;)Z
istore 3
L4:
iload 3
ireturn
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/movePrevious()Z
ifeq L4
aload 0
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/playSoundEffect(I)V
iconst_1
ireturn
L1:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/moveNext()Z
ifeq L4
aload 0
iconst_3
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/playSoundEffect(I)V
iconst_1
ireturn
L2:
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mReceivedInvokeKeyDown Z
goto L3
.limit locals 4
.limit stack 3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
iload 1
lookupswitch
23 : L0
66 : L0
default : L1
L1:
aload 0
iload 1
aload 2
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/onKeyUp(ILandroid/view/KeyEvent;)Z
ireturn
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mReceivedInvokeKeyDown Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
ifle L2
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedChild Landroid/view/View;
invokespecial com/nd/android/backpacksystem/widget/TDGallery/dispatchPress(Landroid/view/View;)V
aload 0
new com/nd/android/backpacksystem/widget/TDGallery$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery$2/<init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
invokestatic android/view/ViewConfiguration/getPressedStateDuration()I
i2l
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/postDelayed(Ljava/lang/Runnable;J)Z
pop
aload 0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
invokeinterface android/widget/SpinnerAdapter/getItemId(I)J 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/performItemClick(Landroid/view/View;IJ)Z
pop
L2:
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mReceivedInvokeKeyDown Z
iconst_1
ireturn
.limit locals 3
.limit stack 5
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/onLayout(ZIIII)V
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mInLayout Z
aload 0
iconst_0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/layout(IZ)V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mInLayout Z
return
.limit locals 6
.limit stack 6
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
ifge L0
return
L0:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/performHapticFeedback(I)Z
pop
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getItemIdAtPosition(I)J
lstore 2
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
lload 2
invokespecial com/nd/android/backpacksystem/widget/TDGallery/dispatchLongPress(Landroid/view/View;IJ)Z
pop
return
.limit locals 4
.limit stack 5
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/shouldDisableScroll()Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mScrolling Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getParent()Landroid/view/ViewParent;
iconst_1
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackDuringFling Z
ifne L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mIsFirstScroll Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
ifne L3
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
L3:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDisableSuppressSelectionChangedRunnable Ljava/lang/Runnable;
ldc2_w 250L
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/postDelayed(Ljava/lang/Runnable;J)Z
pop
L2:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L4
aload 0
fload 4
f2i
iconst_m1
imul
invokespecial com/nd/android/backpacksystem/widget/TDGallery/trackMotionScrollVertical(I)V
L4:
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsFirstScroll Z
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
ifeq L2
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
goto L2
.limit locals 5
.limit stack 4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
iflt L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isScrollCycle()Z
ifeq L1
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCount()I
irem
putfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
L1:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isSlotInCenter()Z
ifeq L2
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
invokespecial com/nd/android/backpacksystem/widget/TDGallery/scrollToChild(I)Z
pop
L2:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
invokespecial com/nd/android/backpacksystem/widget/TDGallery/performItemSelect(I)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mShouldCallbackOnUnselectedItemClick Z
ifne L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
if_icmpne L4
L3:
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAdapter Landroid/widget/SpinnerAdapter;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mDownTouchPosition I
invokeinterface android/widget/SpinnerAdapter/getItemId(I)J 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/performItemClick(Landroid/view/View;IJ)Z
pop
L4:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method protected onSizeChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/onSizeChanged(IIII)V
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getCenterOfGallery()I
putfield com/nd/android/backpacksystem/widget/TDGallery/mCoveflowCenter I
return
.limit locals 5
.limit stack 5
.end method

.method protected onStopFlingPosRatio()F
fconst_0
freturn
.limit locals 1
.limit stack 1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mGestureDetector Landroid/view/GestureDetector;
aload 1
invokevirtual android/view/GestureDetector/onTouchEvent(Landroid/view/MotionEvent;)Z
istore 3
aload 1
invokevirtual android/view/MotionEvent/getAction()I
istore 2
iload 2
iconst_1
if_icmpne L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onUp()V
L1:
iload 3
ireturn
L0:
iload 2
iconst_3
if_icmpne L1
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onCancel()V
iload 3
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected onUp()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFlingRunnable Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;
invokestatic com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/access$200(Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;)Landroid/widget/Scroller;
invokevirtual android/widget/Scroller/isFinished()Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/scrollIntoSlots()V
L0:
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/dispatchUnpress()V
return
.limit locals 1
.limit stack 1
.end method

.method public scrollIntoSlots()V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/isOrientationVertical()Z
ifeq L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/scrollIntoSlotsVertical()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected selectionChanged()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSuppressSelectionChanged Z
ifne L0
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/selectionChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public setDisableScroll(Z)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsDisableScroll Z
return
.limit locals 2
.limit stack 2
.end method

.method public setFirstChildOffset(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstChildOffset I
return
.limit locals 2
.limit stack 2
.end method

.method public setFirstPosition(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
return
.limit locals 2
.limit stack 2
.end method

.method public setGravity(I)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mGravity I
iload 1
if_icmpeq L0
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mGravity I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/requestLayout()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setOnEndFlingListener(Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mOnEndFlingListener Lcom/nd/android/backpacksystem/widget/TDGallery$OnEndFlingListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOrientation(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mOrientation I
return
.limit locals 2
.limit stack 2
.end method

.method public setScrollCycle(Z)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsScrollCycle Z
return
.limit locals 2
.limit stack 2
.end method

.method protected setSelectedPositionInt(I)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDAbsSpinner/setSelectedPositionInt(I)V
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery/updateSelectedItemMetadata()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSlotInCenter(Z)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mIsSlotCenter Z
return
.limit locals 2
.limit stack 2
.end method

.method public setVelocityRatio(F)V
aload 0
fload 1
putfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
ldc_w 0.5F
fcmpg
ifge L0
aload 0
ldc_w 0.5F
putfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
ldc_w 1.5F
fcmpl
ifle L1
aload 0
ldc_w 1.5F
putfield com/nd/android/backpacksystem/widget/TDGallery/mVelocityRatio F
return
.limit locals 2
.limit stack 2
.end method

.method protected shouldDisableScroll()Z
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mIsDisableScroll Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
if_icmpge L1
L0:
iconst_0
ireturn
L1:
aload 0
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L2
aload 1
invokevirtual android/view/View/getLeft()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getLeft()I
if_icmplt L0
L2:
aload 0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
iconst_1
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
astore 1
aload 1
ifnull L3
aload 1
invokevirtual android/view/View/getRight()I
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getRight()I
if_icmpgt L0
L3:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public showContextMenu()Z
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/isPressed()Z
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
iflt L0
aload 0
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
isub
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildAt(I)Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedPosition I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mSelectedRowId J
invokespecial com/nd/android/backpacksystem/widget/TDGallery/dispatchLongPress(Landroid/view/View;IJ)Z
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 5
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
aload 0
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPositionForView(Landroid/view/View;)I
istore 2
iload 2
ifge L0
iconst_0
ireturn
L0:
aload 0
aload 1
iload 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery/mAdapter Landroid/widget/SpinnerAdapter;
iload 2
invokeinterface android/widget/SpinnerAdapter/getItemId(I)J 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery/dispatchLongPress(Landroid/view/View;IJ)Z
ireturn
.limit locals 3
.limit stack 5
.end method
