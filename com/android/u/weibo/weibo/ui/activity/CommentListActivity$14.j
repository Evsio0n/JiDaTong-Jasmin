.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/CommentListActivity$14
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/android/u/weibo/weibo/ui/activity/CommentListActivity
.inner class inner com/android/u/weibo/weibo/ui/activity/CommentListActivity$14

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aconst_null
astore 2
aload 1
instanceof com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask
ifeq L1
aload 1
checkcast com/android/u/weibo/weibo/ui/activity/CommentListActivity$doGetGlanceCountTask
astore 2
L1:
aload 2
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2400(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/setGlanceView(Landroid/content/Context;Landroid/widget/TextView;I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/CommentListActivity/refreshCommentHeaderCount()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1600(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokevirtual com/android/u/weibo/weibo/ui/widget/action/BaseTweetActionView/setLikeButtonBackground(Z)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$2300(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Z
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$100(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1700(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/CommentListActivity$14/this$0 Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/CommentListActivity/access$1800(Lcom/android/u/weibo/weibo/ui/activity/CommentListActivity;)Landroid/widget/ImageView;
invokestatic com/android/u/weibo/weibo/utils/PraiseUtils/setTwBgAndIconByPraiseCount(ILandroid/view/View;Landroid/view/View;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
