.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/RankingListRelativeLayout
.super android/widget/RelativeLayout
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$1
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$2
.inner class private InfoAsyncTask inner com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask outer com/nd/android/u/contact/view/RankingListRelativeLayout
.inner class private ViewPagerAdapter inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter outer com/nd/android/u/contact/view/RankingListRelativeLayout
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1

.field public static final 'FLOWER_RANK_BOY' Ljava/lang/String; = "\u6700\u53d7\u6b22\u8fce\u5e05\u54e5\u6392\u884c"

.field public static final 'FLOWER_RANK_GRIL' Ljava/lang/String; = "\u6700\u53d7\u6b22\u8fce\u7f8e\u5973\u6392\u884c"

.field public static final 'LOVE_RANK' Ljava/lang/String; = "\u88ab\u6697\u604b\u6392\u884c"

.field private static 'PAGE_ITEMS' I = 0


.field public static final 'PERIOD' I = 3


.field private static 'mNameArray' [Ljava/lang/String;

.field private 'TAG' Ljava/lang/String;

.field private 'dotList' Ljava/util/List; signature "Ljava/util/List<Landroid/widget/ImageView;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mDotLinearLayout' Landroid/widget/LinearLayout;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mLayoutInflater' Landroid/view/LayoutInflater;

.field private 'mRunnable' Ljava/lang/Runnable;

.field private final 'mScheduledExecutorService' Ljava/util/concurrent/ScheduledExecutorService;

.field private 'mScheduledFuture' Ljava/util/concurrent/ScheduledFuture;

.field private 'mTextView' Landroid/widget/TextView;

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method static <clinit>()V
iconst_3
putstatic com/nd/android/u/contact/view/RankingListRelativeLayout/PAGE_ITEMS I
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "\u6700\u53d7\u6b22\u8fce\u7f8e\u5973\u6392\u884c"
aastore
dup
iconst_1
ldc "\u6700\u53d7\u6b22\u8fce\u5e05\u54e5\u6392\u884c"
aastore
dup
iconst_2
ldc "\u88ab\u6697\u604b\u6392\u884c"
aastore
putstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
aload 0
iconst_3
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
ldc "RankingListRelativeLayout"
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/view/RankingListRelativeLayout$2
dup
aload 0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$2/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
aload 0
iconst_3
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
ldc "RankingListRelativeLayout"
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/view/RankingListRelativeLayout$2
dup
aload 0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$2/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getView()V
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
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
aload 0
iconst_3
invokestatic java/util/concurrent/Executors/newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
ldc "RankingListRelativeLayout"
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/view/RankingListRelativeLayout$2
dup
aload 0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$2/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getView()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout/updateView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mLayoutInflater Landroid/view/LayoutInflater;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600()I
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/PAGE_ITEMS I
ireturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic access$800()[Ljava/lang/String;
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method private initRankTypeCount()V
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsNeedSercetLove Z
ifne L0
iconst_2
putstatic com/nd/android/u/contact/view/RankingListRelativeLayout/PAGE_ITEMS I
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "\u6700\u53d7\u6b22\u8fce\u7f8e\u5973\u6392\u884c"
aastore
dup
iconst_1
ldc "\u6700\u53d7\u6b22\u8fce\u5e05\u54e5\u6392\u884c"
aastore
putstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private updateView(I)V
iload 1
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/PAGE_ITEMS I
irem
istore 1
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mTextView Landroid/widget/TextView;
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
iload 1
aaload
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/widget/ImageView
getstatic com/nd/android/u/contact/R$drawable/viewpager_dot_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L0
L1:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/widget/ImageView
getstatic com/nd/android/u/contact/R$drawable/viewpager_dot_selected I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 3
.limit stack 3
.end method

.method public final getView()V
aload 0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout/initRankTypeCount()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getContext()Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mLayoutInflater Landroid/view/LayoutInflater;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mLayoutInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/ranking_list_waterfall I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/dot_linearlayout I
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mDotLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/name_textview I
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mTextView Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/view_pager I
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
new com/nd/android/u/contact/view/RankingListRelativeLayout$1
dup
aload 0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$1/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
new com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Lcom/nd/android/u/contact/view/RankingListRelativeLayout$1;)V
iconst_1
anewarray java/lang/Integer
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
new com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getContext()Landroid/content/Context;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Landroid/content/Context;Ljava/util/List;)V
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
arraylength
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/setDotView(I)V
return
.limit locals 1
.limit stack 7
.end method

.method public final moveToNextPage()V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getCurrentItem()I
iconst_1
iadd
istore 2
iload 2
istore 1
iload 2
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/PAGE_ITEMS I
if_icmplt L0
iconst_0
istore 1
L0:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
iload 1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
ifnonnull L0
aload 0
aload 1
invokespecial android/widget/RelativeLayout/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L0:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
ifne L1
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
iconst_1
invokeinterface java/util/concurrent/ScheduledFuture/cancel(Z)Z 1
pop
L2:
aload 0
aload 1
invokespecial android/widget/RelativeLayout/onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L3
aload 0
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
ldc2_w 3L
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 6
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
goto L2
L3:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
iconst_3
if_icmpne L2
aload 0
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
ldc2_w 3L
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 6
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
goto L2
.limit locals 2
.limit stack 8
.end method

.method public final refresh()V
new com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Lcom/nd/android/u/contact/view/RankingListRelativeLayout$1;)V
iconst_1
anewarray java/lang/Integer
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mViewPager Landroid/support/v4/view/ViewPager;
new com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter
dup
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getContext()Landroid/content/Context;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Landroid/content/Context;Ljava/util/List;)V
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/nd/android/u/contact/view/RankingListRelativeLayout/mNameArray [Ljava/lang/String;
arraylength
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/setDotView(I)V
return
.limit locals 1
.limit stack 7
.end method

.method public final setDotView(I)V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mDotLinearLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
iconst_0
istore 2
L0:
iload 2
iload 1
if_icmpge L1
new android/widget/ImageView
dup
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout/getContext()Landroid/content/Context;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush 10
bipush 10
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
bipush 6
iconst_0
bipush 6
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 3
aload 4
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
getstatic com/nd/android/u/contact/R$drawable/viewpager_dot_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mDotLinearLayout Landroid/widget/LinearLayout;
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/dotList Ljava/util/List;
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
iconst_0
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout/updateView(I)V
return
.limit locals 5
.limit stack 5
.end method

.method public final setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mHandler Landroid/os/Handler;
aload 0
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledExecutorService Ljava/util/concurrent/ScheduledExecutorService;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout/mRunnable Ljava/lang/Runnable;
ldc2_w 3L
ldc2_w 3L
getstatic java/util/concurrent/TimeUnit/SECONDS Ljava/util/concurrent/TimeUnit;
invokeinterface java/util/concurrent/ScheduledExecutorService/scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture; 6
putfield com/nd/android/u/contact/view/RankingListRelativeLayout/mScheduledFuture Ljava/util/concurrent/ScheduledFuture;
return
.limit locals 2
.limit stack 8
.end method
