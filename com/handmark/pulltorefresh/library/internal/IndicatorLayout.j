.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/internal/IndicatorLayout
.super android/widget/FrameLayout
.implements android/view/animation/Animation$AnimationListener
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ViewConstructor" 
.end annotation

.field private static synthetic '$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode' [I

.field static final 'DEFAULT_ROTATION_ANIMATION_DURATION' I = 150


.field private 'mArrowImageView' Landroid/widget/ImageView;

.field private 'mInAnim' Landroid/view/animation/Animation;

.field private 'mOutAnim' Landroid/view/animation/Animation;

.field private final 'mResetRotateAnimation' Landroid/view/animation/Animation;

.field private final 'mRotateAnimation' Landroid/view/animation/Animation;

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
.catch java/lang/NoSuchFieldError from L7 to L9 using L10
getstatic com/handmark/pulltorefresh/library/internal/IndicatorLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
astore 0
aload 0
ifnull L11
aload 0
areturn
L11:
invokestatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/BOTH Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_4
iastore
L1:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/DISABLED Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_1
iastore
L3:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/MANUAL_REFRESH_ONLY Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_5
iastore
L5:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_END Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_3
iastore
L7:
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/PULL_FROM_START Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iconst_2
iastore
L9:
aload 0
putstatic com/handmark/pulltorefresh/library/internal/IndicatorLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode [I
aload 0
areturn
L10:
astore 1
goto L9
L8:
astore 1
goto L7
L6:
astore 1
goto L5
L4:
astore 1
goto L3
L2:
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
aload 0
new android/widget/ImageView
dup
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
putfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/getResources()Landroid/content/res/Resources;
aload 1
ldc "indicator_arrow"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 5
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
aload 5
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/getResources()Landroid/content/res/Resources;
aload 1
ldc "indicator_internal_padding"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDimenId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/res/Resources/getDimensionPixelSize(I)I
istore 3
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
iload 3
iload 3
iload 3
iload 3
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/addView(Landroid/view/View;)V
invokestatic com/handmark/pulltorefresh/library/internal/IndicatorLayout/$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Mode/ordinal()I
iaload
tableswitch 3
L0
default : L1
L1:
aload 1
ldc "slide_in_from_top"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getAnimId(Landroid/content/Context;Ljava/lang/String;)I
istore 3
aload 1
ldc "slide_out_to_top"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getAnimId(Landroid/content/Context;Ljava/lang/String;)I
istore 4
aload 0
aload 1
ldc "ndicator_bg_top"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/setBackgroundResource(I)V
L2:
aload 0
aload 1
iload 3
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mInAnim Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mInAnim Landroid/view/animation/Animation;
aload 0
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 1
iload 4
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mOutAnim Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mOutAnim Landroid/view/animation/Animation;
aload 0
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
astore 1
aload 0
new android/view/animation/RotateAnimation
dup
fconst_0
ldc_w -180.0F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mRotateAnimation Landroid/view/animation/Animation;
aload 1
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mRotateAnimation Landroid/view/animation/Animation;
ldc2_w 150L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
aload 0
new android/view/animation/RotateAnimation
dup
ldc_w -180.0F
fconst_0
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mResetRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mResetRotateAnimation Landroid/view/animation/Animation;
aload 1
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mResetRotateAnimation Landroid/view/animation/Animation;
ldc2_w 150L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mResetRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setFillAfter(Z)V
return
L0:
aload 1
ldc "slide_in_from_bottom"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getAnimId(Landroid/content/Context;Ljava/lang/String;)I
istore 3
aload 1
ldc "slide_out_to_bottom"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getAnimId(Landroid/content/Context;Ljava/lang/String;)I
istore 4
aload 0
aload 1
ldc "indicator_bg_bottom"
invokestatic com/handmark/pulltorefresh/library/ResourceUtil/getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/setBackgroundResource(I)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
astore 2
aload 2
ldc_w 180.0F
aload 5
invokevirtual android/graphics/drawable/Drawable/getIntrinsicWidth()I
i2f
fconst_2
fdiv
aload 5
invokevirtual android/graphics/drawable/Drawable/getIntrinsicHeight()I
i2f
fconst_2
fdiv
invokevirtual android/graphics/Matrix/setRotate(FFF)V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
goto L2
.limit locals 6
.limit stack 9
.end method

.method public hide()V
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mOutAnim Landroid/view/animation/Animation;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 2
.end method

.method public final isVisible()Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/getAnimation()Landroid/view/animation/Animation;
astore 1
aload 1
ifnull L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mInAnim Landroid/view/animation/Animation;
aload 1
if_acmpne L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/getVisibility()I
ifeq L2
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mOutAnim Landroid/view/animation/Animation;
if_acmpne L0
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
bipush 8
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/setVisibility(I)V
L1:
aload 0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/clearAnimation()V
return
L0:
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mInAnim Landroid/view/animation/Animation;
if_acmpne L1
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/setVisibility(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
aload 0
iconst_0
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public pullToRefresh()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mResetRotateAnimation Landroid/view/animation/Animation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 2
.end method

.method public releaseToRefresh()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mRotateAnimation Landroid/view/animation/Animation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 2
.end method

.method public show()V
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mArrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
aload 0
getfield com/handmark/pulltorefresh/library/internal/IndicatorLayout/mInAnim Landroid/view/animation/Animation;
invokevirtual com/handmark/pulltorefresh/library/internal/IndicatorLayout/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 1
.limit stack 2
.end method
