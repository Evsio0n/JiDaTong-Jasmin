.bytecode 50.0
.class synchronized com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/dialog/AddGroupConfirmDialog/setListener()V
.inner class inner com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;

.method <init>(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L0
getstatic com/nd/android/u/chat/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/dismiss()V
return
L0:
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddGroupConfirmDialog/access$200(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
iconst_1
iconst_1
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddGroupConfirmDialog/access$200(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
bipush 99
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/sendCommend()V
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$2/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/dismiss()V
return
.limit locals 2
.limit stack 3
.end method
