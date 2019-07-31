.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/TopRankActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/TopRankActivity$1

.field public static final 'PARAM_GENDER' Ljava/lang/String; = "gender"

.field public static final 'PARAM_TIME' Ljava/lang/String; = "time"

.field public static final 'PARAM_TOPTYPE' Ljava/lang/String; = "topType"

.field private 'mCurrentSel' I

.field private 'mFilterDialog' Lcom/nd/android/u/contact/dialog/RankFilterDialog;

.field private 'mFlowerTopView' Lcom/nd/android/u/contact/view/TopRankFlowerView;

.field private 'mListTitle' [I

.field private 'mListView' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private 'mPagerAdapter' Lcom/nd/android/u/contact/adapter/TopRankPagerAdapter;

.field private 'mScreenWidth' I

.field private 'mSecretLoveTopView' Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;

.field private 'mhandl' Landroid/os/Handler;

.field private 'mindicator' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;

.field private 'mpager' Lcom/common/android/ui/widget/CompatibleViewPager;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_2
newarray int
dup
iconst_0
getstatic com/nd/android/u/contact/R$string/flowers_rank I
iastore
dup
iconst_1
getstatic com/nd/android/u/contact/R$string/secretlove_rank I
iastore
putfield com/nd/android/u/contact/activity/TopRankActivity/mListTitle [I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/TopRankActivity/mListView Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/TopRankActivity/mScreenWidth I
aload 0
new com/nd/android/u/contact/activity/TopRankActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TopRankActivity$1/<init>(Lcom/nd/android/u/contact/activity/TopRankActivity;)V
putfield com/nd/android/u/contact/activity/TopRankActivity/mhandl Landroid/os/Handler;
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/TopRankActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/TopRankActivity;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/TopRankActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/TopRankActivity/setFilterBtnText()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/TopRankActivity;)Lcom/nd/android/u/contact/view/TopRankFlowerView;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/TopRankActivity;)Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getCurrentFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
invokevirtual com/nd/android/u/contact/view/TopRankFlowerView/getFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
invokevirtual com/nd/android/u/contact/view/TopRankHiddenLoveView/getFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method private setFilterBtnText()V
aload 0
invokespecial com/nd/android/u/contact/activity/TopRankActivity/getCurrentFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/product/android/commonInterface/contact/RankFilterInfo/isDefault()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/photoscreen I
invokevirtual android/widget/Button/setText(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/filter_ready I
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
pop
aload 0
getstatic com/nd/android/u/contact/R$layout/top_rank_activity I
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/setContentView(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/getWindowManager()Landroid/view/WindowManager;
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
invokevirtual android/view/Display/getWidth()I
putfield com/nd/android/u/contact/activity/TopRankActivity/mScreenWidth I
aload 1
ifnull L0
aload 0
aload 1
ldc "topType"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/initEvent()V
aload 0
getstatic com/nd/android/u/contact/R$string/top_rank I
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/setActivityTitle(I)V
iconst_1
ireturn
L0:
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/getIntent()Landroid/content/Intent;
ldc "topType"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
new com/nd/android/u/contact/view/TopRankFlowerView
dup
aload 0
iconst_0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mScreenWidth I
invokespecial com/nd/android/u/contact/view/TopRankFlowerView/<init>(Landroid/content/Context;II)V
putfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
aload 0
new com/nd/android/u/contact/view/TopRankHiddenLoveView
dup
aload 0
iconst_1
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mScreenWidth I
invokespecial com/nd/android/u/contact/view/TopRankHiddenLoveView/<init>(Landroid/content/Context;II)V
putfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/getIntent()Landroid/content/Intent;
ldc "time"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 1
aload 0
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/getIntent()Landroid/content/Intent;
ldc "gender"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
istore 2
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
iload 1
invokevirtual com/nd/android/u/contact/view/TopRankFlowerView/setTimeSelect(I)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
iload 2
invokevirtual com/nd/android/u/contact/view/TopRankFlowerView/setGender(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
invokevirtual com/nd/android/u/contact/view/TopRankFlowerView/init()V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
invokevirtual com/nd/android/u/contact/view/TopRankHiddenLoveView/init()V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mListView Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFlowerTopView Lcom/nd/android/u/contact/view/TopRankFlowerView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mListView Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
new com/nd/android/u/contact/adapter/TopRankPagerAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mListView Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mListTitle [I
invokespecial com/nd/android/u/contact/adapter/TopRankPagerAdapter/<init>(Landroid/content/Context;Ljava/util/ArrayList;[I)V
putfield com/nd/android/u/contact/activity/TopRankActivity/mPagerAdapter Lcom/nd/android/u/contact/adapter/TopRankPagerAdapter;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/top_layout_pager I
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/u/contact/activity/TopRankActivity/mpager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/top_indicator I
invokevirtual com/nd/android/u/contact/activity/TopRankActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
putfield com/nd/android/u/contact/activity/TopRankActivity/mindicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mpager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mPagerAdapter Lcom/nd/android/u/contact/adapter/TopRankPagerAdapter;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mindicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mpager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mindicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mindicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mhandl Landroid/os/Handler;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setmHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mindicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setCurrentItem(I)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokespecial com/nd/android/u/contact/activity/TopRankActivity/setFilterBtnText()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
iload 1
invokevirtual com/nd/android/u/contact/view/TopRankHiddenLoveView/setTimeSelect(I)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mSecretLoveTopView Lcom/nd/android/u/contact/view/TopRankHiddenLoveView;
iload 2
invokevirtual com/nd/android/u/contact/view/TopRankHiddenLoveView/setGender(I)V
goto L1
.limit locals 3
.limit stack 6
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
tableswitch 0
L0
default : L1
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
ifnull L1
iload 2
iconst_m1
if_icmpne L1
aload 3
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
aload 3
ldc "unitid"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 3
ldc "departid"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 3
ldc "nodename"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setUnitValue(IILjava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method protected final onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mListView Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/view/View
astore 2
aload 2
instanceof com/product/android/ui/widget/TopRankView
ifeq L0
aload 2
checkcast com/product/android/ui/widget/TopRankView
invokevirtual com/product/android/ui/widget/TopRankView/onDestroy()V
goto L0
L1:
return
.limit locals 3
.limit stack 1
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "topType"
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mCurrentSel I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected final rightBtnHandle()V
aload 0
new com/nd/android/u/contact/dialog/RankFilterDialog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mhandl Landroid/os/Handler;
invokespecial com/nd/android/u/contact/dialog/RankFilterDialog/<init>(Landroid/content/Context;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
aload 0
invokespecial com/nd/android/u/contact/activity/TopRankActivity/getCurrentFilter()Lcom/product/android/commonInterface/contact/RankFilterInfo;
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/setFilterValue(Lcom/product/android/commonInterface/contact/RankFilterInfo;)V
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/create()Landroid/app/AlertDialog;
pop
aload 0
getfield com/nd/android/u/contact/activity/TopRankActivity/mFilterDialog Lcom/nd/android/u/contact/dialog/RankFilterDialog;
invokevirtual com/nd/android/u/contact/dialog/RankFilterDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 1
.limit stack 5
.end method
