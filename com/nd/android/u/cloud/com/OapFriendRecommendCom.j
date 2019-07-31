.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/OapFriendRecommendCom
.super java/lang/Object

.field private static final 'MODIFY' Ljava/lang/String; = "/v2/api/student/modify"

.field private static final 'SIGNATURE_EDIT' Ljava/lang/String; = "/v2/api/user/signature_edit"

.field private static final 'STUDENT_INFO' Ljava/lang/String; = "/v2/api/class/studentinfo"

.field private static final 'STUDENT_RECOMMEND' Ljava/lang/String; = "/v2/api/student/recommended"

.field private static final 'STUDENT_SEARCH' Ljava/lang/String; = "/v2/api/student/search"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getRecommend(II)Ljava/util/List;
.signature "(II)Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;"
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L8
.catch com/common/android/utils/http/HttpException from L6 to L7 using L9
.catch org/json/JSONException from L6 to L7 using L10
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L8
.catch com/common/android/utils/http/HttpException from L11 to L12 using L9
.catch org/json/JSONException from L11 to L12 using L10
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L8
.catch com/common/android/utils/http/HttpException from L13 to L14 using L9
.catch org/json/JSONException from L13 to L14 using L10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/student/recommended"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 7
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 8
aload 8
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aconst_null
astore 3
aconst_null
astore 5
aconst_null
astore 6
aconst_null
astore 4
L0:
aload 8
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 7
L1:
aload 7
ifnull L15
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
L6:
aload 7
ldc "data"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
L7:
iconst_0
istore 1
L11:
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
L12:
iload 1
iload 2
if_icmpge L16
L13:
new com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend
dup
invokespecial com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/<init>()V
astore 5
aload 5
aload 4
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/LoadFromJson(Lorg/json/JSONObject;)V
aload 3
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
iload 1
iconst_1
iadd
istore 1
goto L12
L2:
astore 5
aload 4
astore 3
aload 5
astore 4
L17:
aload 4
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L15:
aload 3
areturn
L3:
astore 3
aload 5
astore 4
L18:
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 4
areturn
L4:
astore 3
aload 6
astore 4
L19:
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
aload 4
areturn
L10:
astore 5
aload 3
astore 4
aload 5
astore 3
goto L19
L9:
astore 5
aload 3
astore 4
aload 5
astore 3
goto L18
L8:
astore 4
goto L17
L16:
aload 3
areturn
.limit locals 9
.limit stack 3
.end method

.method public getStudentInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/getStudentInfo(JLjava/lang/String;)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getStudentInfo(JLjava/lang/String;)Lcom/product/android/commonInterface/contact/OapUser;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L7
.catch com/common/android/utils/http/HttpException from L5 to L6 using L8
.catch com/common/android/utils/http/ResponseException from L6 to L9 using L7
.catch com/common/android/utils/http/HttpException from L6 to L9 using L8
iconst_1
istore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/class/studentinfo"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?uid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 7
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 8
aload 8
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aconst_null
astore 5
aconst_null
astore 6
aconst_null
astore 3
L0:
aload 8
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 7
L1:
aload 7
ifnull L9
L4:
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 3
L5:
aload 3
lload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
aload 3
aload 7
ldc "class_id"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/OapUser/setClassid(I)V
aload 3
aload 7
ldc "username"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 3
aload 7
ldc "spell1"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell1(Ljava/lang/String;)V
aload 3
aload 7
ldc "spell2"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSpell2(Ljava/lang/String;)V
aload 3
aload 7
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setNickname(Ljava/lang/String;)V
aload 3
aload 7
ldc "workid"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setWorkid(Ljava/lang/String;)V
aload 3
aload 7
ldc "signature"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
aload 3
aload 7
ldc "nativecode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setNativePlaceCode(Ljava/lang/String;)V
aload 3
aload 7
ldc "nativecode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setProvince(Ljava/lang/String;)V
aload 3
aload 7
ldc "highschoolcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setHighschoolCode(Ljava/lang/String;)V
aload 3
aload 7
ldc "highschoolcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSeniorSchool(Ljava/lang/String;)V
aload 3
aload 7
ldc "gender"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/OapUser/setGender(I)V
aload 3
aload 7
ldc "mobilephone"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setMobilehone(Ljava/lang/String;)V
aload 3
aload 7
ldc "email"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setEmail(Ljava/lang/String;)V
aload 3
aload 7
ldc "sysavatar"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/OapUser/setSysavatar(I)V
aload 3
aload 7
ldc "isactive"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/OapUser/setIsactive(I)V
aload 3
aload 7
ldc "birthday"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setBirthday(Ljava/lang/String;)V
aload 3
aload 7
ldc "updatetime"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUpdatetime(Ljava/lang/String;)V
aload 3
aload 7
ldc "userver"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUserver(I)V
aload 7
ldc "wizard"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
iconst_1
if_icmpne L10
L6:
aload 3
iload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/setGuideFlag(Z)V
aload 3
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
L9:
aload 3
areturn
L10:
iconst_0
istore 4
goto L6
L2:
astore 3
L11:
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
aload 5
areturn
L3:
astore 3
aload 6
astore 5
L12:
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 5
areturn
L8:
astore 6
aload 3
astore 5
aload 6
astore 3
goto L12
L7:
astore 6
aload 3
astore 5
aload 6
astore 3
goto L11
.limit locals 9
.limit stack 3
.end method

.method public postModify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 8
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 9
aload 9
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 9
ldc "/v2/api/student/modify"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 10
L0:
aload 10
ldc "uid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 3
ifnull L4
L3:
aload 10
ldc "mobilephone"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 4
ifnull L6
L5:
aload 10
ldc "email"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
lload 5
ldc2_w -1L
lcmp
ifeq L8
L7:
aload 10
ldc "nativecode"
lload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L8:
aload 7
ifnull L10
L9:
aload 10
ldc "highschoolcode"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L10:
aload 8
aload 9
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 10
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
.limit locals 11
.limit stack 4
.end method

.method public postSignature(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "/v2/api/user/signature_edit"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "signature"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 2
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 3
.end method

.method public searchStudent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
.signature "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;"
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L8
.catch com/common/android/utils/http/HttpException from L6 to L7 using L9
.catch org/json/JSONException from L6 to L7 using L10
.catch com/common/android/utils/http/ResponseException from L11 to L12 using L8
.catch com/common/android/utils/http/HttpException from L11 to L12 using L9
.catch org/json/JSONException from L11 to L12 using L10
.catch com/common/android/utils/http/ResponseException from L13 to L14 using L8
.catch com/common/android/utils/http/HttpException from L13 to L14 using L9
.catch org/json/JSONException from L13 to L14 using L10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/student/search"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?gender="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
astore 8
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L15
aload 8
ldc "&nativecode="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L15:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L16
aload 8
ldc "&grade="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L16:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L17
aload 8
ldc "&college="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L17:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L18
aload 8
ldc "&highschool="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L18:
aload 8
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 6
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 7
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 9
aload 9
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
aconst_null
astore 2
aconst_null
astore 4
aconst_null
astore 5
aconst_null
astore 3
L0:
aload 9
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 8
L1:
aload 8
ifnull L19
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
L6:
aload 8
ldc "data"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 3
L7:
iconst_0
istore 1
L11:
aload 3
invokevirtual org/json/JSONArray/length()I
istore 6
L12:
iload 1
iload 6
if_icmpge L20
L13:
new com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
dup
invokespecial com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/<init>()V
astore 4
aload 4
aload 3
iload 1
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/LoadFromJson(Lorg/json/JSONObject;)V
aload 2
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L14:
iload 1
iconst_1
iadd
istore 1
goto L12
L2:
astore 4
aload 3
astore 2
aload 4
astore 3
L21:
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L19:
aload 2
areturn
L3:
astore 2
aload 4
astore 3
L22:
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 3
areturn
L4:
astore 2
aload 5
astore 3
L23:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 3
areturn
L10:
astore 4
aload 2
astore 3
aload 4
astore 2
goto L23
L9:
astore 4
aload 2
astore 3
aload 4
astore 2
goto L22
L8:
astore 3
goto L21
L20:
aload 2
areturn
.limit locals 10
.limit stack 3
.end method
