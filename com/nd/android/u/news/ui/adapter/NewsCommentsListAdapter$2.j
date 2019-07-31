.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;

.field final synthetic 'val$replyInfoBean' Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;

.method <init>(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/this$0 Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
aload 0
aload 2
putfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/val$replyInfoBean Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/this$0 Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokestatic com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/access$100(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/this$0 Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;
invokestatic com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter/access$100(Lcom/nd/android/u/news/ui/adapter/NewsCommentsListAdapter;)Lcom/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsCommentsListAdapter$2/val$replyInfoBean Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;
invokeinterface com/nd/android/u/news/ui/view/PraiseCommentsView$OnCommentListener/onItemClick(Lcom/nd/android/forumsdk/business/bean/result/ReplyInfoBean;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method
