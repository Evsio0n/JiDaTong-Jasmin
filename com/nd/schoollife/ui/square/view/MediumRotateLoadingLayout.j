.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout
.super com/handmark/pulltorefresh/library/internal/RotateLoadingLayout
.inner class static synthetic inner com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout$1

.field private 'mLinearLayout' Landroid/widget/LinearLayout;

.field private 'mProgressBar' Landroid/widget/ProgressBar;

.field private 'mRelativeLayout' Landroid/widget/RelativeLayout;

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/handmark/pulltorefresh/library/internal/RotateLoadingLayout/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
getstatic com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout$1/$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
aload 3
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/ordinal()I
iaload
tableswitch 1
L0
default : L1
L1:
return
L0:
aload 0
aload 0
getstatic com/nd/schoollife/R$id/rl_inner I
invokevirtual com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/pull_to_refresh_progress I
invokevirtual com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/ll_pull_to_refresh I
invokevirtual com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mLinearLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mLinearLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
new android/widget/RelativeLayout$LayoutParams
dup
bipush 80
bipush 80
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 1
aload 1
bipush 13
invokevirtual android/widget/RelativeLayout$LayoutParams/addRule(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
invokevirtual com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$drawable/square_pull_to_refresh I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/MediumRotateLoadingLayout/mRelativeLayout Landroid/widget/RelativeLayout;
aload 1
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 5
.limit stack 5
.end method

.method protected getDefaultDrawableResId()I
getstatic com/nd/schoollife/R$drawable/ic_pull_to_refresh_rotate I
ireturn
.limit locals 1
.limit stack 1
.end method
