.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/TreeNodePro
.super java/lang/Object
.inner class ComparatorClassRelation inner com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation outer com/nd/android/u/contact/business/TreeNodePro
.inner class ComparatorTreeNode inner com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode outer com/nd/android/u/contact/business/TreeNodePro

.field private static 'instance' Lcom/nd/android/u/contact/business/TreeNodePro;

.field 'comparatorTreeNode' Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;

.field 'mComparatorClassRelation' Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation;

.field protected 'tnObserver' Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;

.method static <clinit>()V
new com/nd/android/u/contact/business/TreeNodePro
dup
invokespecial com/nd/android/u/contact/business/TreeNodePro/<init>()V
putstatic com/nd/android/u/contact/business/TreeNodePro/instance Lcom/nd/android/u/contact/business/TreeNodePro;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode
dup
aload 0
invokespecial com/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode/<init>(Lcom/nd/android/u/contact/business/TreeNodePro;)V
putfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
aload 0
new com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation
dup
aload 0
invokespecial com/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation/<init>(Lcom/nd/android/u/contact/business/TreeNodePro;)V
putfield com/nd/android/u/contact/business/TreeNodePro/mComparatorClassRelation Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation;
return
.limit locals 1
.limit stack 4
.end method

.method private buildJMStudentClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;I)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;I)I"
aconst_null
astore 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
astore 10
aload 10
astore 9
aload 10
ifnull L0
aload 10
astore 9
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lconst_0
lcmp
ifeq L0
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(J)Lcom/product/android/commonInterface/contact/OapUnitRelation; 2
astore 11
aload 10
astore 9
aload 11
ifnull L0
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 11
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
astore 9
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsManager(Z)V
aload 9
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
aload 9
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 9
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setType(I)V
aload 2
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 1
aload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
iconst_1
iadd
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
aload 6
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserCount()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
aload 10
astore 9
L0:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
iload 3
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 10
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 10
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCacheByOapJMClassRelation(Ljava/util/List;)V
aload 10
ifnull L1
iconst_0
istore 8
aload 10
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 11
L2:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
new com/nd/android/u/contact/dataStructure/TreeNode
dup
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>(Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;)V
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 12
aload 12
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 12
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
aload 2
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 7
iload 8
iadd
aload 1
invokeinterface java/util/List/size()I 0
if_icmpgt L4
iload 4
ifeq L4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L5
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lconst_0
lcmp
ifne L6
L5:
aload 1
aload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
iconst_1
iadd
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L4:
aload 6
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 12
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 8
iconst_1
iadd
istore 8
goto L2
L6:
aload 1
aload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
iconst_2
iadd
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
goto L4
L3:
aload 10
invokeinterface java/util/List/size()I 0
ireturn
L1:
iconst_0
ireturn
.limit locals 13
.limit stack 5
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
getstatic com/nd/android/u/contact/business/TreeNodePro/instance Lcom/nd/android/u/contact/business/TreeNodePro;
areturn
.limit locals 0
.limit stack 1
.end method

.method public addChildNode(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;IZLjava/util/Map;)I
.signature "(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;IZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)I"
.catch java/lang/RuntimeException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/RuntimeException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/RuntimeException from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch all from L7 to L8 using L9
.catch all from L8 to L10 using L9
.catch java/lang/RuntimeException from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch all from L13 to L14 using L9
.catch java/lang/RuntimeException from L14 to L2 using L2
.catch all from L14 to L2 using L3
.catch all from L15 to L16 using L3
.catch java/lang/RuntimeException from L17 to L18 using L2
.catch all from L17 to L18 using L3
.catch java/lang/RuntimeException from L19 to L20 using L2
.catch all from L19 to L20 using L3
.catch java/lang/RuntimeException from L21 to L22 using L2
.catch all from L21 to L22 using L3
.catch all from L23 to L24 using L25
.catch all from L26 to L27 using L25
.catch all from L28 to L29 using L25
.catch java/lang/RuntimeException from L29 to L3 using L2
.catch all from L29 to L3 using L3
.catch all from L30 to L31 using L25
aload 0
monitorenter
L0:
aload 5
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 8
L1:
aload 8
ifnonnull L32
iconst_0
istore 6
L33:
aload 0
monitorexit
iload 6
ireturn
L32:
aload 1
ifnonnull L34
iconst_0
istore 6
goto L33
L34:
iconst_0
istore 7
iconst_0
istore 6
L4:
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L35
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L5:
iload 6
istore 7
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L35
aload 5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 9
aload 9
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
astore 10
aload 5
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
monitorenter
L7:
iload 3
iload 6
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L8
aload 2
aload 10
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L8
aload 2
iload 3
iload 6
iadd
aload 10
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L8:
aload 2
monitorexit
L10:
iload 6
iconst_1
iadd
istore 7
iload 4
ifeq L36
iload 7
istore 6
L11:
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L5
aload 0
aload 10
aload 2
iload 3
iload 7
iadd
iconst_1
aload 5
invokevirtual com/nd/android/u/contact/business/TreeNodePro/addChildNode(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;IZLjava/util/Map;)I
istore 6
L12:
iload 7
iload 6
iadd
istore 6
goto L5
L9:
astore 1
L13:
aload 2
monitorexit
L14:
aload 1
athrow
L2:
astore 1
L15:
aload 1
invokevirtual java/lang/RuntimeException/printStackTrace()V
L16:
iconst_0
istore 6
goto L33
L36:
iload 7
istore 6
L17:
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L5
iload 7
aload 0
aload 10
aload 2
iload 3
iload 7
iadd
iconst_0
aload 5
invokevirtual com/nd/android/u/contact/business/TreeNodePro/addChildNode(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;IZLjava/util/Map;)I
iadd
istore 6
L18:
goto L5
L35:
iload 7
istore 6
L19:
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L33
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L20:
iload 7
istore 6
L21:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L33
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
astore 8
aload 2
monitorenter
L22:
iload 7
istore 6
L23:
iload 3
iload 7
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L26
aload 2
aload 8
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L31
aload 5
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getIsManager()Z
ifeq L30
aload 2
iload 3
aload 8
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L24:
goto L31
L26:
aload 2
monitorexit
L27:
iload 6
istore 7
goto L20
L25:
astore 1
L28:
aload 2
monitorexit
L29:
aload 1
athrow
L3:
astore 1
aload 0
monitorexit
aload 1
athrow
L30:
aload 2
iload 3
iload 7
iadd
aload 8
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L31:
iload 7
iconst_1
iadd
istore 6
goto L26
.limit locals 11
.limit stack 7
.end method

.method public buildClasses(Ljava/util/List;JIZLjava/util/Map;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;JIZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
return
L0:
iconst_0
istore 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
tableswitch 1
L2
L2
L2
default : L3
L3:
return
L2:
aload 1
astore 13
aload 1
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 13
L4:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss()Ljava/util/List; 0
astore 14
aload 14
ifnull L1
aload 14
invokeinterface java/util/List/size()I 0
ifeq L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 1
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 15
aload 15
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 1
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 13
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 6
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 15
iload 4
iconst_1
if_icmpne L5
aload 15
ifnull L6
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 10
L5:
aload 1
iload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 6
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 1
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 14
ifnull L1
iconst_0
istore 4
aload 14
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 14
L7:
aload 14
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 14
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 15
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 15
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
astore 16
iconst_0
istore 11
aload 6
aload 16
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 17
aload 17
ifnull L9
aload 17
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 11
L9:
aload 16
iload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
iload 10
ifeq L10
aload 13
aload 16
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L10:
aload 16
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 16
iload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 16
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 16
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 1
aload 16
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 16
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 6
aload 16
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 16
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 7
iload 11
ifeq L11
iload 10
ifeq L11
iconst_1
istore 12
L12:
aload 0
aload 13
aload 16
iload 7
iload 12
iload 5
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildStudendClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
istore 7
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 8
iload 11
ifeq L13
iload 10
ifeq L13
iconst_1
istore 12
L14:
aload 0
aload 13
aload 16
iload 8
iload 12
iload 5
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildMasterClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
istore 8
aload 15
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 9
iload 11
ifeq L15
iload 10
ifeq L15
iconst_1
istore 11
L16:
iconst_0
iload 7
iadd
iload 8
iadd
aload 0
aload 13
aload 16
iload 9
iload 11
iload 5
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildGuardianClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
iadd
istore 8
iload 4
iload 8
iadd
istore 7
iload 7
istore 4
iload 5
ifeq L7
aload 16
iload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
iload 7
istore 4
goto L7
L6:
iconst_0
istore 10
goto L5
L11:
iconst_0
istore 12
goto L12
L13:
iconst_0
istore 12
goto L14
L15:
iconst_0
istore 11
goto L16
L8:
iload 5
ifeq L1
aload 1
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
return
.limit locals 18
.limit stack 8
.end method

.method public buildGuardianClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)I"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
iconst_0
ireturn
L0:
iconst_0
istore 9
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 3
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 10
aload 10
ifnull L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 11
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 12
aload 12
iconst_3
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 12
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 11
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 4
ifeq L2
aload 1
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
aload 11
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 11
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 11
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 11
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 11
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
iload 5
ifeq L3
aload 11
aload 10
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L3:
aload 6
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 2
iload 9
istore 5
aload 2
ifnull L4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 5
L4:
aload 11
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 6
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 11
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_0
istore 7
aload 10
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 12
iload 7
iconst_1
iadd
istore 8
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 12
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 13
aload 13
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 13
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 13
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 11
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 6
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 13
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 8
istore 7
iload 8
aload 10
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L5
iload 8
istore 7
iload 4
ifeq L5
iload 8
istore 7
iload 5
ifeq L5
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 1
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 8
istore 7
goto L5
L6:
aload 10
invokeinterface java/util/List/size()I 0
ireturn
L1:
iconst_0
ireturn
.limit locals 14
.limit stack 3
.end method

.method public buildJMClasses(Ljava/util/List;JIZLjava/util/Map;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;JIZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
return
L0:
iconst_0
istore 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
tableswitch 1
L2
L2
default : L3
L3:
return
L2:
aload 1
astore 9
aload 1
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L4:
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss()Ljava/util/List; 0
astore 1
aload 1
ifnull L1
aload 1
invokeinterface java/util/List/size()I 0
ifeq L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 10
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 11
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L5
aload 11
iconst_5
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
L6:
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 9
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 11
iload 4
iconst_1
if_icmpne L7
aload 11
ifnull L8
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 7
L7:
aload 10
iload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 1
ifnull L1
iconst_0
istore 4
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 11
L9:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 12
new com/nd/android/u/contact/dataStructure/OapClass
dup
aload 12
invokespecial com/nd/android/u/contact/dataStructure/OapClass/<init>(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V
astore 13
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 13
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
astore 14
iconst_0
istore 8
aload 6
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 1
aload 1
ifnull L11
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 8
L11:
aload 14
iload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
iload 7
ifeq L12
aload 9
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
aload 14
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 14
iload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aconst_null
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L13
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
astore 1
L13:
aload 1
ifnull L14
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lconst_0
lcmp
ifeq L14
aload 14
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUsercount()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L15:
aload 14
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 14
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 14
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 6
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 14
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 5
ifeq L9
aload 1
ifnull L16
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lconst_0
lcmp
ifeq L16
iload 4
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getUsercount()I
iconst_1
iadd
iadd
istore 4
goto L9
L5:
aload 11
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
goto L6
L8:
iconst_1
istore 7
goto L7
L14:
aload 14
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUsercount()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
goto L15
L16:
iload 4
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getUsercount()I
iadd
istore 4
goto L9
L10:
iload 5
ifeq L1
aload 10
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
return
.limit locals 15
.limit stack 4
.end method

.method public buildMasterClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)I"
iconst_0
istore 8
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 3
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 9
aload 9
ifnull L0
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 10
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 11
aload 11
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 11
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 4
ifeq L1
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 10
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 2
aload 2
ifnull L2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 8
L2:
aload 10
iload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
iconst_0
istore 7
aload 9
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 11
iload 7
iconst_1
iadd
istore 7
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 11
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 12
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
iload 7
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L5
iload 4
ifeq L5
iload 8
ifeq L5
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L5:
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 6
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 12
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L4:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
iload 5
ifeq L6
aload 10
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L6:
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 9
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 13
.limit stack 3
.end method

.method public buildStudendClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)I"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_3
if_icmpne L0
iconst_0
ireturn
L0:
iconst_0
istore 8
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 3
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 9
aload 9
ifnull L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 10
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 11
aload 11
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 11
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 4
ifeq L2
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 11
aload 11
ifnull L3
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 8
L3:
aload 10
iload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
iload 5
ifeq L4
aload 10
aload 9
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L4:
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_0
istore 7
aload 9
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 11
iload 7
iconst_1
iadd
istore 7
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 11
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 11
aload 11
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 11
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 11
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 7
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L7
iload 4
ifeq L7
iload 8
ifeq L7
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L7:
aload 6
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 11
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L5
L6:
aload 9
invokeinterface java/util/List/size()I 0
ireturn
L1:
iconst_0
ireturn
.limit locals 12
.limit stack 3
.end method

.method public buildStudendClassesNodeByDB(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZZILjava/util/Map;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZZILjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)I"
iconst_0
istore 11
iconst_0
istore 10
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 5
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 12
aload 12
ifnull L0
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 13
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 14
aload 14
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 14
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 13
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 6
ifeq L1
aload 1
iload 8
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L1:
aload 9
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 14
aload 14
ifnull L2
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 11
L2:
aload 13
iload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 13
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 13
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 13
iload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 13
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 13
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
iload 7
ifeq L3
aload 13
aload 12
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L3:
aload 9
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 13
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
iload 10
istore 8
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 14
iload 8
iconst_1
iadd
istore 8
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 14
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 14
aload 14
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 14
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 14
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
aload 13
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 8
aload 12
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L6
iload 6
ifeq L6
iload 11
ifeq L6
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 1
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L6:
aload 9
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 14
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L4
L5:
aload 12
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 15
.limit stack 3
.end method

.method public buildUnit(Ljava/util/List;JIZLjava/util/Map;Z)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;JIZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Z)V"
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
aload 1
astore 9
aload 1
ifnonnull L1
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L1:
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/searchUnit()Ljava/util/List; 0
astore 1
L3:
aload 1
ifnull L12
L4:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
astore 10
aload 9
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 11
L6:
aload 11
ifnull L8
iload 4
iconst_1
if_icmpne L13
L7:
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
pop
L8:
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 6
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 0
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 9
iconst_1
iload 5
aload 6
iload 7
invokevirtual com/nd/android/u/contact/business/TreeNodePro/getChileNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ZZLjava/util/Map;Z)I
istore 8
L9:
iload 5
ifeq L5
L10:
aload 10
iconst_0
iload 8
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L11:
goto L5
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L12:
return
L13:
goto L8
.limit locals 12
.limit stack 7
.end method

.method public getChildNodeStatus(Lcom/nd/android/u/contact/dataStructure/TreeNode;)I
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
iconst_0
istore 3
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpeq L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
ifnull L2
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L3
L2:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
ireturn
L3:
iconst_0
istore 2
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L4:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 6
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L6
iconst_1
istore 4
iload 4
istore 3
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokestatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/contains(J)Z
ifeq L4
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L4
L6:
aload 0
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/getChildNodeStatus(Lcom/nd/android/u/contact/dataStructure/TreeNode;)I
iconst_1
if_icmpne L4
iload 2
iconst_1
iadd
istore 2
goto L4
L5:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 2
if_icmpne L7
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
L8:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
ireturn
L7:
iload 2
ifne L9
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L9
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L9
iload 3
ifeq L9
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
goto L8
L9:
iload 2
ifeq L8
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 2
if_icmpeq L8
aload 1
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
goto L8
.limit locals 7
.limit stack 2
.end method

.method public getChileNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ZZLjava/util/Map;Z)I
.signature "(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;ZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Z)I"
iconst_0
istore 7
iconst_0
istore 8
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 5
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 14
aload 14
ifnonnull L2
iconst_0
ireturn
L2:
aload 14
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L3
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L3:
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L4
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L4:
aload 14
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 1
aload 1
ifnull L5
aload 1
invokeinterface java/util/List/size()I 0
istore 10
iconst_0
istore 9
L6:
iload 8
istore 7
iload 9
iload 10
if_icmpge L5
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
iload 9
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
astore 12
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 5
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 13
iload 3
ifeq L7
aload 2
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 13
ifnull L8
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L8
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 11
L9:
aload 12
iload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
L7:
aload 5
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 12
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 14
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
aload 1
iload 9
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
iload 8
aload 1
iload 9
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
iadd
istore 8
iload 9
iconst_1
iadd
istore 9
goto L6
L8:
iconst_0
istore 11
goto L9
L5:
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/searchUnitByParentId(I)Ljava/util/List; 1
astore 1
iload 7
istore 8
aload 1
ifnull L10
iconst_0
istore 9
L11:
iload 7
istore 8
iload 9
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L10
iconst_0
istore 11
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
iload 9
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
astore 12
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 5
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 13
iload 3
ifeq L12
aload 2
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 13
ifnull L13
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L13
aload 13
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 11
aload 13
iload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
L12:
aload 5
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 12
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 14
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 11
ifne L14
iload 7
istore 8
iload 4
ifeq L15
L14:
iload 7
aload 0
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 2
iload 11
iload 4
aload 5
iload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/getChileNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ZZLjava/util/Map;Z)I
iadd
istore 8
L15:
iload 9
iconst_1
iadd
istore 9
iload 8
istore 7
goto L11
L13:
iconst_0
istore 11
goto L12
L10:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 15
iload 8
istore 7
aload 15
ifnull L16
iload 6
ifeq L17
aconst_null
astore 1
iconst_0
istore 7
L18:
iload 7
aload 15
invokeinterface java/util/List/size()I 0
if_icmpge L19
aload 1
ifnull L20
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setEmpty()V
aload 1
aload 15
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUser(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
aconst_null
astore 13
aload 1
astore 12
L21:
aload 5
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 12
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 12
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 14
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 7
iconst_1
iadd
istore 7
aload 13
astore 1
goto L18
L20:
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 15
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
astore 12
aload 1
astore 13
goto L21
L19:
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
aload 2
aload 14
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L17:
iload 8
aload 15
invokeinterface java/util/List/size()I 0
iadd
istore 7
L16:
iload 4
ifeq L22
aload 14
iload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
L22:
iload 7
ireturn
.limit locals 16
.limit stack 8
.end method

.method public refreshTreeNodes(Ljava/util/List;Ljava/util/Map;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 7
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
iconst_1
aload 7
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildClasses(Ljava/util/List;JIZLjava/util/Map;)V
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
aload 0
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
iconst_1
aload 7
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildJMClasses(Ljava/util/List;JIZLjava/util/Map;)V
L1:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L3
L2:
aload 0
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
iconst_1
aload 7
iconst_1
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildUnit(Ljava/util/List;JIZLjava/util/Map;Z)V
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L4
aload 0
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
iconst_1
aload 7
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildJMClasses(Ljava/util/List;JIZLjava/util/Map;)V
L4:
aload 6
invokeinterface java/util/List/size()I 0
istore 4
iconst_0
istore 3
L5:
iload 3
iload 4
if_icmpge L6
aload 7
aload 6
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 8
aload 2
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L7
aload 2
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 8
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 4
istore 5
L8:
iload 3
iconst_1
iadd
istore 3
iload 5
istore 4
goto L5
L7:
iload 4
istore 5
aload 2
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L8
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
ifeq L9
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_1
if_icmpeq L9
iload 4
istore 5
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_3
if_icmpne L8
L9:
iload 4
istore 5
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
ifeq L8
aload 8
aload 2
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 0
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 6
aload 6
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
iconst_1
iadd
aload 7
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setExpandNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ILjava/util/Map;)V
aload 6
invokeinterface java/util/List/size()I 0
istore 5
goto L8
L6:
aload 1
invokeinterface java/util/List/clear()V 0
aload 1
aload 6
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 2
invokeinterface java/util/Map/clear()V 0
aload 2
aload 7
invokeinterface java/util/Map/putAll(Ljava/util/Map;)V 1
return
.limit locals 9
.limit stack 8
.end method

.method public resetLoaderNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;Ljava/util/Map;)V
.signature "(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;Ljava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L12 to L13 using L2
aload 0
monitorenter
iconst_0
istore 5
aload 1
ifnull L14
L0:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L14
L1:
aload 2
ifnull L14
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L14
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 7
L4:
iload 7
ifne L15
L14:
aload 0
monitorexit
return
L15:
iconst_0
istore 4
L5:
iload 4
aload 2
invokeinterface java/util/List/size()I 0
if_icmpge L16
aload 3
aload 2
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 8
L6:
aload 8
ifnonnull L7
iload 5
istore 6
goto L17
L7:
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L18
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L18
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/equals(Ljava/lang/Object;)Z
ifeq L18
L8:
iload 5
istore 6
iload 5
ifne L9
iload 4
istore 6
L9:
aload 2
iload 4
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L10:
iload 4
iconst_1
isub
istore 4
goto L17
L16:
iconst_0
istore 4
L11:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L14
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L12:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L14
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Node
astore 3
iload 5
iload 4
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L12
aload 2
iload 5
iload 4
iadd
aload 3
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L13:
iload 4
iconst_1
iadd
istore 4
goto L12
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L17:
iload 4
iconst_1
iadd
istore 4
iload 6
istore 5
goto L5
L18:
iload 5
istore 6
iload 5
ifeq L17
goto L16
.limit locals 9
.limit stack 3
.end method

.method public setChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
aload 2
ifnonnull L0
L1:
return
L0:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
ifnull L2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokestatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/contains(J)Z
ifne L3
iconst_1
istore 1
L4:
iload 1
ifeq L5
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
iconst_1
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/upadate(JI)V
iload 1
istore 4
L6:
iload 3
ifeq L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L3:
iconst_0
istore 1
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
iconst_0
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/upadate(JI)V
iload 1
istore 4
goto L6
L2:
iload 1
ifeq L7
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
L8:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L9:
iload 1
istore 4
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 6
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L10
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
ifnull L9
iload 1
ifeq L11
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
iconst_1
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/upadate(JI)V
goto L9
L7:
aload 2
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
goto L8
L11:
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
iconst_0
invokevirtual com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/upadate(JI)V
goto L9
L10:
aload 0
iload 1
aload 6
iconst_0
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
goto L9
.limit locals 7
.limit stack 4
.end method

.method public setCollNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;IZZLjava/util/Map;)V
.signature "(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
aload 0
monitorenter
aload 1
ifnull L17
L0:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L17
L1:
aload 2
ifnull L17
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 9
L4:
iload 9
ifne L18
L17:
aload 0
monitorexit
return
L18:
iload 5
ifeq L19
L5:
aload 1
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
L6:
goto L19
L7:
iload 7
aload 2
invokeinterface java/util/List/size()I 0
if_icmpge L17
aload 6
aload 2
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 10
L8:
aload 10
ifnull L17
iload 7
istore 8
L9:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L20
L10:
iload 7
istore 8
L11:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/equals(Ljava/lang/Object;)Z
ifeq L20
aload 2
iload 3
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L12:
iload 7
iconst_1
isub
istore 7
iload 7
istore 8
L13:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L20
L14:
iload 7
istore 8
L15:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpeq L20
aload 0
aload 10
aload 2
iload 3
iconst_0
iconst_0
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setCollNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;IZZLjava/util/Map;)V
L16:
iload 7
istore 8
L20:
iload 8
iconst_1
iadd
istore 7
goto L7
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L19:
iload 3
istore 7
goto L7
.limit locals 11
.limit stack 7
.end method

.method public setExpandNodeByDB(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List;ILjava/util/Map;)V
.signature "(Lcom/nd/android/u/contact/dataStructure/Node;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;ILjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L9
.catch all from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L9
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L14 to L15 using L2
.catch all from L16 to L17 using L2
.catch all from L18 to L19 using L2
.catch all from L20 to L21 using L2
.catch all from L22 to L23 using L2
.catch all from L24 to L25 using L2
.catch all from L26 to L27 using L2
.catch all from L28 to L29 using L2
.catch all from L30 to L31 using L2
.catch all from L32 to L33 using L2
.catch all from L34 to L35 using L2
.catch all from L36 to L37 using L2
.catch all from L38 to L39 using L2
.catch all from L40 to L41 using L2
.catch all from L42 to L43 using L2
.catch all from L44 to L45 using L2
.catch all from L46 to L47 using L2
.catch all from L48 to L49 using L2
.catch all from L50 to L51 using L2
.catch all from L52 to L53 using L2
.catch all from L53 to L54 using L2
.catch all from L55 to L56 using L2
.catch all from L57 to L58 using L2
.catch all from L59 to L60 using L2
.catch all from L61 to L62 using L2
.catch all from L63 to L64 using L2
.catch all from L65 to L66 using L2
.catch all from L66 to L67 using L2
.catch all from L68 to L69 using L2
.catch all from L70 to L71 using L2
.catch all from L71 to L72 using L2
.catch all from L73 to L74 using L2
.catch all from L74 to L75 using L2
aload 0
monitorenter
aload 1
ifnonnull L0
L76:
aload 0
monitorexit
return
L0:
aload 4
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 12
aload 12
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
L1:
iconst_0
istore 7
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getType()I
tableswitch 0
L4
L24
L77
L65
L70
default : L77
L4:
aconst_null
astore 1
iconst_0
istore 6
iconst_0
istore 8
L5:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
astore 10
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
astore 11
L6:
aload 1
astore 9
aload 10
aload 11
if_acmpne L16
L7:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
iconst_1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getClassCache(I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
astore 9
L8:
iload 8
istore 5
aload 9
ifnull L78
iload 8
istore 5
L10:
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getSkeletons()Ljava/util/List;
ifnull L78
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getSkeletons()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 6
L11:
iload 8
istore 5
iload 6
ifle L78
iconst_1
istore 5
L78:
aload 1
astore 9
iload 5
istore 6
L12:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L16
L13:
aload 1
astore 9
iload 5
istore 6
iload 5
ifeq L16
L14:
aload 2
aload 2
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
iconst_1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/Node
astore 9
L15:
iload 5
istore 6
L16:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 1
L17:
iload 7
istore 5
aload 1
ifnull L42
L18:
aload 1
invokeinterface java/util/List/size()I 0
istore 8
L19:
iconst_0
istore 7
L79:
iload 8
istore 5
iload 7
iload 8
if_icmpge L42
L20:
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
astore 10
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setFirstLoader(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
aload 1
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
aload 4
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L21:
aload 2
ifnull L80
L22:
iload 3
iload 7
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L80
aload 2
iload 3
iload 7
iadd
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L23:
goto L80
L24:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 9
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 9
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCacheByOapUnitRelation(Ljava/util/List;)V
L25:
aload 9
ifnull L32
L26:
aload 9
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/mComparatorClassRelation Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
L27:
iconst_0
istore 5
L28:
iload 5
aload 9
invokeinterface java/util/List/size()I 0
if_icmpge L32
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 9
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
astore 10
aload 10
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getDeptid()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setDeptid(I)V
aload 4
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L29:
aload 2
ifnull L81
L30:
iload 3
iload 5
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L81
aload 2
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L81
aload 2
iload 3
iload 5
iadd
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L31:
goto L81
L32:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDepart()Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 1
L33:
aload 1
ifnull L76
L34:
aload 1
invokeinterface java/util/List/size()I 0
istore 6
L35:
iconst_0
istore 5
L82:
iload 5
iload 6
if_icmpge L76
L36:
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
astore 9
aload 9
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 9
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setFirstLoader(Z)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 9
aload 1
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getNodeUsercount()I
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
aload 4
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L37:
aload 2
ifnull L83
L38:
iload 3
iload 5
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L83
aload 2
iload 3
iload 5
iadd
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L39:
goto L83
L9:
astore 9
L40:
aload 9
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L41:
iload 8
istore 5
goto L78
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L42:
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/searchUnitByParentId(I)Ljava/util/List; 1
astore 1
L43:
aload 1
ifnull L48
iconst_0
istore 7
L44:
iload 7
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L48
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
iload 7
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
astore 10
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setFirstLoader(Z)V
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 4
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L45:
aload 2
ifnull L84
L46:
iload 3
iload 7
iadd
aload 2
invokeinterface java/util/List/size()I 0
if_icmpgt L84
aload 2
iload 3
iload 7
iadd
iload 5
iadd
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L47:
goto L84
L48:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnit()Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 13
L49:
aload 13
ifnull L76
aconst_null
astore 1
iconst_0
istore 3
L50:
iload 3
aload 13
invokeinterface java/util/List/size()I 0
if_icmpge L59
L51:
aload 1
ifnull L57
L52:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setEmpty()V
L53:
aload 1
aload 13
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUser(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
L54:
aconst_null
astore 11
aload 1
astore 10
L55:
aload 4
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 10
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addUserChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
L56:
iload 3
iconst_1
iadd
istore 3
aload 11
astore 1
goto L50
L57:
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 13
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/product/android/commonInterface/contact/OapUnitRelation;)V
astore 10
L58:
aload 1
astore 11
goto L55
L59:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L63
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L63
L60:
iload 6
ifeq L63
L61:
aload 2
aload 2
aload 9
invokeinterface java/util/List/indexOf(Ljava/lang/Object;)I 1
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(ILjava/util/Collection;)Z 2
pop
L62:
goto L76
L63:
aload 2
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L64:
goto L76
L65:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L68
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_2
if_icmpeq L66
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_1
if_icmpne L68
L66:
aload 0
aload 2
aload 12
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getClassid()I
iconst_1
iconst_0
aload 4
iload 3
invokespecial com/nd/android/u/contact/business/TreeNodePro/buildJMStudentClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;I)I
pop
L67:
goto L76
L68:
aload 0
aload 2
aload 12
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getClassid()I
iconst_1
iconst_0
aload 4
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildStudendClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
pop
aload 0
aload 2
aload 12
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getClassid()I
iconst_1
iconst_0
aload 4
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildMasterClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
pop
aload 0
aload 2
aload 12
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getClassid()I
iconst_1
iconst_0
aload 4
invokevirtual com/nd/android/u/contact/business/TreeNodePro/buildGuardianClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;IZZLjava/util/Map;)I
pop
L69:
goto L76
L70:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/Node/getVirtualid()I
tableswitch 0
L71
default : L85
L71:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss()Ljava/util/List; 0
astore 1
L72:
aload 1
ifnull L76
L73:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L74:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L76
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
astore 9
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 9
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setFirstLoader(Z)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 12
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 4
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
aload 9
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 2
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L75:
goto L74
L77:
goto L76
L80:
iload 7
iconst_1
iadd
istore 7
goto L79
L81:
iload 5
iconst_1
iadd
istore 5
goto L28
L83:
iload 5
iconst_1
iadd
istore 5
goto L82
L84:
iload 7
iconst_1
iadd
istore 7
goto L44
L85:
goto L76
.limit locals 14
.limit stack 8
.end method

.method public setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
ifnonnull L0
L1:
return
L0:
iload 1
ifeq L2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
ifne L3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L6
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokestatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/contains(J)Z
ifne L4
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L6:
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpeq L4
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L5:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L3:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_2
if_icmpne L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L7:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpne L9
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getFid()J
invokestatic com/nd/android/u/contact/listener/TreeNodeStatusObserverListeren/contains(J)Z
ifne L7
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L9:
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpeq L7
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L8:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L2:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpne L10
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L11:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpeq L11
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L12:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L10:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_2
if_icmpne L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L13:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L14
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeStatus()I
iconst_1
if_icmpeq L13
aload 2
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
L14:
aload 2
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setNodeStatus(I)V
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L1
aload 0
iload 1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setHalfChecked(ZLcom/nd/android/u/contact/dataStructure/TreeNode;)V
return
.limit locals 5
.limit stack 3
.end method

.method public setSelectCollNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;IZZLjava/util/Map;)V
.signature "(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;IZZLjava/util/Map<Lcom/nd/android/u/contact/dataStructure/Node;Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
aload 0
monitorenter
aload 1
ifnull L17
L0:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildreNodeList()Ljava/util/List;
ifnull L17
L1:
aload 2
ifnull L17
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
istore 9
L4:
iload 9
ifne L18
L17:
aload 0
monitorexit
return
L18:
iload 5
ifeq L19
L5:
aload 1
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
L6:
goto L19
L7:
iload 7
aload 2
invokeinterface java/util/List/size()I 0
if_icmpge L17
aload 6
aload 2
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 10
L8:
aload 10
ifnull L17
iload 7
istore 8
L9:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
ifnull L20
L10:
iload 7
istore 8
L11:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getParent()Lcom/nd/android/u/contact/dataStructure/TreeNode;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/equals(Ljava/lang/Object;)Z
ifeq L20
aload 2
iload 3
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
L12:
iload 7
iconst_1
isub
istore 7
iload 7
istore 8
L13:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L20
L14:
iload 7
istore 8
L15:
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getType()I
iconst_2
if_icmpeq L20
aload 0
aload 10
aload 2
iload 3
iconst_0
iconst_0
aload 6
invokevirtual com/nd/android/u/contact/business/TreeNodePro/setSelectCollNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;IZZLjava/util/Map;)V
L16:
iload 7
istore 8
L20:
iload 8
iconst_1
iadd
istore 7
goto L7
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L19:
iload 3
istore 7
goto L7
.limit locals 11
.limit stack 7
.end method

.method public setTnObserver(Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/TreeNodePro/tnObserver Lcom/nd/android/u/contact/listener/TreeNodeStatusObserverListeren;
return
.limit locals 2
.limit stack 2
.end method

.method public sortChildClassRelation(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;)V"
aload 1
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/mComparatorClassRelation Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorClassRelation;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
return
.limit locals 2
.limit stack 2
.end method

.method public sortChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
ifnull L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
return
L1:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUserchildrenList()Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/business/TreeNodePro/comparatorTreeNode Lcom/nd/android/u/contact/business/TreeNodePro$ComparatorTreeNode;
invokestatic java/util/Collections/sort(Ljava/util/List;Ljava/util/Comparator;)V
return
.limit locals 2
.limit stack 2
.end method

.method public vailidateTreeNodeStatus(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
ifne L2
aload 0
aload 2
invokevirtual com/nd/android/u/contact/business/TreeNodePro/getChildNodeStatus(Lcom/nd/android/u/contact/dataStructure/TreeNode;)I
pop
goto L2
.limit locals 3
.limit stack 2
.end method
