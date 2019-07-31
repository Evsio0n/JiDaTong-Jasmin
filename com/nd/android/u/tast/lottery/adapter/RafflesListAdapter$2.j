.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;

.method <init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
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
pop
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListAdapter$2/this$0 Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;
invokestatic com/nd/android/u/tast/lottery/adapter/RafflesListAdapter/access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListAdapter;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
