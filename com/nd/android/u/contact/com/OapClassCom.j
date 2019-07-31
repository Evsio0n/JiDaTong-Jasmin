.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapClassCom
.super com/nd/android/u/contact/com/base/OapClassSupportCom

.field private static final 'TAG' Ljava/lang/String; = "OapClassCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapClassSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getClassGrades(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapGrade;>;"
.throws com/common/android/utils/http/HttpException
aconst_null
astore 4
aconst_null
astore 2
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClassGradesJson(I)Lorg/json/JSONObject;
astore 5
aload 4
astore 3
aload 5
ifnull L0
aload 5
ldc "classgrades"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 4
astore 3
aload 5
ifnull L0
iconst_0
istore 1
L1:
aload 2
astore 3
iload 1
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L0
new com/nd/android/u/contact/dataStructure/OapGrade
dup
invokespecial com/nd/android/u/contact/dataStructure/OapGrade/<init>()V
astore 4
aload 4
aload 5
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/dataStructure/OapGrade/initJSONValue(Lorg/json/JSONObject;)V
aload 2
astore 3
aload 2
ifnonnull L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L2:
aload 3
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 1
iconst_1
iadd
istore 1
aload 3
astore 2
goto L1
L0:
aload 3
areturn
.limit locals 6
.limit stack 3
.end method

.method public final getClassSource(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
.catch org/json/JSONException from L13 to L14 using L2
.catch org/json/JSONException from L15 to L16 using L2
.catch org/json/JSONException from L17 to L18 using L2
aconst_null
astore 9
iconst_0
istore 4
iconst_1
istore 5
L19:
iload 4
iload 5
if_icmpge L20
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getClasscourse(I)Lorg/json/JSONObject;
astore 8
aload 8
ifnonnull L21
L20:
aload 9
areturn
L21:
aload 8
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
aload 8
ldc "courses"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 11
aload 11
ifnull L20
iconst_0
istore 5
L22:
iload 5
aload 11
invokevirtual org/json/JSONArray/length()I
if_icmpge L23
aload 9
astore 10
L0:
aload 11
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 12
L1:
aload 9
astore 8
aload 9
ifnonnull L4
aload 9
astore 10
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
L4:
aload 8
astore 10
L5:
aload 12
ldc "course_name"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
astore 9
L6:
aload 8
astore 10
L7:
aload 12
ldc "course_id"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
L8:
aload 8
astore 10
L9:
new com/product/android/commonInterface/contact/OapUser
dup
aload 12
ldc "teacher"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 12
L10:
aload 8
astore 10
L11:
aload 12
aload 9
invokevirtual com/product/android/commonInterface/contact/OapUser/setCourse_name(Ljava/lang/String;)V
L12:
aload 8
astore 10
L13:
aload 12
iload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/setCourseid(I)V
L14:
aload 8
astore 10
L15:
aload 12
lload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
L16:
aload 8
astore 10
L17:
aload 8
aload 12
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L18:
iload 5
iconst_1
iadd
istore 5
aload 8
astore 9
goto L22
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
aload 10
astore 8
goto L18
L23:
iload 4
aload 11
invokevirtual org/json/JSONArray/length()I
iadd
istore 4
iload 6
istore 5
goto L19
.limit locals 13
.limit stack 4
.end method

.method public final getGuardian(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
aconst_null
astore 8
iconst_0
istore 4
iconst_1
istore 5
L11:
iload 4
iload 5
if_icmpge L12
aload 0
iload 1
iload 4
bipush 50
invokevirtual com/nd/android/u/contact/com/OapClassCom/getSupportGuardian(III)Lorg/json/JSONObject;
astore 7
aload 7
ifnonnull L13
L12:
aload 8
areturn
L13:
aload 7
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
aload 7
ldc "guardians"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 10
aload 10
ifnull L12
iconst_0
istore 5
L14:
iload 5
aload 10
invokevirtual org/json/JSONArray/length()I
if_icmpge L15
aload 8
astore 9
L0:
aload 10
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 11
L1:
aload 8
astore 7
aload 8
ifnonnull L4
aload 8
astore 9
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L4:
aload 7
astore 9
L5:
new com/product/android/commonInterface/contact/OapUser
dup
aload 11
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 8
L6:
aload 7
astore 9
L7:
aload 8
lload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
L8:
aload 7
astore 9
L9:
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L10:
iload 5
iconst_1
iadd
istore 5
aload 7
astore 8
goto L14
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
aload 9
astore 7
goto L10
L15:
iload 4
aload 10
invokevirtual org/json/JSONArray/length()I
iadd
istore 4
iload 6
istore 5
goto L11
.limit locals 12
.limit stack 4
.end method

.method public final getHasOapClasses(IIJ)Z
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
iload 2
iconst_0
iconst_1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getSupportOapClasses(IIII)Lorg/json/JSONObject;
astore 5
aload 5
ifnull L0
aload 5
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
iconst_1
if_icmplt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 6
.limit stack 5
.end method

.method public final getOapClass(I)Lcom/nd/android/u/contact/dataStructure/OapClass;
.throws com/common/android/utils/http/HttpException
aconst_null
astore 2
aload 0
iload 1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getSupportOapClass(I)Lorg/json/JSONObject;
astore 3
aload 3
ifnull L0
new com/nd/android/u/contact/dataStructure/OapClass
dup
aload 3
invokespecial com/nd/android/u/contact/dataStructure/OapClass/<init>(Lorg/json/JSONObject;)V
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getOapClassMembers(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
aconst_null
astore 8
iconst_0
istore 4
iconst_1
istore 5
L13:
iload 4
iload 5
if_icmpge L14
aload 0
iload 1
iload 4
bipush 50
iconst_1
iconst_m1
iconst_m1
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapClassCom/getSupportOapClassMembers(IIIIIII)Lorg/json/JSONObject;
astore 7
aload 7
ifnonnull L15
L14:
aload 8
areturn
L15:
aload 7
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 6
aload 7
ldc "mates"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 10
aload 10
ifnull L14
iconst_0
istore 5
L16:
iload 5
aload 10
invokevirtual org/json/JSONArray/length()I
if_icmpge L17
aload 8
astore 9
L0:
aload 10
iload 5
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 11
L1:
aload 8
astore 7
aload 8
ifnonnull L4
aload 8
astore 9
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L4:
aload 7
astore 9
L5:
new com/product/android/commonInterface/contact/OapUser
dup
aload 11
invokespecial com/product/android/commonInterface/contact/OapUser/<init>(Lorg/json/JSONObject;)V
astore 8
L6:
aload 7
astore 9
L7:
aload 8
aload 11
invokevirtual com/product/android/commonInterface/contact/OapUser/initValueByStudent(Lorg/json/JSONObject;)V
L8:
aload 7
astore 9
L9:
aload 8
lload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
L10:
aload 7
astore 9
L11:
aload 7
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
iload 5
iconst_1
iadd
istore 5
aload 7
astore 8
goto L16
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
aload 9
astore 7
goto L12
L17:
iload 4
aload 10
invokevirtual org/json/JSONArray/length()I
iadd
istore 4
iload 6
istore 5
goto L13
.limit locals 12
.limit stack 8
.end method

.method public final getOapClasses(IIJ)Ljava/util/List;
.signature "(IIJ)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
iconst_0
istore 5
iconst_1
istore 6
L0:
iload 5
iload 6
if_icmpge L1
aload 0
iload 1
iload 2
iload 5
bipush 50
invokevirtual com/nd/android/u/contact/com/OapClassCom/getSupportOapClasses(IIII)Lorg/json/JSONObject;
astore 10
aload 10
ifnull L0
aload 10
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
aload 10
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 10
iload 7
istore 6
aload 10
ifnull L0
iload 7
istore 6
aload 10
invokevirtual org/json/JSONArray/length()I
ifeq L0
aload 10
invokevirtual org/json/JSONArray/length()I
istore 8
iconst_0
istore 6
L2:
iload 6
iload 8
if_icmpge L3
new com/nd/android/u/contact/dataStructure/OapClass
dup
aload 10
iload 6
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
invokespecial com/nd/android/u/contact/dataStructure/OapClass/<init>(Lorg/json/JSONObject;)V
astore 11
aload 11
lload 3
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUid(J)V
aload 11
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUnitid(I)V
aload 9
aload 11
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 6
iconst_1
iadd
istore 6
goto L2
L3:
iload 5
iload 8
iadd
istore 5
iload 7
istore 6
goto L0
L1:
aload 9
areturn
.limit locals 12
.limit stack 5
.end method

.method public final searchOapClass(IIIJ)Ljava/util/List;
.signature "(IIIJ)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
.catch org/json/JSONException from L11 to L12 using L2
aconst_null
astore 9
iconst_0
istore 3
iconst_1
istore 6
L13:
iload 3
iload 6
if_icmpge L14
aload 0
iload 1
iload 2
iload 3
bipush 50
invokevirtual com/nd/android/u/contact/com/OapClassCom/searchSupportClass(IIII)Lorg/json/JSONObject;
astore 8
aload 8
ifnonnull L15
L14:
aload 9
areturn
L15:
aload 8
ldc "total"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 7
aload 8
ldc "classes"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 11
aload 11
ifnull L14
iconst_0
istore 6
L16:
iload 6
aload 11
invokevirtual org/json/JSONArray/length()I
if_icmpge L17
aload 9
astore 10
L0:
aload 11
iload 6
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 12
L1:
aload 9
astore 8
aload 9
ifnonnull L4
aload 9
astore 10
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 8
L4:
aload 8
astore 10
L5:
new com/nd/android/u/contact/dataStructure/OapClass
dup
aload 12
invokespecial com/nd/android/u/contact/dataStructure/OapClass/<init>(Lorg/json/JSONObject;)V
astore 9
L6:
aload 8
astore 10
L7:
aload 9
lload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUid(J)V
L8:
aload 8
astore 10
L9:
aload 9
iload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapClass/setUnitid(I)V
L10:
aload 8
astore 10
L11:
aload 8
aload 9
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L12:
iload 6
iconst_1
iadd
istore 6
aload 8
astore 9
goto L16
L2:
astore 8
aload 8
invokevirtual org/json/JSONException/printStackTrace()V
aload 10
astore 8
goto L12
L17:
iload 3
aload 11
invokevirtual org/json/JSONArray/length()I
iadd
istore 3
iload 7
istore 6
goto L13
.limit locals 13
.limit stack 5
.end method

.method public final searchOapClass(IJ)Ljava/util/List;
.signature "(IJ)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapClass;>;"
.throws com/common/android/utils/http/HttpException
aload 0
iload 1
iconst_m1
iconst_m1
lload 2
invokevirtual com/nd/android/u/contact/com/OapClassCom/searchOapClass(IIIJ)Ljava/util/List;
areturn
.limit locals 4
.limit stack 6
.end method
