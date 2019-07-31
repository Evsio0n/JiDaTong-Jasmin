.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$11
.super android/os/Handler
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$11

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$11/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$11/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/ui/task/LikeAsyncTask
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2002(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;)Lcom/android/u/weibo/weibo/ui/task/LikeAsyncTask;
pop
return
.limit locals 2
.limit stack 2
.end method
