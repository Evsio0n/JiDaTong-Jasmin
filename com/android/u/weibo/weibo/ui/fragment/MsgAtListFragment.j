.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment
.super android/support/v4/app/Fragment
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1
.inner class inner com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$2
.inner class public static abstract interface UnreadListener inner com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener outer com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment

.field private static final 'COMMENT_AT_TYPE' I = 1


.field private static final 'PARAM_KEY' Ljava/lang/String; = "unread"

.field private static final 'TOPIC_INFO_AT_TYPE' I = 0


.field private static final 'msgStayTime' J = 1000L


.field private 'indicator' Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;

.field private 'mAtFragmentHandler' Landroid/os/Handler;

.field private 'mCurrentType' I

.field private 'mListener' Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;

.field private 'mPager' Landroid/support/v4/view/ViewPager;

.field private 'mPagerAdapter' Lcom/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter;

.field private 'mUnreadMsgInfo' Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;

.field private 'tvCommentAt' Landroid/widget/TextView;

.field private 'tvCommentAtCount' Landroid/widget/TextView;

.field private 'tvTopicInfoAtCount' Landroid/widget/TextView;

.field private 'tvTweetAt' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mCurrentType I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;I)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/pageSelected(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private firstShowPage()I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
ifle L0
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mCurrentType I
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
ifle L1
aload 0
iconst_1
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mCurrentType I
iconst_1
ireturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mCurrentType I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static getInstance(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;
new com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment
dup
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "unread"
aload 0
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 2
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/setArguments(Landroid/os/Bundle;)V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method private pageSelected(I)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
iload 1
putfield android/os/Message/what I
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mCurrentType I
iload 1
tableswitch 0
L0
L1
default : L2
L2:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
ifeq L3
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mAtFragmentHandler Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mListener Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;
iconst_0
invokeinterface com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener/refreshUnreadCount(I)V 1
L3:
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTweetAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
ifeq L4
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
iconst_0
putfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mAtFragmentHandler Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mListener Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;
iconst_0
invokeinterface com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener/refreshUnreadCount(I)V 1
L4:
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTweetAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_press_color I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
return
.limit locals 3
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
aload 1
getstatic com/android/u/weibo/R$layout/weibo_message_at I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/android/u/weibo/R$id/message_pager I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/support/v4/view/ViewPager
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getArguments()Landroid/os/Bundle;
astore 2
aload 2
ifnull L0
aload 0
aload 2
ldc "unread"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
ifnonnull L1
aload 0
new com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/<init>()V
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
L1:
aload 0
aload 1
getstatic com/android/u/weibo/R$id/tvText1 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTweetAt Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/tvText2 I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAt Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/tvText1_count_msg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTopicInfoAtCount Landroid/widget/TextView;
aload 0
aload 1
getstatic com/android/u/weibo/R$id/tvText2_count_msg I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAtCount Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTweetAt Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/topic_info_at_my I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAt Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/comment_at_my I
invokevirtual android/widget/TextView/setText(I)V
aload 0
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/t_at I
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/showCount(II)V
aload 0
iconst_1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
getfield com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo/cmt_at I
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/showCount(II)V
aload 0
new com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter
dup
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokespecial com/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mPagerAdapter Lcom/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mPagerAdapter Lcom/android/u/weibo/weibo/ui/adapter/WbUnreadMsgPagerAdapter;
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
aload 0
aload 1
getstatic com/android/u/weibo/R$id/message_indicator I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mPager Landroid/support/v4/view/ViewPager;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setViewPager(Landroid/support/v4/view/ViewPager;)V
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTweetAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAt Landroid/widget/TextView;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Triangle Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setBackgroundColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/xy_fragment_title_bg I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterSeperatorColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
aload 0
invokevirtual com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterColor(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
fconst_0
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterLineHeight(F)V
L3:
aload 0
new com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$1/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;)V
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mAtFragmentHandler Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
new com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$2
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$2/<init>(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment;)V
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
aload 1
areturn
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
getstatic com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle/Underline Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setFooterIndicatorStyle(Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl$IndicatorStyle;)V
goto L3
.limit locals 4
.limit stack 6
.end method

.method public onResume()V
aload 0
invokespecial android/support/v4/app/Fragment/onResume()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/firstShowPage()I
istore 1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/indicator Lcom/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl;
iload 1
invokevirtual com/common/android/ui/viewPagerIndicator/TitlePageIndicatorExl/setCurrentItem(I)V
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/pageSelected(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setListener(Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/mListener Lcom/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener;
return
.limit locals 2
.limit stack 2
.end method

.method public showCount(II)V
iload 1
tableswitch 0
L0
L1
default : L2
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTopicInfoAtCount Landroid/widget/TextView;
astore 3
L3:
iload 2
ifle L4
iload 2
bipush 99
if_icmple L5
aload 3
ldc "99+"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvTopicInfoAtCount Landroid/widget/TextView;
astore 3
goto L3
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment/tvCommentAtCount Landroid/widget/TextView;
astore 3
goto L3
L5:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L4:
aload 3
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 4
.limit stack 3
.end method
