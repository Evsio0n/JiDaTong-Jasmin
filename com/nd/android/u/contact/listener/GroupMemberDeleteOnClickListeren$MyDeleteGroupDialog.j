.bytecode 50.0
.class synchronized com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog
.super com/nd/android/u/contact/dialog/MyDialog
.inner class MyDeleteGroupDialog inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog outer com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren
.inner class inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$1
.inner class inner com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;

.method public <init>(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog/this$0 Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
aload 0
aload 2
aload 3
ldc ""
invokespecial com/nd/android/u/contact/dialog/MyDialog/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 4
.end method

.method public getView()V
aload 0
getstatic com/nd/android/u/contact/R$string/sure_delete_group_member I
invokevirtual com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 2
.end method

.method public setListener()V
aload 0
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$1/<init>(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog;)V
invokevirtual com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/contact/R$string/ok I
new com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog$2/<init>(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog;)V
invokevirtual com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$MyDeleteGroupDialog/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
