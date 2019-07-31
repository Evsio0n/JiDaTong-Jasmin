.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$9
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$9

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$9/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$9/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$9/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toCommentListActivity(Landroid/content/Context;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
return
.limit locals 2
.limit stack 2
.end method
