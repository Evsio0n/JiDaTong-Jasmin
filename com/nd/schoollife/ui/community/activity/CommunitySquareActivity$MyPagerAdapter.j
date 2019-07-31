.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter
.super android/support/v4/view/PagerAdapter
.inner class public static MyPagerAdapter inner com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter outer com/nd/schoollife/ui/community/activity/CommunitySquareActivity

.field private 'mContext' Landroid/content/Context;

.field private 'mHotView' Lcom/nd/schoollife/ui/community/view/HotCommunityView;

.field private 'mRecommendView' Lcom/nd/schoollife/ui/community/view/RecommendCommunityView;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
iload 2
ifne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mHotView Lcom/nd/schoollife/ui/community/view/HotCommunityView;
ifnonnull L1
aload 0
new com/nd/schoollife/ui/community/view/HotCommunityView
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mContext Landroid/content/Context;
invokespecial com/nd/schoollife/ui/community/view/HotCommunityView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mHotView Lcom/nd/schoollife/ui/community/view/HotCommunityView;
L1:
aload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mHotView Lcom/nd/schoollife/ui/community/view/HotCommunityView;
invokevirtual com/nd/schoollife/ui/community/view/HotCommunityView/getHotView()Landroid/view/View;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mHotView Lcom/nd/schoollife/ui/community/view/HotCommunityView;
invokevirtual com/nd/schoollife/ui/community/view/HotCommunityView/getHotView()Landroid/view/View;
areturn
L0:
iload 2
iconst_1
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mRecommendView Lcom/nd/schoollife/ui/community/view/RecommendCommunityView;
ifnonnull L3
aload 0
new com/nd/schoollife/ui/community/view/RecommendCommunityView
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mContext Landroid/content/Context;
invokespecial com/nd/schoollife/ui/community/view/RecommendCommunityView/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mRecommendView Lcom/nd/schoollife/ui/community/view/RecommendCommunityView;
L3:
aload 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mRecommendView Lcom/nd/schoollife/ui/community/view/RecommendCommunityView;
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/getRecommendView()Landroid/view/View;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunitySquareActivity$MyPagerAdapter/mRecommendView Lcom/nd/schoollife/ui/community/view/RecommendCommunityView;
invokevirtual com/nd/schoollife/ui/community/view/RecommendCommunityView/getRecommendView()Landroid/view/View;
areturn
L2:
aconst_null
areturn
.limit locals 3
.limit stack 4
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
