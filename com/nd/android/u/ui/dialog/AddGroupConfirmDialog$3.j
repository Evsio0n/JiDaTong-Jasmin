.bytecode 50.0
.class synchronized com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/dialog/AddGroupConfirmDialog/setListener()V
.inner class inner com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;

.method <init>(Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
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
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/dismiss()V
return
L0:
aload 0
getfield com/nd/android/u/ui/dialog/AddGroupConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddGroupConfirmDialog;
invokevirtual com/nd/android/u/ui/dialog/AddGroupConfirmDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
