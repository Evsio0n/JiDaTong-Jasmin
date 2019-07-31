.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static UserCheckRequestParams inner com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams outer com/nd/rj/common/login/jobnumber/ReqUserCheck

.field public 'mClentInfo' Ljava/lang/String;

.field public 'mUapSid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mUapSid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 1
ldc "uap_sid"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mUapSid Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "systype"
ldc "android"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "clientinfo"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public isObjectValid()Z
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqUserCheck$UserCheckRequestParams/mUapSid Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokestatic com/nd/rj/common/login/jobnumber/ReqUserCheck/access$000(Ljava/util/List;)Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
