.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/RankingListRelativeLayout$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/view/RankingListRelativeLayout
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/RankingListRelativeLayout;

.method <init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$2/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$2/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$400(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/os/Handler;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$2/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$400(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/os/Handler;
sipush 300
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 1
.limit stack 2
.end method
