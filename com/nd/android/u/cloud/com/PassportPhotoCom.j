.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/PassportPhotoCom
.super java/lang/Object

.field private static final 'STUDENT_PASSPORTPHOTO' Ljava/lang/String; = "/v2/api/student/papersurl"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getStudentPassportPhoto(JLjava/lang/String;J)Lcom/nd/android/u/contact/dataStructure/PassportPhoto;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch com/common/android/utils/http/ResponseException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/v2/api/student/papersurl"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?uids="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
astore 3
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 6
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/setSid(Ljava/lang/String;)V
L0:
aload 6
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONArray()Lorg/json/JSONArray;
astore 6
L1:
aload 6
ifnull L7
L5:
aload 6
invokevirtual org/json/JSONArray/length()I
ifle L7
new com/nd/android/u/contact/dataStructure/PassportPhoto
dup
invokespecial com/nd/android/u/contact/dataStructure/PassportPhoto/<init>()V
astore 3
aload 6
iconst_0
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
aload 3
lload 1
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/uid J
aload 3
aload 6
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/url Ljava/lang/String;
aload 3
aload 6
ldc "updatetime"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/dataStructure/PassportPhoto/updateTime J
L6:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L7:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L7
L4:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L7
.limit locals 7
.limit stack 3
.end method
