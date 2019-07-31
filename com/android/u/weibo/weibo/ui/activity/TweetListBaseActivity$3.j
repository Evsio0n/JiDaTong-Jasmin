.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/afterGetNewPublicTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.field final synthetic 'val$e' Lcom/android/u/weibo/weibo/controller/NdWeiboException;

.field final synthetic 'val$tweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
return
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnonnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L3
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnull L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getstatic com/android/u/weibo/R$string/get_weibo_fail_msg I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L5
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mCurrentType I
iconst_1
if_icmpne L6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsPullToRefresh Z
ifeq L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 1
new com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask
dup
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$ShowNewTweetCountTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
L7:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsPullToRefresh Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mPublicTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnull L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mLocalTweetListCache Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(ILjava/util/Collection;)Z
pop
L8:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/publicListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
iconst_0
invokevirtual android/widget/ListView/setSelection(I)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mIsLoadingNewPublic Z
return
.limit locals 2
.limit stack 5
.end method
