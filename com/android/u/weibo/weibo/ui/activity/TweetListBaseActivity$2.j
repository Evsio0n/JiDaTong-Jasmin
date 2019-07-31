.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetMoreTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.field final synthetic 'val$e' Lcom/android/u/weibo/weibo/controller/NdWeiboException;

.field final synthetic 'val$tweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
iconst_0
istore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/friendFootView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
iconst_1
if_icmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnonnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L4
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnull L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
return
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getstatic com/android/u/weibo/R$string/get_weibo_fail_msg I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L6
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/addTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mFriendTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$2/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifeq L8
L9:
aload 2
iload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mHasMoreMyTweet Z
return
L8:
iconst_1
istore 1
goto L9
.limit locals 3
.limit stack 3
.end method
