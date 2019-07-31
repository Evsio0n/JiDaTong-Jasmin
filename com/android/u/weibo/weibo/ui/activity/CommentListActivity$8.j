.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$8
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity/initHeaderView(Landroid/view/View;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;ZI)V
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$8

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.field final synthetic 'val$tweet' Lcom/android/u/weibo/weibo/business/bean/TopicInfo;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$8/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$8/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$8/val$tweet Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 2
.limit stack 3
.end method
