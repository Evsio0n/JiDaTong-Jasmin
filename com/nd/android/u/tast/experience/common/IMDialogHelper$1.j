.bytecode 50.0
.class final synchronized com/nd/android/u/tast/experience/common/IMDialogHelper$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/tast/experience/common/IMDialogHelper/toLotActivityDialog(Landroid/content/Context;Ljava/lang/String;)V
.inner class static final inner com/nd/android/u/tast/experience/common/IMDialogHelper$1

.field final synthetic 'val$context' Landroid/content/Context;

.method <init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/common/IMDialogHelper$1/val$context Landroid/content/Context;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/experience/common/IMDialogHelper$1/val$context Landroid/content/Context;
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/tast/experience/common/IMDialogHelper$1/val$context Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
