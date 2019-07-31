.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;

.field final synthetic 'val$myDialog' Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$3/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/dismiss()V
return
.limit locals 2
.limit stack 1
.end method
