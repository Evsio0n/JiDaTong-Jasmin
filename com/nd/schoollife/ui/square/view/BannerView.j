.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/BannerView
.super android/widget/LinearLayout
.implements android/view/View$OnTouchListener
.inner class inner com/nd/schoollife/ui/square/view/BannerView$1
.inner class inner com/nd/schoollife/ui/square/view/BannerView$2
.inner class private BannerListAdapter inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter outer com/nd/schoollife/ui/square/view/BannerView
.inner class inner com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter$1

.field public static final 'BANNER_UPDATE' I = 2048


.field public static final 'PERIOD' I = 2


.field private 'dotList' Ljava/util/List; signature "Ljava/util/List<Landroid/widget/ImageView;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;"

.field private 'mDotLinearLayout' Landroid/widget/LinearLayout;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mLayoutInflater' Landroid/view/LayoutInflater;

.field private 'mRelativeLayout' Landroid/widget/RelativeLayout;

.field private 'mRunnable' Ljava/lang/Runnable;

.field private final 'mScheduledExecutorService' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mScheduledFuture' Ljava/util/concurrent/ScheduledFuture;

.field private 'mSearchLinearLayout' Landroid/widget/LinearLayout;

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
aload 0
iconst_3
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/schoollife/ui/square/view/BannerView/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
new com/nd/schoollife/ui/square/view/BannerView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView$2/<init>(Lcom/nd/schoollife/ui/square/view/BannerView;)V
putfield com/nd/schoollife/ui/square/view/BannerView/mRunnable Ljava/lang/Runnable;
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/BannerView/initView(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
aload 0
iconst_3
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/schoollife/ui/square/view/BannerView/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
new com/nd/schoollife/ui/square/view/BannerView$2
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView$2/<init>(Lcom/nd/schoollife/ui/square/view/BannerView;)V
putfield com/nd/schoollife/ui/square/view/BannerView/mRunnable Ljava/lang/Runnable;
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/BannerView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/BannerView;I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/square/view/BannerView/updateView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/os/Handler;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/view/LayoutInflater;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mLayoutInflater Landroid/view/LayoutInflater;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/schoollife/ui/square/view/BannerView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/view/BannerView/mLayoutInflater Landroid/view/LayoutInflater;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mLayoutInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/square_banner I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/BannerView/addView(Landroid/view/View;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/vp_square_banner I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_banner_dot I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/BannerView/mDotLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_search I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/BannerView/mSearchLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_square_banner I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/BannerView/mRelativeLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mRelativeLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
new com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter
dup
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
invokespecial com/nd/schoollife/ui/square/view/BannerView$BannerListAdapter/<init>(Lcom/nd/schoollife/ui/square/view/BannerView;Ljava/util/List;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
aload 1
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/setEvent()V
return
.limit locals 2
.limit stack 5
.end method

.method private setDotView(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDotLinearLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iload 1
iconst_1
if_icmpgt L0
return
L0:
iconst_0
istore 2
L1:
iload 2
iload 1
if_icmpge L2
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mContext Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush 15
bipush 15
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
bipush 15
iconst_0
bipush 15
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 3
aload 4
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 3
getstatic com/nd/schoollife/R$drawable/ic_square_banner_item_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDotLinearLayout Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 0
iconst_0
invokespecial com/nd/schoollife/ui/square/view/BannerView/updateView(I)V
return
.limit locals 5
.limit stack 5
.end method

.method private setEvent()V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
new com/nd/schoollife/ui/square/view/BannerView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView$1/<init>(Lcom/nd/schoollife/ui/square/view/BannerView;)V
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private startScheduledFuture()V
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/stopScheduledFuture()V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mRunnable Ljava/lang/Runnable;
ldc2_w 2L
ldc2_w 2L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 6
putfield com/nd/schoollife/ui/square/view/BannerView/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 1
.limit stack 8
.end method

.method private stopScheduledFuture()V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private updateView(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/widget/ImageView
getstatic com/nd/schoollife/R$drawable/ic_square_banner_item_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L2
L3:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/dotList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/widget/ImageView
getstatic com/nd/schoollife/R$drawable/ic_square_banner_item_select I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public moveToNextPage()V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iconst_1
iadd
istore 2
iload 2
istore 1
iload 2
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L0
iconst_0
istore 1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
L1
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/stopScheduledFuture()V
goto L2
L1:
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/startScheduledFuture()V
goto L2
.limit locals 2
.limit stack 1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
L1
default : L2
L2:
iconst_0
ireturn
L0:
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/stopScheduledFuture()V
goto L2
L1:
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/startScheduledFuture()V
goto L2
.limit locals 3
.limit stack 1
.end method

.method public final setData(Ljava/util/List;)Z
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/BannerItemBean;>;)Z"
iconst_1
istore 2
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mRelativeLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
iconst_0
istore 2
L2:
iload 2
ireturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mRelativeLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/setDotView(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
invokevirtual android/support/v4/view/PagerAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mViewPager Landroid/support/v4/view/ViewPager;
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmple L2
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/startScheduledFuture()V
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/BannerView/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/BannerView/mSearchLinearLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public startTimer()V
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/startScheduledFuture()V
return
.limit locals 1
.limit stack 1
.end method

.method public stopTimer()V
aload 0
invokespecial com/nd/schoollife/ui/square/view/BannerView/stopScheduledFuture()V
return
.limit locals 1
.limit stack 1
.end method
