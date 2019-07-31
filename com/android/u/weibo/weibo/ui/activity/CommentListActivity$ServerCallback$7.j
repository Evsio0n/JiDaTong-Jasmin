.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;J)V
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$7/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
return
.limit locals 1
.limit stack 2
.end method
