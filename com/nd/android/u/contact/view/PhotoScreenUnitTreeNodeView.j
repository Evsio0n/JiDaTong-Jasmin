.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.inner class MyOnClickListener inner com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener outer com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView

.field public static final 'CHECKBOXMODULE_DEPART' I = 2


.field public static final 'CHECKBOXMODULE_NONE' I = 0


.field public static final 'CHECKBOXMODULE_USER' I = 1


.field private final 'PADDINGLEFT' I

.field private 'depart' Lcom/nd/android/u/contact/dataStructure/OapDepart;

.field private 'expandView' Landroid/widget/ImageView;

.field private 'groupCheckBox' Landroid/widget/RadioButton;

.field private 'groupLayout' Landroid/view/ViewGroup;

.field private 'groupPromptText' Landroid/widget/TextView;

.field private 'loaderFlag' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mOnCheckedChangeListener' Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;

.field private 'node' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.field private 'onLineText' Landroid/widget/TextView;

.field private 'paddingleft' I

.field private 'selectedDeptid' I

.field private 'selectedUnitid' I

.field private 'titleText' Landroid/widget/TextView;

.field private 'treenode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/loaderFlag Z
aload 0
new com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener
dup
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/<init>(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)V
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mOnCheckedChangeListener Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/getView()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/loaderFlag Z
aload 0
new com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener
dup
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/<init>(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)V
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mOnCheckedChangeListener Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/getView()V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/loaderFlag Z
aload 0
new com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener
dup
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/<init>(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)V
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mOnCheckedChangeListener Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/getView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/tree_photoscreen_group_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_item_group I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_text_title I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_text_count I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/onLineText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_img_expand I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/expandView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_tx_prompt I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupPromptText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_cb I
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupCheckBox Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupCheckBox Landroid/widget/RadioButton;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mOnCheckedChangeListener Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;
invokevirtual android/widget/RadioButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method private setOapDept(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/depart Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/titleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/depart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method

.method private setOapUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/titleText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public setCheckSelected(Z)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupCheckBox Landroid/widget/RadioButton;
iload 1
invokevirtual android/widget/RadioButton/setChecked(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setExpand()V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_expand I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_normal I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
lconst_0
lcmp
ifeq L1
L0:
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupPromptText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isLoaderFlag()Z
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/loaderFlag Z
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L2
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setSelectExpand(Z)V
L2:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
tableswitch 0
L3
L4
default : L5
L5:
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/groupLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
return
L4:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setOapDept(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setExpand()V
return
L3:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/paddingleft I
aload 0
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setExpand()V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokespecial com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/setOapUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
return
.limit locals 3
.limit stack 4
.end method

.method public setSelectedDeptid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/selectedDeptid I
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/treenode Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/mOnCheckedChangeListener Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener;
aload 1
invokevirtual com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/selectedUnitid I
return
.limit locals 2
.limit stack 2
.end method
