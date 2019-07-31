.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/com/base/OapSendSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'QUERYREPLYSMS' Ljava/lang/String; = "msg/queryreplysms"

.field private static final 'QUERYSMS' Ljava/lang/String; = "msg/querysms"

.field private static final 'QUERYSMSDETAIL' Ljava/lang/String; = "msg/querysmsdetail"

.field private static final 'QUERYSMSREPLYS' Ljava/lang/String; = "msg/querysmsreplys"

.field private static final 'SENDEMAIL' Ljava/lang/String; = "msg/sendemail1"

.field private static final 'SENDSMS' Ljava/lang/String; = "msg/sendsms"

.field private static final 'TAG' Ljava/lang/String; = "OapSendSupportCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getQueryreplysms(Lcom/nd/android/u/cloud/bean/SmsReplyBean;Ljava/lang/String;)Lcom/nd/android/u/cloud/bean/SmsReplyBean;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 1
astore 3
aload 1
ifnonnull L0
new com/nd/android/u/cloud/bean/SmsReplyBean
dup
invokespecial com/nd/android/u/cloud/bean/SmsReplyBean/<init>()V
astore 3
L0:
aload 3
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/queryreplysms(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/initReplyDetailByJson(Lorg/json/JSONObject;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getQuerysms(Lcom/nd/android/u/contact/dataStructure/MessageInfo;Ljava/lang/String;)Lcom/nd/android/u/contact/dataStructure/MessageInfo;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 1
astore 3
aload 1
ifnonnull L0
new com/nd/android/u/contact/dataStructure/MessageInfo
dup
invokespecial com/nd/android/u/contact/dataStructure/MessageInfo/<init>()V
astore 3
L0:
aload 3
aload 0
aload 2
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/querysms(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/nd/android/u/contact/dataStructure/MessageInfo/initValueByJson(Lorg/json/JSONObject;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public getQuerysmsdetail(Ljava/lang/String;II)Ljava/util/List;
.signature "(Ljava/lang/String;II)Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/SmsQueryDetailBean;>;"
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 4
aload 0
aload 1
iload 2
iload 3
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/querysmsdetail(Ljava/lang/String;II)Lorg/json/JSONObject;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
ldc "details"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 5
aload 5
ifnonnull L1
aconst_null
areturn
L1:
iconst_0
istore 2
L2:
iload 2
aload 5
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 5
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 6
aload 4
astore 1
aload 4
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L4:
new com/nd/android/u/contact/dataStructure/SmsQueryDetailBean
dup
invokespecial com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/<init>()V
astore 4
aload 4
aload 6
invokevirtual com/nd/android/u/contact/dataStructure/SmsQueryDetailBean/initValueByJson(Lorg/json/JSONObject;)V
aload 1
aload 4
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
aload 1
astore 4
goto L2
L3:
aload 4
areturn
.limit locals 7
.limit stack 4
.end method

.method public getQuerysmsreplys(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/nd/android/u/cloud/bean/SmsReplyBean;>;"
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aconst_null
astore 3
aload 0
aload 1
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/querysmsreplys(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
aload 1
ldc "replys"
invokestatic com/nd/android/u/controller/utils/JSONObjecthelper/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
ifnonnull L1
aconst_null
areturn
L1:
iconst_0
istore 2
L2:
iload 2
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L3
aload 4
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 5
aload 3
astore 1
aload 3
ifnonnull L4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
L4:
new com/nd/android/u/cloud/bean/SmsReplyBean
dup
invokespecial com/nd/android/u/cloud/bean/SmsReplyBean/<init>()V
astore 3
aload 3
aload 5
invokevirtual com/nd/android/u/cloud/bean/SmsReplyBean/initValueByJson(Lorg/json/JSONObject;)V
aload 1
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
aload 1
astore 3
goto L2
L3:
aload 3
areturn
.limit locals 6
.limit stack 2
.end method

.method public getSmsid(I[JILjava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
iload 1
aload 2
iload 3
aload 4
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/sendsms(I[JILjava/lang/String;)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L0
aload 2
ldc "smsid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 5
.end method

.method public getSmsid(I[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
aload 0
iload 1
aload 2
iload 3
aload 4
invokevirtual com/nd/android/u/cloud/com/base/OapSendSupportCom/sendsms(I[Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
astore 2
aload 2
ifnull L0
aload 2
ldc "smsid"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 5
.limit stack 5
.end method

.method public queryreplysms(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/queryreplysms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?replyid ="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public querysms(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/querysms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?smsid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public querysmsdetail(Ljava/lang/String;II)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/querysmsdetail"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?smsid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 4
astore 1
iload 2
iconst_m1
if_icmpeq L0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&start="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L0:
aload 1
astore 4
iload 3
iconst_m1
if_icmpeq L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L1:
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 5
.limit stack 2
.end method

.method public querysmsreplys(Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/querysmsreplys"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?smsid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public sendemail(I[JILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/sendemail1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 7
ldc "receiver_type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 8
iconst_0
istore 1
L0:
iload 1
aload 2
arraylength
if_icmpge L1
aload 8
aload 2
iload 1
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 7
ldc "receiver_ids"
aload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 3
iconst_m1
if_icmpeq L2
aload 7
ldc "receiver_admit"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L2:
aload 7
ldc "mailtitle"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "mailbody"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
aload 7
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 9
.limit stack 3
.end method

.method public sendim(I[JIILjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/sendemail1"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
aload 7
ldc "receiver_type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 8
iconst_0
istore 1
L0:
iload 1
aload 2
arraylength
if_icmpge L1
aload 8
aload 2
iload 1
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 7
ldc "receiver_ids"
aload 8
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
iload 3
iconst_m1
if_icmpeq L2
aload 7
ldc "receiver_admit"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L2:
aload 7
ldc "type"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 7
ldc "msgbody"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 6
aload 7
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 9
.limit stack 3
.end method

.method public sendsms(I[JILjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/sendsms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "receiver_type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 7
aload 2
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 2
arraylength
if_icmpge L2
aload 7
aload 2
iload 1
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 6
ldc "receiver_ids"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
iload 3
iconst_m1
if_icmpeq L3
iload 3
ifeq L3
aload 6
ldc "receiver_admit"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
aload 6
ldc "smsbody"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
ldc "OapSendSupportCom"
aload 6
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 8
.limit stack 3
.end method

.method public sendsms(I[Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpAuthException
.throws com/common/android/utils/http/ResponseException
.throws com/common/android/utils/http/HttpServerException
.throws com/common/android/utils/http/HttpException
.throws org/json/JSONException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "msg/sendsms"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "receiver_type"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ifnull L0
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 7
iconst_0
istore 1
L1:
iload 1
aload 2
arraylength
if_icmpge L2
aload 7
aload 2
iload 1
aaload
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 6
ldc "receiver_ids"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
iload 3
iconst_m1
if_icmpeq L3
iload 3
ifeq L3
aload 6
ldc "receiver_admit"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L3:
aload 6
ldc "smsbody"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
ldc "OapSendSupportCom"
aload 6
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/com/base/OapSendSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 8
.limit stack 3
.end method
