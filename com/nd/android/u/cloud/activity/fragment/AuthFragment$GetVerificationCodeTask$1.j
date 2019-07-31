.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/onPostExecute(Lorg/json/JSONObject;)V
.inner class private static GetVerificationCodeTask inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask outer com/nd/android/u/cloud/activity/fragment/AuthFragment
.inner class inner com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;

.method <init>(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/access$300(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Landroid/app/Activity;
ldc com/nd/android/u/cloud/activity/CheckActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "person_info"
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/access$400(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Lcom/nd/android/u/cloud/activity/fragment/CheckIDFragment$PersonInfo;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/access$300(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask$1/this$0 Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;
invokestatic com/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask/access$300(Lcom/nd/android/u/cloud/activity/fragment/AuthFragment$GetVerificationCodeTask;)Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 3
.limit stack 4
.end method
