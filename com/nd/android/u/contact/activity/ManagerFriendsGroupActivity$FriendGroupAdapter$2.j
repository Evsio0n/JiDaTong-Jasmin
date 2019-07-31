.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/initItemEvent(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;I)V
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;

.field final synthetic 'val$temp' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2/val$temp Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2/val$temp Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
aconst_null
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 2
.end method
