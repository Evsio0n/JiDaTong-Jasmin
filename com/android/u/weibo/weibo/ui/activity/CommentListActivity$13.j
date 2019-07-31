.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$13
.super java/lang/Thread
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/deleteComment(J)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$13

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$commentId' J

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;J)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
lload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/val$commentId J
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/val$commentId J
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$13/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
invokevirtual com/android/u/weibo/weibo/controller/Manager/delComment(JJZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 1
.limit stack 7
.end method
