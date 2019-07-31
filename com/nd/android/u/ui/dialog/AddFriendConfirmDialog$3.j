.bytecode 50.0
.class synchronized com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/ui/dialog/AddFriendConfirmDialog/setListener()V
.inner class inner com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;

.method <init>(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$300(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
iconst_1
iconst_1
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_System/setIsRead(IZ)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/dialog/AddFriendConfirmDialog$3/this$0 Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;
invokestatic com/nd/android/u/ui/dialog/AddFriendConfirmDialog/access$300(Lcom/nd/android/u/ui/dialog/AddFriendConfirmDialog;)Lcom/nd/android/u/bean4xy/DisplayMessage_System;
bipush 99
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 1
invokeinterface android/content/DialogInterface/dismiss()V 0
return
.limit locals 3
.limit stack 3
.end method
