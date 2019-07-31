.bytecode 50.0
.class final synchronized com/nd/android/u/chatUiUtils/ChatViewUtil$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/chatUiUtils/ChatViewUtil/showDlg(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
.inner class static final inner com/nd/android/u/chatUiUtils/ChatViewUtil$1

.field final synthetic 'val$dialog' Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;

.method <init>(Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/ChatViewUtil$1/val$dialog Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/chatUiUtils/ChatViewUtil$1/val$dialog Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
