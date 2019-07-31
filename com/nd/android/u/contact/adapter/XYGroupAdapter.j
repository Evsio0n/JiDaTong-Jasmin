.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/XYGroupAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/XYGroupAdapter$Holder outer com/nd/android/u/contact/adapter/XYGroupAdapter

.field private static final 'TAG' Ljava/lang/String; = "XYGroupAdapter"

.field private 'mContext' Landroid/content/Context;

.field private 'mOapGroups' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Object;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Ljava/lang/Object;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
return
.limit locals 3
.limit stack 2
.end method

.method public clear()V
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
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
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 7
aload 7
instanceof com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
ifeq L0
aload 7
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 6
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_grouplist_groups_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 7
aload 2
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 7
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getCatagoryName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 4
iconst_0
istore 1
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 6
aload 6
ifnull L1
L2:
iload 1
istore 4
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L1:
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
ifnull L3
aload 2
instanceof android/widget/RelativeLayout
ifeq L3
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/XYGroupAdapter$Holder
astore 6
aload 2
astore 3
aload 6
astore 2
L4:
aload 7
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 6
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/groupName Landroid/widget/TextView;
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 5
iconst_0
istore 4
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 7
aload 7
ifnull L5
L6:
iload 4
istore 5
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
pop
iload 4
iconst_1
iadd
istore 4
goto L6
L3:
new com/nd/android/u/contact/adapter/XYGroupAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/XYGroupAdapter;)V
astore 2
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_grouplist_group_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/group_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/groupName Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/group_member_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/memberCount Landroid/widget/TextView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/group_item_img_contact I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/groupFace Landroid/widget/ImageView;
aload 2
aload 3
getstatic com/nd/android/u/contact/R$id/group_item_dividing_line I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/dividLine Landroid/view/View;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L4
L5:
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_3
if_icmpne L7
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/memberCount Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 5
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/memberCount Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
L8:
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpeq L9
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
iload 1
iconst_1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
instanceof com/nd/android/u/contact/dataStructure/OapGroups
ifeq L10
L9:
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/dividLine Landroid/view/View;
iconst_4
invokevirtual android/view/View/setVisibility(I)V
L11:
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/groupFace Landroid/widget/ImageView;
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 6
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
invokestatic com/nd/android/u/contact/business/SimpleGroupHeadImageLoader/displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
aload 3
areturn
L7:
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/memberCount Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
goto L8
L10:
aload 2
getfield com/nd/android/u/contact/adapter/XYGroupAdapter$Holder/dividLine Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
goto L11
.limit locals 8
.limit stack 3
.end method

.method public setmOapGroups(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Object;>;)V"
aload 1
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupAdapter/mOapGroups Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
