.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/UserFunctionAlertDialog/initView()V
.inner class inner com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
iload 2
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$002(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;I)I
pop
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$100(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$008(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)I
pop
L0:
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$000(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)I
tableswitch 1
L1
L2
default : L3
L3:
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
L1:
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$300(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
goto L3
L2:
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
bipush -99
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/this$0 Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;
invokestatic com/nd/android/u/contact/dialog/UserFunctionAlertDialog/access$300(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L3
.limit locals 3
.limit stack 4
.end method
