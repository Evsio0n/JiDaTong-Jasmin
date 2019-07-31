.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$1
.super java/lang/Object
.implements android/widget/ExpandableListView$OnChildClickListener
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$100(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
iload 4
iload 3
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/getChild(II)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnonnull L0
iconst_1
ireturn
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lstore 5
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
ifeq L1
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$300(Lcom/nd/android/u/contact/fragment/FriendListFragment;)J
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/isExists(JJ)Z 4
ifeq L2
iconst_0
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L3
iconst_0
ireturn
L3:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$100(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Lcom/nd/android/u/contact/adapter/FriendGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/notifyDataSetChanged()V
iconst_0
ireturn
L4:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/os/Handler;
ifnull L5
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L5:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L6
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L5
L6:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
goto L5
.limit locals 7
.limit stack 5
.end method
