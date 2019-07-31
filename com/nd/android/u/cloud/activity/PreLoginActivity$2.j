.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/PreLoginActivity$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/PreLoginActivity
.inner class inner com/nd/android/u/cloud/activity/PreLoginActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/PreLoginActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/PreLoginActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/PreLoginActivity$2/this$0 Lcom/nd/android/u/cloud/activity/PreLoginActivity;
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
getfield com/nd/android/u/cloud/activity/PreLoginActivity$2/this$0 Lcom/nd/android/u/cloud/activity/PreLoginActivity;
ldc com/nd/android/u/cloud/activity/LoginActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/PreLoginActivity$2/this$0 Lcom/nd/android/u/cloud/activity/PreLoginActivity;
aload 1
iconst_1
invokevirtual com/nd/android/u/cloud/activity/PreLoginActivity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 3
.end method
