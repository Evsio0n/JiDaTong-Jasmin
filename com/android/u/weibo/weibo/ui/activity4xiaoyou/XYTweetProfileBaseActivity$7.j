.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;

.field final synthetic 'val$e' Lcom/android/u/weibo/weibo/controller/NdWeiboException;

.field final synthetic 'val$tweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnonnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L3
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnull L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getstatic com/android/u/weibo/R$string/get_weibo_fail_msg I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L5
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFootView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokestatic com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)Landroid/widget/TextView;
getstatic com/android/u/weibo/R$string/foot_no_more_data I
invokevirtual android/widget/TextView/setText(I)V
return
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/addTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$7/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHasMoreTweet Z
return
.limit locals 1
.limit stack 3
.end method
