.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2
.super java/lang/Object
.implements com/android/u/weibo/weibo/ui/fragment/MsgAtListFragment$UnreadListener
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/tag2Frament(I)Landroid/support/v4/app/Fragment;
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public refreshUnreadCount(I)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
iload 1
putfield android/os/Message/what I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetMessageActivity$2/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetMessageActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/TweetMessageActivity;)Landroid/os/Handler;
aload 2
ldc2_w 1000L
invokevirtual android/os/Handler/sendMessageDelayed(Landroid/os/Message;J)Z
pop
return
.limit locals 3
.limit stack 4
.end method
