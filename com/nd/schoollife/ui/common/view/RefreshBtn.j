.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/common/view/RefreshBtn
.super android/widget/RelativeLayout
.inner class inner com/nd/schoollife/ui/common/view/RefreshBtn$1
.inner class public static abstract interface RefreshBtnOnClickListener inner com/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener outer com/nd/schoollife/ui/common/view/RefreshBtn

.field static final 'ANIMATION_INTERPOLATOR' Landroid/view/animation/Interpolator;

.field static final 'ROTATION_ANIMATION_DURATION' I = 1200


.field private 'isRoting' Z

.field private 'mContext' Landroid/content/Context;

.field private final 'mHeaderImageMatrix' Landroid/graphics/Matrix;

.field private 'mImageView' Landroid/widget/ImageView;

.field private 'mOnClickListener' Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;

.field private final 'mRotateAnimation' Landroid/view/animation/Animation;

.method static <clinit>()V
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
putstatic com/nd/schoollife/ui/common/view/RefreshBtn/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/schoollife/ui/common/view/RefreshBtn/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
iconst_0
invokespecial com/nd/schoollife/ui/common/view/RefreshBtn/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/RefreshBtn/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/schoollife/ui/common/view/RefreshBtn/initView()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
getstatic android/widget/ImageView$ScaleType/MATRIX Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 0
new android/graphics/Matrix
dup
invokespecial android/graphics/Matrix/<init>()V
putfield com/nd/schoollife/ui/common/view/RefreshBtn/mHeaderImageMatrix Landroid/graphics/Matrix;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mHeaderImageMatrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
aload 0
new android/view/animation/RotateAnimation
dup
fconst_0
ldc_w -720.0F
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/RotateAnimation/<init>(FFIFIF)V
putfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
getstatic com/nd/schoollife/ui/common/view/RefreshBtn/ANIMATION_INTERPOLATOR Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/Animation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
ldc2_w 1200L
invokevirtual android/view/animation/Animation/setDuration(J)V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
iconst_m1
invokevirtual android/view/animation/Animation/setRepeatCount(I)V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
iconst_1
invokevirtual android/view/animation/Animation/setRepeatMode(I)V
return
.limit locals 4
.limit stack 9
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mOnClickListener Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)Z
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private initView()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/refresh_btn I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_refresh I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
aload 0
bipush 17
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setGravity(I)V
aload 0
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setClickable(Z)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/addView(Landroid/view/View;)V
aload 0
new com/nd/schoollife/ui/common/view/RefreshBtn$1
dup
aload 0
invokespecial com/nd/schoollife/ui/common/view/RefreshBtn$1/<init>(Lcom/nd/schoollife/ui/common/view/RefreshBtn;)V
invokevirtual com/nd/schoollife/ui/common/view/RefreshBtn/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method private resetImageRotation()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mHeaderImageMatrix Landroid/graphics/Matrix;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mHeaderImageMatrix Landroid/graphics/Matrix;
invokevirtual android/graphics/Matrix/reset()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mHeaderImageMatrix Landroid/graphics/Matrix;
invokevirtual android/widget/ImageView/setImageMatrix(Landroid/graphics/Matrix;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public isRoting()Z
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public refreshingImpl()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
ifne L0
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mRotateAnimation Landroid/view/animation/Animation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setRefreshOnClickListener(Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/RefreshBtn/mOnClickListener Lcom/nd/schoollife/ui/common/view/RefreshBtn$RefreshBtnOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public stopRoting()V
aload 0
getfield com/nd/schoollife/ui/common/view/RefreshBtn/mImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
invokespecial com/nd/schoollife/ui/common/view/RefreshBtn/resetImageRotation()V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/RefreshBtn/isRoting Z
return
.limit locals 1
.limit stack 2
.end method
