.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/GuideActivity
.super android/app/Activity
.inner class inner com/nd/android/u/cloud/activity/guide/GuideActivity$1
.inner class inner com/nd/android/u/cloud/activity/guide/GuideActivity$2

.field private final 'PADDING' I

.field private 'isDone' Z

.field private 'mAdapter' Lcom/nd/android/u/cloud/activity/guide/GuideAdapter;

.field private 'mCurrentIndex' I

.field private 'mImgViews' [Landroid/widget/ImageView;

.field private 'mLastChange' I

.field private 'mListView' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mListView Ljava/util/ArrayList;
aload 0
iconst_5
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/PADDING I
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/isDone Z
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;I)V
aload 0
iload 1
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity/setCurDot(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)Z
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/isDone Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/isDone Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mLastChange I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mLastChange I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mListView Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity/lunchLoginActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method private initEvent()V
aload 0
new com/nd/android/u/cloud/activity/guide/GuideAdapter
dup
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mListView Ljava/util/ArrayList;
invokespecial com/nd/android/u/cloud/activity/guide/GuideAdapter/<init>(Ljava/util/ArrayList;)V
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mAdapter Lcom/nd/android/u/cloud/activity/guide/GuideAdapter;
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mAdapter Lcom/nd/android/u/cloud/activity/guide/GuideAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mViewPager Landroid/support/v4/view/ViewPager;
new com/nd/android/u/cloud/activity/guide/GuideActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity$1/<init>(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
invokevirtual android/support/v4/view/ViewPager/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initView()V
aload 0
aload 0
ldc_w 2131624211
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
ldc_w 2131624212
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 0
iconst_2
anewarray android/widget/ImageView
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iconst_0
istore 1
L0:
iload 1
iconst_2
if_icmpge L1
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903420
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 5
iload 1
ifne L2
ldc_w 2130838822
istore 2
L3:
aload 5
ldc_w 2131625644
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
aload 0
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/getResources()Landroid/content/res/Resources;
iload 2
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ImageView/setImageDrawable(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
new android/widget/ImageView
dup
aload 0
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aastore
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
aaload
getstatic android/widget/ImageView$ScaleType/FIT_XY Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView/setScaleType(Landroid/widget/ImageView$ScaleType;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
aaload
ldc_w 2130839378
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
aaload
iconst_5
iconst_0
iconst_5
iconst_0
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 3
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
aaload
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mListView Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L2:
ldc_w 2130838823
istore 2
goto L3
L1:
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
aaload
ldc_w 2130839379
invokevirtual android/widget/ImageView/setImageResource(I)V
return
.limit locals 6
.limit stack 5
.end method

.method private lunchLoginActivity()V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "has_return_btn"
iconst_0
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 0
aload 1
new com/nd/android/u/cloud/activity/guide/GuideActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity$2/<init>(Lcom/nd/android/u/cloud/activity/guide/GuideActivity;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
return
.limit locals 2
.limit stack 6
.end method

.method private setCurDot(I)V
iload 1
iflt L0
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mListView Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpgt L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
iload 1
if_icmpne L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
iload 1
aaload
ldc_w 2130839379
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mImgViews [Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
aaload
ldc_w 2130839378
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/activity/guide/GuideActivity/mCurrentIndex I
return
.limit locals 2
.limit stack 3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903075
invokevirtual com/nd/android/u/cloud/activity/guide/GuideActivity/setContentView(I)V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity/initView()V
aload 0
invokespecial com/nd/android/u/cloud/activity/guide/GuideActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
