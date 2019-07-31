.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$3
.super java/lang/Object
.implements android/widget/AdapterView$OnItemLongClickListener
.enclosing method com/nd/android/u/contact/fragment/FriendListFragment
.inner class inner com/nd/android/u/contact/fragment/FriendListFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$200(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
ifeq L0
iconst_0
ireturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L1
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L2
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog
dup
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$3/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
L2:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method
