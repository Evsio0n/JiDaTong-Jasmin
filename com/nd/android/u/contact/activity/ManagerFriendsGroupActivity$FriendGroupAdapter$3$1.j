.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/onClick(Landroid/view/View;)V
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1

.field final synthetic 'this$2' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;

.field final synthetic 'val$myDialog' Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
iconst_0
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/access$702(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Z)Z
pop
return
.limit locals 2
.limit stack 2
.end method
