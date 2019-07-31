.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/activity/MessageActivity
.super com/nd/schoollife/ui/square/activity/HeaderFragmentActivity
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.implements android/view/View$OnClickListener
.inner class static MessageFragmentAdapter inner com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter outer com/nd/schoollife/ui/square/activity/MessageActivity

.field public static final 'AT' I = 2


.field public static final 'ITEM_NUM' I = 3


.field public static final 'LIKE' I = 0


.field public static final 'REPLY' I = 1


.field private 'mAdapter' Lcom/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter;

.field private 'mAtNumTV' Landroid/widget/TextView;

.field private 'mAtTV' Landroid/widget/TextView;

.field private 'mIndicator' Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;

.field private 'mLikeNumTV' Landroid/widget/TextView;

.field private 'mLikeTV' Landroid/widget/TextView;

.field private 'mMainViewPager' Landroid/support/v4/view/ViewPager;

.field private 'mReplyNumTV' Landroid/widget/TextView;

.field private 'mReplyTV' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private finishActivity()V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/finish()V
return
.limit locals 1
.limit stack 1
.end method

.method private setFirstView(Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getAllMessageNum()J
lconst_0
lcmp
ifle L0
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
ldc "comment"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
L1:
aload 1
ldc "reply"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
L2:
aload 1
ldc "mention"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_2
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
aload 0
iconst_0
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/updateTab(I)V
return
.limit locals 2
.limit stack 4
.end method

.method private showMsgNum(JLandroid/widget/TextView;)V
lload 1
lconst_0
lcmp
ifgt L0
ldc ""
astore 4
aload 3
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 3
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
lload 1
ldc2_w 99L
lcmp
ifle L2
ldc "99+"
astore 4
aload 3
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L2:
lload 1
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
astore 4
aload 3
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
.limit locals 5
.limit stack 4
.end method

.method private updateTab(I)V
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/getResources()Landroid/content/res/Resources;
astore 2
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iconst_0
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setLikeMessageNum(I)V
aload 0
lconst_0
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
iconst_0
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setReplyMessageNum(I)V
aload 0
lconst_0
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L2:
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
lconst_0
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setAtMessageNum(J)V
aload 0
lconst_0
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_tag_text_normal I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtTV Landroid/widget/TextView;
aload 2
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 4
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_square_message I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/setContentView(I)V
aload 0
aload 0
getstatic com/nd/schoollife/R$id/vp_square_message I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/indicator_square_message I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/schoollife/ui/square/view/UnderlinePageIndicator
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_like I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_like_num I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeNumTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_reply I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_reply_num I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyNumTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_at I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtTV Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/schoollife/R$id/tv_square_at_num I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtNumTV Landroid/widget/TextView;
aload 0
new com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter
dup
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/schoollife/ui/square/activity/MessageActivity/mAdapter Lcom/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter;
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAdapter Lcom/nd/schoollife/ui/square/activity/MessageActivity$MessageFragmentAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setFades(Z)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mMainViewPager Landroid/support/v4/view/ViewPager;
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setViewPager(Landroid/support/v4/view/ViewPager;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
aload 0
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/schoollife/R$color/cor_square_header_text_press I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setSelectedColor(I)V
aload 0
getstatic com/nd/schoollife/R$string/square_mymessage I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/setActivityTitle(I)V
aload 0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getAtMessageNum()J
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mAtNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getReplyMessageNum()I
i2l
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mReplyNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getLikeMessageNum()I
i2l
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mLikeNumTV Landroid/widget/TextView;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/showMsgNum(JLandroid/widget/TextView;)V
aload 0
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/getFirstShowView()Ljava/lang/String;
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/setFirstView(Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/square/bean/MessageNumInfo/INSTANCE Lcom/nd/schoollife/ui/square/bean/MessageNumInfo;
ldc "notype"
invokevirtual com/nd/schoollife/ui/square/bean/MessageNumInfo/setFirstShowView(Ljava/lang/String;)V
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

.method protected initEvent()V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/HeaderFragmentActivity/initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/rl_square_at I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_square_like I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getstatic com/nd/schoollife/R$id/rl_square_reply I
invokevirtual com/nd/schoollife/ui/square/activity/MessageActivity/findViewById(I)Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected leftBtnHandle()V
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/finishActivity()V
return
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/rl_square_at I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_2
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_like I
if_icmpne L2
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
L2:
iload 2
getstatic com/nd/schoollife/R$id/rl_square_reply I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/square/activity/MessageActivity/mIndicator Lcom/nd/schoollife/ui/square/view/UnderlinePageIndicator;
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/UnderlinePageIndicator/setCurrentItem(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/finishActivity()V
L0:
iconst_0
ireturn
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
invokespecial com/nd/schoollife/ui/square/activity/MessageActivity/updateTab(I)V
return
.limit locals 2
.limit stack 2
.end method
