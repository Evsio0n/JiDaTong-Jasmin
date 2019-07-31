.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/business/OapUnitManager
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "UnitManager"

.field private static 'instance' Lcom/nd/android/u/contact/business/OapUnitManager;

.field private 'unitDao' Lcom/nd/android/u/contact/dao/OapUnitDao;

.method static <clinit>()V
new com/nd/android/u/contact/business/OapUnitManager
dup
invokespecial com/nd/android/u/contact/business/OapUnitManager/<init>()V
putstatic com/nd/android/u/contact/business/OapUnitManager/instance Lcom/nd/android/u/contact/business/OapUnitManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
putfield com/nd/android/u/contact/business/OapUnitManager/unitDao Lcom/nd/android/u/contact/dao/OapUnitDao;
return
.limit locals 1
.limit stack 2
.end method

.method private static deleteUnit(Ljava/util/List;I)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;I)V"
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
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 3
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
iload 1
if_icmpne L1
aload 0
aload 3
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
iload 1
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/deleteUnit(I)Z 1
pop
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public static getInstance()Lcom/nd/android/u/contact/business/OapUnitManager;
getstatic com/nd/android/u/contact/business/OapUnitManager/instance Lcom/nd/android/u/contact/business/OapUnitManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method private static updateUnitList(Ljava/util/List;Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;)V"
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
return
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 3
iconst_0
istore 2
L3:
iload 2
aload 0
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 0
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapUnit
astore 4
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
if_icmpne L4
aload 0
iload 2
invokeinterface java/util/List/remove(I)Ljava/lang/Object; 1
pop
aload 3
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getLevel()I
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setLevel(I)V
aload 0
iload 2
aload 3
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
aload 4
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/updateUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V 1
goto L2
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 5
.limit stack 3
.end method

.method public getUnitDao()Lcom/nd/android/u/contact/dao/OapUnitDao;
aload 0
getfield com/nd/android/u/contact/business/OapUnitManager/unitDao Lcom/nd/android/u/contact/dao/OapUnitDao;
areturn
.limit locals 1
.limit stack 1
.end method

.method public searchChildsDeptid(JIII)Ljava/util/ArrayList;
.signature "(JIII)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 8
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 8
lload 1
iload 3
iload 4
invokevirtual com/nd/android/u/contact/business/OapUnitManager/searchChildsDeptid(Ljava/util/ArrayList;JII)V
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
iconst_1
istore 4
aload 8
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 8
L0:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 6
iload 4
ifeq L2
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_0
istore 4
goto L0
L2:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc " , '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "'"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L0
L1:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
iload 3
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
iload 5
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserByDeptids(ILjava/lang/String;I)Ljava/util/ArrayList; 3
areturn
.limit locals 9
.limit stack 6
.end method

.method public searchChildsDeptid(Ljava/util/ArrayList;JII)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Integer;>;JII)V"
aload 1
astore 6
aload 1
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
L0:
ldc com/nd/android/u/contact/dao/OapDepartDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapDepartDao
iload 4
iload 5
invokeinterface com/nd/android/u/contact/dao/OapDepartDao/searchDeparts(II)Ljava/util/List; 2
astore 1
aload 1
ifnull L1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapDepart
astore 7
aload 6
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 6
lload 2
iload 4
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/nd/android/u/contact/business/OapUnitManager/searchChildsDeptid(Ljava/util/ArrayList;JII)V
goto L2
L1:
return
.limit locals 8
.limit stack 6
.end method

.method public searchOapUserByUnitid(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
ldc com/nd/android/u/contact/dao/OapUnitRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitRelationDao
invokeinterface com/nd/android/u/contact/dao/OapUnitRelationDao/searchUnitRelation()Ljava/util/List; 0
checkcast java/util/ArrayList
astore 4
aload 4
ifnull L0
aload 4
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public synUpdateUnit(Ljava/util/List;J)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;J)V"
.throws com/common/android/utils/http/HttpException
ldc com/nd/android/u/contact/dao/OapUnitDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUnitDao
invokeinterface com/nd/android/u/contact/dao/OapUnitDao/getMaxUpdatetime()I 0
istore 8
iconst_0
istore 4
iconst_1
istore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
iconst_1
istore 5
L0:
iload 4
iload 6
if_icmpge L1
iload 5
ifeq L1
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
iload 8
iload 4
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUnitLists(III)Lorg/json/JSONObject;
astore 12
aload 12
ifnull L2
aload 12
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
aload 12
ldc "units"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 12
iload 7
istore 6
aload 12
ifnull L0
iconst_0
istore 6
L3:
iload 6
aload 12
invokevirtual org/json/JSONArray/length()I
if_icmpge L4
aload 12
iload 6
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 13
aload 13
ifnull L5
aload 13
ldc "type"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 9
aload 13
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 10
iload 9
iconst_1
if_icmpne L6
aload 1
iload 10
invokestatic com/nd/android/u/contact/business/OapUnitManager/deleteUnit(Ljava/util/List;I)V
L5:
iload 6
iconst_1
iadd
istore 6
goto L3
L6:
aload 11
aload 13
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L5
L4:
iload 4
aload 12
invokevirtual org/json/JSONArray/length()I
iadd
istore 4
iload 7
istore 6
goto L0
L2:
iconst_0
istore 5
goto L0
L1:
aload 11
ifnull L7
aload 11
invokeinterface java/util/List/size()I 0
ifle L7
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 12
aload 11
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L8:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Integer
astore 14
aload 11
invokeinterface java/util/List/size()I 0
iconst_1
isub
ifge L10
aload 12
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 14
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L8
L10:
aload 12
aload 14
invokevirtual java/lang/StringBuffer/append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
pop
goto L8
L9:
aload 1
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUnitCom()Lcom/nd/android/u/contact/com/OapUnitCom;
aload 12
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUnitInfos(Ljava/lang/String;)Ljava/util/List;
invokestatic com/nd/android/u/contact/business/OapUnitManager/updateUnitList(Ljava/util/List;Ljava/util/List;)V
L7:
return
.limit locals 15
.limit stack 4
.end method
