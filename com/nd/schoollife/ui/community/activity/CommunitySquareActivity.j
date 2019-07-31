.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/CommunitySquareActivity
.super com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity
.implements android/view/View$OnClickListener
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.inner class public static MyPagerAdapter inner com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter outer com/nd/schoollife/ui/community/activity/CommunitySquareActivity

.field public static final 'HOT' I = 0


.field public static final 'ITEM_SUM' I = 2


.field public static final 'RECOMMEND' I = 1


.field private 'mAdapter' Lcom/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter;

.field private 'mHotTextView' Landroid/widget/TextView;

.field private 'mIndicator' Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;

.field private 'mMainViewPager' Landroid/support/v4/view/ViewPager;

.field private 'mRecommendTextView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/activity/BaseSchoollifeActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private updateTagView(I)V
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/getResources()Landroid/content/res/Resources;
astore 2
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mHotTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_community_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mRecommendTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_community_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mHotTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_community_square_header_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mRecommendTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_community_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_community_square I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/vp_square_community I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/indicator_square_community I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/square/view/UnderlinePageIndicator
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_community_square_hot I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mHotTextView Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_community_square_recommend I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mRecommendTextView Landroid/widget/TextView;
aload 0
new com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mAdapter Lcom/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mAdapter Lcom/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFades(Z)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setSelectedColor(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected initEvent()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mHotTextView Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mRecommendTextView Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_community_square_back I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/btn_cummunity_square_search I
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/tv_community_square_hot I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/tv_community_square_recommend I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/btn_community_square_back I
if_icmpne L3
aload 0
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/finish()V
return
L3:
iload 2
getstatic com/nd/schoollife/R$id/btn_cummunity_square_search I
if_icmpne L1
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/SearchCommunityActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/community/activity/CommunitySquareActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
aload 0
iload 1
invokespecial com/nd/schoollife/ui/community/activity/CommunitySquareActivity/updateTagView(I)V
return
.limit locals 2
.limit stack 2
.end method
