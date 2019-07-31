.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapDepartCom
.super com/nd/android/u/contact/com/base/OapDepartSupportCom

.field private static final 'TAG' Ljava/lang/String; = "OapDepartCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapDepartSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private initDepartValue(Ljava/util/List;Lorg/json/JSONObject;IJ)Lcom/nd/android/u/contact/dataStructure/OapDepart;
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;Lorg/json/JSONObject;IJ)Lcom/nd/android/u/contact/dataStructure/OapDepart;"
.throws org/json/JSONException
aload 2
ifnonnull L0
aconst_null
areturn
L0:
new com/nd/android/u/contact/dataStructure/OapDepart
dup
aload 2
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>(Lorg/json/JSONObject;)V
astore 7
aload 7
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUnitid(I)V
aload 2
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 2
aload 2
ifnull L1
iconst_0
istore 6
L2:
iload 6
aload 2
invokevirtual org/json/JSONArray/length()I
if_icmpge L1
aload 0
aload 1
aload 2
iload 6
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
iload 3
lload 4
invokespecial com/nd/android/u/contact/com/OapDepartCom/initDepartValue(Ljava/util/List;Lorg/json/JSONObject;IJ)Lcom/nd/android/u/contact/dataStructure/OapDepart;
astore 8
aload 8
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUnitid(I)V
aload 8
lload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUid(J)V
aload 8
aload 7
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setParentid(I)V
aload 7
aload 8
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/addSubDepart(Lcom/nd/android/u/contact/dataStructure/OapDepart;)V
aload 1
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 6
iconst_1
iadd
istore 6
goto L2
L1:
aload 7
areturn
.limit locals 9
.limit stack 6
.end method

.method public final getDeptDel(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Ljava/lang/Integer;>;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L11
.catch com/common/android/utils/http/HttpException from L12 to L13 using L11
.catch com/common/android/utils/http/HttpException from L14 to L15 using L11
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
aconst_null
astore 8
iconst_0
istore 4
iconst_1
istore 3
L18:
iload 4
iload 3
if_icmpge L19
aload 8
astore 9
L0:
aload 0
lload 1
iconst_m1
iload 4
sipush 200
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDeptDel(JIII)Lorg/json/JSONObject;
astore 10
L1:
aload 10
ifnull L19
aload 8
astore 9
L3:
aload 10
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 5
L4:
aload 8
astore 9
L5:
aload 10
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 10
L6:
aload 8
astore 9
aload 10
ifnull L20
aload 8
astore 9
L7:
aload 10
invokevirtual org/json/JSONArray/length()I
istore 6
L8:
iconst_0
istore 3
L21:
iload 3
iload 6
if_icmpge L22
L9:
aload 10
iload 3
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 9
L10:
aload 9
ifnull L23
L12:
aload 9
ldc "dept_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
L13:
iload 7
ifeq L23
aload 8
ifnonnull L24
L14:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
L15:
aload 9
astore 8
L25:
aload 8
astore 9
L16:
aload 8
iload 7
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L17:
iload 3
iconst_1
iadd
istore 3
goto L21
L22:
aload 8
astore 9
L20:
iload 4
sipush 200
iadd
istore 4
aload 9
astore 8
iload 5
istore 3
goto L18
L2:
astore 10
aload 9
astore 8
aload 10
astore 9
L26:
aload 9
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
istore 3
aload 9
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L18
aload 9
athrow
L19:
aload 8
areturn
L11:
astore 9
goto L26
L24:
goto L25
L23:
goto L17
.limit locals 11
.limit stack 6
.end method

.method public final getDeptInfo(I)Lcom/nd/android/u/contact/dataStructure/OapDepart;
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDeptInfo(I)Lorg/json/JSONObject;
astore 3
aconst_null
astore 2
aload 3
ifnull L0
new com/nd/android/u/contact/dataStructure/OapDepart
dup
aload 3
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>(Lorg/json/JSONObject;)V
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getDeptUpdate(JJI)Ljava/util/ArrayList;
.signature "(JJI)Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.throws com/common/android/utils/http/HttpException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L11
.catch com/common/android/utils/http/HttpException from L12 to L13 using L11
.catch com/common/android/utils/http/HttpException from L13 to L14 using L15
.catch com/common/android/utils/http/HttpException from L16 to L17 using L15
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
aconst_null
astore 10
iconst_0
istore 7
iconst_1
istore 6
aconst_null
astore 11
L20:
iload 7
iload 6
if_icmpge L21
aload 11
astore 13
aload 10
astore 14
L0:
aload 0
lload 1
iconst_m1
iload 7
sipush 200
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDeptUpdate(JIII)Lorg/json/JSONObject;
astore 12
L1:
aload 12
ifnull L21
aload 11
astore 13
aload 10
astore 14
L3:
aload 12
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 8
L4:
aload 11
astore 13
aload 10
astore 14
L5:
aload 12
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 15
L6:
aload 11
astore 13
aload 10
astore 12
aload 15
ifnull L22
aload 11
astore 13
aload 10
astore 14
L7:
aload 15
invokevirtual org/json/JSONArray/length()I
istore 9
L8:
iconst_0
istore 6
L23:
iload 6
iload 9
if_icmpge L24
L9:
aload 15
iload 6
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 12
L10:
aload 12
ifnull L25
L12:
new com/nd/android/u/contact/dataStructure/OapDepart
dup
aload 12
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>(Lorg/json/JSONObject;)V
astore 12
L13:
aload 12
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUid(J)V
aload 12
iload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUnitid(I)V
L14:
aload 10
ifnonnull L26
L16:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 11
L17:
aload 11
astore 10
L27:
aload 12
astore 13
aload 10
astore 14
L18:
aload 10
aload 12
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L19:
iload 6
iconst_1
iadd
istore 6
aload 12
astore 11
goto L23
L24:
aload 10
astore 12
aload 11
astore 13
L22:
iload 7
sipush 200
iadd
istore 7
aload 13
astore 11
aload 12
astore 10
iload 8
istore 6
goto L20
L2:
astore 12
aload 14
astore 10
aload 13
astore 11
L28:
iconst_0
istore 6
aload 12
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 415
if_icmpne L20
aload 12
athrow
L21:
aload 10
areturn
L11:
astore 12
goto L28
L15:
astore 13
aload 12
astore 11
aload 13
astore 12
goto L28
L26:
goto L27
L25:
aload 11
astore 12
goto L19
.limit locals 16
.limit stack 6
.end method

.method public final getDepts(Ljava/util/List;IIIJI)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;IIIJI)V"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L6 to L7 using L2
iload 7
ifne L8
aload 0
iload 2
iconst_m1
iload 4
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDepts(III)Lorg/json/JSONObject;
astore 8
L9:
aload 8
ifnonnull L10
L11:
return
L8:
aload 0
iconst_m1
iload 3
iload 4
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDepts(III)Lorg/json/JSONObject;
astore 8
goto L9
L10:
aload 8
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
aload 8
ifnull L11
iconst_0
istore 4
L12:
iload 4
aload 8
invokevirtual org/json/JSONArray/length()I
if_icmpge L11
L0:
aload 0
aload 1
aload 8
iload 4
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
iload 2
lload 5
invokespecial com/nd/android/u/contact/com/OapDepartCom/initDepartValue(Ljava/util/List;Lorg/json/JSONObject;IJ)Lcom/nd/android/u/contact/dataStructure/OapDepart;
astore 9
aload 9
iload 2
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUnitid(I)V
aload 9
lload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setUid(J)V
L1:
iload 7
ifne L6
L3:
aload 9
iconst_0
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setParentid(I)V
L4:
aload 1
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
goto L13
L6:
aload 9
iload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/setParentid(I)V
L7:
goto L4
L2:
astore 9
aload 9
invokevirtual org/json/JSONException/printStackTrace()V
L13:
iload 4
iconst_1
iadd
istore 4
goto L12
.limit locals 10
.limit stack 6
.end method

.method public final getDeptsInfo(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapDepart;>;"
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L9
.catch org/json/JSONException from L10 to L11 using L12
.catch com/common/android/utils/http/HttpException from L10 to L11 using L9
.catch com/common/android/utils/http/HttpException from L13 to L14 using L9
.catch com/common/android/utils/http/HttpException from L15 to L16 using L9
aconst_null
astore 4
aconst_null
astore 5
L0:
aload 0
aload 1
invokevirtual com/nd/android/u/contact/com/OapDepartCom/getSupportDeptsInfo(Ljava/lang/String;)Lorg/json/JSONObject;
astore 7
L1:
aconst_null
astore 6
aload 4
astore 1
aload 7
ifnull L17
L3:
aload 7
ldc "depts"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 7
L4:
aload 4
astore 1
aload 7
ifnull L17
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L6:
iconst_0
istore 2
aload 6
astore 1
L7:
aload 7
invokevirtual org/json/JSONArray/length()I
istore 3
L8:
iload 2
iload 3
if_icmpge L18
L10:
aload 7
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
L11:
aload 5
astore 1
L19:
aload 1
ifnull L20
L13:
aload 4
new com/nd/android/u/contact/dataStructure/OapDepart
dup
aload 1
invokespecial com/nd/android/u/contact/dataStructure/OapDepart/<init>(Lorg/json/JSONObject;)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
goto L20
L12:
astore 5
L15:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L16:
goto L19
L9:
astore 5
aload 4
astore 1
aload 5
astore 4
L21:
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L17:
aload 1
areturn
L2:
astore 4
aload 5
astore 1
goto L21
L18:
aload 4
areturn
L20:
iload 2
iconst_1
iadd
istore 2
goto L7
.limit locals 8
.limit stack 4
.end method
