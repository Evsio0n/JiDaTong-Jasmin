.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactMainFragment$2
.super java/lang/Object
.implements android/widget/ExpandableListView$OnChildClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactMainFragment/initEvent()V
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactMainFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$100(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
iload 4
iload 3
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/getChild(II)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnonnull L0
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$200(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Z
ifeq L1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$300(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/toggle(JLandroid/os/Handler;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$100(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/notifyDataSetChanged()V
iconst_0
ireturn
L2:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$300(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/os/Handler;
ifnull L3
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokestatic com/nd/android/u/contact/fragment/ContactMainFragment/access$300(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/os/Handler;
bipush 52
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L3:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L4
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactMainFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
goto L3
.limit locals 7
.limit stack 4
.end method
