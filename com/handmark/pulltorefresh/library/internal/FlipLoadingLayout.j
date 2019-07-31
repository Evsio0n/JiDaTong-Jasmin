.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/internal/FlipLoadingLayout
.super com/handmark/pulltorefresh/library/internal/LoadingLayout
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ViewConstructor" 
.end annotation

.field static final 'FLIP_ANIMATION_DURATION' I = 150


.field private final 'mResetRotateAnimation' Landroid/view/animation/Animation;

.field private final 'mRotateAnimation' Landroid/view/animation/Animation;

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/handmark/pulltorefresh/library/internal/LoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 2
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
if_acmpne L0
sipush -180
istore 5
L1:
aload 0
new android/view/animation/RotateAnimation
dup
fconst_0
iload 5
i2f
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
getstatic com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
ldc2_w 150L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
aload 0
new android/view/animation/RotateAnimation
dup
iload 5
i2f
fconst_0
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mResetRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mResetRotateAnimation Landroid/view/animation/Animation;
getstatic com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mResetRotateAnimation Landroid/view/animation/Animation;
ldc2_w 150L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mResetRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
return
L0:
sipush 180
istore 5
goto L1
.limit locals 6
.limit stack 9
.end method

.method protected getDefaultDrawableResId()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/getContext()Landroid/content/Context;
ldc "default_ptr_flip"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected onPullImpl(F)V
return
.limit locals 2
.limit stack 0
.end method

.method protected pullToRefreshImpl()V
return
.limit locals 1
.limit stack 0
.end method

.method protected refreshingImpl()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected releaseToRefreshImpl()V
return
.limit locals 1
.limit stack 0
.end method

.method protected resetImpl()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/FlipLoadingLayout/mHeaderProgress Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
