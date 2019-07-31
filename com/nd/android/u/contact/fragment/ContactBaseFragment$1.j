.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactBaseFragment$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemLongClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactBaseFragment
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactBaseFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$1/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$1/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/getNodeList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
iconst_2
if_icmpne L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
L0:
iconst_0
ireturn
L1:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L2
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
iconst_1
if_icmpne L2
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog
dup
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$1/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
L2:
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method
