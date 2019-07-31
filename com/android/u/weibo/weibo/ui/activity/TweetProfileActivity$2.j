.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2
.super java/lang/Object
.implements com/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLastItemVisible()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
ifeq L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Z
istore 1
L1:
iload 1
ifeq L3
L8:
aload 0
monitorexit
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getLastItem()Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
astore 2
L4:
aload 2
ifnull L6
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iconst_0
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$002(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Z)Z
pop
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/getData()Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 2
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getLastNdTweetId(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)J
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/getOlderUserTimeline(JJJJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/TweetListAdapter/notifyDataSetChanged()V
L7:
goto L8
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 10
.end method
