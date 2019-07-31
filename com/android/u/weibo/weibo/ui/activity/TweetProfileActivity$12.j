.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/afterGetNewTweetList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/controller/NdWeiboException;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.field final synthetic 'val$e' Lcom/android/u/weibo/weibo/controller/NdWeiboException;

.field final synthetic 'val$tweetList' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/controller/NdWeiboException;Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$4200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/net_warn_no_network I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnonnull L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ifnonnull L2
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
ifnull L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$e Lcom/android/u/weibo/weibo/controller/NdWeiboException;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/getMessage()Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/get_weibo_fail_msg I
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L4
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$4300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/setData(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/val$tweetList Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifeq L5
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_1
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/getApplicationContext()Landroid/content/Context;
invokestatic java/lang/System/currentTimeMillis()J
ldc_w 524305
invokestatic android/text/format/DateUtils/formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$4200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
iconst_1
iconst_0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getLoadingLayoutProxy(ZZ)Lcom/handmark/pulltorefresh/library/ILoadingLayout;
aload 1
invokeinterface com/handmark/pulltorefresh/library/ILoadingLayout/setLastUpdatedLabel(Ljava/lang/CharSequence;)V 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$102(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
return
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$12/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)V
goto L6
.limit locals 2
.limit stack 4
.end method
