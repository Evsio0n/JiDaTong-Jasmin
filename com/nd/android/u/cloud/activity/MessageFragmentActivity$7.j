.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$7
.super android/os/Handler
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$7

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
tableswitch 1
L0
L1
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$500(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$500(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$600(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpeq L4
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$600(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
getstatic com/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType/TAB_NO_MESSAGE Lcom/nd/android/u/cloud/activity/MessageFragmentActivity$FragmentType;
if_acmpne L5
L4:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$700(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
L5:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$800(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
ifnull L3
aload 1
getfield android/os/Message/what I
iconst_3
if_icmpne L6
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$800(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
iconst_4
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
L6:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$800(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactListFragment;
iconst_3
aconst_null
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactListFragment/pushMessage(ILjava/lang/Object;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/clearEditText()V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$100(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
iconst_1
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setSearchBarState(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$7/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$700(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
return
.limit locals 2
.limit stack 3
.end method
