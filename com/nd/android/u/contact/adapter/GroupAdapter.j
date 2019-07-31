.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/GroupAdapter
.super android/widget/BaseExpandableListAdapter
.inner class inner com/nd/android/u/contact/adapter/GroupAdapter$1
.inner class Holder inner com/nd/android/u/contact/adapter/GroupAdapter$Holder outer com/nd/android/u/contact/adapter/GroupAdapter

.field private static final 'TAG' Ljava/lang/String; = "GroupAdapter"

.field protected 'count' I

.field private 'mContext' Landroid/content/Context;

.field 'mHandler' Landroid/os/Handler;

.field private 'mOapGroups' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGroups;>;"

.field protected 'preRefreshTime' J

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseExpandableListAdapter/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/adapter/GroupAdapter/preRefreshTime J
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/GroupAdapter/count I
aload 0
new com/nd/android/u/contact/adapter/GroupAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/GroupAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/GroupAdapter;)V
putfield com/nd/android/u/contact/adapter/GroupAdapter/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
aload 0
invokespecial android/widget/BaseExpandableListAdapter/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/contact/adapter/GroupAdapter/preRefreshTime J
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/GroupAdapter/count I
aload 0
new com/nd/android/u/contact/adapter/GroupAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/GroupAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/GroupAdapter;)V
putfield com/nd/android/u/contact/adapter/GroupAdapter/mHandler Landroid/os/Handler;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupAdapter/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 4
.end method

.method public final getChild(II)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getChildId(II)J
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmpge L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lreturn
L0:
lconst_0
lreturn
.limit locals 3
.limit stack 2
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 4
astore 5
aload 4
ifnonnull L0
new com/nd/android/u/contact/view/GroupView
dup
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/GroupView/<init>(Landroid/content/Context;)V
astore 5
L0:
aload 5
getstatic com/nd/android/u/contact/R$id/grouplist_list_group I
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 5
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_count I
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 5
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_name I
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroup(I)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
aload 5
instanceof com/nd/android/u/contact/view/GroupView
ifeq L1
aload 5
checkcast com/nd/android/u/contact/view/GroupView
aload 4
invokevirtual com/nd/android/u/contact/view/GroupView/initComponentValue(Lcom/product/android/commonInterface/contact/OapGroup;)V
L1:
aload 5
areturn
.limit locals 6
.limit stack 3
.end method

.method public final getChildrenCount(I)I
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroupListSize()I
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroup(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroupCount()I
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getGroupId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L0
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
astore 5
aload 3
astore 4
aload 3
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/grouplist_groups_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 4
new com/nd/android/u/contact/adapter/GroupAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/GroupAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/GroupAdapter;)V
astore 3
aload 3
aload 4
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/GroupAdapter$Holder/groupNameTextView Landroid/widget/TextView;
aload 3
aload 4
getstatic com/nd/android/u/contact/R$id/grouplist_groups_item_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/GroupAdapter$Holder/groupCountTextView Landroid/widget/TextView;
aload 4
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 4
getstatic com/nd/android/u/contact/R$id/grouplist_list_group I
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/view/View/setTag(ILjava/lang/Object;)V
aload 4
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/GroupAdapter$Holder
astore 3
aload 5
ifnull L2
aload 3
getfield com/nd/android/u/contact/adapter/GroupAdapter$Holder/groupNameTextView Landroid/widget/TextView;
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroupsName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/GroupAdapter$Holder/groupCountTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getGroupListSize()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public final getOapGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGroups;>;"
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isChildSelectable(II)Z
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public final refresh()V
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/preRefreshTime J
lsub
ldc2_w 500L
lcmp
ifle L0
aload 0
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/notifyDataSetChanged()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/GroupAdapter/count I
aload 0
invokestatic java/lang/System/currentTimeMillis()J
putfield com/nd/android/u/contact/adapter/GroupAdapter/preRefreshTime J
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/count I
ifne L1
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mHandler Landroid/os/Handler;
iconst_0
ldc2_w 500L
invokevirtual android/os/Handler/sendEmptyMessageAtTime(IJ)Z
pop
L1:
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/count I
iconst_1
iadd
putfield com/nd/android/u/contact/adapter/GroupAdapter/count I
return
.limit locals 1
.limit stack 4
.end method

.method public final setOapGroups(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGroups;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupAdapter/mOapGroups Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method
