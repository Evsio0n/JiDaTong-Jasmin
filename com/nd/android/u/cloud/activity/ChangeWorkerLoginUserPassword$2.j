.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2
.super com/nd/android/u/cloud/activity/PasswordTextWatcher
.enclosing method com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/_onCreate(Landroid/os/Bundle;)Z
.inner class inner com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;

.method <init>(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;Landroid/widget/EditText;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;
aload 0
aload 2
invokespecial com/nd/android/u/cloud/activity/PasswordTextWatcher/<init>(Landroid/widget/EditText;)V
return
.limit locals 3
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/PasswordTextWatcher/afterTextChanged(Landroid/text/Editable;)V
aload 1
invokeinterface android/text/Editable/length()I 0
ifle L0
aload 1
invokeinterface android/text/Editable/length()I 0
iconst_1
isub
istore 2
aload 1
iload 2
invokeinterface android/text/Editable/charAt(I)C 1
bipush 32
if_icmpne L0
aload 1
iload 2
iload 2
iconst_1
iadd
invokeinterface android/text/Editable/delete(II)Landroid/text/Editable; 2
pop
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;
invokestatic com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/access$000(Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword$2/this$0 Lcom/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword;
ldc_w 2131494420
invokevirtual com/nd/android/u/cloud/activity/ChangeWorkerLoginUserPassword/getString(I)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L0:
return
.limit locals 3
.limit stack 4
.end method
