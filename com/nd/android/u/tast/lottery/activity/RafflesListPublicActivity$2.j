.bytecode 50.0
.class synchronized com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/setClick()V
.inner class inner com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;

.method <init>(Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
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
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity$2/this$0 Lcom/nd/android/u/tast/lottery/activity/RafflesListPublicActivity;
aload 1
invokevirtual com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
