.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity/RelationshipActivity
.super com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity
.inner class private RelationshipFragmentPagerAdapter inner com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter outer com/android/u/weibo/weibo/ui/activity/RelationshipActivity

.field private 'mUid' J

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity/mUid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method private doBack()V
aload 0
iconst_m1
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/setResult(I)V
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected handleBackButtonClick()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/RelationshipActivity/doBack()V
return
.limit locals 1
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getIntent()Landroid/content/Intent;
ldc "uid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity/mUid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity/mUid J
lconst_0
lcmp
ifne L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/finish()V
L0:
aload 0
getstatic com/android/u/weibo/R$layout/relationship I
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/setContentView(I)V
aload 0
getstatic com/android/u/weibo/R$id/stub_tweet_header I
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/initHeadComponent(I)V
aload 0
getstatic com/android/u/weibo/R$string/following_follower I
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/setHeadTitle(I)V
aload 0
getstatic com/android/u/weibo/R$id/relationship_pager I
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
astore 1
aload 1
new com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter
dup
aload 0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
invokespecial com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter/<init>(Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;Landroid/support/v4/app/FragmentManager;)V
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getstatic com/android/u/weibo/R$id/relationship_indicator I
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
astore 2
aload 2
aload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setBackgroundColor(I)V
aload 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterSeperatorColor(I)V
aload 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setSelectedColor(I)V
aload 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setTextColor(I)V
aload 2
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterColor(I)V
aload 2
fconst_0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterLineHeight(F)V
L2:
aload 1
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getIntent()Landroid/content/Intent;
ldc "pos"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
L1:
aload 2
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
goto L2
.limit locals 3
.limit stack 5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
aload 2
invokevirtual android/view/KeyEvent/getKeyCode()I
iconst_4
if_icmpne L0
aload 2
invokevirtual android/view/KeyEvent/getRepeatCount()I
ifne L0
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/RelationshipActivity/doBack()V
iconst_1
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial com/android/u/weibo/weibo/ui/activity/TweetHeadBaseActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method
