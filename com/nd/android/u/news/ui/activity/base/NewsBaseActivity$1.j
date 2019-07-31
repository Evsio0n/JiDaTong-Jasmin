.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/news/ui/activity/base/NewsBaseActivity
.inner class inner com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;

.method <init>(Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/ib_left I
if_icmpne L0
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/leftBtnHandle()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/news/R$id/ib_right I
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/base/NewsBaseActivity$1/this$0 Lcom/nd/android/u/news/ui/activity/base/NewsBaseActivity;
invokevirtual com/nd/android/u/news/ui/activity/base/NewsBaseActivity/rightBtnHandle()V
return
.limit locals 2
.limit stack 2
.end method
