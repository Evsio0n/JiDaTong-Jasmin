.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/FriendGroupAdapter
.super android/widget/BaseExpandableListAdapter
.implements com/nd/android/u/contact/adapter/ExpandableRefreshAdapter

.field private 'friendGroupList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;"

.field private 'gid' J

.field private 'mSelectModule' Z

.field private 'mcontext' Landroid/content/Context;

.field private 'parendHandler' Landroid/os/Handler;

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
invokespecial android/widget/BaseExpandableListAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mSelectModule Z
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mcontext Landroid/content/Context;
return
.limit locals 3
.limit stack 3
.end method

.method public final get(I)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmple L1
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getChild(II)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
iload 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnonnull L2
aconst_null
areturn
L2:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmpgt L3
aconst_null
areturn
L3:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getChildId(II)J
iload 2
i2l
lreturn
.limit locals 3
.limit stack 2
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 4
astore 5
aload 4
ifnonnull L0
new com/nd/android/u/contact/view/FriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mcontext Landroid/content/Context;
aconst_null
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mSelectModule Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/parendHandler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/view/FriendView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;ZLandroid/os/Handler;)V
astore 5
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 2
if_icmpgt L1
aload 5
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 6
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 1
aload 5
checkcast com/nd/android/u/contact/view/FriendView
astore 4
aload 5
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 4
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/gid J
invokevirtual com/nd/android/u/contact/view/FriendView/setGid(J)V
aload 4
lload 6
iload 1
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JIZ)V
aload 5
areturn
.limit locals 8
.limit stack 6
.end method

.method public final getChildrenCount(I)I
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getMember()Ljava/util/List; 0
ifnonnull L1
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getMember()Ljava/util/List; 0
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroup(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getGroupCount()I
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/size()I 0
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
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 5
aload 3
astore 4
aload 3
ifnonnull L0
new com/nd/android/u/contact/view/FriendGroupView
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mcontext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/FriendGroupView/<init>(Landroid/content/Context;)V
astore 4
L0:
aload 4
checkcast com/nd/android/u/contact/view/FriendGroupView
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
iload 2
invokevirtual com/nd/android/u/contact/view/FriendGroupView/initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Z)V
aload 4
areturn
.limit locals 6
.limit stack 3
.end method

.method public final getTextView(Landroid/content/Context;)Landroid/widget/TextView;
new android/widget/TextView
dup
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
astore 1
aload 1
bipush 19
invokevirtual android/widget/TextView/setGravity(I)V
aload 1
areturn
.limit locals 2
.limit stack 3
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

.method public final isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mSelectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final refresh(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/setFriendGroupList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/FriendGroupAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final setFriendGroupList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/friendGroupList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/parendHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/FriendGroupAdapter/mSelectModule Z
return
.limit locals 2
.limit stack 2
.end method
