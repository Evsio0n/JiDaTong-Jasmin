.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/AddFollowDialog$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/ui/activity/chat_config/AddFollowDialog/setListener()V
.inner class inner com/nd/android/u/ui/activity/chat_config/AddFollowDialog$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/AddFollowDialog$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddFollowDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 1
.end method
