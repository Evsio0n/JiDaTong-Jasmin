.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/DepartGroupPro
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/DepartGroupPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/DepartGroupPro
dup
invokespecial com/nd/android/u/contact/business/DepartGroupPro/<init>()V
putstatic com/nd/android/u/contact/business/DepartGroupPro/instance Lcom/nd/android/u/contact/business/DepartGroupPro;
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

.method private getAllClass()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L0
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getJMClass(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 2
astore 2
aload 2
ifnull L0
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
areturn
L0:
aload 1
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss()Ljava/util/List; 0
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
getstatic com/nd/android/u/contact/business/DepartGroupPro/instance Lcom/nd/android/u/contact/business/DepartGroupPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getClassGroup(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapClass; 1
astore 4
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 5
iload 2
iconst_1
if_icmpeq L0
iload 2
iconst_2
if_icmpne L1
L0:
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid()I
ifle L1
aload 5
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setClassid(I)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid()I
i2l
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 5
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 5
iconst_5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
iload 2
iconst_1
if_icmpeq L2
iload 2
iconst_3
if_icmpne L3
L2:
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid1()I
ifle L3
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 5
aload 5
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setClassid(I)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getGid1()I
i2l
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 5
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 5
bipush 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public getClassGroupMember(IILjava/util/List;)V
.signature "(IILjava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 5
aload 3
astore 4
aload 5
ifnull L0
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 3
astore 4
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 4
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 6
aload 6
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 6
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setClassid(I)V
aload 6
iconst_3
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 3
astore 4
aload 3
ifnonnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L2:
aload 4
astore 3
aload 4
aload 6
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
astore 3
goto L1
L0:
iload 2
tableswitch 5
L3
L4
default : L5
L5:
return
L4:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 3
aload 3
ifnull L5
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L6:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 3
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 6
aload 6
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 6
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 4
astore 3
aload 4
ifnonnull L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L7:
aload 3
astore 4
aload 3
aload 6
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L6
aload 3
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
astore 4
goto L6
L3:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(II)Ljava/util/List; 2
astore 3
aload 3
ifnull L5
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L8:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 3
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 6
aload 6
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 6
iload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setClassid(I)V
aload 6
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 4
astore 3
aload 4
ifnonnull L9
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L9:
aload 3
astore 4
aload 3
aload 6
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L8
aload 3
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
astore 4
goto L8
.limit locals 7
.limit stack 3
.end method

.method public getDepartAndParentDepart(Ljava/util/List;JI)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;JI)V"
aload 1
astore 5
aload 1
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 4
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
iload 4
if_icmpne L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getAllow_group()I
iconst_1
if_icmpne L2
aload 5
iconst_0
aload 1
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L2:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
ifeq L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
iload 4
if_icmpeq L1
aload 0
aload 5
lload 2
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartAndParentDepart(Ljava/util/List;JI)V
L1:
return
.limit locals 6
.limit stack 5
.end method

.method public getDepartGroupMember(JILjava/util/List;)V
.signature "(JILjava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
iload 3
ifne L0
L1:
return
L0:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelationByDeptid(I)Ljava/util/List; 1
astore 6
aload 4
astore 5
aload 6
ifnull L2
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L3:
aload 4
astore 5
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUnitRelation
astore 5
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 7
aload 7
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 7
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 7
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setNickname(Ljava/lang/String;)V
aload 7
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 4
astore 5
aload 4
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L4:
aload 5
astore 4
aload 5
aload 7
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L3
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 5
astore 4
goto L3
L2:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchSubDepartsByParentid(I)Ljava/util/List; 1
astore 4
aload 4
ifnull L1
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L5:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 6
aload 0
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getGid()J
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
aload 5
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartGroupMember(JILjava/util/List;)V
goto L5
.limit locals 8
.limit stack 5
.end method

.method public getDepartGroupMemberByGid(JLjava/util/List;)V
.signature "(JLjava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
lload 1
lconst_0
lcmp
ifne L0
return
L0:
aload 0
lload 1
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/getDeptidByGid(J)I 2
aload 3
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartGroupMember(JILjava/util/List;)V
return
.limit locals 4
.limit stack 6
.end method

.method public getDepartGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDeptid(JJ)I
istore 1
iload 1
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 1
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartAndParentDepart(Ljava/util/List;JI)V
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 4
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/product/android/commonInterface/contact/OapGroup/setOapDeptId(I)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 5
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 5
iconst_4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 2
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L3:
aload 2
invokeinterface java/util/List/size()I 0
ifle L1
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Ljava/util/List;)V 1
aload 2
areturn
.limit locals 6
.limit stack 5
.end method

.method public getDeptid(JJ)I
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 3
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(J)Lcom/product/android/commonInterface/contact/OapUnitRelation; 2
astore 5
aload 5
ifnull L0
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
lload 3
lcmp
ifne L0
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
ireturn
L0:
iconst_m1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public getXYClassGroupMember(JILjava/util/List;)V
.signature "(JILjava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;)V"
iload 3
ifne L0
L1:
return
L0:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(I)Ljava/util/List; 1
astore 7
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 1
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lstore 5
aload 7
ifnull L1
aload 7
invokeinterface java/util/List/size()I 0
ifle L1
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L2:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
astore 7
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 9
aload 9
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 9
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 9
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 9
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setNickname(Ljava/lang/String;)V
aload 4
astore 7
aload 4
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L4:
aload 7
astore 4
aload 7
aload 9
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L2
aload 7
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 7
astore 4
goto L2
L3:
lload 5
lconst_0
lcmp
ifeq L1
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 8
aload 8
lload 5
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 8
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setType(I)V
aload 8
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
aload 8
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 8
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setNickname(Ljava/lang/String;)V
aload 4
astore 7
aload 4
ifnonnull L5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L5:
aload 7
aload 8
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L1
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 10
.limit stack 4
.end method

.method public getXYClassGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aconst_null
astore 3
aconst_null
astore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L0
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getJMClass(J)Lcom/nd/android/u/contact/dataStructure/OapJMClass; 2
astore 2
aload 2
ifnull L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
aload 3
astore 2
aload 1
ifnull L2
aload 3
astore 2
aload 1
invokeinterface java/util/List/size()I 0
ifle L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 2
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 4
aload 4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokevirtual com/product/android/commonInterface/contact/OapGroup/setClassid(I)V
aload 4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 4
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getGid()I
i2l
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 4
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 4
iconst_5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L0:
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss()Ljava/util/List; 0
astore 1
goto L1
L4:
aload 3
astore 2
aload 3
invokeinterface java/util/List/size()I 0
ifle L2
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Ljava/util/List;)V 1
aload 3
astore 2
L2:
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public getXYDepartGroups()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDeptid(JJ)I
istore 1
iload 1
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 1
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartAndParentDepart(Ljava/util/List;JI)V
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 4
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/product/android/commonInterface/contact/OapGroup/setOapDeptId(I)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 5
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 5
iconst_4
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 2
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
.limit locals 6
.limit stack 5
.end method
