.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$7
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment/initMenuEvent()V
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1300(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Lcom/nd/android/u/contact/menu/PopGridViewMenu;
invokevirtual com/nd/android/u/contact/menu/PopGridViewMenu/showMenuWindow()V
return
L0:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/contact/activity/SearchUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/startActivity(Landroid/content/Intent;)V
goto L4
L1:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc com/nd/android/u/contact/activity/SearchUnitMemberActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/startActivity(Landroid/content/Intent;)V
goto L4
L2:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
iconst_0
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/updateFriendList(Z)V
goto L4
L3:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getParent()Landroid/app/Activity;
ifnull L4
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$7/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toMainFrameActivty(Landroid/app/Activity;)V
goto L4
.limit locals 6
.limit stack 4
.end method
