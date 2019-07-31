.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/SquareMyGroupActivity
.super com/nd/schoollife/ui/square/activity/HeaderFragmentActivity
.implements android/view/View$OnClickListener
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.inner class static MyGroupViewAdapter inner com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter outer com/nd/schoollife/ui/square/activity/SquareMyGroupActivity

.field public static final 'ALL' I = 0


.field public static final 'ITEM_SUM' I = 2


.field public static final 'MANAGER' I = 1


.field private 'mAdapter' Lcom/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter;

.field private 'mAllTextView' Landroid/widget/TextView;

.field private 'mIndicator' Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;

.field private 'mMainViewPager' Landroid/support/v4/view/ViewPager;

.field private 'mManagerTextView' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private updateTagView(I)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/getResources()Landroid/content/res/Resources;
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
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mAllTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mManagerTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mAllTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mManagerTextView Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_mygroup I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/vp_square_mygroup I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/indicator_square_mygroup I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/square/view/UnderlinePageIndicator
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
getstatic com/nd/schoollife/R$id/rl_square_group_all I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_square_group_manager I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
new com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mAdapter Lcom/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mAdapter Lcom/nd/schoollife/ui/square/activity/SquareMyGroupActivity$MyGroupViewAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFades(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setSelectedColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_group_all I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mAllTextView Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_group_manager I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mManagerTextView Landroid/widget/TextView;
aload 0
getstatic com/nd/schoollife/R$string/square_mygroup I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/setActivityTitle(I)V
aload 0
getstatic com/nd/schoollife/R$drawable/btn_community_creat_selector I
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/setRightBtnBackground(I)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/initData(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/onActivityResult(IILandroid/content/Intent;)V
iload 1
tableswitch 1
L0
default : L1
L1:
return
L0:
iload 2
iconst_2
if_icmpne L2
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/community/activity/CreateCommunityActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/startActivity(Landroid/content/Intent;)V
return
L2:
iload 2
iconst_1
if_icmpne L1
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/team/activity/CreateTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 4
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/rl_square_group_all I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_group_manager I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
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
invokespecial com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/updateTagView(I)V
return
.limit locals 2
.limit stack 2
.end method

.method protected rightBtnHandle()V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/schoollife/ui/square/activity/MenuActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
iconst_1
invokevirtual com/nd/schoollife/ui/square/activity/SquareMyGroupActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 1
.limit stack 5
.end method
