.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/opBlacklist()V
.inner class inner com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog$2/this$0 Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/AddBlacklistDialog/access$000(Lcom/nd/android/u/ui/activity/chat_config/AddBlacklistDialog;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
aload 1
invokeinterface android/content/DialogInterface/cancel()V 0
return
.limit locals 3
.limit stack 2
.end method
