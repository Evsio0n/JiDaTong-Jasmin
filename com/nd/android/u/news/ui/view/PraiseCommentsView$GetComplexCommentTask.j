.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;>;"
.inner class private GetComplexCommentTask inner com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask outer com/nd/android/u/news/ui/view/PraiseCommentsView

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method private <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
aload 0
iconst_1
anewarray com/nd/android/forumsdk/business/bean/result/ResultPraise
dup
iconst_0
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
iconst_1
bipush 7
invokevirtual com/nd/android/u/news/controller/NewsManager/getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
aastore
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/publishProgress([Ljava/lang/Object;)V
getstatic com/nd/android/u/news/controller/NewsManager/INSTANCE Lcom/nd/android/u/news/controller/NewsManager;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)I
invokevirtual com/nd/android/u/news/controller/NewsManager/getNewsCmtList(JI)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
areturn
.limit locals 2
.limit stack 9
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/isSuccess()Z
ifne L1
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1500(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/common/android/ui/widget/PullUpLoadMoreListView;
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1500(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/common/android/ui/widget/PullUpLoadMoreListView;
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/getHeaderViewsCount()I
invokevirtual com/common/android/ui/widget/PullUpLoadMoreListView/smoothScrollToPosition(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1600(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_toast_get_commentlist_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L2:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getMin_ts()J
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1702(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;J)J
pop2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
ifnull L3
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getTotal()I
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener/setCmtCount(I)V 1
L3:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultReplyList/getData()Ljava/util/List;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1800(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultReplyList
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultReplyList;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;)V
aload 1
ifnull L0
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/isSuccess()Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
ifnull L2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getTotal()I
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$GetCmtAndPraisesCountListener/setPraiseCount(I)V 1
L2:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 2
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getUsers()Ljava/util/List;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1300(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Ljava/util/List;)V
L3:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
goto L3
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetComplexCommentTask/onProgressUpdate([Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;)V
return
.limit locals 2
.limit stack 2
.end method
