.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/onCreate(Landroid/os/Bundle;)V
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;
aload 1
getfield android/os/Message/what I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)Lcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/setUnreadMessageCount(ILcom/android/u/weibo/weibo/business/bean/WbUnreadMsgInfo;)V
return
.limit locals 2
.limit stack 3
.end method
