.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/view/AbstractNewsView$1
.super java/lang/Object
.implements android/view/View$OnLongClickListener
.enclosing method com/nd/android/u/news/ui/view/AbstractNewsView/initComponent(Landroid/content/Context;)V
.inner class inner com/nd/android/u/news/ui/view/AbstractNewsView$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/view/AbstractNewsView;

.method <init>(Lcom/nd/android/u/news/ui/view/AbstractNewsView;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView$1/this$0 Lcom/nd/android/u/news/ui/view/AbstractNewsView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onLongClick(Landroid/view/View;)Z
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView$1/this$0 Lcom/nd/android/u/news/ui/view/AbstractNewsView;
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/toDownloadPhoto()V
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
