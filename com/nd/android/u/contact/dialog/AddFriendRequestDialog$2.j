.bytecode 50.0
.class synchronized com/nd/android/u/contact/dialog/AddFriendRequestDialog$2
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/contact/dialog/AddFriendRequestDialog/setListener()V
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;

.method <init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog$2/this$0 Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;
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
