.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$1
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initEvent()V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$1

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$1/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/onLongClickMsg(Ljava/lang/Object;)V
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
