.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/ContactBaseFragment$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/fragment/ContactBaseFragment
.inner class inner com/nd/android/u/contact/fragment/ContactBaseFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/ContactBaseFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/ContactBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/getNodeList()Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 2
aload 2
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
tableswitch 0
L2
L2
L3
L2
L2
default : L4
L4:
return
L2:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
iconst_0
putfield com/nd/android/u/contact/fragment/ContactBaseFragment/count I
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L5
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
iload 3
iconst_1
iadd
iconst_0
iconst_1
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setCollNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;IZZLjava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setmCache(Ljava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
L5:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getIsLoadService()I
iconst_1
if_icmpeq L6
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
iconst_1
if_icmpeq L6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getUnitid()I
if_icmpne L7
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
ifne L7
L6:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 1
iload 3
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/setExpand(Lcom/nd/android/u/contact/dataStructure/Node;ILjava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
L7:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
aload 1
iload 3
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/setExpand(Lcom/nd/android/u/contact/dataStructure/Node;ILjava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mCache Ljava/util/Map;
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L8
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L9
L8:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L10
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L10
L9:
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLoaderFlag(Z)V
return
L10:
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLoaderFlag(Z)V
return
L3:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
getfield com/nd/android/u/contact/fragment/ContactBaseFragment/mSelectModule I
iconst_1
if_icmpeq L1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L11
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
bipush -99
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L11:
aload 0
getfield com/nd/android/u/contact/fragment/ContactBaseFragment$2/this$0 Lcom/nd/android/u/contact/fragment/ContactBaseFragment;
invokevirtual com/nd/android/u/contact/fragment/ContactBaseFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
return
.limit locals 6
.limit stack 7
.end method
