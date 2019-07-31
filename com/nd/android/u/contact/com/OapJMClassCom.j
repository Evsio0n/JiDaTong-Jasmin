.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapJMClassCom
.super com/nd/android/u/contact/com/base/OapJMClassSupportCom

.field 'TAG' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapJMClassSupportCom/<init>()V
aload 0
ldc "OapJMClassCom"
putfield com/nd/android/u/contact/com/OapJMClassCom/TAG Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private initRecursionSkeletonValue(Ljava/util/List;Lorg/json/JSONObject;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClass;>;Lorg/json/JSONObject;)V"
.throws org/json/JSONException
aload 2
ifnonnull L0
L1:
return
L0:
aload 2
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L1
aconst_null
astore 2
iconst_0
istore 3
L2:
iload 3
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 4
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
aload 5
ifnull L4
new com/nd/android/u/contact/dataStructure/JMClass
dup
aload 5
invokespecial com/nd/android/u/contact/dataStructure/JMClass/<init>(Lorg/json/JSONObject;)V
astore 2
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 0
aload 6
aload 5
invokespecial com/nd/android/u/contact/com/OapJMClassCom/initRecursionSkeletonValue(Ljava/util/List;Lorg/json/JSONObject;)V
aload 2
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/JMClass/setClasses(Ljava/util/List;)V
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 1
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 7
.limit stack 3
.end method

.method public editStudentInfo(Lcom/product/android/commonInterface/contact/OapUser;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
aconst_null
astore 2
aload 1
ifnull L0
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
L0:
aload 2
ldc "uid"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "signature"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "nativecode"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getProvince()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "highschoolcode"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getSeniorSchool()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "mobilephone"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getMobilehone()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "email"
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getEmail()Ljava/lang/String;
invokestatic com/common/android/utils/JSONUtils/putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 2
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportStudentInfoEdit(Lorg/json/JSONObject;)Z
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getClassByFid(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportStudentInfo(I)Lorg/json/JSONObject;
ldc "class_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportClassInfos(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aconst_null
astore 5
aconst_null
astore 4
aload 5
astore 3
aload 6
ifnull L0
aload 5
astore 3
aload 6
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 6
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
aload 4
astore 3
L1:
iload 1
iload 2
if_icmpge L0
new com/nd/android/u/contact/dataStructure/OapJMClass
dup
aload 6
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/dataStructure/OapJMClass/<init>(Lorg/json/JSONObject;)V
astore 3
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 3
areturn
.limit locals 7
.limit stack 4
.end method

.method public getClassCache(I)Lcom/nd/android/u/contact/dataStructure/VersionInfo;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L6
.catch org/json/JSONException from L7 to L8 using L6
.catch org/json/JSONException from L9 to L10 using L6
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportSnapshotver(I)Lorg/json/JSONObject;
astore 6
aconst_null
astore 3
aconst_null
astore 5
aload 6
ifnull L11
new com/nd/android/u/contact/dataStructure/VersionInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/VersionInfo/<init>()V
astore 4
aload 4
aload 6
ldc "classver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setClassver(I)V
aload 4
aload 6
ldc "orgver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setOrgver(I)V
aload 4
aload 6
ldc "userver"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setUserver(I)V
aload 6
ldc "skeleton"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 5
astore 3
aload 6
ifnull L12
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
iconst_0
istore 1
L13:
aload 5
astore 3
iload 1
aload 6
invokevirtual org/json/JSONArray/length()I
if_icmpge L12
L0:
aload 6
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 3
L1:
aload 3
ifnull L10
L3:
new com/nd/android/u/contact/dataStructure/Skeleton
dup
invokespecial com/nd/android/u/contact/dataStructure/Skeleton/<init>()V
astore 7
L4:
aload 7
aload 3
ldc "id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/setId(I)V
aload 7
aload 3
ldc "pid"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/setPid(I)V
aload 3
ldc "uids"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
invokevirtual org/json/JSONArray/length()I
newarray int
astore 9
L5:
iconst_0
istore 2
L7:
iload 2
aload 9
arraylength
if_icmpge L9
aload 9
iload 2
aload 8
iload 2
invokevirtual org/json/JSONArray/getInt(I)I
iastore
L8:
iload 2
iconst_1
iadd
istore 2
goto L7
L9:
aload 7
aload 9
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/setUids([I)V
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
aload 0
aload 8
aload 3
invokespecial com/nd/android/u/contact/com/OapJMClassCom/initRecursionSkeletonValue(Ljava/util/List;Lorg/json/JSONObject;)V
aload 7
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/Skeleton/setClasses(Ljava/util/List;)V
L10:
iload 1
iconst_1
iadd
istore 1
goto L13
L2:
astore 3
L14:
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
L12:
aload 4
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/VersionInfo/setSkeletons(Ljava/util/List;)V
aload 4
astore 3
L11:
aload 3
areturn
L6:
astore 3
goto L14
.limit locals 10
.limit stack 4
.end method

.method public getOapJMClasses(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportClassInfos(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L0
aload 1
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
pop
aload 1
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 1
invokevirtual org/json/JSONArray/length()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L0
aload 4
new com/nd/android/u/contact/dataStructure/OapJMClass
dup
aload 1
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/dataStructure/OapJMClass/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public getStudentInfo(I)Lcom/product/android/commonInterface/contact/OapUser;
.throws com/common/android/utils/http/HttpException
new com/product/android/commonInterface/contact/OapUser
dup
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportStudentInfo(I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
areturn
.limit locals 2
.limit stack 4
.end method

.method public getStudentlist(IIILjava/lang/String;)Ljava/util/List;
.signature "(IIILjava/lang/String;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 0
iload 1
iload 2
iload 3
aload 4
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportStudentlist(IIILjava/lang/String;)Lorg/json/JSONObject;
astore 4
aload 4
ifnull L0
aload 4
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
pop
aload 4
ldc "students"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
new com/product/android/commonInterface/contact/OapUser
dup
aload 6
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 7
aload 7
aload 6
ldc "workid"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setStudentid(Ljava/lang/String;)V
aload 7
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
aload 7
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 5
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 5
areturn
.limit locals 8
.limit stack 5
.end method

.method public getUpdateInfos(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/JMClassUpdateInfos;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
iload 1
iload 2
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportClassOrgUpdate(II)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 3
new com/nd/android/u/contact/dataStructure/JMClassUpdateInfos
dup
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/dataStructure/JMClassUpdateInfos/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method public getUpdateJmClasses(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClass;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
iload 1
iload 2
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportClassesUpdate(II)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 3
new com/nd/android/u/contact/dataStructure/OapJMClass
dup
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/dataStructure/OapJMClass/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 3
areturn
.limit locals 5
.limit stack 5
.end method

.method public getUpdateStudents(III)Ljava/util/List;
.signature "(III)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 0
iload 1
iload 2
iload 3
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getSupportStudentsUpdate(III)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L0
aload 5
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 5
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 4
new com/product/android/commonInterface/contact/OapUser
dup
aload 5
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 4
areturn
.limit locals 6
.limit stack 5
.end method
