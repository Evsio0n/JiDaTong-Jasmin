.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/view/PraiseCommentsView/createPraiseHeader(J)Landroid/widget/ImageView;
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$4

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$4/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$4/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
lload 2
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$2100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;J)V
return
.limit locals 4
.limit stack 3
.end method
