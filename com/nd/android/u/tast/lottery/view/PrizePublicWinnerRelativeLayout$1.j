.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/init(Ljava/util/List;Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)V
.inner class inner com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;

.method <init>(Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/mContext Landroid/content/Context;
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1/this$0 Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
