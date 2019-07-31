.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter
.super android/widget/BaseAdapter
.inner class SearchDepartAdapter inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter outer com/nd/android/u/contact/activity/SearchDepartActivity
.inner class Holder inner com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder outer com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter

.field protected 'mContext' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchDepartActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mContext Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/<init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/singleselect_unit_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/singleselect_unit_item_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/unitNameText Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/singleselect_unit_item_checkbox I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 2
new com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener
dup
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokespecial com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/<init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)V
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener;
aload 3
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode
astore 4
aload 4
ifnull L1
aload 4
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/type I
ifne L2
aload 4
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$200(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
aload 4
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
if_icmpne L4
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
L5:
iconst_0
istore 1
aload 4
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
ifnull L6
aload 4
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUserCount()I
istore 1
L6:
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/unitNameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/getNodeName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/mOnCheckedChangeListener Lcom/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener;
aload 4
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/setTreeNode(Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;)V
L1:
aload 3
areturn
L4:
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L5
L3:
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L5
L2:
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$300(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
ifeq L7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L8
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$300(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpne L8
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic com/nd/android/u/contact/activity/SearchDepartActivity/access$200(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)I
ifne L8
L7:
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L5
L8:
aload 2
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter$Holder/checkbox Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartAdapter/mList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
