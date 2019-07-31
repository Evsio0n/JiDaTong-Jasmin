.bytecode 50.0
.class public synchronized com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout
.super com/handmark/pulltorefresh/library/internal/RotateLoadingLayout
.inner class static synthetic inner com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout$1

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
getstatic com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout$1/$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation [I
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
getstatic com/nd/android/u/tasklib/R$id/rl_inner I
invokevirtual com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/pull_to_refresh_progress I
invokevirtual com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 0
invokevirtual com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$drawable/task_pull_to_refresh I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
aload 0
getfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ll_pull_to_refresh I
invokevirtual com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mLinearLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mLinearLayout Landroid/widget/LinearLayout;
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
getfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mProgressBar Landroid/widget/ProgressBar;
aload 1
invokevirtual android/widget/ProgressBar/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
astore 1
aload 0
getfield com/nd/android/u/tast/main/widget/MediumRotateLoadingLayout/mRelativeLayout Landroid/widget/RelativeLayout;
aload 1
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 5
.limit stack 5
.end method
