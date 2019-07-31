.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity
.super com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.implements android/view/View$OnClickListener
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$1
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity

.field protected 'mTestBtn' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;I)V
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/setListSelectionButton(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Ljava/util/List;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/updateScrollDoubleLayout(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$202(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/initUnreadCountView(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected initData(Z)V
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask
dup
aload 0
aconst_null
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$1;)V
iconst_0
anewarray java/lang/Long
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$GetUserTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
iload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initData(Z)V
return
.limit locals 2
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/android/u/weibo/R$id/ibTestInfo I
if_icmpne L0
aload 0
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/gotoTestInfoActivity(Landroid/content/Context;)V
L1:
return
L0:
iload 2
getstatic com/android/u/weibo/R$id/list_type_selection I
if_icmpne L1
aload 0
getstatic com/android/u/weibo/R$drawable/xy_btn_tweet_list_type_press I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/setListSelectionButton(I)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_weibo_list I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/weibo_list_layout_id I
aload 0
getstatic com/android/u/weibo/R$layout/xiaoyou_weibo_list_headers I
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/weibo_list_header_layout_id I
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ibTestInfo I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/findViewById(I)Landroid/view/View;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/mTestBtn Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/mTestBtn Landroid/view/View;
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/mSelectionPopWindow Lcom/android/u/weibo/weibo/ui/widget/CycleSelectionView;
new com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity$1/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity;)V
invokevirtual com/android/u/weibo/weibo/ui/widget/CycleSelectionView/setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return
.limit locals 2
.limit stack 4
.end method

.method public refreshWhenSwitchUser()V
aload 0
iconst_1
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetListActivity/initData(Z)V
return
.limit locals 1
.limit stack 2
.end method
