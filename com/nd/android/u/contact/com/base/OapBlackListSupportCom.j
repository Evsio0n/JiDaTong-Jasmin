.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapBlackListSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'B_ADD_BLACK' Ljava/lang/String; = "v2/friend/api/blacklist/new"

.field private static final 'B_CHECK_BLACK' Ljava/lang/String; = "v2/friend/api/blacklist/check"

.field private static final 'B_GET_BLACKLIST' Ljava/lang/String; = "v2/friend/api/blacklist/list"

.field private static final 'B_REMOVE_BLACK' Ljava/lang/String; = "v2/friend/api/blacklist/remove"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addToBlack(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/friend/api/blacklist/new"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public final checkBlack(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/friend/api/blacklist/check"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public final deleteFromBlackList(J)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L0 to L1 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "v2/friend/api/blacklist/remove"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L5:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 404
if_icmpne L6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
areturn
L6:
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L5
.limit locals 5
.limit stack 4
.end method

.method public final getAllBlackList(Ljava/util/ArrayList;)I
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)I"
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
iconst_0
istore 2
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "v2/friend/api/blacklist/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "?pos="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iconst_0
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 5
ldc "&size="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
bipush 50
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 4
L0:
iload 2
iload 4
if_icmpge L1
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "v2/friend/api/blacklist/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "?pos="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 5
ldc "&size="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
bipush 50
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
ldc "users"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnull L2
iconst_0
istore 3
L3:
iload 3
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L2
new com/product/android/commonInterface/contact/BlackListPerson
dup
invokespecial com/product/android/commonInterface/contact/BlackListPerson/<init>()V
astore 6
aload 6
aload 5
iload 3
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/contact/BlackListPerson/LoadFromJson(Lorg/json/JSONObject;)V
aload 1
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L3
L2:
iload 2
bipush 50
iadd
istore 2
goto L0
L1:
iload 4
ireturn
.limit locals 7
.limit stack 3
.end method

.method public final getBlackListFromNet(II)Lorg/json/JSONObject;
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
new java/lang/StringBuffer
dup
invokestatic com/product/android/business/config/Configuration/getOapBlackListServerUrl()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "v2/friend/api/blacklist/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "?pos="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 1
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
iload 2
ifeq L0
aload 3
ldc "&size="
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iload 2
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapBlackListSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
L1:
aload 3
areturn
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
L4:
aconst_null
areturn
L3:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 4
.limit stack 3
.end method
