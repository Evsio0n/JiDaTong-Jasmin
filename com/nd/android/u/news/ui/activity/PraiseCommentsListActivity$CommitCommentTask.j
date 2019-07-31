.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;>;"
.inner class private CommitCommentTask inner com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask outer com/nd/android/u/news/ui/activity/PraiseCommentsListActivity

.field private 'commnetContent' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;

.method public <init>(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/commnetContent Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
invokestatic com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/access$000(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;)J
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/commnetContent Ljava/lang/String;
invokevirtual com/nd/android/u/news/controller/NewsManager/postComment(JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ReplyInfoBean/isSuccess()Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
invokestatic com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/access$100(Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/addFirstItem(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
new android/widget/Toast
dup
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
invokespecial android/widget/Toast/<init>(Landroid/content/Context;)V
astore 2
new android/widget/TextView
dup
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 3
aload 3
getstatic com/nd/android/u/news/R$string/str_toast_comment_commit_success I
invokevirtual android/widget/TextView/setText(I)V
aload 3
getstatic com/nd/android/u/news/R$drawable/bg_comment_success I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
aload 3
bipush 17
invokevirtual android/widget/TextView/setGravity(I)V
aload 3
iconst_2
ldc_w 20.0F
invokevirtual android/widget/TextView/setTextSize(IF)V
aload 3
aload 0
getfield com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/this$0 Lcom/nd/android/u/news/ui/activity/PraiseCommentsListActivity;
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$color/white I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 2
aload 3
invokevirtual android/widget/Toast/setView(Landroid/view/View;)V
aload 2
bipush 17
iconst_0
iconst_0
invokevirtual android/widget/Toast/setGravity(III)V
aload 2
invokevirtual android/widget/Toast/show()V
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
getstatic com/nd/android/u/news/R$string/str_toast_comment_commit_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L1
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
invokevirtual com/nd/android/u/news/ui/activity/PraiseCommentsListActivity$CommitCommentTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
return
.limit locals 2
.limit stack 2
.end method
