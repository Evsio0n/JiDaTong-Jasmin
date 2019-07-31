.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;>;"
.inner class private GetMoreCommentDatasTask inner com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask outer com/nd/android/u/news/ui/view/PraiseCommentsView

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method private <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1700(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1900(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)I
invokevirtual com/nd/android/u/news/controller/NewsManager/getMoreNewsCmtList(JJI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
areturn
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 1
ifnonnull L0
return
L0:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/isSuccess()Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getMin_ts()J
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1702(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;J)J
pop2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getData()Ljava/util/List;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$2000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
L2:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_toast_get_more_commentlist_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
iconst_1
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$302(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Z)Z
pop
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;)V
return
.limit locals 2
.limit stack 2
.end method
