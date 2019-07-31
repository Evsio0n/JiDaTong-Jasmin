.bytecode 50.0
.class synchronized com/nd/android/u/cloud/manager/CheckinImgManager$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/manager/CheckinImgManager
.inner class inner com/nd/android/u/cloud/manager/CheckinImgManager$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/manager/CheckinImgManager;

.method <init>(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/manager/CheckinImgManager$1/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 1
L0
default : L1
L1:
return
L0:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
pop
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$1/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$000(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Landroid/app/Activity;
ldc com/nd/android/u/tast/experience/activity/DateWidgetActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/manager/CheckinImgManager$1/this$0 Lcom/nd/android/u/cloud/manager/CheckinImgManager;
invokestatic com/nd/android/u/cloud/manager/CheckinImgManager/access$000(Lcom/nd/android/u/cloud/manager/CheckinImgManager;)Landroid/app/Activity;
aload 1
sipush 1000
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
.limit locals 2
.limit stack 4
.end method
