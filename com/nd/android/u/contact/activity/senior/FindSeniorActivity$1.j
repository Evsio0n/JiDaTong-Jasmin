.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity$1
.super java/lang/Object
.implements com/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener
.enclosing method com/nd/android/u/contact/activity/senior/FindSeniorActivity/initComponentValue()V
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/view/View;I)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
ldc com/nd/android/u/contact/activity/senior/SeniorDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/isEmpty()Z
ifne L0
aload 1
ldc "data"
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/get(I)Ljava/lang/Object;
checkcast java/io/Serializable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
ldc "position"
iload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
