.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter$1

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'checkboxModule' Z

.field private 'display' Z

.field private 'mCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'nodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"

.field private 'selectedDeptid' I

.field private 'selectedUnitid' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/checkboxModule Z
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/display Z
aload 0
new com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter;)V
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public final getCallback()Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getNodeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aconst_null
astore 3
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L0
aload 2
areturn
L0:
aload 2
astore 4
aload 2
ifnonnull L1
new com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/<init>(Landroid/content/Context;)V
astore 4
aload 4
checkcast com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView
astore 3
L1:
aload 3
astore 2
aload 3
ifnonnull L2
aload 4
checkcast com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView
astore 2
L2:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 5
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Node/getUnitid()I
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedUnitid I
if_icmpne L3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Node/getDeptid()I
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedDeptid I
if_icmpeq L4
L3:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedUnitid I
ifne L5
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedDeptid I
ifne L5
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
ifne L5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L5
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Node/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpne L5
L4:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setCheckSelected(Z)V
L6:
aload 2
aload 5
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setSelectedTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 5
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/display Z
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedDeptid I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setSelectedDeptid(I)V
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedUnitid I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setSelectedUnitid(I)V
aload 4
areturn
L5:
aload 2
iconst_0
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setCheckSelected(Z)V
goto L6
.limit locals 6
.limit stack 3
.end method

.method public getmCache()Ljava/util/Map;
.signature "()Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final isCheckboxModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/checkboxModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isDisplay()Z
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/display Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final setCheckboxModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/checkboxModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setDisplayHeaderImageEnable(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/display Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setNodeList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/nodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public final setSelectedDeptid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedDeptid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelectedUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/selectedUnitid I
return
.limit locals 2
.limit stack 2
.end method

.method public setmCache(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/SingleSelectUnitTreeAdapter/mCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
L1:
return
.limit locals 2
.limit stack 3
.end method
