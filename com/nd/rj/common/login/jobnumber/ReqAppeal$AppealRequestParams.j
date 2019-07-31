.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static AppealRequestParams inner com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams outer com/nd/rj/common/login/jobnumber/ReqAppeal

.field public 'mEmail' Ljava/lang/String;

.field public 'mIdcardno' Ljava/lang/String;

.field public 'mPhone' Ljava/lang/String;

.field public 'mSpecialty' Ljava/lang/String;

.field public 'mType' I

.field public 'mUnitId' I

.field public 'mUsername' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
putfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUnitId I
return
.limit locals 1
.limit stack 2
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L4 to L5 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L6 to L7 using L2
.catch org/json/JSONException from L7 to L8 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUnitId I
invokestatic com/nd/rj/common/login/jobnumber/ReqAppeal/access$100(I)Z
ifeq L1
aload 1
ldc "unit_id"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUnitId I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUsername Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
ldc "username"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUsername Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mIdcardno Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 1
ldc "idcardno"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mIdcardno Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mPhone Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 1
ldc "mobilephone"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mPhone Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mEmail Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 1
ldc "email"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mEmail Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mSpecialty Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L7
aload 1
ldc "specialty"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mSpecialty Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L7:
aload 1
ldc "type"
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mType I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L8:
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
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mUsername Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mIdcardno Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
aload 0
getfield com/nd/rj/common/login/jobnumber/ReqAppeal$AppealRequestParams/mPhone Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokestatic com/nd/rj/common/login/jobnumber/ReqAppeal/access$000(Ljava/util/List;)Z
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method
