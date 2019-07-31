.bytecode 50.0
.class final synchronized com/nd/android/u/publicNumber/controller/PublicNumberController$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/publicNumber/controller/PublicNumberController/getPspInfoFromServer(Ljava/lang/String;)V
.inner class static final inner com/nd/android/u/publicNumber/controller/PublicNumberController$2

.field final synthetic 'val$pspid' Ljava/lang/String;

.method <init>(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/controller/PublicNumberController$2/val$pspid Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
.catch com/common/android/utils/http/ResponseException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L0 to L1 using L3
.catch com/common/android/utils/http/ResponseException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L3
.catch com/common/android/utils/http/ResponseException from L6 to L7 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L3
.catch com/common/android/utils/http/ResponseException from L8 to L9 using L2
.catch com/common/android/utils/http/HttpException from L8 to L9 using L3
.catch com/common/android/utils/http/ResponseException from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getSid()Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
ldc "public"
ldc "getPublicNumberInfoFromServer error\uff1anull sid"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
L12:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/publicNumber/PublicNumberConst$PUBLIC_NUMBER_URL/BASE Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/91u/psp/info?sid=%s&pspid=%s"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 2
aastore
dup
iconst_1
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberController$2/val$pspid Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 2
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
astore 3
L0:
aload 3
aload 2
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 2
L1:
aload 2
ifnull L10
L4:
aload 2
ldc "code"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L10
aload 2
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 1
L5:
iload 1
ifeq L8
L6:
ldc "public"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error return code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
ldc "msg"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L7:
return
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
return
L8:
new com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
dup
aload 0
getfield com/nd/android/u/publicNumber/controller/PublicNumberController$2/val$pspid Ljava/lang/String;
invokespecial com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/<init>(Ljava/lang/String;)V
astore 3
aload 3
aload 2
ldc "logo"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/logo_url Ljava/lang/String;
aload 3
aload 2
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
aload 3
aload 2
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/type I
aload 3
aload 2
ldc "qrurl"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/qu_url Ljava/lang/String;
aload 3
aload 2
ldc "mode"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/mode I
aload 3
aload 2
ldc "description"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
aload 3
aload 2
ldc "auth"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
aload 3
aload 2
ldc "subcount"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
aload 3
aload 2
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/status I
aload 3
aconst_null
putfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/updateValues Landroid/content/ContentValues;
sipush 1000
sipush 3001
aload 3
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/notifyOtherMessage(IILjava/lang/Object;)V
L9:
return
L3:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
return
L10:
ldc "public"
ldc "error json data"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
return
.limit locals 4
.limit stack 5
.end method
