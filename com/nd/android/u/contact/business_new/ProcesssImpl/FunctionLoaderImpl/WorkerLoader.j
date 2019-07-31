.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader
.super java/lang/Object
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader

.field private static 'instance' Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;

.method static <clinit>()V
aconst_null
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private AddUserforIncre(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iconst_0
istore 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
istore 7
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
iload 7
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/getMaxUpdatetimeByUnit(I)I 1
i2l
lstore 8
iconst_0
istore 3
iconst_1
istore 4
lload 8
lconst_0
lcmp
ifne L0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iload 7
lload 1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsersByUnitid(IJ)Ljava/util/List;
astore 13
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L1
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
L1:
ldc "wanggd"
ldc "AddUserforIncre interrupted1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L2:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 13
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L3
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L4
L3:
ldc "wanggd"
ldc "AddUserforIncre interrupted2"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted2"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L4:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iload 7
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUnitRelation(I)V 1
aload 13
ifnull L5
aload 13
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L6:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 14
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L7
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L8
L7:
ldc "wanggd"
ldc "AddUserforIncre interrupted3"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted3"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L8:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getOapUnitRelations()Ljava/util/List;
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Ljava/util/List;)J 1
pop2
goto L6
L5:
iconst_1
ireturn
L0:
iload 10
istore 12
iload 3
iload 4
if_icmpge L9
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
lload 8
iconst_m1
iload 3
sipush 200
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUserUpdate(JIII)Lorg/json/JSONObject;
astore 13
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L10
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L11
L10:
ldc "wanggd"
ldc "AddUserforIncre interrupted4"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted4"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L11:
iload 10
istore 12
aload 13
ifnull L12
aload 13
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
iload 10
istore 11
iload 6
ifle L13
iload 10
istore 11
iload 10
ifne L13
iconst_1
istore 11
L13:
aload 13
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 13
iload 11
istore 12
aload 13
ifnull L9
iconst_0
istore 5
L14:
iload 11
istore 12
iload 6
istore 4
iload 5
aload 13
invokevirtual org/json/JSONArray/length()I
if_icmpge L12
new com/product/android/commonInterface/contact/OapUser
dup
aload 13
iload 5
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 14
aload 14
iload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 14
lload 1
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
iload 7
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JI)Z 3
pop
aload 15
ifnull L15
aload 15
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 15
L16:
aload 15
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L15
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
goto L16
L15:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 14
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 14
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
iload 5
iconst_1
iadd
istore 5
goto L14
L12:
iload 3
sipush 200
iadd
istore 3
iload 12
istore 10
goto L0
L9:
iload 12
ireturn
.limit locals 17
.limit stack 6
.end method

.method private DelUserforIncre(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iconst_0
istore 12
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
istore 7
iconst_0
istore 3
iconst_1
istore 4
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
iload 7
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/getMaxUpdatetimeByUnit(I)I 1
i2l
lstore 8
lload 8
lconst_0
lcmp
ifne L0
iconst_1
ireturn
L1:
iload 3
sipush 200
iadd
istore 3
iload 14
istore 12
L0:
iload 12
istore 14
iload 3
iload 4
if_icmpge L2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
lload 8
iconst_m1
iload 3
sipush 200
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUserDel(JIII)Lorg/json/JSONObject;
astore 15
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L3
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L4
L3:
ldc "wanggd"
ldc "DelUserforIncre interrupted1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L4:
iload 12
istore 14
aload 15
ifnull L1
aload 15
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
iload 12
istore 13
iload 6
ifle L5
iload 12
istore 13
iload 12
ifne L5
iconst_1
istore 13
L5:
aload 15
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 15
iload 13
istore 14
aload 15
ifnull L2
iconst_0
istore 5
L6:
iload 13
istore 14
iload 6
istore 4
iload 5
aload 15
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 15
iload 5
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 16
aload 16
ldc "dept_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
aload 16
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 10
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 10
iload 7
iload 4
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JII)Z 4
pop
iload 5
iconst_1
iadd
istore 5
goto L6
L2:
iload 14
ireturn
.limit locals 17
.limit stack 6
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader
monitorenter
L0:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
ifnonnull L1
new com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader
dup
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/<init>()V
putstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
L1:
getstatic com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/instance Lcom/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader;
astore 0
L3:
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader
monitorexit
aload 0
athrow
.limit locals 1
.limit stack 2
.end method

.method private incrementForDepart(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L2 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch com/common/android/utils/http/HttpException from L14 to L15 using L2
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
.catch com/common/android/utils/http/HttpException from L20 to L21 using L2
.catch com/common/android/utils/http/HttpException from L22 to L23 using L2
.catch com/common/android/utils/http/HttpException from L24 to L25 using L2
.catch com/common/android/utils/http/HttpException from L26 to L27 using L2
.catch com/common/android/utils/http/HttpException from L28 to L29 using L2
.catch com/common/android/utils/http/HttpException from L30 to L31 using L2
.catch com/common/android/utils/http/HttpException from L32 to L33 using L2
.catch com/common/android/utils/http/HttpException from L34 to L35 using L2
.catch com/common/android/utils/http/HttpException from L36 to L37 using L2
.catch com/common/android/utils/http/HttpException from L38 to L39 using L2
.catch com/common/android/utils/http/HttpException from L40 to L41 using L2
.catch com/common/android/utils/http/HttpException from L42 to L43 using L2
.catch com/common/android/utils/http/HttpException from L44 to L45 using L2
.catch com/common/android/utils/http/HttpException from L46 to L47 using L2
.catch com/common/android/utils/http/HttpException from L48 to L49 using L2
.catch com/common/android/utils/http/HttpException from L50 to L51 using L2
iconst_0
istore 10
iconst_0
istore 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
istore 3
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/getMaxUpdatetimeByUnit(I)I 1
i2l
lstore 5
iload 9
istore 7
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
lload 5
lload 1
iload 3
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDeptUpdate(JJI)Ljava/util/ArrayList;
astore 11
L1:
iload 9
istore 7
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L6
L4:
iload 9
istore 7
L5:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L52
L6:
iload 9
istore 7
L7:
ldc "wanggd"
ldc "incrementForDepart interrupted1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
iload 9
istore 7
L9:
new java/lang/InterruptedException
dup
ldc "interrupted1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 11
aload 11
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L53
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
aload 11
iload 3
iconst_m1
iconst_1
lload 1
iconst_0
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDepts(Ljava/util/List;IIIJI)V
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/deleteDeparts(I)Z 1
pop
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 11
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
iload 7
istore 9
L54:
iload 9
ireturn
L52:
iload 10
istore 8
aload 11
ifnull L21
iload 9
istore 7
iload 10
istore 8
L10:
aload 11
invokevirtual java/util/ArrayList/size()I
ifle L21
L11:
iconst_1
istore 8
iconst_1
istore 9
iload 9
istore 7
L12:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 11
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
L13:
iload 9
istore 7
L14:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L17
L15:
iload 9
istore 7
L16:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L21
L17:
iload 9
istore 7
L18:
ldc "wanggd"
ldc "incrementForDepart interrupted2"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L19:
iload 9
istore 7
L20:
new java/lang/InterruptedException
dup
ldc "interrupted2"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L21:
iload 8
istore 7
L22:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
lload 5
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDeptDel(J)Ljava/util/ArrayList;
astore 11
L23:
iload 8
istore 7
L24:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L27
L25:
iload 8
istore 7
L26:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L31
L27:
iload 8
istore 7
L28:
ldc "wanggd"
ldc "incrementForDepart interrupted3"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L29:
iload 8
istore 7
L30:
new java/lang/InterruptedException
dup
ldc "interrupted3"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L31:
iload 8
istore 9
aload 11
ifnull L54
iload 8
istore 7
iload 8
istore 9
L32:
aload 11
invokevirtual java/util/ArrayList/size()I
ifle L54
L33:
iconst_1
istore 10
iconst_1
istore 8
iload 8
istore 7
L34:
aload 11
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 11
L35:
iload 8
istore 7
iload 10
istore 9
L36:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L54
L37:
iload 8
istore 7
L38:
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 4
L39:
iload 8
istore 7
L40:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L43
L41:
iload 8
istore 7
L42:
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L47
L43:
iload 8
istore 7
L44:
ldc "wanggd"
ldc "incrementForDepart interrupted4"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L45:
iload 8
istore 7
L46:
new java/lang/InterruptedException
dup
ldc "interrupted4"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L47:
iload 8
istore 7
L48:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
iload 4
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/deleteDepart(II)Z 2
pop
L49:
iload 8
istore 7
L50:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
iload 3
iload 4
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JII)Z 4
pop
L51:
goto L35
L53:
aload 11
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 11
athrow
.limit locals 12
.limit stack 8
.end method

.method public ProcessUserCount(Lcom/nd/android/u/contact/dataStructure/OapDepart;)I
iconst_0
istore 2
iconst_0
istore 3
aload 1
ifnonnull L0
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartlist(II)Ljava/util/List; 2
astore 1
iload 2
istore 3
aload 1
invokeinterface java/util/List/size()I 0
ifle L1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
iload 2
istore 3
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/ProcessUserCount(Lcom/nd/android/u/contact/dataStructure/OapDepart;)I
pop
goto L2
L0:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 4
iload 3
istore 2
aload 4
ifnull L3
iload 3
istore 2
aload 4
invokeinterface java/util/List/size()I 0
ifle L3
iconst_0
aload 4
invokeinterface java/util/List/size()I 0
iadd
istore 2
L3:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartlist(II)Ljava/util/List; 2
astore 4
iload 2
istore 3
aload 4
ifnull L4
iload 2
istore 3
aload 4
invokeinterface java/util/List/size()I 0
ifle L4
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L5:
iload 2
istore 3
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 5
aload 5
iconst_m1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setType(I)V
iload 2
aload 0
aload 5
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/ProcessUserCount(Lcom/nd/android/u/contact/dataStructure/OapDepart;)I
iadd
istore 2
goto L5
L4:
aload 1
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUserCount(I)V
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/updateDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V 1
L1:
iload 3
ireturn
.limit locals 6
.limit stack 3
.end method

.method public calcUserCount(Lcom/product/android/commonInterface/contact/AbsNodeData;)I
iconst_0
istore 2
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -11
if_icmpeq L2
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -12
if_icmpne L3
L2:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(I)Ljava/util/List; 1
astore 1
aload 1
ifnull L4
iconst_0
aload 1
invokeinterface java/util/List/size()I 0
iadd
istore 2
L4:
iload 2
ireturn
L3:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
iconst_m1
if_icmpne L1
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
l2i
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 1
aload 1
ifnull L4
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUserCount()I
istore 2
goto L4
.limit locals 3
.limit stack 3
.end method

.method public fullLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iconst_1
ldc2_w -1L
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUnitList(IJ)Ljava/util/List;
astore 3
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/insertUnits(Ljava/util/List;)I 1
pop
aload 3
ifnull L0
aload 3
invokeinterface java/util/List/size()I 0
ifeq L0
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L1
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
aload 5
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_m1
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_0
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDepts(Ljava/util/List;IIIJI)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L3
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L4
L3:
ldc "wanggd"
ldc "loadOapUnit interrupted1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L4:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/deleteDeparts(I)Z 1
pop
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
aload 4
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setSubDepartList(Ljava/util/List;)V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUid()J
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsersByUnitid(IJ)Ljava/util/List;
astore 5
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation()Z 0
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L5
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L6
L5:
ldc "wanggd"
ldc "loadOapUnit interrupted2"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted2"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 5
ifnull L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L8:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getOapUnitRelations()Ljava/util/List;
astore 8
aload 8
ifnull L8
aload 6
aload 8
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L8
L9:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L10
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L11
L10:
ldc "wanggd"
ldc "loadOapUnit interrupted3"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted3"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L11:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Ljava/util/List;)J 1
pop2
L7:
aload 4
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setSubUserList(Ljava/util/List;)V
goto L1
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L12
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
L12:
ldc "wanggd"
ldc "loadOapUnit interrupted4"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted4"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aconst_null
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/ProcessUserCount(Lcom/nd/android/u/contact/dataStructure/OapDepart;)I
pop
iconst_1
ireturn
.limit locals 9
.limit stack 8
.end method

.method public getChildData(JLjava/util/List;Ljava/util/List;)Z
.signature "(JLjava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)Z"
aload 3
ifnull L0
aload 3
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
lload 1
l2i
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchSubDepartsByParentid(I)Ljava/util/List; 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aload 4
ifnull L1
aload 4
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
i2l
lload 1
l2i
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUsersByDeptid(JI)Ljava/util/ArrayList; 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
iconst_1
ireturn
.limit locals 5
.limit stack 6
.end method

.method public getChildlList(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public getParentInfo(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List;)Z
.signature "(Lcom/product/android/commonInterface/contact/AbsNodeData;Ljava/util/List<Lcom/product/android/commonInterface/contact/AbsNodeData;>;)Z"
aload 1
ifnull L0
aload 2
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
iconst_m1
if_icmpne L2
aload 1
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
istore 3
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 1
aload 1
ifnull L3
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iconst_1
ireturn
L3:
iconst_0
ireturn
L2:
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getType()I
bipush -4
if_icmpne L4
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 1
invokevirtual com/product/android/commonInterface/contact/AbsNodeData/getNode_id()J
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelationByfid(J)Ljava/util/List; 2
astore 1
aload 1
ifnull L5
aload 1
invokeinterface java/util/List/size()I 0
ifne L6
L5:
iconst_0
ireturn
L6:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L7:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUnitRelation
astore 4
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
ifeq L7
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 4
aload 4
ifnull L7
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L7
L8:
iconst_1
ireturn
L4:
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method

.method public incrementLoadData(J)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/incrementForDepart(J)Z
istore 3
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/AddUserforIncre(J)Z
istore 4
aload 0
lload 1
invokespecial com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/DelUserforIncre(J)Z
istore 5
iload 3
iconst_1
if_icmpeq L0
iload 4
iconst_1
if_icmpeq L0
iload 5
iconst_1
if_icmpne L1
L0:
aload 0
aconst_null
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/ProcessUserCount(Lcom/nd/android/u/contact/dataStructure/OapDepart;)I
pop
L1:
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method

.method public loadData(ZJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
iload 1
iconst_1
if_icmpne L0
aload 0
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/fullLoadData(J)Z
istore 1
iload 1
iconst_1
if_icmpne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-LoadFullWorkerData"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
L1:
iload 1
ireturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-LoadFullWorkerData"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifne L2
aload 0
iconst_1
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/loadData(ZJ)Z
ireturn
L2:
aload 0
lload 2
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/FunctionLoaderImpl/WorkerLoader/incrementLoadData(J)Z
ireturn
.limit locals 4
.limit stack 4
.end method
