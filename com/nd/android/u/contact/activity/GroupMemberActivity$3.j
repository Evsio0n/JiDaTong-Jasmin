.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupMemberActivity$3
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/contact/activity/GroupMemberActivity/initEvent()V
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
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
tableswitch 0
L0
L1
default : L2
L2:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
iconst_1
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/setScrollIng(Z)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/setScrollIng(Z)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity$3/this$0 Lcom/nd/android/u/contact/activity/GroupMemberActivity;
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/notifyDataSetChanged()V
return
.limit locals 3
.limit stack 2
.end method
