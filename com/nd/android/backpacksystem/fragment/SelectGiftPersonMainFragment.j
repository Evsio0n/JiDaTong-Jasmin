.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment$1

.field private 'mPageChangeListener' Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private 'mViewPager' Lcom/common/android/ui/widget/CompatibleViewPager;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private initMainTabContent()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/vpContent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/widget/CompatibleViewPager
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
new com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter
dup
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/getFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mActivity Landroid/app/Activity;
invokespecial com/nd/android/backpacksystem/adapter/SelectPersonTabContentAdapter/<init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V
invokevirtual com/common/android/ui/widget/CompatibleViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
return
.limit locals 1
.limit stack 5
.end method

.method private initPageChangeListener()V
aload 0
new com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment$1/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
return
.limit locals 1
.limit stack 4
.end method

.method private initSelectGiftPersonHeader()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/initHeader()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/btnHeaderRight I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mBtnHeaderRight Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mBtnHeaderRight Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRlHeaderTitle Landroid/widget/RelativeLayout;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/bg_title_green I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/RelativeLayout/setBackgroundColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mBtnHeaderRight Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mTvHeaderTitle Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$string/select_gift_person I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 3
.end method

.method private initTitlePageIndicatorExl()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/indicator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
astore 1
aload 1
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mViewPager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 1
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 1
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mPageChangeListener Landroid/support/v4/view/ViewPager$OnPageChangeListener;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected clickHeaderRight()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/SelectGiftPersonActivity
getfield com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/mSendGiftItemId J
invokestatic com/nd/android/backpacksystem/commonInterfaceImpl/BackpackCallOtherModel/toSearchPersonActivity(Landroid/app/Activity;J)V
return
.limit locals 1
.limit stack 3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/onActivityCreated(Landroid/os/Bundle;)V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/initSelectGiftPersonHeader()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/initMainTabContent()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/initPageChangeListener()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/initTitlePageIndicatorExl()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/fragment_backpackselect_gift_person I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRootView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragment/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method
