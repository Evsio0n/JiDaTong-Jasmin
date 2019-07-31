.bytecode 50.0
.class public synchronized com/huewu/pla/lib/MultiColumnPullToRefreshListView
.super com/huewu/pla/lib/MultiColumnListView
.inner class inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$1
.inner class private HeaderAnimationListener inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener outer com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener$1
.inner class private LoadingThread inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread outer com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class public static abstract interface OnRefreshListener inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener outer com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class private PTROnGlobalLayoutListener inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener outer com/huewu/pla/lib/MultiColumnPullToRefreshListView
.inner class private static final enum State inner com/huewu/pla/lib/MultiColumnPullToRefreshListView$State outer com/huewu/pla/lib/MultiColumnPullToRefreshListView

.field private static synthetic '$SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State' [I

.field private static final 'BOUNCE_ANIMATION_DELAY' I = 20


.field private static final 'BOUNCE_ANIMATION_DURATION' I = 215


.field static final 'LOADINGBUFFER' I = 400


.field static final 'LOADINGONE' I = 101


.field static final 'LOADINGTHREE' I = 103


.field static final 'LOADINGTWO' I = 102


.field static final 'LOADINGZERO' I = 100


.field private static final 'PULL_RESISTANCE' F = 3.0F


.field private static final 'ROTATE_ARROW_ANIMATION_DURATION' I = 250


.field private static 'mLoadingHandler' Landroid/os/Handler;

.field private static 'measuredHeaderHeight' I

.field private 'bounceAnimation' Landroid/view/animation/TranslateAnimation;

.field private 'bounceBackHeader' Z

.field private 'flipAnimation' Landroid/view/animation/RotateAnimation;

.field private 'hasResetHeader' Z

.field private 'header' Landroid/widget/RelativeLayout;

.field private 'headerContainer' Landroid/widget/LinearLayout;

.field private 'headerPadding' I

.field private 'image' Landroid/widget/ImageView;

.field private 'isHeaderRefreshing' Z

.field private 'isHeaderShowing' Z

.field private 'isPulling' Z

.field private 'lastUpdated' J

.field private 'lastUpdatedDateFormat' Ljava/text/SimpleDateFormat;

.field private 'lastUpdatedText' Ljava/lang/String;

.field private 'lastUpdatedTextView' Landroid/widget/TextView;

.field private 'lockScrollWhileRefreshing' Z

.field private 'mLoadingThread' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;

.field private 'onRefreshListener' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener;

.field private 'previousY' F

.field private 'pullToRefreshText' Ljava/lang/String;

.field private 'refreshingText' Ljava/lang/String;

.field private 'releaseToRefreshText' Ljava/lang/String;

.field private 'reverseFlipAnimation' Landroid/view/animation/RotateAnimation;

.field private 'scrollbarEnabled' Z

.field private 'showLastUpdatedText' Z

.field private 'spinner' Landroid/widget/ProgressBar;

.field private 'state' Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;

.field private 'text' Landroid/widget/TextView;

.method static synthetic $SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State()[I
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/$SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State [I
astore 0
aload 0
ifnull L7
aload 0
areturn
L7:
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/values()[Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
arraylength
newarray int
astore 0
L0:
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ordinal()I
iconst_1
iastore
L1:
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ordinal()I
iconst_3
iastore
L3:
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ordinal()I
iconst_2
iastore
L5:
aload 0
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/$SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State [I
aload 0
areturn
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

.method static <clinit>()V
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$1
dup
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$1/<init>()V
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingHandler Landroid/os/Handler;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/<init>(Landroid/content/Context;)V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
aload 0
new java/text/SimpleDateFormat
dup
ldc "dd/MM HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedDateFormat Ljava/text/SimpleDateFormat;
aload 0
ldc2_w -1L
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderShowing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
aload 0
aload 1
aconst_null
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/huewu/pla/lib/MultiColumnListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
aload 0
new java/text/SimpleDateFormat
dup
ldc "dd/MM HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedDateFormat Ljava/text/SimpleDateFormat;
aload 0
ldc2_w -1L
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderShowing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
aload 0
aload 1
aload 2
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial com/huewu/pla/lib/MultiColumnListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
aload 0
new java/text/SimpleDateFormat
dup
ldc "dd/MM HH:mm"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedDateFormat Ljava/text/SimpleDateFormat;
aload 0
ldc2_w -1L
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderShowing Z
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
aload 0
aload 1
aload 2
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/init(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/scrollbarEnabled Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$10(I)V
iload 0
putstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/measuredHeaderHeight I
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$11(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/TextView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2()I
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/measuredHeaderHeight I
ireturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$3(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/LinearLayout;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$4(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;I)V
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setHeaderPadding(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$5(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceBackHeader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$6(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceBackHeader Z
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$7(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)V
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/resetHeader()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$8(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$9(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;)Landroid/widget/RelativeLayout;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
areturn
.limit locals 1
.limit stack 1
.end method

.method private bounceBackHeader()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
isub
istore 1
L1:
aload 0
new android/view/animation/TranslateAnimation
dup
iconst_0
fconst_0
iconst_0
fconst_0
iconst_0
fconst_0
iconst_0
iload 1
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(IFIFIFIF)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
ldc2_w 215L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillEnabled(Z)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
iconst_0
invokevirtual android/view/animation/TranslateAnimation/setFillAfter(Z)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
iconst_1
invokevirtual android/view/animation/TranslateAnimation/setFillBefore(Z)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener
dup
aload 0
iload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$HeaderAnimationListener/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;I)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceAnimation Landroid/view/animation/TranslateAnimation;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
ineg
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getTop()I
isub
istore 1
goto L1
.limit locals 2
.limit stack 11
.end method

.method public static getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
aload 1
aload 2
aload 1
ldc "PullToRefreshView"
invokestatic com/huewu/pla/lib/ResourceUtil/getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
astore 2
aload 1
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getDisplayMetrics()Landroid/util/DisplayMetrics;
astore 1
aload 2
iload 0
ldc_w -1.0F
invokevirtual android/content/res/TypedArray/getDimension(IF)F
aload 1
getfield android/util/DisplayMetrics/densityDpi I
i2f
ldc_w 160.0F
fdiv
fdiv
freturn
.limit locals 3
.limit stack 4
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/setVerticalFadingEdgeEnabled(Z)V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/huewu/pla/R$layout/pull_to_refresh_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
getstatic com/huewu/pla/R$id/ptr_id_header I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
getstatic com/huewu/pla/R$id/ptr_id_text I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
getstatic com/huewu/pla/R$id/ptr_id_last_updated I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
getstatic com/huewu/pla/R$id/ptr_id_arrow I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
getstatic com/huewu/pla/R$id/ptr_id_spinner I
invokevirtual android/widget/RelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
aload 2
ifnonnull L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
ldc_w 15.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
ldc_w 12.0F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
iconst_0
iconst_5
iconst_0
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
iconst_0
iconst_0
iconst_5
iconst_0
invokevirtual android/widget/ProgressBar/setPadding(IIII)V
L1:
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc "Loading"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getstatic android/graphics/Typeface/DEFAULT_BOLD Landroid/graphics/Typeface;
invokevirtual android/widget/TextView/setTypeface(Landroid/graphics/Typeface;)V
aload 3
aload 1
ldc "PullToRefreshView_ptrTextSize"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
aload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getContext()Landroid/content/Context;
aload 1
ldc "ptr_pull_to_refresh"
invokestatic com/huewu/pla/lib/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/pullToRefreshText Ljava/lang/String;
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getContext()Landroid/content/Context;
aload 1
ldc "ptr_release_to_refresh"
invokestatic com/huewu/pla/lib/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/releaseToRefreshText Ljava/lang/String;
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getContext()Landroid/content/Context;
aload 1
ldc "ptr_loading"
invokestatic com/huewu/pla/lib/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/refreshingText Ljava/lang/String;
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getContext()Landroid/content/Context;
aload 1
ldc "ptr_last_updated"
invokestatic com/huewu/pla/lib/ResourceUtil/getStringId(Landroid/content/Context;Ljava/lang/String;)I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedText Ljava/lang/String;
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
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/flipAnimation Landroid/view/animation/RotateAnimation;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/flipAnimation Landroid/view/animation/RotateAnimation;
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/RotateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/flipAnimation Landroid/view/animation/RotateAnimation;
ldc2_w 250L
invokevirtual android/view/animation/RotateAnimation/setDuration(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/flipAnimation Landroid/view/animation/RotateAnimation;
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
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/reverseFlipAnimation Landroid/view/animation/RotateAnimation;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/reverseFlipAnimation Landroid/view/animation/RotateAnimation;
new android/view/animation/LinearInterpolator
dup
invokespecial android/view/animation/LinearInterpolator/<init>()V
invokevirtual android/view/animation/RotateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/reverseFlipAnimation Landroid/view/animation/RotateAnimation;
ldc2_w 250L
invokevirtual android/view/animation/RotateAnimation/setDuration(J)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/reverseFlipAnimation Landroid/view/animation/RotateAnimation;
iconst_1
invokevirtual android/view/animation/RotateAnimation/setFillAfter(Z)V
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerContainer Landroid/widget/LinearLayout;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/addHeaderView(Landroid/view/View;)V
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/isVerticalScrollBarEnabled()Z
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/scrollbarEnabled Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getViewTreeObserver()Landroid/view/ViewTreeObserver;
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener
dup
aload 0
aconst_null
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$PTROnGlobalLayoutListener;)V
invokevirtual android/view/ViewTreeObserver/addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 1
ldc "PullToRefreshView_ptrTextSize"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
aload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
aload 1
ldc "PullToRefreshView_ptrLastUpdateTextSize"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
aload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
invokevirtual android/widget/TextView/setTextSize(F)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
iconst_0
aload 1
ldc "PullToRefreshView_ptrArrowMarginRight"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
aload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
f2i
iconst_0
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
iconst_0
iconst_0
aload 1
ldc "PullToRefreshView_ptrSpinnerMarginRight"
invokestatic com/huewu/pla/lib/ResourceUtil/getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 1
aload 2
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/getDimensionDpSize(ILandroid/content/Context;Landroid/util/AttributeSet;)F
f2i
iconst_0
invokevirtual android/widget/ProgressBar/setPadding(IIII)V
goto L1
.limit locals 4
.limit stack 9
.end method

.method private isPull(Landroid/view/MotionEvent;)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
ireturn
.limit locals 2
.limit stack 1
.end method

.method private resetHeader()V
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getFirstVisiblePosition()I
ifle L0
aload 0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
ineg
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setHeaderPadding(I)V
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
return
L0:
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
ifnull L1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/Animation/hasEnded()Z
ifne L1
aload 0
iconst_1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceBackHeader Z
return
L1:
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceBackHeader()V
return
.limit locals 1
.limit stack 2
.end method

.method private setHeaderPadding(I)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerPadding I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/view/ViewGroup$MarginLayoutParams
astore 2
aload 2
iconst_0
iload 1
i2f
invokestatic java/lang/Math/round(F)I
iconst_0
iconst_0
invokevirtual android/view/ViewGroup$MarginLayoutParams/setMargins(IIII)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
aload 2
invokevirtual android/widget/RelativeLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 5
.end method

.method private setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/$SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State()[I
aload 1
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/pullToRefreshText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
ifnull L4
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/interrupt()V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
L4:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/showLastUpdatedText Z
ifeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
ldc2_w -1L
lcmp
ifeq L3
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedText Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedDateFormat Ljava/text/SimpleDateFormat;
new java/util/Date
dup
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
invokespecial java/util/Date/<init>(J)V
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/releaseToRefreshText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
ifnull L5
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/interrupt()V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
L5:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
return
L2:
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setUiRefreshing()V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/onRefreshListener Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener;
ifnonnull L6
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
return
L6:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/onRefreshListener Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener;
invokeinterface com/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener/onRefresh()V 0
return
.limit locals 2
.limit stack 10
.end method

.method private setUiRefreshing()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/spinner Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/refreshingText Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread
dup
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingHandler Landroid/os/Handler;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Landroid/os/Handler;)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/start()V
aload 0
iconst_1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
return
.limit locals 1
.limit stack 5
.end method

.method public isRefreshing()Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
ifeq L0
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lockScrollWhileRefreshing Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L2
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
ifnull L1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/Animation/hasEnded()Z
ifne L1
L2:
iconst_1
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L3
L4
L5
L4
default : L6
L6:
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L3:
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getFirstVisiblePosition()I
ifne L6
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/previousY F
goto L6
L5:
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getFirstVisiblePosition()I
ifne L7
aload 1
invokevirtual android/view/MotionEvent/getY()F
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/previousY F
fsub
fconst_0
fcmpl
ifle L7
aload 0
iconst_1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
iconst_1
ireturn
L7:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
goto L6
L4:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPulling Z
goto L6
.limit locals 2
.limit stack 2
.end method

.method public onRefreshComplete()V
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/resetHeader()V
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdated J
return
.limit locals 1
.limit stack 3
.end method

.method protected onScrollChanged(IIII)V
aload 0
iload 1
iload 2
iload 3
iload 4
invokespecial com/huewu/pla/lib/MultiColumnListView/onScrollChanged(IIII)V
ldc "Vingle"
new java/lang/StringBuilder
dup
ldc "hasResetHeader : "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/hasResetHeader Z
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
ldc ", t : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", oldt : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/hasResetHeader Z
ifne L0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/measuredHeaderHeight I
ifle L1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L1
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/measuredHeaderHeight I
ineg
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setHeaderPadding(I)V
L1:
aload 0
iconst_1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/hasResetHeader Z
L0:
return
.limit locals 5
.limit stack 5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
ifeq L0
L0:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lockScrollWhileRefreshing Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L2
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
ifnull L1
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getAnimation()Landroid/view/animation/Animation;
invokevirtual android/view/animation/Animation/hasEnded()Z
ifne L1
L2:
iconst_1
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L3
L4
default : L5
L5:
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L3:
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPull(Landroid/view/MotionEvent;)Z
ifeq L5
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L6
aload 0
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView/getFirstVisiblePosition()I
ifne L5
L6:
invokestatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/$SWITCH_TABLE$com$huewu$pla$lib$MultiColumnPullToRefreshListView$State()[I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/ordinal()I
iaload
tableswitch 1
L7
L8
default : L9
L9:
goto L5
L7:
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/resetHeader()V
goto L5
L8:
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/bounceBackHeader()V
goto L5
L4:
aload 0
aload 1
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/isPull(Landroid/view/MotionEvent;)Z
ifeq L5
aload 1
invokevirtual android/view/MotionEvent/getY()F
fstore 4
fload 4
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/previousY F
fsub
fstore 3
fload 3
fstore 2
fload 3
fconst_0
fcmpl
ifle L10
fload 3
ldc_w 3.0F
fdiv
fstore 2
L10:
aload 0
fload 4
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/previousY F
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerPadding I
i2f
fload 2
fadd
invokestatic java/lang/Math/round(F)I
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/header Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
ineg
invokestatic java/lang/Math/max(II)I
istore 5
iload 5
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerPadding I
if_icmpeq L5
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpeq L5
aload 0
iload 5
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setHeaderPadding(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L11
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerPadding I
ifle L11
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/flipAnimation Landroid/view/animation/RotateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
goto L5
L11:
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L5
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/headerPadding I
ifge L5
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setState(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/clearAnimation()V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/reverseFlipAnimation Landroid/view/animation/RotateAnimation;
invokevirtual android/widget/ImageView/startAnimation(Landroid/view/animation/Animation;)V
goto L5
.limit locals 6
.limit stack 2
.end method

.method public setLastUpdatedDateFormat(Ljava/text/SimpleDateFormat;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedDateFormat Ljava/text/SimpleDateFormat;
return
.limit locals 2
.limit stack 2
.end method

.method public setLockScrollWhileRefreshing(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lockScrollWhileRefreshing Z
return
.limit locals 2
.limit stack 2
.end method

.method public setOnRefreshListener(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/onRefreshListener Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$OnRefreshListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setRefreshing()V
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
aload 0
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView/setUiRefreshing()V
return
.limit locals 1
.limit stack 2
.end method

.method public setShowLastUpdatedText(Z)V
aload 0
iload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/showLastUpdatedText Z
iload 1
ifne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/lastUpdatedTextView Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTextPullToRefresh(Ljava/lang/String;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/pullToRefreshText Ljava/lang/String;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/PULL_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
ifnull L1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/interrupt()V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
L1:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setTextRefreshing(Ljava/lang/String;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/refreshingText Ljava/lang/String;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/REFRESHING Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
new com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread
dup
aload 0
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingHandler Landroid/os/Handler;
invokespecial com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/<init>(Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView;Landroid/os/Handler;)V
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/start()V
aload 0
iconst_1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
L0:
return
.limit locals 2
.limit stack 5
.end method

.method public setTextReleaseToRefresh(Ljava/lang/String;)V
aload 0
aload 1
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/releaseToRefreshText Ljava/lang/String;
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/state Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
getstatic com/huewu/pla/lib/MultiColumnPullToRefreshListView$State/RELEASE_TO_REFRESH Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$State;
if_acmpne L0
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/text Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/image Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
ifnull L1
aload 0
getfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
invokevirtual com/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread/interrupt()V
aload 0
aconst_null
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/mLoadingThread Lcom/huewu/pla/lib/MultiColumnPullToRefreshListView$LoadingThread;
L1:
aload 0
iconst_0
putfield com/huewu/pla/lib/MultiColumnPullToRefreshListView/isHeaderRefreshing Z
L0:
return
.limit locals 2
.limit stack 2
.end method
