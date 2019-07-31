.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/onComplete(ILjava/lang/Object;Ljava/lang/String;J)V
.inner class private ServerCallback inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback outer com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2

.field final synthetic 'this$1' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;

.field final synthetic 'val$commentList' Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/val$commentList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$500(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1200(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/onRefreshComplete()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/val$commentList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/val$commentList Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/addCommentList(Lcom/android/u/weibo/weibo/business/bean/ReplyInfoList;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
invokevirtual com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/notifyDataSetChanged()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter;
getfield com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter/mType Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
getstatic com/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType/COMMENT Lcom/android/u/weibo/weibo/ui/adapter/ThreeTypeAdapter$ListViewDataType;
if_acmpne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback$2/this$1 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback;
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$ServerCallback/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
return
.limit locals 1
.limit stack 2
.end method
