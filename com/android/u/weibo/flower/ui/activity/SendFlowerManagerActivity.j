.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
.super com/product/android/ui/activity/HeaderActivity
.implements com/product/android/ui/waterfall/OnHeaderScrollListener
.inner class inner com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$1
.inner class inner com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2
.inner class inner com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$3

.field public static final 'FIRST_INTENT_TAG' Ljava/lang/String; = "first"

.field public static final 'FIRST_VIEW' I = 0


.field public static final 'SECOND_INTENT_TAG' Ljava/lang/String; = "second"

.field public static final 'SECOND_VIEW' I = 1


.field public static final 'SEND_FLOWER_PREFERENCES' Ljava/lang/String; = "SendFlowerPrefsFile"

.field public static final 'THIRD_INTENT_TAG' Ljava/lang/String; = "third"

.field private 'SEND_FLOWER_PREFS_RANKTYPE_KEY' Ljava/lang/String;

.field 'handler' Landroid/os/Handler;

.field protected 'headerLayout' Landroid/widget/RelativeLayout;

.field private 'indicator' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;

.field protected 'llHeaderBg' Landroid/widget/LinearLayout;

.field private 'mEditor' Landroid/content/SharedPreferences$Editor;

.field private 'mFirstView' Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;

.field private 'mListViews' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private 'mRankDisplay' I

.field private 'mSecondView' Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;

.field private 'mSharedPreferences' Landroid/content/SharedPreferences;

.field private 'mThirdView' Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;

.field private 'mTitleList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field private 'mUid' J

.field private 'pager' Lcom/common/android/ui/widget/CompatibleViewPager;

.field protected 'waterfallAdapter' Lcom/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
lconst_0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
aload 0
iconst_1
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "rank_type"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/SEND_FLOWER_PREFS_RANKTYPE_KEY Ljava/lang/String;
aload 0
new com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$1
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$1/<init>(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/handler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;I)V
aload 0
iload 1
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnVisiable(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;I)V
aload 0
iload 1
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnVisiable(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;I)V
aload 0
iload 1
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnVisiable(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
areturn
.limit locals 1
.limit stack 1
.end method

.method private translateHeaderAnimation(Landroid/widget/RelativeLayout;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual android/widget/RelativeLayout/getAnimation()Landroid/view/animation/Animation;
ifnonnull L1
aload 1
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L2
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/hideHeader()V
return
L2:
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/showHeader()V
return
.limit locals 2
.limit stack 1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getCurrentFocus()Landroid/view/View;
ifnull L0
aload 0
ldc "input_method"
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getCurrentFocus()Landroid/view/View;
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_2
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
L0:
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public handler_CMD_30010()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/handler_CMD_30010()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/refresh()V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/refresh()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_30011()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/handler_CMD_30011()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/refresh()V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/refresh()V
L1:
return
.limit locals 1
.limit stack 1
.end method

.method public hideHeader()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L0
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
fconst_0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
ineg
i2f
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
new android/view/animation/AccelerateInterpolator
dup
invokespecial android/view/animation/AccelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 1
ldc2_w 400L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
aload 1
invokevirtual android/widget/RelativeLayout/startAnimation(Landroid/view/animation/Animation;)V
aload 1
new com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$3
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$3/<init>(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
iconst_0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnVisiable(I)V
aload 0
getstatic com/android/u/weibo/R$string/sendflower I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setActivityTitle(I)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/initData()V
aload 0
new com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter
dup
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mTitleList Ljava/util/ArrayList;
invokespecial com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/<init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/waterfallAdapter Lcom/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/sendflower_layout_pager I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/waterfallAdapter Lcom/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/sendflower_indicator I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 2
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 2
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 2
getfield android/util/DisplayMetrics/widthPixels I
istore 1
iload 1
ifle L0
iload 1
sipush 480
isub
bipush 40
idiv
istore 1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
iload 1
bipush 19
iadd
i2f
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setTextSize(F)V
L0:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/android/u/weibo/R$drawable/xy_btn_bg_add_and_more I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnBackground(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterSeperatorColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setSelectedColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setTextColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterColor(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
fconst_0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterLineHeight(F)V
L2:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/handler Landroid/os/Handler;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setmHandler(Landroid/os/Handler;)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getIntent()Landroid/content/Intent;
ldc "tab"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L3
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getIntent()Landroid/content/Intent;
ldc "tab"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
iload 1
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setCurrentItem(I)V
L3:
return
L1:
aload 0
getstatic com/android/u/weibo/R$drawable/bt_header_right_bg I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnBackground(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
goto L2
.limit locals 3
.limit stack 5
.end method

.method public initData()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mTitleList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mTitleList Ljava/util/ArrayList;
aload 0
getstatic com/android/u/weibo/R$string/flowers_contribution_list I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getString(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mTitleList Ljava/util/ArrayList;
aload 0
getstatic com/android/u/weibo/R$string/i_send_a_who I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getString(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mTitleList Ljava/util/ArrayList;
aload 0
getstatic com/android/u/weibo/R$string/qita I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getString(I)Ljava/lang/String;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
astore 1
aload 0
aload 0
ldc "SendFlowerPrefsFile"
iconst_0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSharedPreferences Landroid/content/SharedPreferences;
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSharedPreferences Landroid/content/SharedPreferences;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/SEND_FLOWER_PREFS_RANKTYPE_KEY Ljava/lang/String;
iconst_1
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
iconst_1
if_icmpne L0
aload 0
getstatic com/android/u/weibo/R$string/top_rank_head_right_btn_latest I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnText(I)V
L1:
aload 0
new com/android/u/weibo/flower/ui/widget/SendFlowerToMeView
dup
aload 0
aload 1
invokevirtual android/view/Display/getWidth()I
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/handler Landroid/os/Handler;
invokespecial com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/<init>(Landroid/content/Context;ILandroid/os/Handler;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
ldc "first"
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/setDisplay(I)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/setUid(J)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/initView()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/android/u/weibo/flower/ui/widget/TopRankListByTimeView
dup
aload 0
iconst_1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/handler Landroid/os/Handler;
invokespecial com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/<init>(Landroid/content/Context;ILandroid/os/Handler;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ldc "second"
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/setUid(J)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/android/u/weibo/flower/ui/widget/SurplusFlowerView
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/SurplusFlowerView/<init>(Landroid/content/Context;)V
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
ldc "third"
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/handler Landroid/os/Handler;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/setParentHandler(Landroid/os/Handler;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
L0:
aload 0
getstatic com/android/u/weibo/R$string/top_rank_head_right_btn_most I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnText(I)V
goto L1
.limit locals 2
.limit stack 6
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
lconst_0
lcmp
ifne L0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mUid J
L0:
aload 0
getstatic com/android/u/weibo/R$layout/sendflower I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setContentView(I)V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/initComponent()V
aload 0
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/initEvent()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
ifnull L1
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/initData()V
L1:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L2
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/initData()V
L2:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
ifnull L3
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/init()V
L3:
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mListViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
astore 2
aload 2
instanceof com/android/u/weibo/flower/ui/widget/SendFlowerToMeView
ifeq L2
aload 2
checkcast com/android/u/weibo/flower/ui/widget/SendFlowerToMeView
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/onDestroy()V
goto L1
L2:
aload 2
instanceof com/android/u/weibo/flower/ui/widget/SurplusFlowerView
ifeq L3
aload 2
checkcast com/android/u/weibo/flower/ui/widget/SurplusFlowerView
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/onDestroy()V
goto L1
L3:
aload 2
instanceof com/product/android/ui/widget/TopRankView
ifeq L1
aload 2
checkcast com/product/android/ui/widget/TopRankView
invokevirtual com/product/android/ui/widget/TopRankView/onDestroy()V
goto L1
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 3
.limit stack 1
.end method

.method protected onPause()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onPause()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mThirdView Lcom/android/u/weibo/flower/ui/widget/SurplusFlowerView;
invokevirtual com/android/u/weibo/flower/ui/widget/SurplusFlowerView/onPause()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onResume()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onResume()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSecondView Lcom/android/u/weibo/flower/ui/widget/TopRankListByTimeView;
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankListByTimeView/refresh()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected rightBtnHandle()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mEditor Landroid/content/SharedPreferences$Editor;
ifnonnull L0
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mSharedPreferences Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mEditor Landroid/content/SharedPreferences$Editor;
L0:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
iconst_1
if_icmpne L1
aload 0
iconst_0
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
aload 0
getstatic com/android/u/weibo/R$string/top_rank_head_right_btn_most I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnText(I)V
L2:
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mEditor Landroid/content/SharedPreferences$Editor;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/SEND_FLOWER_PREFS_RANKTYPE_KEY Ljava/lang/String;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mFirstView Lcom/android/u/weibo/flower/ui/widget/SendFlowerToMeView;
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
invokevirtual com/android/u/weibo/flower/ui/widget/SendFlowerToMeView/changeDisplay(I)V
return
L1:
aload 0
iconst_1
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/mRankDisplay I
aload 0
getstatic com/android/u/weibo/R$string/top_rank_head_right_btn_latest I
invokevirtual com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/setRightBtnText(I)V
goto L2
.limit locals 1
.limit stack 3
.end method

.method public showHeader()V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
new android/view/animation/TranslateAnimation
dup
fconst_0
fconst_0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getHeight()I
ineg
i2f
fconst_0
invokespecial android/view/animation/TranslateAnimation/<init>(FFFF)V
astore 1
aload 1
new android/view/animation/AccelerateInterpolator
dup
invokespecial android/view/animation/AccelerateInterpolator/<init>()V
invokevirtual android/view/animation/TranslateAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 1
ldc2_w 400L
invokevirtual android/view/animation/TranslateAnimation/setDuration(J)V
aload 1
new com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2
dup
aload 0
invokespecial com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2/<init>(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)V
invokevirtual android/view/animation/TranslateAnimation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
aload 1
invokevirtual android/widget/RelativeLayout/startAnimation(Landroid/view/animation/Animation;)V
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public startScroll()V
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokespecial com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/translateHeaderAnimation(Landroid/widget/RelativeLayout;)V
return
.limit locals 1
.limit stack 2
.end method
