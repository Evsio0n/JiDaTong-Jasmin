.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9
.super android/content/BroadcastReceiver
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 2
ldc "unread"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo
putfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetListBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/mUnreadMsgInfo Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetListBaseActivity/initUnreadCountView(Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
return
.limit locals 3
.limit stack 3
.end method
