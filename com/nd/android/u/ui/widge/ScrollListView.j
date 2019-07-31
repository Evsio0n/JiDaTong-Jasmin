.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/ScrollListView
.super android/widget/ListView
.inner class inner com/nd/android/u/ui/widge/ScrollListView$1
.inner class public static abstract interface OnRefreshListener inner com/nd/android/u/ui/widge/ScrollListView$OnRefreshListener outer com/nd/android/u/ui/widge/ScrollListView
.inner class public static abstract interface PullDownListener inner com/nd/android/u/ui/widge/ScrollListView$PullDownListener outer com/nd/android/u/ui/widge/ScrollListView

.field private static final 'DONE' I = 3


.field private static final 'LOADING' I = 4


.field private static final 'PULL_To_REFRESH' I = 1


.field private static final 'RATIO' I = 3


.field private static final 'REFRESHING' I = 2


.field private static final 'RELEASE_To_REFRESH' I = 0


.field private 'animation' Landroid/view/animation/RotateAnimation;

.field private 'arrowImageView' Landroid/widget/ImageView;

.field private 'headContentHeight' I

.field private 'headView' Landroid/widget/LinearLayout;

.field private 'inflater' Landroid/view/LayoutInflater;

.field private 'isBack' Z

.field private 'isRecored' Z

.field private 'isRefreshable' Z

.field private 'lastUpdatedTextView' Landroid/widget/TextView;

.field private 'mAfterCount' I

.field private 'mBeforeCount' I

.field private 'progressBar' Landroid/widget/ProgressBar;

.field private 'pullDownListener' Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;

.field private 'refreshListener' Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;

.field private 'reverseAnimation' Landroid/view/animation/RotateAnimation;

.field private 'startY' I

.field private 'state' I

.field private 'statusTitles' [Ljava/lang/String;

.field private 'tipsTextview' Landroid/widget/TextView;

.field private 'touchStartY' F

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ListView/<init>(Landroid/content/Context;)V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/get_msg_type I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ScrollListView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$array/get_msg_type I
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/ScrollListView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method private adjustSize(Z)V
iload 1
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/mBeforeCount I
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/mAfterCount I
if_icmplt L1
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/ui/widge/ScrollListView$1
dup
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView$1/<init>(Lcom/nd/android/u/ui/widge/ScrollListView;)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method private changeHeaderViewByState()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/progressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/lastUpdatedTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/animation Landroid/view/animation/RotateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
iconst_0
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/progressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/lastUpdatedTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/isBack Z
ifeq L5
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/isBack Z
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/reverseAnimation Landroid/view/animation/RotateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
iconst_1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L5:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
iconst_1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/progressBar Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
iconst_2
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/lastUpdatedTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L3:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
iconst_m1
imul
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/progressBar Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/arrow I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
iconst_2
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/lastUpdatedTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 5
.end method

.method private init(Landroid/content/Context;)V
aload 0
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$color/transparent I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setCacheColorHint(I)V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/ui/widge/ScrollListView/inflater Landroid/view/LayoutInflater;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/inflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/scroll_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$id/head_arrowImageView I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
bipush 70
invokevirtual android/widget/ImageView/setMinimumWidth(I)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/arrowImageView Landroid/widget/ImageView;
bipush 50
invokevirtual android/widget/ImageView/setMinimumHeight(I)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$id/head_progressBar I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/android/u/ui/widge/ScrollListView/progressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$id/head_tipsTextView I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ScrollListView/tipsTextview Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
getstatic com/nd/android/u/chat/R$id/head_lastUpdatedTextView I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/ui/widge/ScrollListView/lastUpdatedTextView Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
invokespecial com/nd/android/u/ui/widge/ScrollListView/measureView(Landroid/view/View;)V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getMeasuredHeight()I
putfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
iconst_m1
imul
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/invalidate()V
aload 0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
aconst_null
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
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
putfield com/nd/android/u/ui/widge/ScrollListView/animation Landroid/view/animation/RotateAnimation;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/animation Landroid/view/animation/RotateAnimation;
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/RotateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/animation Landroid/view/animation/RotateAnimation;
ldc2_w 250L
invokevirtual android/view/animation/RotateAnimation/setDuration(J)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/animation Landroid/view/animation/RotateAnimation;
iconst_1
invokevirtual android/view/animation/RotateAnimation/setFillAfter(Z)V
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
putfield com/nd/android/u/ui/widge/ScrollListView/reverseAnimation Landroid/view/animation/RotateAnimation;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/reverseAnimation Landroid/view/animation/RotateAnimation;
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/RotateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/reverseAnimation Landroid/view/animation/RotateAnimation;
ldc2_w 200L
invokevirtual android/view/animation/RotateAnimation/setDuration(J)V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/reverseAnimation Landroid/view/animation/RotateAnimation;
iconst_1
invokevirtual android/view/animation/RotateAnimation/setFillAfter(Z)V
aload 0
iconst_3
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/isRefreshable Z
return
.limit locals 2
.limit stack 9
.end method

.method private measureView(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 5
aload 5
astore 4
aload 5
ifnonnull L0
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
astore 4
L0:
iconst_0
iconst_0
aload 4
getfield android/view/ViewGroup$LayoutParams/width I
invokestatic android/view/ViewGroup/getChildMeasureSpec(III)I
istore 3
aload 4
getfield android/view/ViewGroup$LayoutParams/height I
istore 2
iload 2
ifle L1
iload 2
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
L2:
aload 1
iload 3
iload 2
invokevirtual android/view/View/measure(II)V
return
L1:
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
istore 2
goto L2
.limit locals 6
.limit stack 4
.end method

.method private onAfterLayout()V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getChildCount()I
putfield com/nd/android/u/ui/widge/ScrollListView/mAfterCount I
return
.limit locals 1
.limit stack 2
.end method

.method private onBefroreLayout(Z)V
aload 0
aload 0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getChildCount()I
putfield com/nd/android/u/ui/widge/ScrollListView/mBeforeCount I
return
.limit locals 2
.limit stack 2
.end method

.method private onRefresh()V
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/refreshListener Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/refreshListener Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;
invokeinterface com/nd/android/u/ui/widge/ScrollListView$OnRefreshListener/onRefresh()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getPosition(FF)I
aload 0
fload 1
f2i
fload 2
f2i
invokevirtual com/nd/android/u/ui/widge/ScrollListView/pointToPosition(II)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getPosition(II)I
aload 0
iload 1
iload 2
invokevirtual com/nd/android/u/ui/widge/ScrollListView/pointToPosition(II)I
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getPullDownListener()Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/pullDownListener Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 1
invokespecial com/nd/android/u/ui/widge/ScrollListView/onBefroreLayout(Z)V
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
invokespecial android/widget/ListView/onLayout(ZIIII)V
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/onAfterLayout()V
aload 0
iload 1
invokespecial com/nd/android/u/ui/widge/ScrollListView/adjustSize(Z)V
return
.limit locals 6
.limit stack 6
.end method

.method public onRefreshComplete()V
aload 0
iconst_3
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
return
.limit locals 1
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/isRefreshable Z
ifeq L0
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L1
L2
L3
default : L0
L0:
aload 0
aload 1
invokespecial android/widget/ListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L1:
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/nd/android/u/ui/widge/ScrollListView/touchStartY F
aload 0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getFirstVisiblePosition()I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
ifne L0
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
putfield com/nd/android/u/ui/widge/ScrollListView/startY I
goto L0
L2:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_2
if_icmpeq L4
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_4
if_icmpeq L4
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_3
if_icmpne L5
L5:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_1
if_icmpne L6
aload 0
iconst_3
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
L6:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
ifne L4
aload 0
iconst_2
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/onRefresh()V
L4:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/pullDownListener Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;
ifnull L7
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/pullDownListener Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;
aload 1
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/touchStartY F
fsub
invokeinterface com/nd/android/u/ui/widge/ScrollListView$PullDownListener/pullDown(F)V 1
L7:
aload 0
fconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/touchStartY F
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/isBack Z
goto L0
L3:
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/touchStartY F
fconst_0
fcmpl
ifne L8
aload 0
iload 2
i2f
putfield com/nd/android/u/ui/widge/ScrollListView/touchStartY F
L8:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
ifne L9
aload 0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getFirstVisiblePosition()I
ifne L9
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
aload 0
iload 2
putfield com/nd/android/u/ui/widge/ScrollListView/startY I
L9:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/isRecored Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_4
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
ifne L10
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
iconst_3
idiv
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
if_icmpge L11
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
ifle L11
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
L10:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_1
if_icmpne L12
aload 0
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
iconst_3
idiv
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
if_icmplt L13
aload 0
iconst_0
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/isBack Z
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
L12:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_3
if_icmpne L14
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
ifle L14
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
L14:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
iconst_1
if_icmpne L15
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
iconst_m1
imul
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
iconst_3
idiv
iadd
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
L15:
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/state I
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headView Landroid/widget/LinearLayout;
iconst_0
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
iconst_3
idiv
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/headContentHeight I
isub
iconst_0
iconst_0
invokevirtual android/widget/LinearLayout/setPadding(IIII)V
goto L0
L11:
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
ifgt L10
aload 0
iconst_3
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
goto L10
L13:
iload 2
aload 0
getfield com/nd/android/u/ui/widge/ScrollListView/startY I
isub
ifgt L12
aload 0
iconst_3
putfield com/nd/android/u/ui/widge/ScrollListView/state I
aload 0
invokespecial com/nd/android/u/ui/widge/ScrollListView/changeHeaderViewByState()V
goto L12
.limit locals 3
.limit stack 5
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
aload 0
aload 1
invokespecial android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setPullDownListener(Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ScrollListView/pullDownListener Lcom/nd/android/u/ui/widge/ScrollListView$PullDownListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setStatusTitles([Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ScrollListView/statusTitles [Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setonRefreshListener(Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/ScrollListView/refreshListener Lcom/nd/android/u/ui/widge/ScrollListView$OnRefreshListener;
aload 0
iconst_1
putfield com/nd/android/u/ui/widge/ScrollListView/isRefreshable Z
return
.limit locals 2
.limit stack 2
.end method
