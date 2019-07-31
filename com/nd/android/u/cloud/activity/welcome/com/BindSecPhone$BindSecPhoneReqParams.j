.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams
.super java/lang/Object
.implements com/nd/rj/common/serverinterfaces/JsonBodyParamsConvert
.inner class public static BindSecPhoneReqParams inner com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams outer com/nd/android/u/cloud/activity/welcome/com/BindSecPhone

.field public static final 'PARAMS_SECPHONE' Ljava/lang/String; = "secphone"

.field public static final 'PARAMS_UID' Ljava/lang/String; = "uid"

.field public static final 'PARAMS_VERIFYCODE' Ljava/lang/String; = "verifycode"

.field public static final 'TYPE_BIND_PHONE' I = 2


.field public static final 'TYPE_CHANGE_BIND_PHONE' I = 3


.field public static final 'WRONG_UID' I = 0


.field public 'mSecPhone' Ljava/lang/String;

.field public 'mUid' J

.field public 'mVerifyCode' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
lconst_0
putfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mUid J
return
.limit locals 1
.limit stack 3
.end method

.method public doConvert()Lorg/json/JSONObject;
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "uid"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mUid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 1
ldc "secphone"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mSecPhone Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "verifycode"
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mVerifyCode Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method public isObjectValid()Z
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mSecPhone Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mVerifyCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/com/BindSecPhone$BindSecPhoneReqParams/mUid J
lconst_0
lcmp
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method
