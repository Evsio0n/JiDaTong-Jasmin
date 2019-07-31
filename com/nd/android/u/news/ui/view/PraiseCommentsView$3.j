.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/PraiseCommentsView$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/view/PraiseCommentsView
.inner class inner com/nd/android/u/news/ui/view/PraiseCommentsView$3

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/PraiseCommentsView;

.method <init>(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/PraiseCommentsView$3/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/tvPraiseMore I
if_icmpne L0
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$3/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/content/Context;
ldc com/nd/android/u/news/ui/activity/ZanListActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 1
ldc "news_id"
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$3/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$1000(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/news/ui/view/PraiseCommentsView$3/this$0 Lcom/nd/android/u/news/ui/view/PraiseCommentsView;
invokestatic com/nd/android/u/news/ui/view/PraiseCommentsView/access$100(Lcom/nd/android/u/news/ui/view/PraiseCommentsView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
