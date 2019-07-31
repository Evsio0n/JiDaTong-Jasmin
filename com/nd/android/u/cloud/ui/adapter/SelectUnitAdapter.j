.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class Holder inner com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder outer com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter
.inner class MyOnClickListener inner com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener outer com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter

.field private static final 'TAG' Ljava/lang/String; = "SelectUnitAdapter"

.field private 'mContext' Landroid/content/Context;

.field private 'nodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field private 'selectTreeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
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
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSelectTreeNode()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/selectTreeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/<init>(Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903699
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
ldc_w 2131626632
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/unitNameText Landroid/widget/TextView;
aload 2
aload 3
ldc_w 2131626633
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/checkbox Landroid/widget/CheckBox;
aload 2
new com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/<init>(Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;)V
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener;
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/checkbox Landroid/widget/CheckBox;
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener;
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 4
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/unitNameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/paddintleft I
aload 3
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/paddintleft I
bipush 10
iconst_0
bipush 10
invokevirtual android/view/View/setPadding(IIII)V
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L1
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L2:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener;
aload 4
invokevirtual com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 3
areturn
L1:
aload 2
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L2
.limit locals 5
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setNodeList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
L1:
aload 1
ifnull L2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method public setSelectTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/selectTreeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method
