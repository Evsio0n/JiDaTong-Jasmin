.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/adapter/MultiTreeAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1
.inner class private DeptClickListener inner com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener outer com/nd/android/u/contact/ui/adapter/MultiTreeAdapter
.inner class private ViewHolder inner com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder outer com/nd/android/u/contact/ui/adapter/MultiTreeAdapter

.field private final 'PADDING' I

.field private 'isSearchDept' Z

.field private 'isSelectMode' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mElements' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/ui/bean/OrgNode;>;"

.field private 'mGid' J

.field private 'mGroup' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;

.method public <init>(Ljava/util/List;Landroid/content/Context;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/ui/bean/OrgNode;>;Landroid/content/Context;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
bipush 20
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/PADDING I
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/isSearchDept Z
aload 0
aload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
aload 0
aload 2
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCurrentPos(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/ui/bean/OrgNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
lload 1
lcmp
ifne L2
iload 3
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/<init>(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/item_org_school_tree I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 7
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/rl_org_school_sort_depat I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlDepat Landroid/widget/RelativeLayout;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/iv_org_school_sort_depat_flag I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/rb_org_school_sort_depat_select I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioButton
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/tv_org_school_sort_depat_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvTitle Landroid/widget/TextView;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/rl_org_school_sort_user I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlUser Landroid/widget/RelativeLayout;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/iv_org_school_sort_user_head I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivUserHead Landroid/widget/ImageView;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/tv_org_school_sort_user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvUserName Landroid/widget/TextView;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/tv_org_school_sort_user_intro I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvUserInstr Landroid/widget/TextView;
aload 3
aload 7
getstatic com/nd/android/u/contact/R$id/cb_org_school_sort_user_selected I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
aload 7
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/ui/bean/OrgNode
astore 8
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getLevel()I
istore 4
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getUiType()Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
astore 9
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mElements Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/ui/bean/OrgNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
lstore 5
aload 9
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/EXPEND_NODE Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
if_acmpne L2
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlDepat Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
bipush 8
if_icmpne L3
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlDepat Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L3:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlUser Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L4
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlUser Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L4:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
iload 4
bipush 20
imul
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingTop()I
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingRight()I
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getPaddingBottom()I
invokevirtual android/widget/ImageView/setPadding(IIII)V
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/isSelected()Z
ifeq L5
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_expand I
invokevirtual android/widget/ImageView/setImageResource(I)V
L6:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvTitle Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
checkcast com/nd/android/u/contact/ui/bean/OrgDepatNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgDepatNode/getNum()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/isSearchDept Z
ifeq L7
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
invokevirtual android/widget/RadioButton/getVisibility()I
bipush 8
if_icmpne L8
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
iconst_0
invokevirtual android/widget/RadioButton/setVisibility(I)V
L8:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
new com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener
dup
aload 0
aload 8
invokespecial com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$DeptClickListener/<init>(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;Lcom/nd/android/u/contact/ui/bean/OrgNode;)V
invokevirtual android/widget/RadioButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder
astore 3
aload 2
astore 7
goto L1
L5:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L6
L7:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
invokevirtual android/widget/RadioButton/getVisibility()I
ifne L9
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
bipush 8
invokevirtual android/widget/RadioButton/setVisibility(I)V
L9:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rbSelected Landroid/widget/RadioButton;
aconst_null
invokevirtual android/widget/RadioButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
areturn
L2:
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/isSelectMode Z
ifeq L10
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/isSelected()Z
invokevirtual android/widget/CheckBox/setChecked(Z)V
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnonnull L11
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
L11:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlUser Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
bipush 8
if_icmpne L12
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlUser Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L12:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlDepat Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L13
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/rlDepat Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L13:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivUserHead Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 2
aload 2
iload 4
bipush 20
imul
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/RelativeLayout$LayoutParams/setMargins(IIII)V
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivUserHead Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvUserName Landroid/widget/TextView;
aload 8
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aconst_null
astore 2
aload 9
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_GROUP Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
if_acmpne L14
aload 8
checkcast com/nd/android/u/contact/ui/bean/OrgGroupNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgGroupNode/getIntro()Ljava/lang/String;
astore 2
L15:
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnull L16
aload 0
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
lload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/isMember(J)Z 2
ifeq L17
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setEnabled(Z)V
L18:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/tvUserInstr Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
lload 5
iconst_3
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivUserHead Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/ivUserHead Landroid/widget/ImageView;
new com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1
dup
aload 0
lload 5
invokespecial com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$1/<init>(Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;J)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
areturn
L10:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
goto L11
L14:
aload 9
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/UNEXPEND_NODE_USER Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
if_acmpne L15
aload 8
checkcast com/nd/android/u/contact/ui/bean/OrgUserNode
invokevirtual com/nd/android/u/contact/ui/bean/OrgUserNode/getIntro()Ljava/lang/String;
astore 2
goto L15
L17:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setEnabled(Z)V
goto L18
L16:
aload 3
getfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter$ViewHolder/cbSelected Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setEnabled(Z)V
goto L18
.limit locals 10
.limit stack 6
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/mGid J
return
.limit locals 3
.limit stack 3
.end method

.method public setSearchDept(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/isSearchDept Z
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectMode(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/isSelectMode Z
return
.limit locals 2
.limit stack 2
.end method
