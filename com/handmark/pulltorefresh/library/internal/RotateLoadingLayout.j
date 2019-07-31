.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/internal/RotateLoadingLayout
.super com/handmark/pulltorefresh/library/internal/LoadingLayout

.field static final 'ROTATION_ANIMATION_DURATION' I = 1200


.field private final 'mHeaderImageMatrix' Landroid/graphics/Matrix;

.field private final 'mRotateAnimation' Landroid/view/animation/Animation;

.field private final 'mRotateDrawableWhilePulling' Z

.field private 'mRotationPivotX' F

.field private 'mRotationPivotY' F

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 0
aload 4
aload 1
ldc "PullToRefresh_ptrRotateDrawableWhilePulling"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
iconst_1
invokevirtual android/content/res/TypedArray/getBoolean(IZ)Z
putfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateDrawableWhilePulling Z
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mHeaderImageMatrix Landroid/graphics/Matrix;
aload 0
new android/view/animation/RotateAnimation
dup
fconst_0
ldc_w 720.0F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
getstatic com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
ldc2_w 1200L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
iconst_m1
invokevirtual android/view/animation/Animation/setRepeatCount(I)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setRepeatMode(I)V
return
.limit locals 5
.limit stack 9
.end method

.method private resetImageRotation()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mHeaderImageMatrix Landroid/graphics/Matrix;
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mHeaderImageMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/reset()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected getDefaultDrawableResId()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/getContext()Landroid/content/Context;
ldc "default_ptr_rotate"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
aload 1
ifnull L0
aload 0
aload 1
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
i2f
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
i2f
putfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotationPivotX F
aload 0
aload 1
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
i2f
fconst_2
fdiv
invokestatic java/lang/Math/round(F)I
i2f
putfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotationPivotY F
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected onPullImpl(F)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotateDrawableWhilePulling Z
ifeq L0
fload 1
ldc_w 90.0F
fmul
fstore 1
L1:
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mHeaderImageMatrix Landroid/graphics/Matrix;
fload 1
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotationPivotX F
aload 0
getfield com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/mRotationPivotY F
invokevirtual android/graphics/Matrix/setRotate(FFF)V
return
L0:
fconst_0
ldc_w 180.0F
ldc_w 360.0F
fload 1
fmul
ldc_w 180.0F
fsub
invokestatic java/lang/Math/min(FF)F
invokestatic java/lang/Math/max(FF)F
fstore 1
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected pullToRefreshImpl()V
return
.limit locals 1
.limit stack 0
.end method

.method protected refreshingImpl()V
return
.limit locals 1
.limit stack 0
.end method

.method protected releaseToRefreshImpl()V
return
.limit locals 1
.limit stack 0
.end method

.method protected resetImpl()V
aload 0
invokespecial com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/resetImageRotation()V
return
.limit locals 1
.limit stack 1
.end method
