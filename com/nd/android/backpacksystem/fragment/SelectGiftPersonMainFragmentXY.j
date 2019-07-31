.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY
.super com/nd/android/backpacksystem/fragment/BackpackBaseFragment
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY$1

.field private 'mAdapter' Lcom/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter;

.field private 'mIndicator' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;

.field private 'mTvDepartment' Landroid/widget/TextView;

.field private 'mTvFriend' Landroid/widget/TextView;

.field private 'mTvRecent' Landroid/widget/TextView;

.field private 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/BackpackBaseFragment/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY;I)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/pageSelected(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mBtnHeaderRight Landroid/widget/Button;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/onClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mBtnHeaderRight Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvHeaderTitle Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$string/select_gift_person I
invokevirtual android/widget/TextView/setText(I)V
aload 0
new com/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter
dup
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getFragmentManager()Landroid/support/v4/app/FragmentManager;
invokespecial com/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mAdapter Lcom/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mAdapter Lcom/nd/android/backpacksystem/adapter/SelectPersonTabContentXYAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mViewPager Landroid/support/v4/view/ViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/bg_select_people_tab I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setBackgroundColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/bg_select_people_tab I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterSeperatorColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
fconst_0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterLineHeight(F)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
new com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY$1/<init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY;)V
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private initView()V
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/initHeader()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/btnHeaderRight I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mBtnHeaderRight Landroid/widget/Button;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/vp_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tv_friend I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvFriend Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tv_recent I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvRecent Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tv_class I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvDepartment Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
getstatic com/nd/android/backpacksystem/R$id/tpie_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mIndicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
return
.limit locals 1
.limit stack 3
.end method

.method private pageSelected(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvRecent Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvDepartment Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvRecent Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvDepartment Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L2:
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvFriend Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvRecent Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/default_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mTvDepartment Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/select_tab_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 2
.limit stack 3
.end method

.method protected clickHeaderRight()V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mActivity Landroid/app/Activity;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mActivity Landroid/app/Activity;
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
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/initView()V
aload 0
invokespecial com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/initEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/backpacksystem/R$layout/fragment_backpackselect_gift_person_xy I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonMainFragmentXY/mRootView Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method
