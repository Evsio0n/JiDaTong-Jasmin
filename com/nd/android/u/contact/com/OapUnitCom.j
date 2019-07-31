.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapUnitCom
.super com/nd/android/u/contact/com/base/OapUnitSupportCom
.inner class UserList inner com/nd/android/u/contact/com/OapUnitCom$UserList outer com/nd/android/u/contact/com/OapUnitCom

.field private static final 'TAG' Ljava/lang/String; = "OapUnitCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapUnitSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private initRecursionUnitValue(Ljava/util/List;Lorg/json/JSONObject;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;Lorg/json/JSONObject;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V"
.throws org/json/JSONException
aload 2
ifnonnull L0
L1:
return
L0:
aload 2
ldc "units"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L1
iconst_0
istore 4
L2:
iload 4
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 5
iload 4
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
new com/nd/android/u/contact/dataStructure/OapUnit
dup
aload 6
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>(Lorg/json/JSONObject;)V
astore 7
aload 7
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUid()J
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUid(J)V
aload 7
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getLevel()I
iconst_1
iadd
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setLevel(I)V
aload 7
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setParentId(I)V
aload 1
astore 2
aload 1
ifnonnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L3:
aload 3
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/addSubUnit(Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 2
aload 7
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 2
aload 6
aload 7
invokespecial com/nd/android/u/contact/com/OapUnitCom/initRecursionUnitValue(Ljava/util/List;Lorg/json/JSONObject;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
iload 4
iconst_1
iadd
istore 4
aload 2
astore 1
goto L2
.limit locals 8
.limit stack 4
.end method

.method private initUnitList(Lorg/json/JSONObject;)Ljava/util/List;
.signature "(Lorg/json/JSONObject;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.catch org/json/JSONException from L0 to L1 using L2
aconst_null
astore 4
aconst_null
astore 5
aload 4
astore 3
aload 1
ifnull L3
aload 1
ldc "units"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 4
astore 3
aload 6
ifnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 2
aload 5
astore 1
L4:
aload 4
astore 3
iload 2
aload 6
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
L0:
aload 6
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 3
L1:
aload 3
astore 1
L5:
aload 1
ifnull L6
new com/nd/android/u/contact/dataStructure/OapUnit
dup
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>()V
astore 3
aload 3
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/SetJsonValue(Lorg/json/JSONObject;)V
aload 4
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L3:
aload 3
areturn
.limit locals 7
.limit stack 2
.end method

.method public final getUnitInfos(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
aload 0
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUnitInfo(Ljava/lang/String;)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/com/OapUnitCom/initUnitList(Lorg/json/JSONObject;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getUnitList(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L9
.catch org/json/JSONException from L10 to L11 using L9
aconst_null
astore 6
aconst_null
astore 5
L0:
aload 0
iload 1
lload 2
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUnitLists(IJ)Lorg/json/JSONObject;
astore 7
L1:
aload 6
astore 4
aload 7
ifnull L12
L3:
aload 7
ldc "uid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lstore 2
aload 7
ldc "units"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
L4:
aload 6
astore 4
aload 7
ifnull L12
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L6:
iconst_0
istore 1
L7:
iload 1
aload 7
invokevirtual org/json/JSONArray/length()I
if_icmpge L13
aload 7
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
L8:
aload 5
ifnull L11
L10:
new com/nd/android/u/contact/dataStructure/OapUnit
dup
aload 5
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>(Lorg/json/JSONObject;)V
astore 6
aload 6
lload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setUid(J)V
aload 6
iconst_1
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setLevel(I)V
aload 6
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/setParentId(I)V
aload 4
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 4
aload 5
aload 6
invokespecial com/nd/android/u/contact/com/OapUnitCom/initRecursionUnitValue(Ljava/util/List;Lorg/json/JSONObject;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
L11:
iload 1
iconst_1
iadd
istore 1
goto L7
L2:
astore 6
aload 5
astore 4
aload 6
astore 5
L14:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L12:
aload 4
areturn
L9:
astore 5
goto L14
L13:
aload 4
areturn
.limit locals 8
.limit stack 4
.end method

.method public final getUnitPath(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportUnitPath(I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/com/OapUnitCom/initUnitList(Lorg/json/JSONObject;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getUsers(Lcom/nd/android/u/contact/com/OapUnitCom$UserList;)Ljava/util/List;
.signature "(Lcom/nd/android/u/contact/com/OapUnitCom$UserList;)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
aconst_null
astore 6
iconst_0
istore 2
iconst_1
istore 3
L13:
iload 2
iload 3
if_icmpge L14
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mtype I
ifne L15
aload 0
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/munitid I
iconst_m1
iload 2
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/misgender I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mistel I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mismob I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/misemail I
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportDeptUsers(IIIIIII)Lorg/json/JSONObject;
astore 5
L16:
aload 5
ifnonnull L17
L14:
aload 6
areturn
L15:
aload 0
iconst_m1
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mdeptid I
iload 2
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/misgender I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mistel I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/mismob I
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/misemail I
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getSupportDeptUsers(IIIIIII)Lorg/json/JSONObject;
astore 5
goto L16
L17:
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 4
aload 5
ldc "users"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
ifnull L14
iconst_0
istore 3
L18:
iload 3
aload 8
invokevirtual org/json/JSONArray/length()I
if_icmpge L19
aload 6
astore 7
L0:
aload 8
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 9
L1:
aload 6
astore 5
aload 6
ifnonnull L4
aload 6
astore 7
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L4:
aload 5
astore 7
L5:
new com/product/android/commonInterface/contact/OapUser
dup
aload 9
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 6
L6:
aload 5
astore 7
L7:
aload 6
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/munitid I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
L8:
aload 5
astore 7
L9:
aload 6
aload 1
getfield com/nd/android/u/contact/com/OapUnitCom$UserList/muid J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
L10:
aload 5
astore 7
L11:
aload 5
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
iload 3
iconst_1
iadd
istore 3
aload 5
astore 6
goto L18
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
aload 7
astore 5
goto L12
L19:
iload 2
aload 8
invokevirtual org/json/JSONArray/length()I
iadd
istore 2
iload 4
istore 3
goto L13
.limit locals 10
.limit stack 8
.end method

.method public final getUsersByDepartId(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
new com/nd/android/u/contact/com/OapUnitCom$UserList
dup
aload 0
invokespecial com/nd/android/u/contact/com/OapUnitCom$UserList/<init>(Lcom/nd/android/u/contact/com/OapUnitCom;)V
astore 4
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/munitid I
aload 4
iload 1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mdeptid I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mpos I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/msize I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/misgender I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mistel I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mismob I
aload 4
iconst_1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mtype I
aload 4
lload 2
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/muid J
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/misemail I
aload 0
aload 4
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsers(Lcom/nd/android/u/contact/com/OapUnitCom$UserList;)Ljava/util/List;
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getUsersByUnitid(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
new com/nd/android/u/contact/com/OapUnitCom$UserList
dup
aload 0
invokespecial com/nd/android/u/contact/com/OapUnitCom$UserList/<init>(Lcom/nd/android/u/contact/com/OapUnitCom;)V
astore 4
aload 4
lload 2
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/muid J
aload 4
iload 1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/munitid I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mdeptid I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mpos I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/msize I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/misgender I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mistel I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mismob I
aload 4
iconst_0
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/mtype I
aload 4
iconst_m1
putfield com/nd/android/u/contact/com/OapUnitCom$UserList/misemail I
aload 0
aload 4
invokevirtual com/nd/android/u/contact/com/OapUnitCom/getUsers(Lcom/nd/android/u/contact/com/OapUnitCom$UserList;)Ljava/util/List;
areturn
.limit locals 5
.limit stack 3
.end method

.method public final search(Ljava/lang/String;III)Ljava/util/HashMap;
.signature "(Ljava/lang/String;III)Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
.throws com/common/android/utils/http/HttpException
aload 0
aload 1
iload 2
iload 3
iload 4
invokevirtual com/nd/android/u/contact/com/OapUnitCom/searchSupport(Ljava/lang/String;III)Lorg/json/JSONObject;
astore 6
aconst_null
astore 5
aload 5
astore 1
aload 6
ifnull L0
aload 6
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 2
aload 0
aload 6
invokespecial com/nd/android/u/contact/com/OapUnitCom/initUnitList(Lorg/json/JSONObject;)Ljava/util/List;
astore 6
aload 5
astore 1
aload 6
ifnull L0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 1
aload 1
ldc "total"
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
ldc "list"
aload 6
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
L0:
aload 1
areturn
.limit locals 7
.limit stack 5
.end method

.method public final searchDetail(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapUnit;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
aload 0
ldc "-1"
iload 1
iconst_m1
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapUnitCom/searchSupport(Ljava/lang/String;III)Lorg/json/JSONObject;
astore 5
aconst_null
astore 4
aconst_null
astore 3
aload 4
astore 2
aload 5
ifnull L3
aload 5
ldc "units"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 4
astore 2
aload 5
ifnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
iconst_0
istore 1
L4:
aload 4
astore 2
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
L0:
aload 5
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L5
aload 4
new com/nd/android/u/contact/dataStructure/OapUnit
dup
aload 2
invokespecial com/nd/android/u/contact/dataStructure/OapUnit/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
iload 1
iconst_1
iadd
istore 1
aload 2
astore 3
goto L4
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 3
astore 2
goto L1
L3:
aload 2
areturn
.limit locals 6
.limit stack 5
.end method
