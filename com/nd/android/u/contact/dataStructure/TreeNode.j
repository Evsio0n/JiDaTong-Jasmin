.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/TreeNode
.super java/lang/Object

.field public static final 'OAPCLASSTYPE' I = 3


.field public static final 'OAPDEPARTNODETYPE' I = 1


.field public static final 'OAPUNITNODETYPE' I = 0


.field public static final 'OAPUSERNODETYPE' I = 2


.field public static final 'VIRTUALTYPE' I = 4


.field private 'childrenList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"

.field private 'childrenTreeNodeList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"

.field private 'countOnLine' I

.field private 'isExpand' Z

.field private 'isManager' Z

.field private 'malreadyRead' Z

.field private 'mclassType' I

.field private 'mclassid' I

.field private 'mcount' I

.field private 'mcourseid' I

.field private 'mdepart' Lcom/nd/android/u/contact/dataStructure/OapDepart;

.field private 'mdeptid' I

.field private 'mfid' J

.field private 'mfirstLoader' Z

.field private 'misLoad' I

.field private 'misSelectExpand' Z

.field private 'mlevel' I

.field private 'mloaderFlag' Z

.field private 'mnode' Lcom/nd/android/u/contact/dataStructure/Node;

.field private 'mnodeStatus' I

.field private 'moapClass' Lcom/nd/android/u/contact/dataStructure/OapClass;

.field private 'mtype' I

.field private 'munit' Lcom/nd/android/u/contact/dataStructure/OapUnit;

.field private 'munitid' I

.field private 'muserchildrenList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"

.field private 'mvirtualNode' Lcom/nd/android/u/contact/dataStructure/VirtualNode;

.field private 'parentNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUser(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUser(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
return
.limit locals 2
.limit stack 3
.end method

.method public final addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L3:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 3
.end method

.method public final equals(Ljava/lang/Object;)Z
iconst_1
istore 2
aload 1
instanceof com/nd/android/u/contact/dataStructure/TreeNode
ifeq L0
aload 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
if_icmpne L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
tableswitch 0
L2
L3
L4
L5
L6
default : L0
L0:
iconst_0
istore 2
L7:
iload 2
ireturn
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
if_icmpne L8
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
if_icmpeq L7
L8:
iconst_0
ireturn
L2:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
if_icmpeq L7
iconst_0
ireturn
L6:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getVirtualId()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getVirtualId()I
if_icmpne L9
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getClassid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getClassid()I
if_icmpeq L7
L9:
iconst_0
ireturn
L5:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
if_icmpeq L7
iconst_0
ireturn
L4:
aload 1
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
lcmp
ifne L10
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
if_icmpne L10
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDeptid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDeptid()I
if_icmpne L10
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCourseid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCourseid()I
if_icmpeq L7
L10:
iconst_0
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public final getChildUserNode(Ljava/util/ArrayList;ZLjava/util/Map;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;ZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L2:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
astore 5
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 6
ifnull L2
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getIsactive()I
ifeq L2
aload 1
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L2
L3:
iload 2
ifeq L1
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L4:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 5
aload 5
ifnull L4
aload 5
aload 1
iload 2
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildUserNode(Ljava/util/ArrayList;ZLjava/util/Map;)V
goto L4
.limit locals 7
.limit stack 4
.end method

.method public final getChildfids()[J
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
iconst_2
if_icmpne L1
aload 2
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/Node/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 2
invokeinterface java/util/List/size()I 0
newarray long
astore 3
iconst_0
istore 1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
iload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public final getChildreNodeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
astore 1
L1:
aload 0
monitorexit
aload 1
areturn
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public final getChildrenTreeNodeList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getClassType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mclassType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
iconst_3
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getOapClass()Lcom/nd/android/u/contact/dataStructure/OapClass;
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
iconst_4
if_icmpne L1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getClassid()I
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mclassid I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getCount()I
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserCount()I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public final getCountOnLineUser()I
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/countOnLine I
iconst_m1
if_icmpeq L3
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/countOnLine I
istore 1
L1:
aload 0
monitorexit
iload 1
ireturn
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/countOnLine I
istore 1
L4:
goto L1
L2:
astore 2
aload 0
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public final getCourseid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mcourseid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getDeptid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
iconst_1
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mdeptid I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getFid()J
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getIsLoadService()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/misLoad I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIsManager()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getLevel()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnode Lcom/nd/android/u/contact/dataStructure/Node;
ifnonnull L0
aload 0
new com/nd/android/u/contact/dataStructure/Node
dup
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnitid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDeptid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassid()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualId()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getClassType()I
invokespecial com/nd/android/u/contact/dataStructure/Node/<init>(IIJIIII)V
putfield com/nd/android/u/contact/dataStructure/TreeNode/mnode Lcom/nd/android/u/contact/dataStructure/Node;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnode Lcom/nd/android/u/contact/dataStructure/Node;
areturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnode Lcom/nd/android/u/contact/dataStructure/Node;
areturn
.limit locals 1
.limit stack 11
.end method

.method public final getNodeName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
tableswitch 0
L0
L1
L2
L3
L4
default : L5
L5:
ldc ""
areturn
L0:
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
areturn
L1:
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
areturn
L4:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getName()Ljava/lang/String;
areturn
L3:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/moapClass Lcom/nd/android/u/contact/dataStructure/OapClass;
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
areturn
L2:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
astore 1
aload 2
ifnonnull L6
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 1
L6:
aload 1
ifnull L7
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
areturn
L7:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/unknow_name I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final getNodeStatus()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getOapClass()Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/moapClass Lcom/nd/android/u/contact/dataStructure/OapClass;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getParentNodeName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnonnull L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
tableswitch 0
L1
L2
L3
L3
L4
default : L3
L3:
ldc ""
areturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
areturn
L2:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
areturn
L4:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
getfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getType()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/munit Lcom/nd/android/u/contact/dataStructure/OapUnit;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getUnitid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
iconst_1
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/munitid I
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getUserCount()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getUserchildrenList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getVirtualId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
iconst_4
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/getVirtualId()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getVirtualNode()Lcom/nd/android/u/contact/dataStructure/VirtualNode;
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final hasChildren()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final hashCode()I
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isAlreadyRead()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isExpanded()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isFirstLoader()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfirstLoader Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isLoaderFlag()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mloaderFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnonnull L0
iconst_0
ireturn
L0:
aload 1
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/equals(Ljava/lang/Object;)Z
ifeq L1
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final isParentCollapsed()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnonnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
ifne L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isParentCollapsed()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isParentNode()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
tableswitch 2
L0
default : L1
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isSelectExpanded()Z
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final reSetCountOnLineUser()V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/reSetCountOnLineUser()V
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method public final setAlreadyRead(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setClassType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mclassType I
return
.limit locals 2
.limit stack 2
.end method

.method public final setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mclassid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setCourseid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcourseid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdeptid I
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setDeptid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdeptid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setEmpty()V
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/childrenTreeNodeList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L1:
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L2:
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/mnode Lcom/nd/android/u/contact/dataStructure/Node;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/malreadyRead Z
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/munit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/moapClass Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
aconst_null
putfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mclassid I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/munitid I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdeptid I
aload 0
lconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/misLoad I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mloaderFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfirstLoader Z
aload 0
iconst_m1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/countOnLine I
return
.limit locals 1
.limit stack 3
.end method

.method public final setExpand(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/isExpand Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setFid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setFirstLoader(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfirstLoader Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setIsLoadService(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/misLoad I
return
.limit locals 2
.limit stack 2
.end method

.method public setIsManager(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/isManager Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setLevel(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mlevel I
return
.limit locals 2
.limit stack 2
.end method

.method public final setLoaderFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mloaderFlag Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setNodeStatus(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
return
.limit locals 2
.limit stack 2
.end method

.method public final setOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/moapClass Lcom/nd/android/u/contact/dataStructure/OapClass;
aload 0
iconst_3
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setOnLineCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/countOnLine I
return
.limit locals 2
.limit stack 2
.end method

.method public final setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/equals(Ljava/lang/Object;)Z
ifeq L0
return
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/parentNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method

.method public final setSelectExpand(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/misSelectExpand Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/munit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/munitid I
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUnitid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/munitid I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUser(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/mclassid I
aload 0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getType()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/mclassType I
aload 0
iconst_2
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 3
.end method

.method public final setUser(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
putfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getUnitid()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/munitid I
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
putfield com/nd/android/u/contact/dataStructure/TreeNode/mdeptid I
aload 0
iconst_2
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
return
.limit locals 2
.limit stack 3
.end method

.method public final setUserCount(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mcount I
return
.limit locals 2
.limit stack 2
.end method

.method public final setUserchildrenList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/muserchildrenList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public final setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 0
iconst_4
putfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
aload 0
aload 1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mvirtualNode Lcom/nd/android/u/contact/dataStructure/VirtualNode;
return
.limit locals 2
.limit stack 2
.end method

.method public final toString()Ljava/lang/String;
ldc "unitid=%s,deptid=%s,fid=%s,type=%s"
iconst_4
anewarray java/lang/Object
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnitid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDeptid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_2
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mfid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
dup
iconst_3
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mtype I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 6
.end method

.method public final toggleChecked()V
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
astore 2
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
iconst_1
if_icmpeq L0
iconst_1
istore 1
L1:
aload 2
iload 1
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 4
.end method

.method public final toggleSingleChecked()V
aload 0
getfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
ifne L0
aload 0
iconst_1
putfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/dataStructure/TreeNode/mnodeStatus I
return
.limit locals 1
.limit stack 2
.end method
