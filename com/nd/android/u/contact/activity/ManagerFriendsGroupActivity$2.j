.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/initComponentValue()V
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$2/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$100(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/clearForce()V
L0:
return
.limit locals 3
.limit stack 2
.end method
