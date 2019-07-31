.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.inner class inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$3/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mListView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
L0:
return
.limit locals 1
.limit stack 1
.end method
