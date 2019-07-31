.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;

.method <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;)Landroid/content/Context;
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method
