.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6
.super android/content/BroadcastReceiver
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$6/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mAdapter Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapter;
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/recvRefreshDataBroadCast(Landroid/content/Intent;Lcom/android/u/weibo/weibo/ui/adapter/TweetListAdapterBase;)V
return
.limit locals 3
.limit stack 2
.end method
