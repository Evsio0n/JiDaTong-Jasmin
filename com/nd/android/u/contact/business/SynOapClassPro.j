.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/SynOapClassPro
.super java/lang/Object

.field private static final 'COUNT' I = 3


.field private static final 'TAG' Ljava/lang/String; = "SynOapClassPro"

.field private static 'instance' Lcom/nd/android/u/contact/business/SynOapClassPro;

.method static <clinit>()V
new com/nd/android/u/contact/business/SynOapClassPro
dup
invokespecial com/nd/android/u/contact/business/SynOapClassPro/<init>()V
putstatic com/nd/android/u/contact/business/SynOapClassPro/instance Lcom/nd/android/u/contact/business/SynOapClassPro;
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

.method private static deleteClass(Ljava/util/List;I)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;I)V"
aload 0
ifnull L0
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUnitid()I
iload 1
if_icmpne L1
aload 0
aload 3
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapClassDao/deleteOapClass(I)Z 1
pop
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/SynOapClassPro;
getstatic com/nd/android/u/contact/business/SynOapClassPro/instance Lcom/nd/android/u/contact/business/SynOapClassPro;
areturn
.limit locals 0
.limit stack 1
.end method

.method private updateClassList(Ljava/util/List;Ljava/util/List;J)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;Ljava/util/List<Ljava/lang/Integer;>;J)V"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
aload 1
ifnonnull L5
L6:
return
L5:
aload 2
ifnull L6
aload 2
invokeinterface java/util/List/size()I 0
ifeq L6
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L7:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 6
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
aload 6
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClass(I)Lcom/nd/android/u/contact/dataStructure/OapClass;
astore 6
aload 6
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUid(J)V
L1:
iconst_0
istore 5
L3:
iload 5
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L7
aload 1
iload 5
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapClass
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUnitid()I
if_icmpne L9
aload 1
iload 5
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 1
iload 5
aload 6
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapClassDao/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapClass;)V 1
L4:
goto L7
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L7
L7
default : L10
L10:
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L7
L9:
iload 5
iconst_1
iadd
istore 5
goto L3
L8:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L11:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 2
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUnitid()I
istore 5
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 5
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassStudend(IJI)Ljava/util/List;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 5
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassGuardian(IJI)V
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 5
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassMasters(IJI)V
goto L11
.limit locals 7
.limit stack 5
.end method

.method public getClassCourse(J)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 4
aload 4
ifnull L0
aload 4
invokeinterface java/util/List/size()I 0
ifle L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClassRelation
astore 5
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss(I)Lcom/nd/android/u/contact/dataStructure/OapClass; 1
astore 6
aload 6
ifnull L1
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
ifnull L1
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourse_name()Ljava/lang/String;
ifnull L1
ldc ""
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourse_name()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
ldc "null"
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourse_name()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 3
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassname()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/getCourse_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/teacher I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc ";"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L1
L2:
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 7
.limit stack 4
.end method

.method public initOapClassInfo(IJ)Z
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
iconst_0
istore 5
iload 5
istore 4
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L8
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss()Ljava/util/List; 0
astore 6
L1:
aload 6
ifnull L4
L3:
aload 6
invokeinterface java/util/List/size()I 0
ifne L6
L4:
invokestatic com/nd/android/u/contact/business/SynOapClassPro/getInstance()Lcom/nd/android/u/contact/business/SynOapClassPro;
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClass()V
L5:
iconst_1
ireturn
L6:
invokestatic com/nd/android/u/contact/business/SynOapClassPro/getInstance()Lcom/nd/android/u/contact/business/SynOapClassPro;
aload 6
iload 1
lload 2
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/synUpdateClass(Ljava/util/List;IJ)Z
pop
L7:
iconst_0
ireturn
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 5
istore 4
aload 6
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
lookupswitch
403 : L8
404 : L8
415 : L9
default : L10
L10:
iconst_0
ireturn
L9:
invokestatic com/nd/android/u/contact/business/SynOapClassPro/getInstance()Lcom/nd/android/u/contact/business/SynOapClassPro;
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClass()V
iconst_1
istore 4
L8:
iload 4
ireturn
.limit locals 7
.limit stack 5
.end method

.method public loadOapClass()V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 5
aload 5
ifnull L6
aload 5
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
ifeq L6
aload 5
invokevirtual com/product/android/business/login/BindUser/getUid()J
lstore 3
iconst_0
istore 1
L7:
iload 1
iconst_3
if_icmpge L6
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
aload 5
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
iconst_m1
lload 3
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClasses(IIJ)Ljava/util/List;
astore 6
L1:
aload 6
ifnull L8
L3:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/deleteOapClass()Z 0
pop
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation()Z 0
pop
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapClassDao/insertOapClass(Ljava/util/List;)V 1
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L4:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 7
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getUnitid()I
istore 2
aload 0
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 2
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassStudend(IJI)Ljava/util/List;
pop
aload 0
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 2
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassGuardian(IJI)V
aload 0
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
iload 2
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClassMasters(IJI)V
L5:
goto L4
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L8:
iload 1
iconst_1
iadd
istore 1
goto L7
L6:
return
.limit locals 8
.limit stack 5
.end method

.method public loadOapClassGuardian(IJI)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_2
if_icmpne L3
L4:
return
L3:
aconst_null
astore 7
iconst_0
istore 5
L5:
aload 7
astore 6
iload 5
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getGuardian(IJ)Ljava/util/List;
astore 6
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
aload 6
ifnull L4
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 7
aload 7
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 7
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L6:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 8
aload 8
iload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 7
iconst_3
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourseid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getStudentid()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setStudentId(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L6
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 5
iconst_1
iadd
istore 5
goto L5
.limit locals 9
.limit stack 4
.end method

.method public loadOapClassMasters(IJI)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 7
iconst_0
istore 5
L3:
aload 7
astore 6
iload 5
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassSource(IJ)Ljava/util/List;
astore 6
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
aload 6
ifnull L4
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 7
aload 7
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 7
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L5:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 8
aload 8
iload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourseid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 7
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 7
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L5
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 5
iconst_1
iadd
istore 5
goto L3
L4:
return
.limit locals 9
.limit stack 4
.end method

.method public loadOapClassStudend(IJI)Ljava/util/List;
.signature "(IJI)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
iconst_3
if_icmpne L3
aconst_null
astore 6
L4:
aload 6
areturn
L3:
aconst_null
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
iconst_0
istore 5
L5:
aload 6
astore 7
iload 5
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClassMembers(IJ)Ljava/util/List;
astore 7
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
aload 8
astore 6
aload 7
ifnull L4
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 9
aload 9
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 9
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L6:
aload 8
astore 6
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 6
aload 6
iload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 9
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 9
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L6
L2:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 5
iconst_1
iadd
istore 5
goto L5
.limit locals 10
.limit stack 4
.end method

.method public synUpdateClass(Ljava/util/List;IJ)Z
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;IJ)Z"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpException from L21 to L22 using L2
iconst_0
istore 13
iconst_0
istore 12
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 15
L0:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/getMaxUpdatetime()I 0
istore 9
L1:
iconst_0
istore 5
iconst_1
istore 7
iconst_1
istore 6
L23:
iload 12
istore 13
iload 5
iload 7
if_icmpge L24
iload 12
istore 13
iload 6
ifeq L24
iload 12
istore 13
L3:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 2
iload 9
iload 5
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassListUpdate(IIII)Lorg/json/JSONObject;
astore 16
L4:
aload 16
ifnull L25
iload 12
istore 14
iload 12
ifne L26
iconst_1
istore 14
L26:
iload 14
istore 13
L5:
aload 16
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 8
L6:
iload 14
istore 13
L7:
aload 16
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 16
L8:
iload 14
istore 12
iload 8
istore 7
aload 16
ifnull L23
iconst_0
istore 7
L27:
iload 14
istore 13
L9:
iload 7
aload 16
invokevirtual org/json/JSONArray/length()I
if_icmpge L28
L10:
iload 14
istore 13
L11:
aload 16
iload 7
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 17
L12:
aload 17
ifnull L29
iload 14
istore 13
L13:
aload 17
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 10
L14:
iload 14
istore 13
L15:
aload 17
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 11
L16:
iload 10
iconst_1
if_icmpne L30
iload 14
istore 13
L17:
aload 1
iload 11
invokestatic com/nd/android/u/contact/business/SynOapClassPro/deleteClass(Ljava/util/List;I)V
L18:
goto L29
L30:
iload 14
istore 13
L19:
aload 15
aload 17
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L20:
goto L29
L2:
astore 16
aload 16
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 405
L31
default : L32
L32:
aload 16
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L24:
aload 0
aload 1
aload 15
lload 3
invokespecial com/nd/android/u/contact/business/SynOapClassPro/updateClassList(Ljava/util/List;Ljava/util/List;J)V
iload 13
ireturn
L28:
iload 14
istore 13
L21:
aload 16
invokevirtual org/json/JSONArray/length()I
istore 7
L22:
iload 5
iload 7
iadd
istore 5
iload 14
istore 12
iload 8
istore 7
goto L23
L25:
iconst_0
istore 6
goto L23
L31:
aload 16
athrow
L29:
iload 7
iconst_1
iadd
istore 7
goto L27
.limit locals 18
.limit stack 5
.end method
