.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/initItemEvent(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;I)V
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2

.field final synthetic 'this$1' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;

.field final synthetic 'val$position' I

.field final synthetic 'val$tmp' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$tmp Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
aload 0
iload 3
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog
dup
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/dialog_delete_group_title I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setTitle(I)V
aload 1
getstatic com/nd/android/u/contact/R$string/dialog_delete_group_content I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setValue(I)V
aload 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
getstatic com/nd/android/u/contact/R$string/dialog_delete_group_leftbtn I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
getstatic com/nd/android/u/contact/R$string/dialog_delete_group_rightbtn I
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 6
.end method
