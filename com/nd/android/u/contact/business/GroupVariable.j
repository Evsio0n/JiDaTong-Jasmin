.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/GroupVariable
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/GroupVariable;

.field private 'oapGroupsList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGroups;>;"

.method static <clinit>()V
new com/nd/android/u/contact/business/GroupVariable
dup
invokespecial com/nd/android/u/contact/business/GroupVariable/<init>()V
putstatic com/nd/android/u/contact/business/GroupVariable/instance Lcom/nd/android/u/contact/business/GroupVariable;
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

.method private findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 3
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
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
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 4
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

.method public static getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
getstatic com/nd/android/u/contact/business/GroupVariable/instance Lcom/nd/android/u/contact/business/GroupVariable;
ifnonnull L0
new com/nd/android/u/contact/business/GroupVariable
dup
invokespecial com/nd/android/u/contact/business/GroupVariable/<init>()V
putstatic com/nd/android/u/contact/business/GroupVariable/instance Lcom/nd/android/u/contact/business/GroupVariable;
L0:
getstatic com/nd/android/u/contact/business/GroupVariable/instance Lcom/nd/android/u/contact/business/GroupVariable;
areturn
.limit locals 0
.limit stack 2
.end method

.method private initClubGroup()V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/initClubGroup(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initDiscussionGroup()V
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/initDiscussionGroup(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method private initNormalGroups()V
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/initNormalGroup(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method private needInitClassGroup()Z
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss()Ljava/util/List; 0
invokeinterface java/util/List/size()I 0
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public clearGroupsList()V
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 2
.limit stack 1
.end method

.method public findAllGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
aload 4
astore 3
aload 4
ifnonnull L1
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
L1:
aload 3
astore 4
aload 3
ifnonnull L2
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
L2:
aload 4
astore 3
aload 4
ifnonnull L3
aload 4
astore 3
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_3
if_icmple L3
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
L3:
aload 3
astore 4
aload 3
ifnonnull L4
aload 3
astore 4
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_4
if_icmple L4
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
L4:
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 5
.end method

.method public findGroupByClassGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_3
if_icmple L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public findGroupByDeptid(J)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmple L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L2
aload 4
areturn
L1:
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_3
if_icmple L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L3
aload 4
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
aload 4
astore 3
aload 4
ifnonnull L1
aload 4
astore 3
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
if_icmple L1
aload 0
lload 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokespecial com/nd/android/u/contact/business/GroupVariable/findGroupByGid(JLcom/nd/android/u/contact/dataStructure/OapGroups;)Lcom/product/android/commonInterface/contact/OapGroup;
astore 3
L1:
aload 3
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 5
.end method

.method public findGroupManageByGid(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lload 1
lcmp
ifne L1
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public getAllGroupList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/chat/ChatGroup;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L2:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L4
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L5
L4:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 2
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 3
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L7
L6:
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method public getClassGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_3
if_icmple L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDepartGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnonnull L0
L1:
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmple L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDiscussionGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDiscussionOapGroups()Lcom/nd/android/u/contact/dataStructure/OapGroups;
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public getNormalGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroup;>;"
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
if_icmplt L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 2
.end method

.method public getOapGroupsList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGroups;>;"
aload 0
invokespecial com/nd/android/u/contact/business/GroupVariable/initNormalGroups()V
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public initAllGroups()V
aload 0
invokespecial com/nd/android/u/contact/business/GroupVariable/initNormalGroups()V
aload 0
invokespecial com/nd/android/u/contact/business/GroupVariable/initDiscussionGroup()V
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/initDepartGroups()V
aload 0
invokespecial com/nd/android/u/contact/business/GroupVariable/initClubGroup()V
return
.limit locals 1
.limit stack 1
.end method

.method public initDepartGroups()V
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getDepartGroups()Ljava/util/List;
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/initDepartGroup(Ljava/util/List;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
istore 1
aload 3
ifnull L2
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
istore 2
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 2
iload 1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/getCountClassRelationByType(II)I 2
ifeq L3
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
iload 2
iload 1
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getClassGroup(II)Ljava/util/List;
astore 4
aload 4
ifnull L3
aload 4
invokeinterface java/util/List/size()I 0
ifle L3
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L4:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 5
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L4
L2:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokespecial com/nd/android/u/contact/business/GroupVariable/getAllClass()Ljava/util/List;
astore 3
aload 3
ifnull L1
aload 3
invokeinterface java/util/List/size()I 0
ifle L1
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L5:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 4
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 5
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokevirtual com/product/android/commonInterface/contact/OapGroup/setClassid(I)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupname(Ljava/lang/String;)V
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getGid()I
i2l
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGid(J)V
aload 5
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGroupType(I)V
aload 5
iconst_5
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCategory(I)V
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
iconst_3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapGroups
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/getOapGroupList()Ljava/util/List;
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L5
.limit locals 6
.limit stack 3
.end method

.method public initEmptyGroups()V
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/departmeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/disscussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/community_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/classeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/contact/business/GroupVariable/oapGroupsList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L1:
return
.limit locals 2
.limit stack 5
.end method

.method public isExitGroupList()Z
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
L1:
iconst_1
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDiscussionGroupList()Ljava/util/List;
astore 1
aload 1
ifnull L2
aload 1
invokeinterface java/util/List/size()I 0
ifgt L1
L2:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getDepartGroupList()Ljava/util/List;
astore 1
aload 1
ifnull L3
aload 1
invokeinterface java/util/List/size()I 0
ifgt L1
L3:
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/getClassGroupList()Ljava/util/List;
astore 1
aload 1
ifnull L4
aload 1
invokeinterface java/util/List/size()I 0
ifgt L1
L4:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public toInitOapGroupsList()V
aload 0
invokevirtual com/nd/android/u/contact/business/GroupVariable/initEmptyGroups()V
return
.limit locals 1
.limit stack 1
.end method
