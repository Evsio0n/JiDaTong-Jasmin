.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/news/ui/view/PraiseCommentsView/initEvent()V
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$1/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/ReplyInfoBean
astore 1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$1/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$1/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
aload 1
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener/onItemClick(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V 1
L0:
return
.limit locals 6
.limit stack 2
.end method
