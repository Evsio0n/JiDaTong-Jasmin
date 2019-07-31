.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/initView()V
.inner class inner com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
iload 2
tableswitch 0
L5
L6
L7
L8
L9
default : L10
L10:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L0:
aload 3
ldc "gid"
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L1:
aload 3
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L2:
aload 3
ldc "classgid"
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L3:
aload 3
ldc "gid"
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 3
ldc "grouptype"
ldc2_w 3L
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokevirtual com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/receiveGroupMsg()V
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$100(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/os/Handler;
ifnull L11
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$100(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/os/Handler;
sipush 10000
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L11:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
goto L10
L6:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 4
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
tableswitch 0
L12
L12
L12
L13
default : L14
L14:
return
L12:
aload 4
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
L15:
aload 4
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
goto L10
L13:
aload 4
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/DiscussionManagerActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
goto L15
L7:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L10
L8:
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L16
new com/nd/android/u/contact/dialog/DismissGroupDailog
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
iconst_0
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
astore 3
L17:
aload 3
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
goto L10
L16:
new com/nd/android/u/contact/dialog/DismissGroupDailog
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
iconst_1
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;I)V
astore 3
goto L17
L9:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/TransferGroupActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/dialog/GroupFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/GroupFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/GroupFunctionAlertDialog;)Landroid/content/Context;
aload 4
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
goto L10
.limit locals 5
.limit stack 5
.end method
