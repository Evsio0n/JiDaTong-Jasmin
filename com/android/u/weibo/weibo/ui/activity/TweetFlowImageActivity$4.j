.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity$4/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/task/LikeAsyncTask
invokestatic com/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity/access$1702(Lcom/android/u/weibo/weibo/ui/activity/TweetFlowImageActivity;Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;)Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
pop
return
.limit locals 2
.limit stack 2
.end method
