.bytecode 50.0
.class public synchronized com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static ModifyPasswordRequestParams inner com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams outer com/nd/rj/common/login/jobnumber/JobNumberModifyPassword

.field public 'mNewPassword' Ljava/lang/String;

.field public 'mOldPassword' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "curr_password"
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams/mOldPassword Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "new_password"
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams/mNewPassword Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams/mOldPassword Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberModifyPassword$ModifyPasswordRequestParams/mNewPassword Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
L0:
iconst_0
ireturn
L1:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method
