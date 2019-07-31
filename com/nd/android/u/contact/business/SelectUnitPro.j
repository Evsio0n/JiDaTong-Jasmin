.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/SelectUnitPro
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "SelectUnitPro"

.field private static 'instance' Lcom/nd/android/u/contact/business/SelectUnitPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/SelectUnitPro
dup
invokespecial com/nd/android/u/contact/business/SelectUnitPro/<init>()V
putstatic com/nd/android/u/contact/business/SelectUnitPro/instance Lcom/nd/android/u/contact/business/SelectUnitPro;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/SelectUnitPro;
getstatic com/nd/android/u/contact/business/SelectUnitPro/instance Lcom/nd/android/u/contact/business/SelectUnitPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method public buildClasses(Ljava/util/List;J)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;J)V"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
return
L0:
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
astore 9
aload 1
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L4:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss()Ljava/util/List; 0
astore 10
aload 10
ifnull L1
aload 10
invokeinterface java/util/List/size()I 0
ifeq L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 1
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 11
aload 11
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 1
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 9
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 1
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 10
ifnull L1
iconst_0
istore 4
aload 10
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 10
L5:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 11
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 11
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClass;)V
astore 12
aload 12
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
iconst_0
ifeq L7
aload 9
aload 12
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L7:
aload 12
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 12
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 12
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 1
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 12
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 12
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 5
iconst_0
ifeq L8
iconst_0
ifeq L8
iconst_1
istore 8
L9:
aload 0
aload 9
aload 12
lload 2
iload 5
iload 8
invokevirtual com/nd/android/u/contact/business/SelectUnitPro/buildStudendClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
istore 5
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 6
iconst_0
ifeq L10
iconst_0
ifeq L10
iconst_1
istore 8
L11:
aload 0
aload 9
aload 12
lload 2
iload 6
iload 8
invokevirtual com/nd/android/u/contact/business/SelectUnitPro/buildMasterClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
istore 6
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
istore 7
iconst_0
ifeq L12
iconst_0
ifeq L12
iconst_1
istore 8
L13:
iconst_0
iload 5
iadd
iload 6
iadd
aload 0
aload 9
aload 12
lload 2
iload 7
iload 8
invokevirtual com/nd/android/u/contact/business/SelectUnitPro/buildGuardianClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
iadd
istore 5
aload 12
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
iload 4
iload 5
iadd
istore 4
goto L5
L8:
iconst_0
istore 8
goto L9
L10:
iconst_0
istore 8
goto L11
L12:
iconst_0
istore 8
goto L13
L6:
aload 1
iload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
return
.limit locals 13
.limit stack 8
.end method

.method public buildGuardianClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I"
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 5
iconst_3
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
iconst_3
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 11
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 6
ifeq L1
aload 1
aload 10
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
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
iload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 10
aload 9
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
aload 10
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
iconst_0
istore 7
aload 9
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 11
iload 7
iconst_1
iadd
istore 8
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
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 10
aload 12
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 8
istore 7
iload 8
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L2
iload 8
istore 7
iload 6
ifeq L2
iload 8
istore 7
iconst_0
ifeq L2
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 8
istore 7
goto L2
L3:
aload 9
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 13
.limit stack 3
.end method

.method public buildMasterClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I"
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 5
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 8
aload 8
ifnull L0
new com/nd/android/u/contact/dataStructure/TreeNode
dup
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>()V
astore 9
new com/nd/android/u/contact/dataStructure/VirtualNode
dup
invokespecial com/nd/android/u/contact/dataStructure/VirtualNode/<init>()V
astore 10
aload 10
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 10
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 9
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 6
ifeq L1
aload 1
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 9
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 9
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 9
iload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 9
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 9
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
iconst_0
istore 7
aload 8
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 10
iload 7
iconst_1
iadd
istore 7
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 10
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)V
astore 11
aload 11
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 11
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 11
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
iload 7
aload 8
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L4
iload 6
ifeq L4
iconst_0
ifeq L4
aload 1
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L4:
aload 9
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
goto L2
L3:
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 5
aload 9
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
iload 5
ireturn
L0:
iconst_0
ireturn
.limit locals 12
.limit stack 3
.end method

.method public buildStudendClassesNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;JIZ)I"
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 5
iconst_2
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
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setVirtualId(I)V
aload 11
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/VirtualNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setVirtualNode(Lcom/nd/android/u/contact/dataStructure/VirtualNode;)V
iload 6
ifeq L1
aload 1
aload 10
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
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 10
iload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setIsLoadService(I)V
aload 10
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setAlreadyRead(Z)V
aload 10
aload 9
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setUserCount(I)V
iconst_0
istore 7
aload 9
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 11
iload 7
iconst_1
iadd
istore 8
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
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setClassid(I)V
aload 10
aload 11
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
iload 8
istore 7
iload 8
aload 9
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L2
iload 8
istore 7
iload 6
ifeq L2
iload 8
istore 7
iconst_0
ifeq L2
aload 1
aload 10
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 8
istore 7
goto L2
L3:
aload 9
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 12
.limit stack 3
.end method

.method public collTreeNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
aload 0
monitorenter
aload 1
ifnull L9
L0:
aload 1
invokeinterface java/util/List/size()I 0
ifeq L9
L1:
aload 2
ifnull L9
L3:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
ifnull L9
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 4
L4:
iload 4
ifne L10
L9:
aload 0
monitorexit
return
L10:
iload 3
ifeq L6
L5:
aload 2
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
L6:
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 5
aload 0
aload 1
aload 5
iconst_0
invokevirtual com/nd/android/u/contact/business/SelectUnitPro/collTreeNode(Ljava/util/List;Lcom/nd/android/u/contact/dataStructure/TreeNode;Z)V
aload 1
aload 5
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L8:
goto L7
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 6
.limit stack 4
.end method

.method public expandTreeNode(Ljava/util/List;I)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/TreeNode;>;I)I"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmple L1
L0:
iconst_0
istore 4
L2:
iload 4
ireturn
L1:
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 6
iconst_0
istore 5
iconst_0
istore 3
aload 6
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
iload 3
istore 4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
ifnull L2
iload 3
istore 4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getChildrenTreeNodeList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
iload 5
istore 3
L3:
iload 3
istore 4
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 7
aload 1
iload 2
iload 3
iadd
iconst_1
iadd
aload 7
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
iload 3
iconst_1
iadd
istore 4
iload 4
istore 3
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/isExpanded()Z
ifeq L3
iload 4
aload 0
aload 1
iload 2
iload 4
iadd
invokevirtual com/nd/android/u/contact/business/SelectUnitPro/expandTreeNode(Ljava/util/List;I)I
iadd
istore 3
goto L3
.limit locals 8
.limit stack 5
.end method

.method public getFirstLevelTreeNodes()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Node;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/searchUnitByLevel(I)Ljava/util/List; 1
astore 3
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 5
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 5
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
astore 4
aload 4
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 4
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setExpand(Z)V
aload 2
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 5
aload 5
ifnull L1
iconst_0
istore 1
L2:
iload 1
aload 5
invokeinterface java/util/List/size()I 0
if_icmpge L1
new com/nd/android/u/contact/dataStructure/TreeNode
dup
aload 5
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokespecial com/nd/android/u/contact/dataStructure/TreeNode/<init>(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
astore 6
aload 6
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setLevel(I)V
aload 6
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/setParent(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/addChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNode()Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L2
L0:
aload 2
areturn
.limit locals 7
.limit stack 4
.end method
