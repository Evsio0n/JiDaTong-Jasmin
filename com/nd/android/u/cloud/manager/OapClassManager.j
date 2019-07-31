.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/manager/OapClassManager
.super java/lang/Object

.field private static final 'COUNT' I = 3


.field private static final 'TAG' Ljava/lang/String; = "OapClassManager"

.field private static 'instance' Lcom/nd/android/u/cloud/manager/OapClassManager;

.method static <clinit>()V
new com/nd/android/u/cloud/manager/OapClassManager
dup
invokespecial com/nd/android/u/cloud/manager/OapClassManager/<init>()V
putstatic com/nd/android/u/cloud/manager/OapClassManager/instance Lcom/nd/android/u/cloud/manager/OapClassManager;
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

.method public static getInstance()Lcom/nd/android/u/cloud/manager/OapClassManager;
getstatic com/nd/android/u/cloud/manager/OapClassManager/instance Lcom/nd/android/u/cloud/manager/OapClassManager;
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
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassStudend(IJ)Ljava/util/List;
pop
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassGuardian(IJ)V
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 3
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassMasters(IJ)V
goto L11
.limit locals 7
.limit stack 4
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
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
ldc_w 2131495346
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

.method public initOapClassInfo(IJ)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L2
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L8
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/searchOapClasss()Ljava/util/List; 0
astore 4
L1:
aload 4
ifnull L4
L3:
aload 4
invokeinterface java/util/List/size()I 0
ifne L6
L4:
invokestatic com/nd/android/u/cloud/manager/OapClassManager/getInstance()Lcom/nd/android/u/cloud/manager/OapClassManager;
lload 2
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClass(J)V
L5:
return
L6:
invokestatic com/nd/android/u/cloud/manager/OapClassManager/getInstance()Lcom/nd/android/u/cloud/manager/OapClassManager;
aload 4
iload 1
lload 2
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/synUpdateClass(Ljava/util/List;IJ)V
L7:
return
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 4
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L8
L8
L9
default : L10
L10:
return
L9:
invokestatic com/nd/android/u/cloud/manager/OapClassManager/getInstance()Lcom/nd/android/u/cloud/manager/OapClassManager;
lload 2
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClass(J)V
L8:
return
.limit locals 5
.limit stack 5
.end method

.method public loadOapClass(J)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
aconst_null
astore 4
aconst_null
astore 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lconst_0
lcmp
ifeq L8
iconst_0
istore 3
L9:
aload 5
astore 4
iload 3
iconst_3
if_icmpge L8
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
iconst_m1
lload 1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClasses(IIJ)Ljava/util/List;
astore 4
L1:
aload 4
astore 5
L3:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/deleteOapClass()Z 0
pop
L4:
aload 4
astore 5
L5:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation()Z 0
pop
L6:
aload 4
astore 5
L7:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapClassDao/insertOapClass(Ljava/util/List;)V 1
L8:
aload 4
ifnull L10
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L11:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L10
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapClass
astore 5
aload 0
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 1
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassStudend(IJ)Ljava/util/List;
pop
aload 0
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 1
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassGuardian(IJ)V
aload 0
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/getClassid()I
lload 1
invokevirtual com/nd/android/u/cloud/manager/OapClassManager/loadOapClassMasters(IJ)V
goto L11
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 3
iconst_1
iadd
istore 3
goto L9
L10:
return
.limit locals 6
.limit stack 5
.end method

.method public loadOapClassGuardian(IJ)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 6
iconst_0
istore 4
L3:
aload 6
astore 5
iload 4
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getGuardian(IJ)Ljava/util/List;
astore 5
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 6
aload 6
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 6
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 5
ifnull L4
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L5:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourseid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 6
iconst_3
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L5
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 4
iconst_1
iadd
istore 4
goto L3
L4:
return
.limit locals 8
.limit stack 4
.end method

.method public loadOapClassMasters(IJ)V
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 6
iconst_0
istore 4
L3:
aload 6
astore 5
iload 4
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassSource(IJ)Ljava/util/List;
astore 5
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_1
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 6
aload 6
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 6
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 5
ifnull L4
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L5:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 7
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourseid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourse_name()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourse_name(Ljava/lang/String;)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getCourseid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setCourseid(I)V
aload 6
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L5
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 4
iconst_1
iadd
istore 4
goto L3
L4:
return
.limit locals 8
.limit stack 4
.end method

.method public loadOapClassStudend(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
iconst_0
istore 4
L3:
aload 6
astore 5
iload 4
iconst_3
if_icmpge L1
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/getOapClassMembers(IJ)Ljava/util/List;
astore 5
L1:
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_2
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
iload 1
iconst_3
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/deleteClassRelation(II)Z 2
pop
new com/nd/android/u/contact/dataStructure/OapClassRelation
dup
invokespecial com/nd/android/u/contact/dataStructure/OapClassRelation/<init>()V
astore 6
aload 6
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setUid(J)V
aload 6
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setClassid(I)V
aload 5
ifnull L4
aload 5
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 5
L5:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 8
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 8
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertFriend(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 6
aload 8
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setFid(J)V
aload 6
iconst_2
invokevirtual com/nd/android/u/contact/dataStructure/OapClassRelation/setType(I)V
ldc com/nd/android/u/contact/dao/OapClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassRelationDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapClassRelationDao/insertClassRelation(Lcom/nd/android/u/contact/dataStructure/OapClassRelation;)J 1
pop2
goto L5
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 4
iconst_1
iadd
istore 4
goto L3
L4:
aload 7
areturn
.limit locals 9
.limit stack 4
.end method

.method public synUpdateClass(Ljava/util/List;IJ)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;IJ)V"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 12
L0:
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
invokeinterface com/nd/android/u/contact/dao/OapClassDao/getMaxUpdatetime()I 0
istore 9
ldc "OapClassManager"
ldc "\u540c\u6b65\u73ed\u7ea7\u5217\u8868"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iconst_0
istore 5
iconst_1
istore 7
iconst_1
istore 6
L17:
iload 5
iload 7
if_icmpge L18
iload 6
ifeq L18
L3:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapClassCom()Lcom/nd/android/u/contact/com/OapClassCom;
iload 2
iload 9
iload 5
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassListUpdate(IIII)Lorg/json/JSONObject;
astore 13
L4:
aload 13
ifnull L19
L5:
aload 13
ldc "total"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 8
aload 13
ldc "classes"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 13
L6:
iload 8
istore 7
aload 13
ifnull L17
iconst_0
istore 7
L7:
iload 7
aload 13
invokevirtual org/json/JSONArray/length()I
if_icmpge L15
aload 13
iload 7
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 14
L8:
aload 14
ifnull L20
L9:
aload 14
ldc "type"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 10
aload 14
ldc "id"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 11
L10:
iload 10
iconst_1
if_icmpne L13
L11:
aload 1
iload 11
invokestatic com/nd/android/u/cloud/manager/OapClassManager/deleteClass(Ljava/util/List;I)V
L12:
goto L20
L13:
aload 12
aload 14
ldc "id"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
goto L20
L2:
astore 13
aload 13
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 405
L21
default : L22
L22:
aload 13
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L18:
aload 0
aload 1
aload 12
lload 3
invokespecial com/nd/android/u/cloud/manager/OapClassManager/updateClassList(Ljava/util/List;Ljava/util/List;J)V
return
L15:
aload 13
invokevirtual org/json/JSONArray/length()I
istore 7
L16:
iload 5
iload 7
iadd
istore 5
iload 8
istore 7
goto L17
L19:
iconst_0
istore 6
goto L17
L21:
aload 13
athrow
L20:
iload 7
iconst_1
iadd
istore 7
goto L7
.limit locals 15
.limit stack 5
.end method
