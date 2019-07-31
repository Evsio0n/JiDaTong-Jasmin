.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/SynOapJMClassPro
.super java/lang/Object

.field private static final 'COUNT' I = 3


.field private static final 'TAG' Ljava/lang/String; = "SynOapJMClassPro"

.field private static 'instance' Lcom/nd/android/u/contact/business/SynOapJMClassPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/SynOapJMClassPro
dup
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/<init>()V
putstatic com/nd/android/u/contact/business/SynOapJMClassPro/instance Lcom/nd/android/u/contact/business/SynOapJMClassPro;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private cleanJMStudentData()V
ldc com/nd/android/u/contact/dao/VersionDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/VersionDao
invokeinterface com/nd/android/u/contact/dao/VersionDao/deletVersion()Z 0
pop
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation()Ljava/util/List; 0
astore 1
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/deleteClassRelation()Z 0
pop
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/deleteOapClass()Z 0
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUserByFid(Ljava/util/List;)V 1
return
.limit locals 2
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/SynOapJMClassPro;
getstatic com/nd/android/u/contact/business/SynOapJMClassPro/instance Lcom/nd/android/u/contact/business/SynOapJMClassPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method private getclassid(Ljava/util/List;Ljava/lang/StringBuilder;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;Ljava/lang/StringBuilder;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/JMClass
astore 3
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/JMClass/getId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/JMClass/getClasses()Ljava/util/List;
ifnull L1
aload 0
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/JMClass/getClasses()Ljava/util/List;
aload 2
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/getclassid(Ljava/util/List;Ljava/lang/StringBuilder;)V
goto L1
L0:
return
.limit locals 4
.limit stack 3
.end method

.method private getclassids(Ljava/util/List;Ljava/lang/StringBuilder;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Skeleton;>;Ljava/lang/StringBuilder;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Skeleton
astore 3
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/getId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/getClasses()Ljava/util/List;
ifnull L1
aload 0
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/getClasses()Ljava/util/List;
aload 2
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/getclassid(Ljava/util/List;Ljava/lang/StringBuilder;)V
goto L1
L0:
return
.limit locals 4
.limit stack 3
.end method

.method private loadClassManager(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;)V"
.throws com/common/android/utils/http/HttpException
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
lconst_0
lcmp
ifeq L1
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getManager1()J
invokevirtual com/nd/android/u/contact/com/OapUserCom/getUserInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 3
aload 3
ifnull L1
new com/product/android/commonInterface/contact/OapUnitRelation
dup
invokespecial com/product/android/commonInterface/contact/OapUnitRelation/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setFid(J)V
aload 4
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUnitid(I)V
aload 4
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getUpdatetime()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/setUpdatetime(Ljava/lang/String;)V
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
goto L1
L2:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Ljava/util/List;)J 1
pop2
L0:
return
.limit locals 5
.limit stack 4
.end method

.method private loadStudent(Ljava/lang/String;)V
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
iconst_m1
iconst_m1
iconst_m1
aload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getStudentlist(IIILjava/lang/String;)Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
new com/nd/android/u/contact/dataStructure/OapJMClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapJMClassRelation/<init>()V
astore 5
aload 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setClassid(I)V
aload 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setFid(J)V
aload 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserver()I
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setUserver(I)V
aload 2
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L0
L1:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/insertClassRelation(Ljava/util/List;)J 1
pop2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isfullLoadTreeDate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
.limit locals 6
.limit stack 5
.end method

.method private montageUids(Ljava/util/List;)Ljava/lang/String;
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/Skeleton;>;)Ljava/lang/String;"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/Skeleton
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/getUids()[I
astore 6
aload 6
arraylength
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L0
aload 6
iload 2
iaload
istore 4
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
iconst_1
iadd
istore 2
goto L2
L1:
aload 5
ifnull L3
aload 5
invokevirtual java/lang/StringBuilder/length()I
ifle L3
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L3:
aconst_null
areturn
.limit locals 7
.limit stack 4
.end method

.method public editStudentInfo(Lcom/product/android/commonInterface/contact/OapUser;)Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/editStudentInfo(Lcom/product/android/commonInterface/contact/OapUser;)Z
istore 2
L1:
iload 2
ifeq L3
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L3:
iload 2
ireturn
L2:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
istore 2
goto L1
.limit locals 4
.limit stack 2
.end method

.method public incrementUpdateJMClass()Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
.catch org/json/JSONException from L6 to L7 using L3
.catch com/common/android/utils/http/HttpException from L8 to L9 using L2
.catch org/json/JSONException from L8 to L9 using L3
.catch com/common/android/utils/http/HttpException from L10 to L11 using L2
.catch org/json/JSONException from L10 to L11 using L3
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch org/json/JSONException from L12 to L13 using L3
.catch com/common/android/utils/http/HttpException from L14 to L15 using L2
.catch org/json/JSONException from L14 to L15 using L3
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
.catch org/json/JSONException from L16 to L17 using L3
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
.catch org/json/JSONException from L18 to L19 using L3
.catch com/common/android/utils/http/HttpException from L20 to L21 using L2
.catch org/json/JSONException from L20 to L21 using L3
.catch com/common/android/utils/http/HttpException from L22 to L23 using L2
.catch org/json/JSONException from L22 to L23 using L3
.catch com/common/android/utils/http/HttpException from L24 to L25 using L2
.catch org/json/JSONException from L24 to L25 using L3
.catch com/common/android/utils/http/HttpException from L26 to L27 using L2
.catch org/json/JSONException from L26 to L27 using L3
.catch com/common/android/utils/http/HttpException from L28 to L29 using L2
.catch org/json/JSONException from L28 to L29 using L3
.catch com/common/android/utils/http/HttpException from L30 to L31 using L2
.catch org/json/JSONException from L30 to L31 using L3
.catch com/common/android/utils/http/HttpException from L32 to L33 using L2
.catch org/json/JSONException from L32 to L33 using L3
.catch com/common/android/utils/http/HttpException from L34 to L35 using L2
.catch org/json/JSONException from L34 to L35 using L3
.catch com/common/android/utils/http/HttpException from L36 to L37 using L2
.catch org/json/JSONException from L36 to L37 using L3
.catch com/common/android/utils/http/HttpException from L38 to L39 using L2
.catch org/json/JSONException from L38 to L39 using L3
.catch com/common/android/utils/http/HttpException from L40 to L41 using L2
.catch org/json/JSONException from L40 to L41 using L3
iconst_0
istore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isfullLoadTreeDate"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifne L42
aload 0
invokevirtual com/nd/android/u/contact/business/SynOapJMClassPro/loadOapJMClass()V
iconst_1
ireturn
L42:
iconst_0
istore 1
L43:
iload 2
istore 3
iload 1
iconst_3
if_icmpge L41
iload 2
istore 4
iload 2
istore 5
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
iconst_0
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getClassCache(I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
astore 6
L1:
aload 6
ifnonnull L44
goto L45
L44:
iload 2
istore 4
iload 2
istore 5
L4:
ldc com/nd/android/u/contact/dao/VersionDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/VersionDao
invokeinterface com/nd/android/u/contact/dao/VersionDao/findVersion()Lcom/nd/android/u/contact/dataStructure/VersionInfo; 0
astore 7
L5:
iload 2
istore 3
aload 7
ifnull L46
iload 2
istore 4
iload 2
istore 5
L6:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
if_icmpne L47
L7:
iload 2
istore 4
iload 2
istore 5
L8:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
if_icmpne L47
L9:
iload 2
istore 4
iload 2
istore 5
L10:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
if_icmpne L47
L11:
iload 2
ireturn
L47:
iload 2
istore 3
iload 2
istore 4
iload 2
istore 5
L12:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
if_icmpge L46
L13:
iload 2
istore 4
iload 2
istore 5
L14:
aload 0
aload 7
invokevirtual com/nd/android/u/contact/business/SynOapJMClassPro/orgVersionChangerPro(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)V
L15:
iconst_1
istore 3
L46:
iload 3
istore 4
iload 3
istore 5
L16:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
if_icmpge L48
L17:
iload 3
istore 4
iload 3
istore 5
L18:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getClassver()I
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getUpdateJmClasses(II)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 8
L19:
iload 3
istore 4
iload 3
istore 5
L20:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L48
L21:
iload 3
istore 4
iload 3
istore 5
L22:
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 9
L23:
iload 3
istore 4
iload 3
istore 5
L24:
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V 1
L25:
goto L19
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 4
istore 2
goto L45
L48:
iload 3
istore 4
iload 3
istore 5
L26:
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
if_icmpge L49
L27:
iload 3
istore 4
iload 3
istore 5
L28:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getUserver()I
iconst_m1
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getUpdateStudents(III)Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L29:
iload 3
istore 4
iload 3
istore 5
L30:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L49
L31:
iload 3
istore 4
iload 3
istore 5
L32:
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 8
L33:
iload 3
istore 4
iload 3
istore 5
L34:
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
L35:
iload 3
istore 4
iload 3
istore 5
L36:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L37:
iload 3
istore 4
iload 3
istore 5
L38:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/updateClassRelation(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L39:
goto L29
L3:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
iload 5
istore 2
goto L45
L49:
iload 3
istore 4
iload 3
istore 5
L40:
ldc com/nd/android/u/contact/dao/VersionDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/VersionDao
aload 6
invokeinterface com/nd/android/u/contact/dao/VersionDao/updateVersion(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)Z 1
pop
L41:
iload 3
ireturn
L45:
iload 1
iconst_1
iadd
istore 1
goto L43
.limit locals 10
.limit stack 4
.end method

.method public loadOapJMClass()V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch org/json/JSONException from L5 to L6 using L3
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch org/json/JSONException from L7 to L8 using L3
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch org/json/JSONException from L9 to L10 using L3
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch org/json/JSONException from L11 to L12 using L3
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch org/json/JSONException from L12 to L13 using L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 2
aload 2
ifnull L13
aload 2
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
ifeq L13
aload 0
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/cleanJMStudentData()V
iconst_0
istore 1
L14:
iload 1
iconst_3
if_icmpge L13
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
iconst_1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getClassCache(I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
astore 3
L1:
aload 3
ifnull L5
L4:
ldc com/nd/android/u/contact/dao/VersionDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/VersionDao
aload 3
invokeinterface com/nd/android/u/contact/dao/VersionDao/insertVersion(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)J 1
pop2
L5:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
L6:
aconst_null
astore 2
aload 3
ifnull L15
L7:
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getSkeletons()Ljava/util/List;
astore 3
L8:
aload 3
astore 2
aload 3
ifnull L15
L9:
aload 0
aload 3
aload 4
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/getclassids(Ljava/util/List;Ljava/lang/StringBuilder;)V
L10:
aload 3
astore 2
L15:
aload 4
ifnull L13
L11:
aload 4
invokevirtual java/lang/StringBuilder/length()I
ifle L13
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 3
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getOapJMClasses(Ljava/lang/String;)Ljava/util/List;
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L12
aload 0
aload 3
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/loadClassManager(Ljava/util/List;)V
L12:
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/insertOapClass(Ljava/util/List;)V 1
aload 0
aload 0
aload 2
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/montageUids(Ljava/util/List;)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/loadStudent(Ljava/lang/String;)V
L13:
return
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L16:
iload 1
iconst_1
iadd
istore 1
goto L14
L3:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L16
.limit locals 5
.limit stack 4
.end method

.method public orgVersionChangerPro(Lcom/nd/android/u/contact/dataStructure/VersionInfo;)V
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/getOrgver()I
bipush 100
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getUpdateInfos(II)Ljava/util/List;
astore 5
aload 5
ifnull L0
aload 5
invokeinterface java/util/List/size()I 0
ifle L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L1:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/JMClassUpdateInfos
astore 6
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObject()I
tableswitch 1
L3
L4
default : L5
L5:
goto L1
L3:
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
iconst_1
if_icmpne L6
aload 4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObjectid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L6:
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
iconst_2
if_icmpne L1
aload 1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObjectid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L4:
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
bipush 6
if_icmpne L7
new com/nd/android/u/contact/dataStructure/OapJMClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapJMClassRelation/<init>()V
astore 7
aload 7
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getClass_id()I
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setClassid(I)V
aload 7
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObjectid()I
i2l
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/setFid(J)V
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/updateClassRelation(Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;)V 1
goto L1
L7:
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
bipush 7
if_icmpeq L1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
iconst_1
if_icmpne L8
aload 3
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObjectid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L8:
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
iconst_2
if_icmpeq L9
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getOpt()I
iconst_3
if_icmpne L1
L9:
aload 2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/getObjectid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 4
invokeinterface java/util/List/size()I 0
ifle L10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L11:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L12
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 6
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L11
L12:
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 4
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getOapJMClasses(Ljava/lang/String;)Ljava/util/List;
astore 4
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/insertOapClass(Ljava/util/List;)V 1
L10:
aload 3
invokeinterface java/util/List/size()I 0
ifle L13
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L14:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L15
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 5
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L14
L15:
aload 0
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokespecial com/nd/android/u/contact/business/SynOapJMClassPro/loadStudent(Ljava/lang/String;)V
L13:
aload 2
invokeinterface java/util/List/size()I 0
ifle L16
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/deleteClassRelation(Ljava/util/List;)V 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUser(Ljava/util/List;)V 1
L16:
aload 1
invokeinterface java/util/List/size()I 0
ifle L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L17:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 2
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 2
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/deleteOapClass(I)Z 1
pop
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 2
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/deleteClassRelation(I)Z 1
pop
goto L17
L0:
return
.limit locals 8
.limit stack 5
.end method
