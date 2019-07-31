.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog$1

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc_w 2131493038
invokevirtual com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog/setEvent()V
return
.limit locals 2
.limit stack 2
.end method

.method public setEvent()V
aload 0
ldc_w 2131492884
new com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog$1/<init>(Lcom/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/Bind91AccountNoPwdDialog/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
