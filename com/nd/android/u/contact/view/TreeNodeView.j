.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/TreeNodeView
.super android/widget/LinearLayout
.implements android/view/View$OnClickListener
.inner class MyOnCheckBoxOnClickListener inner com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener outer com/nd/android/u/contact/view/TreeNodeView

.field public static final 'CHECKBOXMODULE_DEPART' I = 2


.field public static final 'CHECKBOXMODULE_NONE' I = 0


.field public static final 'CHECKBOXMODULE_USER' I = 1


.field private final 'PADDINGLEFT' I

.field private 'activeText' Landroid/widget/TextView;

.field private 'checkBoxOnClickListener' Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;

.field private 'depart' Lcom/nd/android/u/contact/dataStructure/OapDepart;

.field private 'expandView' Landroid/widget/ImageView;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'faceLayout' Landroid/view/ViewGroup;

.field private 'gid' J

.field private 'groupCheckBox' Landroid/widget/CheckBox;

.field private 'groupLayout' Landroid/view/ViewGroup;

.field private 'groupPromptText' Landroid/widget/TextView;

.field private 'ischeck' Z

.field private 'loaderFlag' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mDisplay' Z

.field private 'mPosition' I

.field private 'module' I

.field private 'node' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.field private 'onClickListener' Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;

.field private 'onLineText' Landroid/widget/TextView;

.field private 'paddingleft' I

.field private 'titleText' Landroid/widget/TextView;

.field public 'userCheckBox' Landroid/widget/CheckBox;

.field private 'userInfnOnClickListerer' Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;

.field private 'userLayout' Landroid/view/ViewGroup;

.field private 'usernameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/TreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/loaderFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/ischeck Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/TreeNodeView/mDisplay Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/getView()V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/TreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/loaderFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/ischeck Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/TreeNodeView/mDisplay Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/getView()V
return
.limit locals 4
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
bipush 20
putfield com/nd/android/u/contact/view/TreeNodeView/PADDINGLEFT I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/loaderFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/TreeNodeView/ischeck Z
aload 0
iconst_1
putfield com/nd/android/u/contact/view/TreeNodeView/mDisplay Z
aload 0
iload 3
putfield com/nd/android/u/contact/view/TreeNodeView/module I
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/getView()V
return
.limit locals 4
.limit stack 3
.end method

.method private getView()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_treenode I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/xy_treenode_user_item_cb I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
L1:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_item_group I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_text_title I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_text_count I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TreeNodeView/onLineText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_img_expand I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/TreeNodeView/expandView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_layout I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_name I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_tx_description I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_item_img_face I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/user_img_layout I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/view/ViewGroup
putfield com/nd/android/u/contact/view/TreeNodeView/faceLayout Landroid/view/ViewGroup;
aload 0
new com/nd/android/u/contact/listener/UserInfoOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/UserInfoOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/TreeNodeView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
invokevirtual android/view/ViewGroup/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_tx_prompt I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TreeNodeView/groupPromptText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_group_item_cb I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/module I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
new com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener
dup
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/<init>(Lcom/nd/android/u/contact/view/TreeNodeView;)V
putfield com/nd/android/u/contact/view/TreeNodeView/checkBoxOnClickListener Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/checkBoxOnClickListener Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/checkBoxOnClickListener Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/treenode I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/treenode_user_item_cb I
invokevirtual com/nd/android/u/contact/view/TreeNodeView/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/module I
iconst_1
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
aload 0
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method private setOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L1:
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/showLoading()V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private setOapDept(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView/depart Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/depart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L1:
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/showLoading()V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private setOapUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/staff I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L3:
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/showLoading()V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L3
.limit locals 2
.limit stack 5
.end method

.method private setUser(JIZ)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
lload 1
invokevirtual com/nd/android/u/contact/listener/UserInfoOnClickListeren/setFid(J)V
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setEnabled(Z)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L1
invokestatic com/nd/android/u/contact/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
lload 1
iload 3
invokevirtual com/nd/android/u/contact/cache/ClassRelationCache/get(JI)Ljava/lang/String;
astore 5
iload 3
ifeq L2
aload 5
ifnull L2
ldc ""
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
ldc "null"
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L5:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L6
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/trans I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
lload 1
iconst_3
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L1:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/module I
iconst_2
if_icmpne L7
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokestatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/contains(J)Z
ifeq L8
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L9:
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/showLoading()V
return
L2:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getIsManager()Z
ifeq L10
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/counsellor I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L10:
iload 4
ifne L11
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L11:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
L6:
lload 1
lload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L1
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setEnabled(Z)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 6
astore 5
aload 6
ifnonnull L12
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 6
aload 6
astore 5
aload 6
ifnull L12
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 1
aload 6
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
aload 6
astore 5
L12:
aload 5
ifnull L13
invokestatic com/nd/android/u/contact/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
lload 1
iload 3
invokevirtual com/nd/android/u/contact/cache/ClassRelationCache/get(JI)Ljava/lang/String;
astore 6
iload 3
ifeq L14
aload 6
ifnull L14
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L14
ldc "null"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L14
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L15:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L16
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/trans I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
lload 1
iconst_3
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L17:
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
iconst_1
if_icmpne L18
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L14:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getIsManager()Z
ifeq L19
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/counsellor I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L15
L19:
iload 4
ifne L20
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L15
L20:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L15
L16:
lload 1
lload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L17
L18:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L13:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 1
lload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/activeText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L1
L8:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L9
L7:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/module I
iconst_1
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/CheckBox/setTag(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setEnabled(Z)V
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/isContians(J)Z
ifeq L21
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L22:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L9
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/gid J
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/isExists(JJ)Z 4
ifeq L9
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setEnabled(Z)V
goto L9
L21:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L22
.limit locals 7
.limit stack 5
.end method

.method private setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
iconst_0
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
iconst_0
iconst_0
iconst_0
invokevirtual android/view/ViewGroup/setPadding(IIII)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/titleText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onLineText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "( "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " )"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L1:
aload 0
invokespecial com/nd/android/u/contact/view/TreeNodeView/showLoading()V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupCheckBox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L1
.limit locals 2
.limit stack 5
.end method

.method private showLoading()V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/loaderFlag Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupPromptText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupPromptText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public final getCheckBoxModule()I
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/module I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getPosition()I
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/mPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isIscheck()Z
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/ischeck Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/treenode_user_item_cb I
if_icmpeq L0
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/xy_treenode_user_item_cb I
if_icmpne L1
L0:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onClickListener Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;
ifnull L1
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/onClickListener Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userCheckBox Landroid/widget/CheckBox;
invokeinterface com/nd/android/u/contact/listener/CheckBoxOnClickListener/onClick(JLandroid/widget/CheckBox;)V 3
L1:
return
.limit locals 2
.limit stack 4
.end method

.method public final setCheckBoxModule(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/TreeNodeView/module I
return
.limit locals 2
.limit stack 2
.end method

.method public final setCheckOnClickListener(Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView/onClickListener Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setExpand()V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L0
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_expand I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/expand I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_normal I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/expandView Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/normal I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/view/TreeNodeView/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setIscheck(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/TreeNodeView/ischeck Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
iconst_1
iconst_0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;ZZ)V
return
.limit locals 2
.limit stack 4
.end method

.method public final setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;ZZ)V
aload 0
iload 2
putfield com/nd/android/u/contact/view/TreeNodeView/mDisplay Z
aload 1
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupPromptText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isLoaderFlag()Z
putfield com/nd/android/u/contact/view/TreeNodeView/loaderFlag Z
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/checkBoxOnClickListener Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;
ifnull L1
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/checkBoxOnClickListener Lcom/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener;
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L1:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
tableswitch 0
L2
L3
L4
L5
L6
default : L7
L7:
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/groupLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/userLayout Landroid/view/ViewGroup;
bipush 8
invokevirtual android/view/ViewGroup/setVisibility(I)V
return
L3:
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokespecial com/nd/android/u/contact/view/TreeNodeView/setOapDept(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setExpand()V
return
L2:
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setExpand()V
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokespecial com/nd/android/u/contact/view/TreeNodeView/setOapUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
return
L5:
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setExpand()V
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getOapClass()Lcom/nd/android/u/contact/dataStructure/OapClass;
invokespecial com/nd/android/u/contact/view/TreeNodeView/setOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
return
L4:
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
isub
bipush 20
imul
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
iload 3
invokespecial com/nd/android/u/contact/view/TreeNodeView/setUser(JIZ)V
return
L6:
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
bipush 20
imul
putfield com/nd/android/u/contact/view/TreeNodeView/paddingleft I
aload 0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setExpand()V
aload 0
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView/node Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokespecial com/nd/android/u/contact/view/TreeNodeView/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
return
.limit locals 4
.limit stack 5
.end method

.method public final setPosition(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/view/TreeNodeView/mPosition I
return
.limit locals 2
.limit stack 2
.end method
