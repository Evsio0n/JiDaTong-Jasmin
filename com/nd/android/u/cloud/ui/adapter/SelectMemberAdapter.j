.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class MyOnClickListener inner com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter$MyOnClickListener outer com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter

.field private static final 'TAG' Ljava/lang/String; = "SelectUnitAdapter"

.field private 'mContext' Landroid/content/Context;

.field private 'nodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field private 'radioGroup' Landroid/widget/RadioGroup;

.field private 'selectTreeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/mContext Landroid/content/Context;
aload 0
new android/widget/RadioGroup
dup
aload 1
invokespecial android/widget/RadioGroup/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/radioGroup Landroid/widget/RadioGroup;
return
.limit locals 2
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getNodeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectTreeNode()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/selectTreeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/view/TreeNodeView
dup
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/mContext Landroid/content/Context;
iconst_2
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/<init>(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V
astore 3
L0:
aload 3
checkcast com/nd/android/u/contact/view/TreeNodeView
astore 2
iload 1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
aload 3
areturn
L1:
aload 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 3
areturn
.limit locals 4
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setNodeList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
L1:
aload 1
ifnull L2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method public setSelectTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectMemberAdapter/selectTreeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method
