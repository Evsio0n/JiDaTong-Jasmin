.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/SynOapGroupPro
.super java/lang/Object

.field private static 'instance' Lcom/nd/android/u/contact/business/SynOapGroupPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/SynOapGroupPro
dup
invokespecial com/nd/android/u/contact/business/SynOapGroupPro/<init>()V
putstatic com/nd/android/u/contact/business/SynOapGroupPro/instance Lcom/nd/android/u/contact/business/SynOapGroupPro;
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

.method public static getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
getstatic com/nd/android/u/contact/business/SynOapGroupPro/instance Lcom/nd/android/u/contact/business/SynOapGroupPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method private initDiscussions()V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
.catch all from L7 to L8 using L3
.catch com/common/android/utils/http/HttpException from L8 to L9 using L10
.catch all from L8 to L9 using L3
.catch all from L11 to L12 using L3
.catch all from L13 to L14 using L3
aload 0
monitorenter
aconst_null
astore 1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionList()Ljava/util/ArrayList;
astore 2
L1:
aload 2
astore 1
L4:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
L5:
aload 2
astore 1
L15:
aload 1
ifnull L16
L6:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L16
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 2
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L8:
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getDiscussionMember(J)Ljava/util/List;
pop
L9:
goto L7
L10:
astore 2
L11:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L12:
goto L7
L3:
astore 1
aload 0
monitorexit
aload 1
athrow
L2:
astore 2
L13:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L14:
goto L15
L16:
aload 0
monitorexit
return
.limit locals 3
.limit stack 3
.end method

.method public getAllGroupsFromDB()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Object;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 2
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/size()I 0
ifle L0
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_community_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/setOapGroupList(Ljava/util/List;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getXYDepartGroups()Ljava/util/List;
astore 2
aload 2
ifnull L1
aload 2
invokeinterface java/util/List/size()I 0
ifle L1
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/departmeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/setOapGroupList(Ljava/util/List;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
invokestatic com/nd/android/u/contact/business/DepartGroupPro/getInstance()Lcom/nd/android/u/contact/business/DepartGroupPro;
invokevirtual com/nd/android/u/contact/business/DepartGroupPro/getXYClassGroups()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/size()I 0
ifle L2
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/classeng_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/setOapGroupList(Ljava/util/List;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L2:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 2
aload 2
ifnull L3
aload 2
invokeinterface java/util/List/size()I 0
ifle L3
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/setOapGroupList(Ljava/util/List;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/searchGroups(I)Ljava/util/List; 1
astore 2
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L4:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
aload 4
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
goto L4
L5:
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/size()I 0
ifle L6
new com/nd/android/u/contact/dataStructure/OapGroups
dup
iconst_3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_join_disscussion I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/nd/android/u/contact/dataStructure/OapGroups/<init>(ILjava/lang/String;)V
astore 3
aload 3
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapGroups/setOapGroupList(Ljava/util/List;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L6:
aload 1
areturn
.limit locals 5
.limit stack 5
.end method

.method public getDiscussionMember(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionMemberList(J)Ljava/util/ArrayList;
astore 3
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(J)Z 2
pop
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 5
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public getDisscusionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
aconst_null
astore 3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDiscussionCom()Lcom/nd/android/u/contact/com/OapDiscussionCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getDiscussionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
L1:
aload 4
ifnull L4
aload 4
astore 3
L3:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
L4:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getGroupInfoByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
aconst_null
astore 3
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getGroupInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
astore 4
L1:
aload 4
ifnull L4
aload 4
astore 3
L3:
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
L4:
aload 4
areturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public getGroupMember(J)Ljava/util/List;
.signature "(J)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
.throws com/common/android/utils/http/HttpException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getGroupMemberList(JJ)Ljava/util/List;
astore 3
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/deleteGroupRelation(J)Z 2
pop
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 5
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 5
.end method

.method public initGroupList(J)V
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapGroupCom()Lcom/nd/android/u/contact/com/OapGroupCom;
invokevirtual com/nd/android/u/contact/com/OapGroupCom/getGroupList()Ljava/util/List;
astore 3
L1:
aload 3
ifnull L4
L3:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/deleteGroups(I)Z 1
pop
L4:
aload 3
ifnull L8
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L9:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroup
astore 4
L5:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
L6:
goto L9
L7:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
ldc "SynOapGroupPro"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "initGroupList insert db error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L9
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
athrow
L8:
aload 0
invokespecial com/nd/android/u/contact/business/SynOapGroupPro/initDiscussions()V
return
.limit locals 6
.limit stack 3
.end method

.method public tranferGroupProLocal(JJ)V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch all from L5 to L6 using L3
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_1
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
astore 5
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/beginTransaction()V
L0:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 6
aload 6
lload 3
invokevirtual com/product/android/commonInterface/contact/OapGroup/setCreatorid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
lload 1
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 6
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_3
if_icmpne L1
aload 6
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGrade(I)V
L1:
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/updateGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)Z 1
pop
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/setTransactionSuccessful()V
L4:
aload 5
invokevirtual android/database/sqlite/SQLiteDatabase/endTransaction()V
return
L2:
astore 6
L5:
aload 6
invokevirtual java/lang/Exception/printStackTrace()V
L6:
goto L4
L3:
astore 5
aload 5
athrow
.limit locals 7
.limit stack 4
.end method
