.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/GroupListFragment$2
.super java/lang/Object
.implements android/widget/ExpandableListView$OnChildClickListener
.enclosing method com/nd/android/u/contact/fragment/GroupListFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/GroupListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/GroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
iload 3
iload 4
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/getChild(II)Ljava/lang/Object;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
iload 3
iload 4
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/getChild(II)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/GroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
aload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L0:
iconst_1
ireturn
.limit locals 7
.limit stack 4
.end method
