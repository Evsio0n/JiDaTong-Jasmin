.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/onClick(Landroid/view/View;)V
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2

.field final synthetic 'this$2' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;

.field final synthetic 'val$myDialog' Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
aload 0
aload 2
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/val$myDialog Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/dismiss()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
iconst_1
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/access$702(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$800(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$tmp Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$tmp Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$position I
if_icmple L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$510(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$100(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/val$position I
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2/this$2 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/this$1 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
iconst_m1
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$502(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;I)I
pop
goto L1
.limit locals 2
.limit stack 2
.end method
