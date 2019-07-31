.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapBussSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'APPISPERM' Ljava/lang/String; = "app/isperm"

.field private static final 'APPMSGCOUNTURL' Ljava/lang/String; = "app/msgcounturl"

.field private static final 'APPUNITMENU' Ljava/lang/String; = "app/unitmenu"

.field private static final 'APPVER' Ljava/lang/String; = "app/ver"

.field private static final 'APP_TYPE_MENU' Ljava/lang/String; = "app/typemenu"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final getAppMsgUrl(ILjava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/msgcounturl"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 4
astore 3
aload 2
ifnull L3
aload 4
astore 3
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L3:
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 3
ldc ""
astore 2
aload 3
ifnull L1
L0:
aload 3
ldc "url"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
ldc ""
areturn
.limit locals 5
.limit stack 2
.end method

.method public final getAppVer(ILjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/ver"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&product="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&type=json"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getMenuType()Lorg/json/JSONArray;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/typemenu"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONArray()Lorg/json/JSONArray;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getSupportAppIsPerm(ILjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/isperm"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&appid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 3
.limit stack 2
.end method

.method public final getSupportAppMsgCount(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
aconst_null
astore 4
aload 1
ifnull L3
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
L3:
aconst_null
areturn
L4:
aload 1
astore 3
aload 1
ldc "{SID}"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L5
aload 1
astore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L5
aload 1
ldc "{SID}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 3
L5:
aload 3
astore 1
aload 3
ldc "{UID}"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iconst_m1
if_icmpeq L0
aload 3
ldc "{UID}"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 4
astore 1
goto L1
.limit locals 5
.limit stack 5
.end method

.method public final getUnitmenu()Lorg/json/JSONArray;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "app/unitmenu"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?type=3g&cfg=1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/contact/com/base/OapBussSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONArray()Lorg/json/JSONArray;
areturn
.limit locals 2
.limit stack 2
.end method
