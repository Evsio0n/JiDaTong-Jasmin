.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapDepartManager
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "DepartManager"

.field private static 'instance' Lcom/nd/android/u/contact/business/OapDepartManager;

.field private 'departDao' Lcom/nd/android/u/contact/dao/OapDepartDao;

.method static <clinit>()V
new com/nd/android/u/contact/business/OapDepartManager
dup
invokespecial com/nd/android/u/contact/business/OapDepartManager/<init>()V
putstatic com/nd/android/u/contact/business/OapDepartManager/instance Lcom/nd/android/u/contact/business/OapDepartManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
putfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
getstatic com/nd/android/u/contact/business/OapDepartManager/instance Lcom/nd/android/u/contact/business/OapDepartManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public close()V
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
ifnull L0
aload 0
aconst_null
putfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public getDepartDao()Lcom/nd/android/u/contact/dao/OapDepartDao;
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
ifnonnull L0
aload 0
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
putfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
L0:
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getDepartNameByDeptId(I)Ljava/lang/String;
iload 1
ifne L0
ldc ""
areturn
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptname()Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 2
.end method

.method public getDeptid(J)I
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(J)Lcom/product/android/commonInterface/contact/OapUnitRelation; 2
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getDeptid()I
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method

.method public getParentDepartNameByDeptid(I)Ljava/lang/String;
iload 1
ifne L0
ldc ""
areturn
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
ifeq L1
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSuperiorDepartNameByDeptid(I)Ljava/lang/String;
iload 1
ifne L0
ldc ""
areturn
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 2
aload 2
ifnull L1
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
ifeq L1
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartByDeptid(I)Lcom/nd/android/u/contact/dataStructure/OapDepart; 1
astore 2
aload 2
ifnull L1
aload 0
aload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getParentid()I
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getParentDepartNameByDeptid(I)Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 2
.end method

.method public saveToDB(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
aload 1
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)J 1
pop2
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getSubDepartList()Ljava/util/List;
ifnull L0
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getSubDepartList()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/business/OapDepartManager/saveToDB(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
goto L1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public searchDeparts(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
ifnonnull L0
aload 0
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
putfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
L0:
aload 0
getfield com/nd/android/u/contact/business/OapDepartManager/departDao Lcom/nd/android/u/contact/dao/OapDepartDao;
iload 1
iload 2
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDepartlist(II)Ljava/util/List; 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public synUpdateDepartByUnit(JI)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L2 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpException from L20 to L21 using L2
iconst_0
istore 7
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/getMaxUpdatetimeByUnit(I)I 1
i2l
lstore 5
L1:
lload 5
lconst_0
lcmp
ifne L7
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
invokestatic java/lang/Thread/interrupted()Z
ifeq L4
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 9
aload 9
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L22
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
aload 9
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
aload 9
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
iconst_1
istore 7
L23:
iload 7
ireturn
L4:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
aload 9
iload 3
iconst_m1
iconst_1
lload 1
iconst_0
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDepts(Ljava/util/List;IIIJI)V
invokestatic java/lang/Thread/interrupted()Z
ifeq L5
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L5:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
L6:
iconst_1
ireturn
L7:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
lload 5
lload 1
iload 3
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDeptUpdate(JJI)Ljava/util/ArrayList;
astore 9
invokestatic java/lang/Thread/interrupted()Z
ifeq L8
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L8:
iload 7
istore 8
aload 9
ifnull L13
iload 7
istore 8
L9:
aload 9
invokevirtual java/util/ArrayList/size()I
ifle L13
L10:
iconst_1
istore 8
L11:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 9
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
L12:
invokestatic java/lang/Thread/interrupted()Z
ifeq L13
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L13:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
lload 5
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDeptDel(J)Ljava/util/ArrayList;
astore 9
invokestatic java/lang/Thread/interrupted()Z
ifeq L14
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L14:
iload 8
istore 7
aload 9
ifnull L23
iload 8
istore 7
L15:
aload 9
invokevirtual java/util/ArrayList/size()I
ifle L23
L16:
iconst_1
istore 8
L17:
aload 9
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 9
L18:
iload 8
istore 7
L19:
aload 9
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L23
aload 9
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 4
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 3
iload 4
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/deleteDepart(II)Z 2
pop
invokestatic java/lang/Thread/interrupted()Z
ifeq L20
ldc "DYF"
ldc "loadOapUnit interrupted synUpdateDepartByUnit"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synUpdateDepartByUnit"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L20:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
lload 1
iload 3
iload 4
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation(JII)Z 4
pop
L21:
goto L18
L22:
aload 9
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 9
athrow
.limit locals 10
.limit stack 8
.end method
