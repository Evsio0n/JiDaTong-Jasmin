.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/UnderlinePageIndicator
.super android/view/View
.implements com/nd/schoollife/ui/square/view/PageIndicator
.inner class inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1
.inner class inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2
.inner class static SavedState inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState outer com/nd/schoollife/ui/square/view/UnderlinePageIndicator
.inner class static final inner com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState$1

.field private static final 'FADE_FRAME_MS' I = 30


.field private static final 'INVALID_POINTER' I = -1


.field private 'mActivePointerId' I

.field private 'mCurrentPage' I

.field private 'mFadeBy' I

.field private 'mFadeDelay' I

.field private 'mFadeLength' I

.field private final 'mFadeRunnable' Ljava/lang/Runnable;

.field private 'mFades' Z

.field private 'mIsDragging' Z

.field private 'mLastMotionX' F

.field private 'mListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final 'mPaint' Landroid/graphics/Paint;

.field private 'mPositionOffset' F

.field private 'mScrollState' I

.field private 'mTouchSlop' I

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
getstatic com/nd/schoollife/R$attr/vpiUnderlinePageIndicatorStyle I
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
new android/graphics/Paint
dup
iconst_1
invokespecial android/graphics/Paint/<init>(I)V
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
aload 0
ldc_w -1.0F
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
aload 0
iconst_m1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
aload 0
new com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator$1/<init>(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)V
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/isInEditMode()Z
ifeq L0
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getResources()Landroid/content/res/Resources;
astore 8
aload 8
getstatic com/nd/schoollife/R$bool/default_underline_indicator_fades I
invokevirtual android/content/res/Resources/getBoolean(I)Z
istore 7
aload 8
getstatic com/nd/schoollife/R$integer/default_underline_indicator_fade_delay I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 4
aload 8
getstatic com/nd/schoollife/R$integer/default_underline_indicator_fade_length I
invokevirtual android/content/res/Resources/getInteger(I)I
istore 5
aload 8
getstatic com/nd/schoollife/R$color/default_underline_indicator_selected_color I
invokevirtual android/content/res/Resources/getColor(I)I
istore 6
aload 1
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator [I
iload 3
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 0
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator_fades I
iload 7
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFades(Z)V
aload 0
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator_selectedColors I
iload 6
invokevirtual android/content/res/TypedArray/getColor(II)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setSelectedColor(I)V
aload 0
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator_fadeDelay I
iload 4
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFadeDelay(I)V
aload 0
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator_fadeLength I
iload 5
invokevirtual android/content/res/TypedArray/getInteger(II)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFadeLength(I)V
aload 2
getstatic com/nd/schoollife/R$styleable/UnderlinePageIndicator_android_background I
invokevirtual android/content/res/TypedArray/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 8
aload 8
ifnull L1
aload 0
aload 8
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
L1:
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
aload 1
invokestatic android/view/ViewConfiguration/get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
invokestatic android/support/v4/view/ViewConfigurationCompat/getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mTouchSlop I
return
.limit locals 9
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Z
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFades Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Landroid/graphics/Paint;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeBy I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)Ljava/lang/Runnable;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFadeDelay()I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeDelay I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFadeLength()I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeLength I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFades()Z
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFades Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectedColor()I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Paint/getColor()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public notifyDataSetChanged()V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 4
iload 4
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
iload 4
if_icmplt L2
aload 0
iload 4
iconst_1
isub
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
L2:
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getPaddingLeft()I
istore 5
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getWidth()I
iload 5
isub
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getPaddingRight()I
isub
i2f
fconst_1
iload 4
i2f
fmul
fdiv
fstore 2
iload 5
i2f
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
i2f
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPositionOffset F
fadd
fload 2
fmul
fadd
fstore 3
aload 1
fload 3
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getPaddingTop()I
i2f
fload 3
fload 2
fadd
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getHeight()I
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getPaddingBottom()I
isub
i2f
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
invokevirtual android/graphics/Canvas/drawRect(FFFFLandroid/graphics/Paint;)V
return
.limit locals 6
.limit stack 6
.end method

.method public onPageScrollStateChanged(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mScrollState I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrollStateChanged(I)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrolled(IFI)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
aload 0
fload 2
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPositionOffset F
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFades Z
ifeq L0
iload 3
ifle L1
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
sipush 255
invokevirtual android/graphics/Paint/setAlpha(I)V
L0:
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
fload 2
iload 3
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageScrolled(IFI)V 3
L2:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mScrollState I
iconst_1
if_icmpeq L0
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeDelay I
i2l
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/postDelayed(Ljava/lang/Runnable;J)Z
pop
goto L0
.limit locals 4
.limit stack 4
.end method

.method public onPageSelected(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mScrollState I
ifne L0
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
aload 0
fconst_0
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPositionOffset F
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
invokeinterface java/lang/Runnable/run()V 0
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iload 1
invokeinterface android/support/v4/view/ViewPager$OnPageChangeListener/onPageSelected(I)V 1
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/view/View/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/currentPage I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/requestLayout()V
return
.limit locals 2
.limit stack 2
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
new com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState
dup
aload 0
invokespecial android/view/View/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator$SavedState/currentPage I
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
aload 1
invokespecial android/view/View/onTouchEvent(Landroid/view/MotionEvent;)Z
ifeq L0
iconst_1
ireturn
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
ifne L2
L1:
iconst_0
ireturn
L2:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
sipush 255
iand
istore 4
iload 4
tableswitch 0
L3
L4
L5
L4
L6
L7
L8
default : L6
L6:
iconst_1
ireturn
L3:
aload 0
aload 1
iconst_0
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
aload 0
aload 1
invokevirtual android/view/MotionEvent/getX()F
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
goto L6
L5:
aload 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
fstore 2
fload 2
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
fsub
fstore 3
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mIsDragging Z
ifne L9
fload 3
invokestatic java/lang/Math/abs(F)F
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mTouchSlop I
i2f
fcmpl
ifle L9
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mIsDragging Z
L9:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mIsDragging Z
ifeq L6
aload 0
fload 2
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/isFakeDragging()Z
ifne L10
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/beginFakeDrag()Z
ifeq L6
L10:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
fload 3
invokevirtual android/support/v4/view/ViewPager/fakeDragBy(F)V
goto L6
L4:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mIsDragging Z
ifne L11
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/getCount()I
istore 5
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/getWidth()I
istore 6
iload 6
i2f
fconst_2
fdiv
fstore 2
iload 6
i2f
ldc_w 6.0F
fdiv
fstore 3
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
ifle L12
aload 1
invokevirtual android/view/MotionEvent/getX()F
fload 2
fload 3
fsub
fcmpg
ifge L12
iload 4
iconst_3
if_icmpeq L13
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
iconst_1
isub
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
L13:
iconst_1
ireturn
L12:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
iload 5
iconst_1
isub
if_icmpge L11
aload 1
invokevirtual android/view/MotionEvent/getX()F
fload 2
fload 3
fadd
fcmpl
ifle L11
iload 4
iconst_3
if_icmpeq L14
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
iconst_1
iadd
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
L14:
iconst_1
ireturn
L11:
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mIsDragging Z
aload 0
iconst_m1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/isFakeDragging()Z
ifeq L6
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/endFakeDrag()V
goto L6
L7:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 4
aload 0
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
aload 0
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
goto L6
L8:
aload 1
invokestatic android/support/v4/view/MotionEventCompat/getActionIndex(Landroid/view/MotionEvent;)I
istore 4
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
if_icmpne L15
iload 4
ifne L16
iconst_1
istore 4
L17:
aload 0
aload 1
iload 4
invokestatic android/support/v4/view/MotionEventCompat/getPointerId(Landroid/view/MotionEvent;I)I
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
L15:
aload 0
aload 1
aload 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mActivePointerId I
invokestatic android/support/v4/view/MotionEventCompat/findPointerIndex(Landroid/view/MotionEvent;I)I
invokestatic android/support/v4/view/MotionEventCompat/getX(Landroid/view/MotionEvent;I)F
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mLastMotionX F
goto L6
L16:
iconst_0
istore 4
goto L17
.limit locals 7
.limit stack 4
.end method

.method public setCurrentItem(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnonnull L0
new java/lang/IllegalStateException
dup
ldc "ViewPager has not been bound."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mCurrentPage I
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 3
.end method

.method public setFadeDelay(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeDelay I
return
.limit locals 2
.limit stack 2
.end method

.method public setFadeLength(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeLength I
aload 0
sipush 255
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeLength I
bipush 30
idiv
idiv
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeBy I
return
.limit locals 2
.limit stack 4
.end method

.method public setFades(Z)V
iload 1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFades Z
if_icmpeq L0
aload 0
iload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFades Z
iload 1
ifeq L1
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/post(Ljava/lang/Runnable;)Z
pop
L0:
return
L1:
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mFadeRunnable Ljava/lang/Runnable;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
sipush 255
invokevirtual android/graphics/Paint/setAlpha(I)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mPaint Landroid/graphics/Paint;
iload 1
invokevirtual android/graphics/Paint/setColor(I)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
return
.limit locals 2
.limit stack 2
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 1
if_acmpne L0
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aconst_null
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
L1:
aload 1
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
ifnonnull L2
new java/lang/IllegalStateException
dup
ldc "ViewPager does not have adapter instance."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L2:
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/view/UnderlinePageIndicator/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/invalidate()V
aload 0
new com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/UnderlinePageIndicator$2/<init>(Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;)V
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
iload 2
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method
