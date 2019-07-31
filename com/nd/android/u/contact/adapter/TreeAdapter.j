.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/TreeAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/listener/CheckBoxOnClickListener
.inner class inner com/nd/android/u/contact/adapter/TreeAdapter$1

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'checkboxModule' Z

.field private 'display' Z

.field private 'gid' J

.field private 'groupMemberCount' I

.field private 'groupType' I

.field private 'mCache' Ljava/util/Map; signature "Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'nodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"

.field private 'parentHandler' Landroid/os/Handler;

.field private 'selectModule' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/TreeAdapter/checkboxModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupMemberCount I
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupType I
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/TreeAdapter/display Z
aload 0
new com/nd/android/u/contact/adapter/TreeAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/TreeAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/TreeAdapter;)V
putfield com/nd/android/u/contact/adapter/TreeAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
bipush 19
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/groupType I
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/setMax_num(II)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;ILandroid/os/Handler;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/TreeAdapter/checkboxModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupMemberCount I
aload 0
iconst_3
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupType I
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/TreeAdapter/display Z
aload 0
new com/nd/android/u/contact/adapter/TreeAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/TreeAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/TreeAdapter;)V
putfield com/nd/android/u/contact/adapter/TreeAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/TreeAdapter/selectModule I
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/TreeAdapter/parentHandler Landroid/os/Handler;
return
.limit locals 4
.limit stack 4
.end method

.method private initGourpInfo(J)V
aload 0
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
invokeinterface java/util/List/size()I 0
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupMemberCount I
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
lload 1
invokevirtual com/nd/android/u/contact/business/GroupVariable/findAllGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
putfield com/nd/android/u/contact/adapter/TreeAdapter/groupType I
return
.limit locals 3
.limit stack 5
.end method

.method private isNameDuplicate(Lcom/nd/android/u/contact/dataStructure/TreeNode;I)Z
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeName()Ljava/lang/String;
astore 1
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
iconst_0
ireturn
L0:
iconst_0
istore 3
L2:
iload 3
aload 0
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/getCount()I
if_icmpge L1
iload 3
iload 2
if_icmpne L3
L4:
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 4
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
aload 4
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L4
aload 1
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public final getCallback()Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getNodeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aconst_null
astore 3
aload 2
astore 5
aload 2
ifnonnull L0
new com/nd/android/u/contact/view/TreeNodeView
dup
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/selectModule I
invokespecial com/nd/android/u/contact/view/TreeNodeView/<init>(Landroid/content/Context;I)V
astore 5
aload 5
checkcast com/nd/android/u/contact/view/TreeNodeView
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/selectModule I
iconst_1
if_icmpne L1
aload 3
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/gid J
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setGid(J)V
L1:
aload 3
aload 0
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setCheckOnClickListener(Lcom/nd/android/u/contact/listener/CheckBoxOnClickListener;)V
L0:
aload 3
astore 2
aload 3
ifnonnull L2
aload 5
checkcast com/nd/android/u/contact/view/TreeNodeView
astore 2
L2:
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmplt L3
aload 5
areturn
L3:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
aload 3
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 3
aload 0
aload 3
iload 1
invokespecial com/nd/android/u/contact/adapter/TreeAdapter/isNameDuplicate(Lcom/nd/android/u/contact/dataStructure/TreeNode;I)Z
istore 4
aload 2
aload 3
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/display Z
iload 4
invokevirtual com/nd/android/u/contact/view/TreeNodeView/setNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;ZZ)V
aload 5
areturn
.limit locals 6
.limit stack 4
.end method

.method public getmCache()Ljava/util/Map;
.signature "()Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final isCheckboxModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/checkboxModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isDisplay()Z
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/display Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final onClick(JLandroid/widget/CheckBox;)V
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/parentHandler Landroid/os/Handler;
ifnull L1
aload 3
invokevirtual android/widget/CheckBox/isChecked()Z
ifeq L2
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getList()Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/groupMemberCount I
iadd
istore 4
iload 4
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
if_icmplt L3
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/groupType I
iconst_3
if_icmpeq L4
L3:
iload 4
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
if_icmplt L5
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/gid J
lconst_0
lcmp
ifne L5
L4:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/discussion_member_limit I
iconst_1
anewarray java/lang/Object
dup
iconst_0
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getMax_num()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/Context/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 3
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
L5:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/parentHandler Landroid/os/Handler;
bipush 50
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 5
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/addUid(J)Z
ifne L6
aload 3
iconst_0
invokevirtual android/widget/CheckBox/setChecked(Z)V
return
L2:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/parentHandler Landroid/os/Handler;
bipush 51
invokevirtual android/os/Handler/obtainMessage(I)Landroid/os/Message;
astore 5
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/removeUid(J)V
L6:
aload 5
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/parentHandler Landroid/os/Handler;
aload 5
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 6
.limit stack 7
.end method

.method public final refresh(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;)V"
aload 0
aload 1
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final setCheckboxModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter/checkboxModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setDisplayHeaderImageEnable(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter/display Z
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/adapter/TreeAdapter/gid J
lload 1
lconst_0
lcmp
ifeq L0
aload 0
lload 1
invokespecial com/nd/android/u/contact/adapter/TreeAdapter/initGourpInfo(J)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public final setNodeList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/nodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
return
.limit locals 2
.limit stack 3
.end method

.method public setmCache(Ljava/util/Map;)V
.signature "(Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
ifnonnull L0
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/TreeAdapter/mCache Ljava/util/Map;
aload 1
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
L1:
return
.limit locals 2
.limit stack 3
.end method
