.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapUserManager
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "OapUserManager"

.field private static 'instance' Lcom/nd/android/u/contact/business/OapUserManager;

.method static <clinit>()V
new com/nd/android/u/contact/business/OapUserManager
dup
invokespecial com/nd/android/u/contact/business/OapUserManager/<init>()V
putstatic com/nd/android/u/contact/business/OapUserManager/instance Lcom/nd/android/u/contact/business/OapUserManager;
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

.method public static getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
getstatic com/nd/android/u/contact/business/OapUserManager/instance Lcom/nd/android/u/contact/business/OapUserManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public addToBlackList(J)Z
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/addToBlackList(J)Z
istore 3
iload 3
ifeq L0
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/setBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V 1
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public delFromBlackList(J)Z
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 4
aload 4
lload 1
putfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/delFromBlackList(J)Z
istore 3
iload 3
ifeq L0
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
putfield com/product/android/commonInterface/contact/BlackListPerson/myoapid J
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/deleteBlackListPerson(Lcom/product/android/commonInterface/contact/BlackListPerson;)V 1
L0:
iload 3
ireturn
.limit locals 5
.limit stack 3
.end method

.method public synUpdateUser(JIIJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iconst_0
istore 4
iconst_1
istore 7
iconst_0
istore 10
lload 1
lconst_0
lcmp
ifne L0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iload 3
lload 5
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsersByUnitid(IJ)Ljava/util/List;
astore 13
invokestatic java/lang/Thread/interrupted()Z
ifeq L1
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateUser"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateUser"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L1:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 13
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
invokestatic java/lang/Thread/interrupted()Z
ifeq L2
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateUser"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateUser"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L2:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUnitRelation(I)V 1
aload 13
ifnull L3
aload 13
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L4:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 14
invokestatic java/lang/Thread/interrupted()Z
ifeq L5
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateUser"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateUser"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L5:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getOapUnitRelations()Ljava/util/List;
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Ljava/util/List;)J 1
pop2
goto L4
L3:
iconst_1
ireturn
L0:
iload 10
istore 12
iload 4
iload 7
if_icmpge L6
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
lload 1
iconst_m1
iload 4
sipush 200
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUserUpdate(JIII)Lorg/json/JSONObject;
astore 13
invokestatic java/lang/Thread/interrupted()Z
ifeq L7
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateUser"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateUser"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L7:
iload 10
istore 12
aload 13
ifnull L8
aload 13
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 9
iload 10
istore 11
iload 9
ifle L9
iload 10
istore 11
iload 10
ifne L9
iconst_1
istore 11
L9:
aload 13
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 13
iload 11
istore 12
aload 13
ifnull L6
iconst_0
istore 8
L10:
iload 11
istore 12
iload 9
istore 7
iload 8
aload 13
invokevirtual org/json/JSONArray/length()I
if_icmpge L8
new com/product/android/commonInterface/contact/OapUser
dup
aload 13
iload 8
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 14
aload 14
iload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 14
lload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getOapUnitRelations()Ljava/util/List;
astore 15
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 14
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iload 3
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JI)Z 3
pop
aload 15
ifnull L11
aload 15
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 15
L12:
aload 15
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L11
aload 15
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUnitRelation
astore 16
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 16
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Lcom/product/android/commonInterface/contact/OapUnitRelation;)J 1
pop2
goto L12
L11:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 14
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
iload 8
iconst_1
iadd
istore 8
goto L10
L8:
iload 4
sipush 200
iadd
istore 4
iload 12
istore 10
goto L0
L6:
iload 12
ireturn
.limit locals 17
.limit stack 6
.end method

.method public synUpdateUserDel(JIIJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
lload 1
lconst_0
lcmp
ifne L0
iconst_0
istore 12
L1:
iload 12
ireturn
L0:
iconst_0
istore 4
iconst_1
istore 8
iconst_0
istore 10
L2:
iload 10
istore 12
iload 4
iload 8
if_icmpge L1
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
lload 1
iconst_m1
iload 4
sipush 200
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUserDel(JIII)Lorg/json/JSONObject;
astore 13
invokestatic java/lang/Thread/interrupted()Z
ifeq L3
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateUserDel"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateUserDel"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 10
istore 12
aload 13
ifnull L4
aload 13
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 9
iload 10
istore 11
iload 9
ifle L5
iload 10
istore 11
iload 10
ifne L5
iconst_1
istore 11
L5:
aload 13
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 13
iload 11
istore 12
aload 13
ifnull L1
iconst_0
istore 7
L6:
iload 11
istore 12
iload 9
istore 8
iload 7
aload 13
invokevirtual org/json/JSONArray/length()I
if_icmpge L4
aload 13
iload 7
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 14
aload 14
ldc "dept_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 8
aload 14
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 5
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 5
iload 3
iload 8
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JII)Z 4
pop
iload 7
iconst_1
iadd
istore 7
goto L6
L4:
iload 4
sipush 200
iadd
istore 4
iload 12
istore 10
goto L2
.limit locals 15
.limit stack 6
.end method

.method public updateBlackList()Z
iconst_0
istore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L0:
aload 4
invokevirtual java/util/ArrayList/clear()V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 1
bipush 20
aload 4
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/getBlackList(JIILjava/util/ArrayList;)I
iflt L1
iconst_1
istore 2
aload 3
aload 4
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 3
invokevirtual java/util/ArrayList/size()I
istore 1
aload 4
invokevirtual java/util/ArrayList/size()I
bipush 20
if_icmpeq L0
iload 2
istore 1
L2:
iload 1
ifeq L3
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/clearBlackList()V 0
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/setBlackList(Ljava/util/ArrayList;)V 1
iconst_1
ireturn
L1:
iconst_0
istore 1
goto L2
L3:
iconst_0
ireturn
.limit locals 5
.limit stack 6
.end method

.method public updateMyBlackListFromNet()V
iconst_0
istore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L0:
aload 4
invokevirtual java/util/ArrayList/clear()V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapBlackListCom()Lcom/nd/android/u/contact/com/OapBlackListCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iload 1
bipush 20
aload 4
invokevirtual com/nd/android/u/contact/com/OapBlackListCom/getBlackList(JIILjava/util/ArrayList;)I
iflt L1
iconst_1
istore 2
aload 3
aload 4
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 3
invokevirtual java/util/ArrayList/size()I
istore 1
aload 4
invokevirtual java/util/ArrayList/size()I
bipush 20
if_icmpeq L0
iload 2
istore 1
L2:
iload 1
ifeq L3
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/clearBlackList()V 0
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/setBlackList(Ljava/util/ArrayList;)V 1
L3:
return
L1:
iconst_0
istore 1
goto L2
.limit locals 5
.limit stack 6
.end method
