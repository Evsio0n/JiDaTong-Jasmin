.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/base/OapOrganizationSpportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'ORGINFOURL' Ljava/lang/String; = "org/info"

.field private static final 'ORGLISTURL' Ljava/lang/String; = "org/list"

.field private static final 'USERBINDAPPLYURL' Ljava/lang/String; = "org/userbindapply"

.field private static final 'USERBINDCANCELURL' Ljava/lang/String; = "org/userbindcancel"

.field private static final 'USERBINDURL' Ljava/lang/String; = "org/userbind"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doSupportUserBind(Ljava/lang/String;I)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/userbind"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "authcode"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 2
ifeq L0
iload 2
iconst_m1
if_icmpeq L0
aload 4
ldc "query"
iload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
aload 0
getfield com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 3
.end method

.method public doUserBindApply(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/userbindapply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 7
ldc "unitid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
iload 2
ifeq L0
iload 2
iconst_m1
if_icmpeq L0
aload 7
ldc "classid"
iload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
aload 7
ldc "username"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "mobilephone"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ifnull L1
ldc ""
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 7
ldc "applydesc"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
aload 7
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 8
.limit stack 3
.end method

.method public doUserBindCancel(IJ)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/userbindcancel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "unitid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 5
ldc "uid"
lload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 6
.limit stack 4
.end method

.method public getSupportOrgInfo(I)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/?orgid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSupportOrgList()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "org/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapOrganizationSpportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
