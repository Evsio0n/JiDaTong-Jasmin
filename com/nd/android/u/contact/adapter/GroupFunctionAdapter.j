.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/GroupFunctionAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/adapter/GroupFunctionAdapter$1
.inner class private ViewHolder inner com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder outer com/nd/android/u/contact/adapter/GroupFunctionAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mGroup' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'mGroupFunList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/GroupFruction;>;"

.field private 'mHandler' Landroid/os/Handler;

.field public 'myOnClick' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Landroid/os/Handler;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/GroupFruction;>;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Landroid/os/Handler;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
new com/nd/android/u/contact/adapter/GroupFunctionAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/GroupFunctionAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)V
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/myOnClick Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mHandler Landroid/os/Handler;
return
.limit locals 5
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
ifnonnull L0
lconst_0
lreturn
L0:
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/<init>(Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter$1;)V
astore 2
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/groupfun_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/groupfun_list_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/funtext Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/groupfun_list_cb I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/CheckBox
putfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/cb Landroid/widget/CheckBox;
aload 2
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/cb Landroid/widget/CheckBox;
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/CheckBox/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroupFunList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/GroupFruction
astore 2
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder
astore 5
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/GroupFruction/getIsCheck()I
ifne L1
aload 5
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/cb Landroid/widget/CheckBox;
bipush 8
invokevirtual android/widget/CheckBox/setVisibility(I)V
L2:
aload 5
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/funtext Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/GroupFruction/getFunName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
L1:
aload 5
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/cb Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setVisibility(I)V
aload 5
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter$ViewHolder/cb Landroid/widget/CheckBox;
astore 6
aload 0
getfield com/nd/android/u/contact/adapter/GroupFunctionAdapter/mGroup Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixGroupSetType(Ljava/lang/String;)I
ifeq L3
iconst_1
istore 4
L4:
aload 6
iload 4
invokevirtual android/widget/CheckBox/setChecked(Z)V
goto L2
L3:
iconst_0
istore 4
goto L4
.limit locals 7
.limit stack 4
.end method
