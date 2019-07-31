.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$2
.super java/lang/Object
.implements com/common/android/ui/widget/PullUpLoadMoreListView$OnPullUpLoadMoreListener
.enclosing method com/nd/android/u/news/ui/view/PraiseCommentsView/initEvent()V
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$2

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getOnCheckFillFullListener()Lcom/common/android/ui/widget/PullUpLoadMoreListView$OnCheckFillFullListener;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public needCheckFillFull()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onPullUpLoadMore()V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener/isNeedGetMore()Z 0
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
getstatic com/nd/android/u/news/R$string/str_common_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$300(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Z
ifeq L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$200(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/getLastItem()Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
ifnull L1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
bipush 8
if_icmpne L3
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$500(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$600(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/widget/TextView;
getstatic com/nd/android/u/news/R$string/str_common_foot_loading I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$400(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
iconst_0
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$302(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Z)Z
pop
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
new com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask
dup
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aconst_null
invokespecial com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/<init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$1;)V
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$702(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
pop
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$2/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$700(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/news/ui/view/PraiseCommentsView$GetMoreCommentDatasTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method
