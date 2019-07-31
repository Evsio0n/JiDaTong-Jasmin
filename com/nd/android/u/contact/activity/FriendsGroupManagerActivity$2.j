.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2
.super java/lang/Object
.implements android/content/DialogInterface$OnDismissListener
.enclosing method com/nd/android/u/contact/activity/FriendsGroupManagerActivity/onClick(Landroid/view/View;)V
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.field final synthetic 'val$myDialog' Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;

.method <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mFriendGroupName Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
getfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mFriendGroupName Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$302(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
aconst_null
putfield com/nd/android/u/contact/dialog/AddFriendGroupDialog/mFriendGroupName Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$400(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$300(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
getstatic com/nd/android/u/contact/R$string/friend_group_is_exist I
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/addFriendGroup()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$2/val$myDialog Lcom/nd/android/u/contact/dialog/AddFriendGroupDialog;
invokevirtual com/nd/android/u/contact/dialog/AddFriendGroupDialog/dismiss()V
return
.limit locals 2
.limit stack 3
.end method
