.bytecode 50.0
.class public synchronized com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
.super com/common/android/utils/concurrent/NdAbstractTask
.inner class inner com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1

.field public static final 'TO_UPDATE_INCREMENTAL' I = 100001


.field 'TAG' Ljava/lang/String;

.field private final 'UPDATE_FAIL' B

.field private final 'UPDATE_SUCCESS' B

.field private 'mManuRefresh' Z

.field private 'mUid' J

.method public <init>(ZJ)V
aload 0
invokespecial com/common/android/utils/concurrent/NdAbstractTask/<init>()V
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mManuRefresh Z
aload 0
lconst_0
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mUid J
aload 0
iconst_0
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/UPDATE_SUCCESS B
aload 0
iconst_m1
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/UPDATE_FAIL B
aload 0
iload 1
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mManuRefresh Z
aload 0
lload 2
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mUid J
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_3
invokevirtual com/product/android/business/bean/SysParam/setObtainUnitContact(I)V
aload 0
getstatic com/common/android/utils/concurrent/ETaskTypeId/SYNC_UNIT Lcom/common/android/utils/concurrent/ETaskTypeId;
invokevirtual com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/setId(Lcom/common/android/utils/concurrent/ETaskTypeId;)V
return
.limit locals 4
.limit stack 3
.end method

.method private calculateStudentcount()I
iconst_0
istore 3
iconst_0
istore 1
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/searchOapClasss()Ljava/util/List; 0
astore 4
iload 3
istore 2
aload 4
ifnull L0
iload 3
istore 2
aload 4
invokeinterface java/util/List/size()I 0
ifle L0
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
iload 1
istore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClass
astore 5
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassid()I
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(I)Ljava/util/List; 1
astore 6
aload 5
aload 6
invokeinterface java/util/List/size()I 0
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/setUsercount(I)V
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/updateOapClass(Lcom/nd/android/u/contact/dataStructure/OapJMClass;)V 1
iload 1
aload 6
invokeinterface java/util/List/size()I 0
iadd
istore 1
goto L1
L0:
iload 2
ireturn
.limit locals 7
.limit stack 2
.end method

.method private calculateUsercount(Ljava/util/List;Ljava/lang/Object;)I
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;Ljava/lang/Object;)I"
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 3
iconst_0
istore 4
aload 2
instanceof com/nd/android/u/contact/dataStructure/OapUnit
ifeq L0
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 7
iload 5
istore 3
aload 7
ifnull L1
iload 5
istore 3
aload 7
invokeinterface java/util/List/size()I 0
ifle L1
aload 7
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L2:
iload 4
istore 3
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 8
aload 1
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 4
aload 0
aload 1
aload 8
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/calculateUsercount(Ljava/util/List;Ljava/lang/Object;)I
iadd
istore 4
goto L2
L1:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 1
iload 3
istore 4
aload 1
ifnull L3
iload 3
aload 1
invokeinterface java/util/List/size()I 0
iadd
istore 4
L3:
iload 4
ireturn
L0:
iload 6
istore 4
aload 2
instanceof com/nd/android/u/contact/dataStructure/OapDepart
ifeq L3
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation(II)Ljava/util/List; 2
astore 7
aload 7
ifnull L4
iconst_0
aload 7
invokeinterface java/util/List/size()I 0
iadd
istore 3
L4:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapDepart
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/nd/android/u/contact/business/OapDepartManager/searchDeparts(II)Ljava/util/List;
astore 7
iload 3
istore 5
aload 7
ifnull L5
aload 7
invokeinterface java/util/List/size()I 0
istore 6
iconst_0
istore 4
L6:
iload 3
istore 5
iload 4
iload 6
if_icmpge L5
aload 1
aload 7
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 3
aload 0
aload 1
aload 7
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/calculateUsercount(Ljava/util/List;Ljava/lang/Object;)I
iadd
istore 3
iload 4
iconst_1
iadd
istore 4
goto L6
L5:
aload 2
checkcast com/nd/android/u/contact/dataStructure/OapDepart
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setNodeUsercount(I)V
iload 5
ireturn
.limit locals 9
.limit stack 5
.end method

.method private checkCurrentUidInterrupted()Z
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/isInterrupted()Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L0
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mUid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L1
L0:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainUnitContact(I)V
ldc "DYF"
ldc "ObtainUnitRable interrupted"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method private fullUpdateOrg()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iconst_1
ldc2_w -1L
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUnitList(IJ)Ljava/util/List;
astore 1
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/insertUnits(Ljava/util/List;)I 1
pop
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifeq L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpne L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapDepartCom()Lcom/nd/android/u/contact/com/OapDepartCom;
aload 4
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iconst_m1
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_0
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getDepts(Ljava/util/List;IIIJI)V
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L3
ldc "DYF"
ldc "loadOapUnit interrupted1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mManuRefresh Z
ifeq L4
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/deleteDeparts(I)Z 1
pop
L4:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/insertDepart(Ljava/util/List;)I 1
pop
aload 3
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setSubDepartList(Ljava/util/List;)V
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUid()J
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsersByUnitid(IJ)Ljava/util/List;
astore 4
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mManuRefresh Z
ifeq L5
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokeinterface com/nd/android/u/contact/dao/OapUserDao/deleteUser(I)Z 1
pop
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/deleteUnitRelation()Z 0
pop
L5:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Ljava/util/List;)I 1
pop
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L6
ldc "DYF"
ldc "loadOapUnit interrupted3"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted3"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L6:
aload 4
ifnull L7
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L8:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getOapUnitRelations()Ljava/util/List;
astore 7
aload 7
ifnull L8
aload 5
aload 7
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
goto L8
L9:
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L10
ldc "DYF"
ldc "loadOapUnit interrupted4"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted4"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L10:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
aload 5
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/insertUnitRelation(Ljava/util/List;)J 1
pop2
L7:
aload 3
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setSubUserList(Ljava/util/List;)V
goto L1
L2:
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L0
ldc "DYF"
ldc "loadOapUnit interrupted5"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted5"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
areturn
.limit locals 8
.limit stack 8
.end method

.method private fullUpdateUnit()I
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/Exception from L0 to L1 using L3
.catch java/lang/InterruptedException from L4 to L5 using L2
.catch java/lang/Exception from L4 to L5 using L3
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L6
iconst_m1
ireturn
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isContactDBInit"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadBooleanKey(Ljava/lang/String;Z)Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "-isContactDBInit"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L4
L1:
iconst_m1
ireturn
L4:
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/loadOapUnit()Ljava/util/List;
pop
L5:
iconst_0
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/InterruptedException/printStackTrace()V
iconst_m1
ireturn
L3:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_m1
ireturn
.limit locals 2
.limit stack 4
.end method

.method private incrementUpdateUnit()Z
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch java/lang/InterruptedException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L6
.catch java/lang/InterruptedException from L4 to L5 using L7
iconst_0
istore 2
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L8
ldc "DYF"
ldc "loadOapUnit interrupted synOapOrg"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synOapOrg"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L8:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L9
invokestatic com/nd/android/u/contact/business/SynOapClassPro/getInstance()Lcom/nd/android/u/contact/business/SynOapClassPro;
invokevirtual com/nd/android/u/contact/business/SynOapClassPro/loadOapClass()V
iconst_1
istore 2
L9:
iload 2
istore 1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STAFF Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L11
iload 2
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L10
L11:
invokestatic com/nd/android/u/contact/business/SynOapJMClassPro/getInstance()Lcom/nd/android/u/contact/business/SynOapJMClassPro;
invokevirtual com/nd/android/u/contact/business/SynOapJMClassPro/incrementUpdateJMClass()Z
istore 3
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L12
new java/lang/InterruptedException
dup
ldc "interrupted"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L12:
iload 2
istore 1
iload 2
ifne L10
iload 3
istore 1
L10:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L13
iload 1
istore 2
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L14
iload 1
istore 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getType()I 0
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpeq L14
L13:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 4
iload 1
istore 2
aload 4
ifnull L14
iload 1
istore 2
aload 4
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
ifle L14
L0:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mUid J
aload 4
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
invokevirtual com/nd/android/u/contact/business/OapDepartManager/synUpdateDepartByUnit(JI)Z
istore 3
L1:
iload 1
istore 2
iload 1
ifne L15
iload 3
istore 2
L15:
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L4
ldc "DYF"
ldc "loadOapUnit interrupted synOapOrg1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synOapOrg1"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 5
aload 5
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L16
ldc "DYF"
ldc "\u589e\u91cf\u540c\u6b65\u90e8\u95e8\u5931\u8d25\uff0c\u9700\u8981\u5168\u91cf\u66f4\u65b0"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/loadOapUnit()Ljava/util/List;
pop
iconst_1
ireturn
L16:
aload 5
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 1
istore 2
goto L15
L3:
astore 4
ldc "DYF"
ldc "loadOapUnit interrupted synOapOrg"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synOapOrg"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
aload 4
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mUid J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/synOapUser(IJ)Z
istore 3
L5:
iload 2
istore 1
iload 2
ifne L17
iload 3
istore 1
L17:
iload 1
istore 2
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L14
ldc "DYF"
ldc "loadOapUnit interrupted synOapOrg3"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synOapOrg3"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L6:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L18
ldc "DYF"
ldc "\u589e\u91cf\u540c\u6b65\u6210\u5458\u5931\u8d25\uff0c\u9700\u8981\u5168\u91cf\u66f4\u65b0"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/loadOapUnit()Ljava/util/List;
pop
iconst_1
ireturn
L18:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iload 2
istore 1
goto L17
L7:
astore 4
ldc "DYF"
ldc "loadOapUnit interrupted synOapOrg2"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/InterruptedException
dup
ldc "interrupted synOapOrg2"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L14:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "unit_update"
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/product/android/business/manager/DataUpdateManager/save(Ljava/lang/String;J)V
iload 2
ireturn
.limit locals 6
.limit stack 4
.end method

.method private initDepartGroupAndSaveTime()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/initDepartGroups()V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLoginAllGroups()V
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/setUnitConditionChanage(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private loadOapUnit()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws java/lang/InterruptedException
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L0
new java/lang/InterruptedException
dup
ldc "interrupted"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L0:
aconst_null
areturn
.limit locals 1
.limit stack 3
.end method

.method private processDepartCalculte()I
.throws java/lang/InterruptedException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/searchUnit()Ljava/util/List; 0
astore 3
iconst_0
istore 1
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
iload 1
aload 0
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/calculateUsercount(Ljava/util/List;Ljava/lang/Object;)I
iadd
istore 1
goto L0
L1:
iload 1
ifne L2
iconst_0
ireturn
L2:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/updateDepart(Ljava/util/List;)V 1
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/updateUsercount(I)V 1
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/checkCurrentUidInterrupted()Z
ifeq L3
new java/lang/InterruptedException
dup
ldc "interrupted5"
invokespecial java/lang/InterruptedException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/initDepartGroupAndSaveTime()V
iload 1
ireturn
.limit locals 4
.limit stack 4
.end method

.method private synOapUser(IJ)Z
.throws com/common/android/utils/http/HttpException
.throws java/lang/InterruptedException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/getMaxUpdatetimeByUnit(I)I 1
i2l
lstore 4
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
lload 4
iload 1
iconst_m1
lload 2
invokevirtual com/nd/android/u/contact/business/OapUserManager/synUpdateUser(JIIJ)Z
istore 6
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
lload 4
iload 1
iconst_m1
lload 2
invokevirtual com/nd/android/u/contact/business/OapUserManager/synUpdateUserDel(JIIJ)Z
istore 7
L1:
iload 6
ifne L3
iload 7
ifeq L4
L3:
iconst_1
ireturn
L4:
iconst_0
ireturn
L2:
astore 8
aload 8
athrow
.limit locals 9
.limit stack 7
.end method

.method public run()V
aconst_null
astore 1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
L1:
aload 1
ifnull L2
aload 1
aload 0
getfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/mManuRefresh Z
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/refreshOrgData(ZJ)Z 3
ifne L3
ldc "wanggd"
ldc "ObtainUnitRable loaddata error"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainUnitContact(I)V
L4:
return
L0:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L5
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
astore 1
goto L1
L5:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
goto L1
L2:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_2
invokevirtual com/product/android/business/bean/SysParam/setObtainUnitContact(I)V
return
L3:
new java/lang/Thread
dup
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1
dup
aload 0
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1/<init>(Lcom/nd/android/u/contact/business/backgroundRable/ObtainUnitRable;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
iconst_1
invokevirtual com/product/android/business/bean/SysParam/setObtainUnitContact(I)V
return
.limit locals 2
.limit stack 5
.end method
