.bytecode 50.0
.class final synchronized com/nd/android/u/chatUiUtils/ChatViewUtil$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/chatUiUtils/ChatViewUtil/showDlg(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
.inner class static final inner com/nd/android/u/chatUiUtils/ChatViewUtil$2

.field final synthetic 'val$activity' Landroid/app/Activity;

.field final synthetic 'val$dialog' Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;

.field final synthetic 'val$intent' Landroid/content/Intent;

.method <init>(Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;Landroid/app/Activity;Landroid/content/Intent;)V
aload 0
aload 1
putfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$dialog Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;
aload 0
aload 2
putfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$activity Landroid/app/Activity;
aload 0
aload 3
putfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$intent Landroid/content/Intent;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$dialog Lcom/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/ui/dialog/CancelDeletGroupMemberDialog/dismiss()V
aload 0
getfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$activity Landroid/app/Activity;
aload 0
getfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$intent Landroid/content/Intent;
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/chatUiUtils/ChatViewUtil$2/val$activity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
.limit locals 2
.limit stack 2
.end method
